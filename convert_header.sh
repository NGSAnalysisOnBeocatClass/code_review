#!/bin/bash
#########################################################################
# USAGE: bash convert_header.sh
#
# Created by Jennifer Shelton
# 07/09/14
# convert_header.sh v.1.0
#
#########################################################################

CD ~/class/fastq/header


## script converts to pre CASAVA 1.8 format for MIRA found from http://www.freelists.org/post/mira_talk/Metagenome-assembly,4 ##
cat new_1.fastq | awk '{if (NR % 4 == 1) {split($1, arr, ":"); printf "%s_%s:%s:%s:%s:%s#0/%s\n", arr[1], arr[3], arr[4], arr[5], arr[6], arr[7], substr($2, 1, 1), $0} else if (NR % 4 == 3){print "+"} else {print $0} }' > /homes/sheltonj/output/new_1_header.fastq

cat new_2.fastq | awk '{if (NR % 4 == 1) {split($1, arr, ":"); printf "%s_%s:%s:%s:%s:%s#0/%s\n", arr[1], arr[3], arr[4], arr[5], arr[6], arr[7], substr($2, 1, 1), $0} else if (NR % 4 == 3){print "+"} else {print $0} }' > /homes/sheltonj/output/new_2_header.fastq
