
```mermaid
flowchart TD
    A[Start] --> B{What is your research question?}
    B --> C[Comparing means between groups]
    B --> D[Assessing relationships between variables]
    B --> E[Predicting outcomes]

    C --> F{Type of data}
    F --> G[Numeric (Continuous/Discrete)]
    F --> H[Categorical (Nominal/Ordinal)]

    G --> I{Number of groups}
    I --> J[Two groups]
    I --> K[More than two groups]

    J --> L{Are the groups independent?}
    L --> M[Independent]
    L --> N[Related/Paired]

    M --> O{Is data normally distributed?}
    O --> P[Yes]
    O --> Q[No]

    P --> R[**Independent Samples t-test**]
    Q --> S[**Mann-Whitney U test**]

    N --> T{Is data normally distributed?}
    T --> U[Yes]
    T --> V[No]

    U --> W[**Paired Samples t-test**]
    V --> X[**Wilcoxon Signed-Rank test**]

    K --> Y{Is data normally distributed?}
    Y --> Z[Yes]
    Y --> AA[No]

    Z --> AB[**ANOVA**]
    AA --> AC[**Kruskal-Wallis test**]

    H --> AD{Type of categorical data}
    AD --> AE[Nominal]
    AD --> AF[Ordinal]

    AE --> AG[**Chi-Square test**]
    AG --> AH{Are expected frequencies >5?}
    AH --> AI[Yes] --> AJ[Proceed with Chi-Square]
    AH --> AK[No] --> AL[**Fisher's Exact test**]

    AF --> AM[**Mann-Whitney U test** or **Kruskal-Wallis test**]

    D --> AN{Type of variables}
    AN --> AO[Both variables numeric]
    AN --> AP[One numeric, one categorical]
    AN --> AQ[Both variables categorical]

    AO --> AR{Is data normally distributed?}
    AR --> AS[Yes] --> AT[**Pearson Correlation**]
    AR --> AU[No] --> AV[**Spearman Correlation**]

    AP --> AW[**t-test** or **ANOVA** (if categorical variable has more than two levels)]
    AQ --> AX[**Chi-Square test of Independence**]

    E --> AY[**Regression Analysis**]
    AY --> AZ{Type of regression}
    AZ --> BA[Linear Regression]
    AZ --> BB[Logistic Regression]
    AZ --> BC[Multinomial Regression]

    %% Assumptions Checks
    R & W & AB & AT & BA --> BD{Check assumptions met?}
    BD --> BE[Yes] --> BF[Report Results]
    BD --> BG[No] --> BH[Consider data transformation or non-parametric alternatives]
    BH --> S & X & AC & AV & BB

    %% Ending
    BF & AJ & AL & AM & AQ & AV & BB & AC & S & X --> BI[End]

