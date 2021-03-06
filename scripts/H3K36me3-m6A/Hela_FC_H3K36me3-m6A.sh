#!/bin/sh

### Hela, ChIP-seq
targetPath=/data/zhoukr/hhl_setd2_m6a/analysis/H3K36me3-m6A/Hela
rm -rf $targetPath/*

cd /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq
macsXlsPeakFilter.pl -pval 0.05 -original -x shCont/macs1.4/rep2/shCont_rep2_peaks.xls -o $targetPath/Hela_shCont_chip.xls
macsXlsPeakFilter.pl -pval 0.05 -original -x shSetD2/macs1.4/rep2/shSetD2_rep2_peaks.xls -o $targetPath/Hela_shSetD2_chip.xls

cd /data/zhoukr/hhl_setd2_m6a/Hela_m6A-seq
exomePeakToSummit.pl -p 0.05 -original -format xls -x shCont/shCont_m6A_rep1/peak.xls -o $targetPath/Hela_shCont_m6a.xls
exomePeakToSummit.pl -p 0.05 -original -format xls -x shSetD2/shSetD2_m6A_rep1/peak.xls -o $targetPath/Hela_shSetD2_m6a.xls

cd $targetPath
macs2PeaksFC.pl -nonOverlapA -nonOverlapB -log 2 -F 0.5 -x Hela_shCont_chip.xls Hela_shSetD2_chip.xls -o ./temp.txt
awk 'BEGIN{count=1;}{$4="peak="count; count++; print $1,$2,$3,$4,$7,$6;}' OFS="\t" ./temp.txt > Hela_chip_peak_-F0.5_FC_log2.bed

exome2PeaksFC.pl -nonOverlapA -nonOverlapB -log 2 -F 0.5 -x Hela_shCont_m6a.xls Hela_shSetD2_m6a.xls -o ./temp.txt
awk 'BEGIN{count=1;}{$4="peak="count; count++; print $1,$2,$3,$4,$13,$6,$7,$8,$9,$10,$11,$12;}' OFS="\t" ./temp.txt > Hela_m6a_peak_-F0.5_FC_log2.bed
bedtools intersect -a Hela_chip_peak_-F0.5_FC_log2.bed -b Hela_m6a_peak_-F0.5_FC_log2.bed -wo > temp.txt
echo -e "peakID\tH3K36me3\tm6A" > H3K36me3.vs.m6A.FC.txt
awk 'BEGIN{OFS="\t";}
    {chipPeakID=$4; m6ApeakID=$10; OverLength=$19; ChIPFCArr[chipPeakID]=$5; m6AFCArr[m6ApeakID]=$11;
        if(chipPeakID in pairLength){
            if(pairLength[chipPeakID] < OverLength){
                pairLength[chipPeakID]=OverLength;
                pairID[chipPeakID]=m6ApeakID;
            }
        }else{
            pairLength[chipPeakID]=OverLength;
            pairID[chipPeakID]=m6ApeakID;
        }
    }
    END{for(ChIPID in pairID){
            m6AID=pairID[ChIPID];
            ChIPFC=ChIPFCArr[ChIPID];
            m6AFC=m6AFCArr[m6AID];
            print ChIPID,ChIPFC,m6AFC;
       }
    }' temp.txt >> H3K36me3.vs.m6A.FC.txt
rm -f temp.txt
rm -f *.xls
