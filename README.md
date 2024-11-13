```mermaid
flowchart TD
    %% Start
    A[Start] --> B{Define your Research Question}

    %% Research Question Types
    B --> C[Comparing Groups]
    B --> D[Assessing Relationships]
    B --> E[Predicting Outcomes]

    %% Comparing Groups
    C --> F{What is your Dependent Variable Type?}
    F --> G[Continuous]
    F --> H[Categorical]

    %% Dependent Variable is Continuous
    G --> I{Number of Groups}
    I --> J[Two Groups]
    I --> K[More than Two Groups]

    %% Two Groups
    J --> L{Are Groups Independent?}
    L --> M[Independent]
    L --> N[Paired or Related]

    %% Independent Groups
    M --> O{Is Sample Size Adequate? (n >= 30 per group)}
    O --> P[Yes]
    O --> Q[No]

    P --> R{Assume Normality and Equal Variance?}
    R --> S[Yes]
    R --> T[No]

    S --> U[Independent Samples t-test]
    T --> V[Check Assumptions]

    V --> W{Normality Test e.g., Shapiro-Wilk}
    W --> X{Data Normally Distributed?}
    X --> Y[Yes] --> Z{Homogeneity of Variance Test e.g., Levene's Test}
    Z --> AA{Equal Variances?}
    AA --> AB[Yes] --> AC[Independent Samples t-test]
    AA --> AD[No] --> AE[Welch's t-test]
    X --> AF[No] --> AG[Mann-Whitney U test]

    Q --> AG[Mann-Whitney U test]

    %% Paired Groups
    N --> AH{Is Sample Size Adequate? (n >= 30)}
    AH --> AI[Yes]
    AH --> AJ[No]

    AI --> AK{Normality of Differences?}
    AK --> AL[Yes] --> AM[Paired Samples t-test]
    AK --> AN[No] --> AO[Wilcoxon Signed-Rank test]

    AJ --> AO[Wilcoxon Signed-Rank test]

    %% More than Two Groups
    K --> AP{Are Groups Independent?}
    AP --> AQ[Independent]
    AP --> AR[Repeated Measures]

    AQ --> AS{Assume Normality and Equal Variance?}
    AS --> AT[Yes] --> AU[One-Way ANOVA]
    AS --> AV[No] --> AW[Check Assumptions]

    AW --> AX{Normality Test}
    AX --> AY{Data Normally Distributed?}
    AY --> AZ[Yes] --> BA{Homogeneity of Variance Test}
    BA --> BB{Equal Variances?}
    BB --> BC[Yes] --> AU[One-Way ANOVA]
    BB --> BD[No] --> BE[Welch's ANOVA]
    AY --> BF[No] --> BG[Kruskal-Wallis test]

    AR --> BH{Assume Sphericity? Mauchly's Test}
    BH --> BI[Yes] --> BJ[Repeated Measures ANOVA]
    BH --> BK[No] --> BL[Apply Correction e.g., Greenhouse-Geisser]
    BL --> BJ[Repeated Measures ANOVA]
    BK --> BM[Friedman test]

    %% Dependent Variable is Categorical
    H --> BN{Type of Categorical Variable}
    BN --> BO[Dichotomous]
    BN --> BP[More than Two Categories]

    BO --> BQ{Are Expected Frequencies >= 5?}
    BQ --> BR[Yes] --> BS[Chi-Square Test]
    BQ --> BT[No] --> BU[Fisher's Exact Test]

    BP --> BV[Chi-Square Test]

    %% Assessing Relationships
    D --> BW{Type of Variables}
    BW --> BX[Both Continuous]
    BW --> BY[At least One Ordinal]
    BW --> BZ[Both Categorical]

    BX --> CA{Sample Size Adequate? n >= 30}
    CA --> CB[Yes] --> CC{Linear Relationship?}
    CC --> CD[Yes] --> CE{Data Normally Distributed?}
    CE --> CF[Yes] --> CG[Pearson Correlation]
    CE --> CH[No] --> CI[Spearman Correlation]
    CD --> CH[No] --> CI[Spearman Correlation]
    CB --> CJ[No] --> CI[Spearman Correlation]

    BY --> CI[Spearman Correlation]
    BZ --> CK[Chi-Square Test of Independence]

    %% Predicting Outcomes
    E --> CL{Type of Outcome Variable}
    CL --> CM[Continuous]
    CL --> CN[Categorical]

    CM --> CO{Assumptions Met?}
    CO --> CP[Yes] --> CQ[Linear Regression]
    CO --> CR[No] --> CS[Consider Transformation or Non-parametric Regression]

    CN --> CT{Binary Outcome?}
    CT --> CU[Yes] --> CV[Logistic Regression]
    CT --> CW[No] --> CX[Multinomial Logistic Regression]

    %% End
    AC & AE & AG & AM & AO & AU & BE & BG & BJ & BM & BS & BU & BV & CG & CI & CK & CQ & CS & CV & CX --> CY[End]
