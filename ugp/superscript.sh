./setparameters.sh program dijkstra
source SOURCEME
./setparameters.sh params jaccard
source SOURCEME
export SIMULATION_ENABLED=true
ugp3 > UGPOUT_DIJKSTRA_JACC
mv BEST_pop1.s FIT/DIJKSTRAO2_HT_JACC/
mv statistics.csv FIT/DIJKSTRAO2_HT_JACC/
mv FIT/individual* FIT/DIJKSTRAO2_HT_JACC/
mv FIT/pops FIT/DIJKSTRAO2_HT_JACC/
mv FIT/mystat FIT/DIJKSTRAO2_HT_JACC/
touch FIT/pops
touch FIT/mystat
#
#./setparameters.sh program dijkstra
#source SOURCEME
#./setparameters.sh params jaccard maxseq
#source SOURCEME
#export SIMULATION_ENABLED=true
#ugp3 > UGPOUT_DIJKSTRA_JACC_MAXSEQ
#mv BEST_pop1.s FIT/DIJKSTRAO2_HT_JACC_MAXSEQ/
#mv statistics.csv FIT/DIJKSTRAO2_HT_JACC_MAXSEQ/
#mv FIT/individual* FIT/DIJKSTRAO2_HT_JACC_MAXSEQ/
#mv FIT/pops FIT/DIJKSTRAO2_HT_JACC_MAXSEQ/
#mv FIT/mystat FIT/DIJKSTRAO2_HT_JACC_MAXSEQ/
#touch FIT/pops
#touch FIT/mystat

#./setparameters.sh program dijkstra
#source SOURCEME
#./setparameters.sh params maxseq
#source SOURCEME
#export SIMULATION_ENABLED=true
#ugp3 > UGPOUT_DIJKSTRA_MAXSEQ
#mv BEST_pop1.s FIT/DIJKSTRAO2_HT_MAXSEQ/
#mv statistics.csv FIT/DIJKSTRAO2_HT_MAXSEQ/
#mv FIT/individual* FIT/DIJKSTRAO2_HT_MAXSEQ/
#mv FIT/pops FIT/DIJKSTRAO2_HT_MAXSEQ/
#mv FIT/mystat FIT/DIJKSTRAO2_HT_MAXSEQ/
#touch FIT/pops
#touch FIT/mystat
#
#./setparameters.sh program dijkstra
#source SOURCEME
#./setparameters.sh params maxseq linecount
#source SOURCEME
#export SIMULATION_ENABLED=true
#ugp3 > UGPOUT_DIJKSTRA_MAXSEQ_CLINES
#mv BEST_pop1.s FIT/DIJKSTRAO2_HT_MAXSEQ_CLINES/
#mv statistics.csv FIT/DIJKSTRAO2_HT_MAXSEQ_CLINES/
#mv FIT/individual* FIT/DIJKSTRAO2_HT_MAXSEQ_CLINES/
#mv FIT/pops FIT/DIJKSTRAO2_HT_MAXSEQ_CLINES/
#mv FIT/mystat FIT/DIJKSTRAO2_HT_MAXSEQ_CLINES/
#touch FIT/pops
#touch FIT/mystat

#./setparameters.sh program crc32
#source SOURCEME
#./setparameters.sh params jaccard
#source SOURCEME
#export SIMULATION_ENABLED=true
#ugp3 > UGPOUT_CRC32O2_JACC
#mv BEST_pop1.s FIT/CRC32O2_HT_JACC/
#mv statistics.csv FIT/CRC32O2_HT_JACC/
#mv FIT/individual* FIT/CRC32O2_HT_JACC/
#mv FIT/pops FIT/CRC32O2_HT_JACC/
#mv FIT/mystat FIT/CRC32O2_HT_JACC/
#touch FIT/pops
#touch FIT/mystat
#
#./setparameters.sh program crc32
#source SOURCEME
#./setparameters.sh params jaccard maxseq
#source SOURCEME
#export SIMULATION_ENABLED=true
#ugp3 > UGPOUT_CRC32O2_JACC_MAXSEQ
#mv BEST_pop1.s FIT/CRC32O2_HT_JACC_MAXSEQ/
#mv statistics.csv FIT/CRC32O2_HT_JACC_MAXSEQ/
#mv FIT/individual* FIT/CRC32O2_HT_JACC_MAXSEQ/
#mv FIT/pops FIT/CRC32O2_HT_JACC_MAXSEQ/
#mv FIT/mystat FIT/CRC32O2_HT_JACC_MAXSEQ/
#touch FIT/pops
#touch FIT/mystat
#
#./setparameters.sh program crc32
#source SOURCEME
#./setparameters.sh params maxseq
#source SOURCEME
#export SIMULATION_ENABLED=true
#ugp3 > UGPOUT_CRC32O2_MAXSEQ
#mv BEST_pop1.s FIT/CRC32O2_HT_MAXSEQ/
#mv statistics.csv FIT/CRC32O2_HT_MAXSEQ/
#mv FIT/individual* FIT/CRC32O2_HT_MAXSEQ/
#mv FIT/pops FIT/CRC32O2_HT_MAXSEQ/
#mv FIT/mystat FIT/CRC32O2_HT_MAXSEQ/
#touch FIT/pops
#touch FIT/mystat
#
#./setparameters.sh program crc32
#source SOURCEME
#./setparameters.sh params maxseq linecount
#source SOURCEME
#export SIMULATION_ENABLED=true
#ugp3 > UGPOUT_CRC32O2_MAXSEQ_CLINES
#mv BEST_pop1.s FIT/CRC32O2_HT_MAXSEQ_CLINES/
#mv statistics.csv FIT/CRC32O2_HT_MAXSEQ_CLINES/
#mv FIT/individual* FIT/CRC32O2_HT_MAXSEQ_CLINES/
#mv FIT/pops FIT/CRC32O2_HT_MAXSEQ_CLINES/
#mv FIT/mystat FIT/CRC32O2_HT_MAXSEQ_CLINES/
#touch FIT/pops
#touch FIT/mystat
