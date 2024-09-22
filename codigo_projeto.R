# Importando Bibliotecas --------------------------------------------------

if(!require(pacman)) {
  install.packages("pacman")
} else {
  pacman::p_load("dplyr","DescTools","car","rstatix","ggplot2","qqplotr", "multcomp")
}

# Análise -----------------------------------------------------------------

data(PlantGrowth)
head(PlantGrowth)

PlantGrowth %>% group_by(group) %>% get_summary_stats(weight)

leveneTest(weight ~ group, PlantGrowth, center = median)

boxplot(weight ~ group,data = PlantGrowth,
        ylab = "", xlab = "", main = "Boxplot do Peso por Grupo")

PlantGrowth[PlantGrowth$group == 'trt1', ]

modelo <- lm(weight ~ group, data = PlantGrowth)
resultado_anova <- anova(modelo)

shapiro.test(residuals(modelo))

PlantGrowth$residuos <- residuals(modelo)

ggplot(PlantGrowth, aes(sample = residuos)) +
  stat_qq_band() +
  stat_qq_line() +
  stat_qq_point() +
  labs(title = "Gráfico Q-Q dos Resíduos", x = "Quantis Teóricos", y = "Quantis Amostrais") +
  theme(plot.title = element_text(hjust = 0.5))

resultado_anova

dunnett <- glht(modelo, linfct = mcp(group = "Dunnett"))
summary(dunnett)