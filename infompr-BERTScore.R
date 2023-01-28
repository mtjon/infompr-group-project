meanRNN <- 0.0884
meanGRU <- 0.1289
meanTra <- 0.1401

nRNN <- 1087
nGRU <- 1087
nTra <- 1087

sdRNN <- 0.1504
sdGRU <- 0.2212
sdTra <- 0.1605

# pooled^2 = ( (n1-1)s1^2 + (n2-1)s2^2 ) / (n1 + n2 - 2)
# t = (x1 - x2) / sqrt(pooled^2)*sqrt(1/n1 + 1/n2)

poolSqRNNGRU <- ( (nRNN-1)*sdRNN^2 + (nGRU-1)*sdGRU^2 ) / (nRNN + nGRU - 2)
tRNNGRU <- (meanRNN-meanGRU) / sqrt(poolSqRNNGRU)*sqrt(1/nRNN+1/nGRU)

poolSqRNNTra <- ( (nRNN-1)*sdRNN^2 + (nTra-1)*sdTra^2 ) / (nRNN + nTra - 2)
tRNNTra <- (meanRNN-meanTra) / sqrt(poolSqRNNTra)*sqrt(1/nRNN+1/nTra)

poolSqGRUTra <- ( (nGRU-1)*sdGRU^2 + (nTra-1)*sdTra^2 ) / (nGRU + nTra - 2)
tGRUTra <- (meanGRU-meanTra) / sqrt(poolSqGRUTra)*sqrt(1/nGRU+1/nTra)

tcrit <- qt((0.05/3), (1087-2), lower.tail = T) # Bonferroni correction


