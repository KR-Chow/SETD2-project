echo -e "Hela_ChIP-seq_shCont_IP_rep2.fastq
"
bowtie -t -p 16 -v 2 -m 1 --best --strata --sam /public/genomes/human/hg19/bowtieIndex_UCSC/hg19 /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/Hela_ChIP-seq_shCont_IP_rep2.fastq /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shCont/IP_rep2/Hela_ChIP-seq_shCont_IP_rep2.fastq.sam
samtools view -h -bS -F 4 --threads 32 /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shCont/IP_rep2/Hela_ChIP-seq_shCont_IP_rep2.fastq.sam -o /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shCont/IP_rep2/Hela_ChIP-seq_shCont_IP_rep2.fastq.bam
rm /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shCont/IP_rep2/Hela_ChIP-seq_shCont_IP_rep2.fastq.sam
samtools sort --threads 16 -m 2G -O bam -o /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shCont/IP_rep2/Hela_ChIP-seq_shCont_IP_rep2.fastq.sorted.bam /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shCont/IP_rep2/Hela_ChIP-seq_shCont_IP_rep2.fastq.bam
rm /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shCont/IP_rep2/Hela_ChIP-seq_shCont_IP_rep2.fastq.bam
samtools index -b /data/zhoukr/hhl_setd2_m6a/Hela_ChIP-seq/shCont/IP_rep2/Hela_ChIP-seq_shCont_IP_rep2.fastq.sorted.bam

