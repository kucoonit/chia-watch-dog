LOG_FILE_NAME=~/.chia/mainnet/log/debug.log

# found block
echo '2021-11-14T01:42:54.775 full_node flora_proxy: chia.full_node.full_node: INFO     🍀 ️Farmed unfinished_block 91cd50fb034b10e4b0bb5a00c03cff865d2798bf97dd1f3f4391ef34b88d2bed, SP: 55, validation time: 0.0165 seconds, cost: 0' >>${LOG_FILE_NAME}

# signage point
echo '2021-11-11T02:42:44.183 full_node flora_proxy: chia.full_node.full_node: INFO     ⏲️  Finished signage point 54/64: CC: 943160d41fd910f81d1b32928e676873e0a007c74ec709fbfa92118a8e69ca05 RC: 6ddad5b3f0114ab2c667cd4f8d907d62204ecaf6031fe751044f1cd87b9e58e5' >>${LOG_FILE_NAME}
echo '2021-11-13T03:42:44.183 full_node flora_proxy: chia.full_node.full_node: INFO     ⏲️  Finished signage point 54/64: CC: 943160d41fd910f81d1b32928e676873e0a007c74ec709fbfa92118a8e69ca05 RC: 6ddad5b3f0114ab2c667cd4f8d907d62204ecaf6031fe751044f1cd87b9e58e5' >>${LOG_FILE_NAME}
echo '2021-11-16T04:42:44.183 full_node flora_proxy: chia.full_node.full_node: INFO     ⏲️  Finished signage point 54/64: CC: 943160d41fd910f81d1b32928e676873e0a007c74ec709fbfa92118a8e69ca05 RC: 6ddad5b3f0114ab2c667cd4f8d907d62204ecaf6031fe751044f1cd87b9e58e5' >>${LOG_FILE_NAME}

# adding coin
echo '2021-11-14T05:44:47.829 wallet flora_proxy: chia.wallet.wallet_state_manager: INFO     Adding coin: {'amount': 500000000000,' >>${LOG_FILE_NAME}

# plots
echo '2021-11-11T06:44:09.598 harvester flora_proxy: chia.harvester.harvester: INFO     10 plots were eligible for farming 0957f85c4c... Found 0 proofs. Time: 1.53096 s. Total 1000 plots' >>${LOG_FILE_NAME}
echo '2021-11-13T07:44:09.598 harvester flora_proxy: chia.harvester.harvester: INFO     10 plots were eligible for farming 0957f85c4c... Found 0 proofs. Time: 1.53096 s. Total 300 plots' >>${LOG_FILE_NAME}
echo '2021-11-15T08:44:09.598 harvester flora_proxy: chia.harvester.harvester: INFO     10 plots were eligible for farming 0957f85c4c... Found 0 proofs. Time: 1.53096 s. Total 1100 plots' >>${LOG_FILE_NAME}
echo '2021-11-16T09:44:09.598 harvester flora_proxy: chia.harvester.harvester: INFO     10 plots were eligible for farming 0957f85c4c... Found 0 proofs. Time: 1.53096 s. Total 1200 plots' >>${LOG_FILE_NAME}