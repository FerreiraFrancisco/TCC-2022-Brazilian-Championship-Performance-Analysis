# ⚽ Análise Multivariada dos Fatores que Determinam o Desempenho dos Jogadores no Brasileirão Série A - 2022

> Trabalho de Conclusão de Curso — Departamento de Estatística, Universidade de Brasília (UnB)
> **Autor:** Francisco Iago dos Reis Ferreira | **Orientador:** Prof. Gladston Luiz da Silva | **Ano:** 2023

---

## 📋 Sobre o Projeto

Este trabalho aplica técnicas de **Análise Multivariada** para identificar os principais fatores que influenciam o desempenho dos jogadores no **Campeonato Brasileiro Série A de 2022** — a 67ª edição da principal competição de futebol profissional do Brasil.

A motivação vem da revolução que Billy Beane e o *Moneyball* causaram no baseball: mostrar que dados estatísticos podem revelar padrões que o olho humano não consegue capturar facilmente. No futebol brasileiro, o mesmo raciocínio se aplica — e é o que este trabalho explora.

---

## 🎯 Objetivos

- Identificar os fatores que mais influenciam o desempenho dos clubes no Brasileirão 2022
- Comparar o perfil dos jogadores dos **times do G6** (classificados para a fase de grupos da Libertadores) com os do **Z4** (rebaixados)
- Aplicar **Análise de Componentes Principais (ACP)** separadamente para defensores, meio-campistas e atacantes
- Gerar scores individuais para ranquear os jogadores em cada posição

---

## 🔬 Metodologia

O trabalho seguiu o framework **CRISP-DM** (Cross Industry Standard Process for Data Mining), organizado em 6 fases:

| Fase | Descrição |
|------|-----------|
| 1 - Entendimento do Problema | Definição dos objetivos e coleta dos dados |
| 2 - Entendimento dos Dados | Identificação de valores ausentes e inconsistências |
| 3 - Preparação dos Dados | Padronização, imputação pela mediana e seleção de variáveis |
| 4 - Modelagem | Aplicação da Análise de Componentes Principais (ACP) |
| 5 - Avaliação | Validação dos resultados obtidos |
| 6 - Conclusão | Discussão e interpretação dos achados |

### Técnica Estatística Principal

**Análise de Componentes Principais (ACP)** — método de redução de dimensionalidade que transforma variáveis correlacionadas em componentes ortogonais (não correlacionados), retendo o máximo de variabilidade possível dos dados originais.

---

## 📊 Dados

- **Fonte:** [FBref — 2022 Série A Stats](https://fbref.com/en/comps/24/2022/2022-Serie-A-Stats)
- **Formato:** Planilhas Excel organizadas por tipo de estatística
- **Cobertura:** Todos os jogadores de linha que participaram da competição

### Variáveis coletadas por categoria:

| Código | Categoria |
|--------|-----------|
| `Axx` | Finalizações (*Shooting*) |
| `Pxx` | Passes (*Passing*) |
| `TPxx` | Tipos de passe (*Pass Types*) |
| `GSCxx` | Criação de jogadas (*Goal and Shot Creation*) |
| `Dxx` | Ações defensivas (*Defensive Actions*) |
| `POxx` | Posse de bola (*Possession*) |
| `Txx` | Tempo de jogo (*Playing Time*) |
| `Mxx` | Estatísticas diversas (*Miscellaneous Stats*) |

### Divisão dos grupos analisados:

| Grupo | Clubes | Defensores | Meio-campistas | Atacantes |
|-------|--------|-----------|----------------|-----------|
| **Geral** | 20 clubes | 243 | 238 | 221 |
| **G6** | Palmeiras, Internacional, Fluminense, Corinthians, Flamengo, Athletico-PR | 72 | 61 | 71 |
| **Z4** | Ceará, Atlético Goianiense, Avaí, Juventude | 52 | 49 | 46 |

---

## 📈 Principais Resultados

### Defensores
- **CP1** (variância geral): representa uma média de desempenho comum a todos os defensores
- **CP2** (fatores determinantes): evidenciou a importância dos **laterais** — jogadores com maior participação em cruzamentos, passes que geram chutes e domínio no terço ofensivo se destacaram
- Defensores do G6 demonstraram desempenho defensivo superior (bloqueios de chute, duelos aéreos), enquanto no Z4 a participação ofensiva dos laterais foi mais determinante

### Meio-campistas
- A qualidade de passe e a capacidade de finalização foram os fatores que mais diferenciaram os jogadores
- Variáveis como passes que geram chutes (P21), cruzamentos (P22) e passes que movem a bola em direção ao gol (PO22) foram os principais indicadores de qualidade

### Atacantes
- Jogadores do G6 apresentaram superioridade clara nas variáveis ofensivas (gols, finalizações)
- Atacantes do Z4 mostraram maior participação defensiva, sugerindo um perfil de jogo distinto

### 🏆 Top 10 Destaques (exemplos)

**Melhores Defensores — CP1 (G6):** Marcos Rocha (Palmeiras), Renê (Internacional), Ayrton Lucas (Flamengo)

**Melhores Meio-campistas — CP1 (G6):** André (Fluminense), Carlos de Pena (Internacional), Gustavo Scarpa (Palmeiras)

**Melhores Atacantes — CP1 (G6):** Jhon Arias (Fluminense), Dudu (Palmeiras), Roger Guedes (Corinthians)

---

## 🗂️ Estrutura do Repositório

```
├── data/
│   ├── raw/              # Dados brutos coletados do FBref
│   └── processed/        # Dados tratados e padronizados
├── analysis/
│   ├── defenders.R       # ACP — Defensores
│   ├── midfielders.R     # ACP — Meio-campistas
│   └── forwards.R        # ACP — Atacantes
├── outputs/
│   ├── figures/          # Gráficos e matrizes de correlação
│   └── scores/           # Rankings gerados pela ACP
└── TCC_FranciscoIago.pdf # Documento completo do trabalho
```

---

## 🛠️ Tecnologias Utilizadas

- **R** — análise estatística e visualizações
- **Excel** — coleta e organização inicial dos dados

---

## 📚 Referências Principais

- JOLLIFFE, I. T. *Principal Component Analysis*. Springer, 2002.
- JOHNSON, R. A.; WICHERN, D. W. *Applied Multivariate Statistical Analysis*. Prentice Hall, 2002.
- LEWIS, M. *Moneyball: The Art of Winning an Unfair Game*. WW Norton & Company, 2004.
- ANDERSON, C.; SALLY, D. *The Numbers Game*. Penguin, 2013.

---

## 📄 Licença

Este projeto foi desenvolvido para fins acadêmicos. Caso utilize este trabalho como referência, por favor cite adequadamente.

---

<p align="center">
  Universidade de Brasília — Departamento de Estatística — 2023
</p>
