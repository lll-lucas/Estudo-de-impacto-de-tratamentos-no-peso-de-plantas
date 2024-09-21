# Estudo de Impacto de Tratamentos no Peso das Plantas

# 1. Descrição do Projeto
- Este é um projeto de análise estatística que visa verificar o impacto de tratamentos em uma produção agrícola. São usadas técnicas como a ANOVA e o Teste de Dunnett para comparação das médias dos tratamentos. 

# 2. Base de dados
- O conjunto de dados utilizado foi o PlantGrowth, um dataset nativo do R que contém informações sobre o crescimento de plantas sob diferentes condições de tratamento. Para mais informações sobre o conjunto de dados, consulte a documentação oficial do R:
[PlantGrowth](https://rdocumentation.org/packages/datasets/versions/3.6.2/topics/PlantGrowth).

# 3. Problema de negócio, objetivo e metodologia do projeto

**3.1 Qual é o problema de negócio?**
- Uma empresa agrícola está enfrentando dificuldades em sua produção e deseja reavaliar a eficácia de seus tratamentos. Para realizar essa avaliação, a empresa reuniu dados de seus tratamentos, juntamente
 com um grupo de controle, usando um delineamento inteiramente casualizado (DIC). Agora, busca uma avaliação profissional para testar e analisar os resultados obtidos com esse experimento.
  
**3.2 Quais os objetivos do projeto?**
- Avaliar a eficácia dos tratamentos
- Auxiliar na otimização da produção
- Fornecer uma base sólida para a tomada de decisões futuras sobre a gestão dos tratamentos agrícolas

**3.3 Metodologia**
- Verificação dos dados
- Realização de uma ANOVA para determinar se existe diferença estatística significativa entre os
 tratamentos
- Execução do teste de dunnett para análise direta de cada tratamento em relação ao grupo de
 controle
 
# 4. Tecnologias e Ferramentas
- As tecnologias e ferramentas usadas foram R(dplyr, DescTools, car, rstatix, ggplot2, qqplotr, multcomp), Rstudio e R Markdown.

# 5. Resultados
-  Após a aplicação da ANOVA e do Teste de Dunnett, observamos que nenhum dos tratamentos difere significativamente do grupo de controle. Isso implica que os dois tratamentos analisados não têm um efeito estatisticamente relevante na produção. Baseado nisso, recomendamos a interrupção desses métodos na produção das plantas e a busca por técnicas potencialmente mais eficientes.

# 6. Rode este projeto na sua máquina 

Pré-requisitos

Antes de começar certifique-se de ter o seguinte instalado em sua máquina (outras versões podem funcionar mas o ideal é seguir as descritas abaixo):
- R-4.3.3
- Rstudio
- Rtools43

1. Depois de certificar-se de ter os pré-requisitos instalados, abra um terminal em sua máquina local e execute o seguinte comando para clonar este repositório:

```bash
git clone https://github.com/lll-lucas/Estudo-de-Impacto-de-Tratamentos-no-Peso-das-Plantas.git
```

2. Abra o Rstudio
3. Acesse o arquivo "codigo_projeto.R" contido no repositório clonado
4. Execute os blocos de código seguindo a ordem afim de evitar erros
