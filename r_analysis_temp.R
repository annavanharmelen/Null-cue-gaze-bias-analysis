ds = read.table(file.choose(), header=T)
View(ds)


#fit repeated measures ANOVA model
model <- aov(rt~factor(cond)+Error(factor(pp)), data = ds)

#view model summary
summary(model)

# Post-hoc
pairwise.t.test(ds[,3], ds[,2], p.adjust.method = 'bonferroni', paired=1)

ds2['cond'] <- as.numeric(c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3))
ds2['cond'] <- factor(ds2['cond'], labels = c('cond1', 'cond2', 'cond3'))

leveneTest(ds$rt, ds$cond)
library(carData)
library(car)
library(stats)
shapiro.test(ds$rt[ds$cond == 1])
shapiro.test(ds$rt[ds$cond == 2])
shapiro.test(ds$rt[ds$cond == 3])

install.packages("ggplot2")
install.packages("gghalves")
i
install.packages("ggrain")
library(ggplot2)
library(ggrain)

pairwise.t.test(ds$rt, ds$cond, 'bonferroni', paired=1)

ggplot(ds, aes(x = cond, y = rt, fill = as.factor(cond))) + 

geom_rain(violin.args = list(alpha = 0.5, size = 1, linewidth = 0.7),
          boxplot.args = list(alpha = 1, linewidth = 0.7)) +

geom_hline(yintercept = 0, linetype = 2) +

scale_fill_manual(values = c('red', 'blue', 'green')) +

scale_y_continuous("Decision time difference (ms)") +

theme_classic() +

scale_fill_brewer(palette = 'Dark2') +

scale_x_discrete(labels=c('Congruent', 'Neutral', 'Incongruent'))
