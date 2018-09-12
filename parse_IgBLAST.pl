#!/bin/bash

./igblastn -germline_db_V database/horse_V \
-germline_db_J database/horse_J \
-germline_db_D database/horse_D \
-query out_collapse-unique.fasta \
-auxiliary_data optional_file/horse.aux \
-outfmt '7 qlen std' \
-out out.fmt \
-domain_system imgt \
-ig_seqtype Ig \
-D_penalty -4 \
-J_penalty -3 \
-evalue 25
