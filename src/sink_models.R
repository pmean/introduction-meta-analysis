
load("data/intro.RData")
library(metafor)
sink(file="src/los_random_effects.txt")
print(los_random_effects)
sink()

draw_table <- function() {
  par(mar=rep(0, 4), cex=1.5)
  plot(c(100, 200), c(100, 200), axes=FALSE, type="n")
  text(110, 160, "Male")
  text(110, 140, "Female")
  text(130, 180, "Survived")
  text(150, 180, "Died")
  text(130, 160, "142")
  text(150, 160, "709")
  text(130, 140, "308")
  text(150, 140, "154")
}

h <- 200
w <- 480
fn <- "images/titanic_table.bmp"
bmp(height=h, width=w,filename=fn)
draw_table()
dev.off()

fn <- "images/titanic_or.bmp"
bmp(height=h, width=w, filename=fn)
draw_table()
text(180, 180, "odds")
text(180, 160, "709/142=4.993")
text(180, 140, "154/308=0.5")
text(180, 120, "odds ratio = 9.986")
dev.off()

fn <- "images/titanic_rr.bmp"
bmp(height=h, width=w, filename=fn)
draw_table()
text(180, 180, "P[Death]")
text(180, 160, "709/(709+142)=0.833")
text(180, 140, "154/(154+308)=0.333")
text(180, 120, "Relative risk = 2.502")
dev.off()

fn <- "images/titanic_rd.bmp"
bmp(height=h, width=w, filename=fn)
draw_table()
text(180, 180, "P[Death]")
text(180, 160, "709/(709+142)=0.833")
text(180, 140, "154/(154+308)=0.333")
text(180, 120, "Risk difference = 0.500")
dev.off()