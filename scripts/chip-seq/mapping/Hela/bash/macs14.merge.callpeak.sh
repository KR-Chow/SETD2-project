#!/bin/sh
## ref. Identifying ChIP-seq enrichment using MACS, Nat Protoc., 2012, --shiftsize was set as recommended by "Use Model-Based Analysis of ChIP-Seq (MACS) to Analyze Short Reads Generated by Sequencing Protein–DNA Interactions in Embryonic Stem Cells"

rm -rf /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shCont/macs1.4-merge
mkdir -rf /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shCont/macs1.4-merge
cd /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shCont/macs1.4-merge
macs14 -t /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shCont/IP/Hela_ChIP-seq_shCont_IP.fastq.merge.bam -c /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shCont/input/Hela_ChIP-seq_shCont_input.fastq.merge.bam  -g hs -n shCont --nomodel --shiftsize 147 -B -S --call-subpeaks > shCont.merge.macs14.log 2>&1 &

rm -rf /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shSetD2/macs1.4-merge
mkdir -rf /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shSetD2/macs1.4-merge
cd /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shSetD2/macs1.4-merge
macs14 -t /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shSetD2/IP/Hela_ChIP-seq_shSetD2_IP.fastq.merge.bam -c /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shSetD2/input/Hela_ChIP-seq_shSetD2_input.fastq.merge.bam  -g hs -n shSetD2 --nomodel --shiftsize 147 -B -S --call-subpeaks > shSetD2.merge.macs14.log 2>&1 &

rm -rf /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shWTAP/macs1.4-merge
mkdir -rf /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shWTAP/macs1.4-merge
cd /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shWTAP/macs1.4-merge
macs14 -t /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shWTAP/IP_rep1/Hela_ChIP-seq_shWTAP_IP_rep1.fastq.sorted.bam -c /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shWTAP/input_rep1/Hela_ChIP-seq_shWTAP_input_rep1.fastq.sorted.bam  -g hs -n shWTAP --nomodel --shiftsize 147 -B -S --call-subpeaks > shWTAP.macs14.log 2>&1 &

rm -rf /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shM3/macs1.4-merge
mkdir -rf /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shM3/macs1.4-merge
cd /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shM3/macs1.4-merge
macs14 -t /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shM3/IP_rep1/Hela_ChIP-seq_shM3_IP_rep1.fastq.sorted.bam -c /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shM3/input_rep1/Hela_ChIP-seq_shM3_input_rep1.fastq.sorted.bam  -g hs -n shM3 --nomodel --shiftsize 147 -B -S --call-subpeaks > shM3.macs14.log 2>&1 &

rm -rf /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shM14/macs1.4-merge
mkdir -rf /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shM14/macs1.4-merge
cd /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shM14/macs1.4-merge
macs14 -t /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shM14/IP_rep1/Hela_ChIP-seq_shM14_IP_rep1.fastq.sorted.bam -c /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shM14/input_rep1/Hela_ChIP-seq_shM14_input_rep1.fastq.sorted.bam  -g hs -n shM14 --nomodel --shiftsize 147 -B -S --call-subpeaks > shM14.macs14.log 2>&1 &

cd /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/bash
