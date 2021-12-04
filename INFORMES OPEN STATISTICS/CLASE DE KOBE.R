download.file("http://www.openintro.org/stat/data/kobe.RData", destfile = "kobe.RData")
load("kobe.RData")
head(kobe)

kobe$basket[1:9]
kobe_streak <- calc_streak(kobe$basket)
barplot(table(kobe_streak))
outcomes <- c("heads", "tails")
first <- sample(outcomes, size = 1, replace = TRUE)


sim_fair_coin <- sample(outcomes, size = 100, replace = TRUE)

choose(8,2)#this is a function for resolve to combinitorial

