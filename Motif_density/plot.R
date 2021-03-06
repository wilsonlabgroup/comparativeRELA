a <-read.table("norm_P_count.txt")
b <-read.table("norm_O_count.txt")
c <-read.table("norm_OA_count.txt")
d <-read.table("norm_C_count.txt")
e <-read.table("norm_CA_count.txt")

pdf("figure2_motif_plot.pdf")
plot(smooth.spline(a),type="l",col='red')
lines(smooth.spline(b),type="l",col='black')
lines(smooth.spline(c),type="l",col='blue')
lines(smooth.spline(d),type="l",col='green')
lines(smooth.spline(e),type="l",col='orange')
dev.off()