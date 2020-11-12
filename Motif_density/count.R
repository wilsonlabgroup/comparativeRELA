x <- read.table("allpositions_C_relative_to_summit.txt")
a <- table(x$V1)
d <- as.data.frame(table(x$V1))
write.table(d, "C_count.txt", sep="\t",quote=FALSE)

x <- read.table("allpositions_CA_relative_to_summit.txt")
a <- table(x$V1)
d <- as.data.frame(table(x$V1))
write.table(d, "CA_count.txt", sep="\t",quote=FALSE)

x <- read.table("allpositions_O_relative_to_summit.txt")
a <- table(x$V1)
d <- as.data.frame(table(x$V1))
write.table(d, "O_count.txt", sep="\t",quote=FALSE)

x <- read.table("allpositions_OA_relative_to_summit.txt")
a <- table(x$V1)
d <- as.data.frame(table(x$V1))
write.table(d, "OA_count.txt", sep="\t",quote=FALSE)

x <- read.table("allpositions_P_relative_to_summit.txt")
a <- table(x$V1)
d <- as.data.frame(table(x$V1))
write.table(d, "P_count.txt", sep="\t",quote=FALSE)