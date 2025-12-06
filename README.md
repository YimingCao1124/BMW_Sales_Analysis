# BMW Global Sales Analysis (2010-2024)

**P8105 Data Science Final Project**

## Project Overview

This project analyzes BMW's global sales performance across six major regions over a 15-year period (2010-2024), examining regional variations, model preferences, and the transition to electric vehicles.

## Team Members

- **Dianchen Li** (dl3836)
- **Yiming Cao** (yc4779)
- **Teresa Sha** (qs2301)
- **Yilin Cai** (yc4804)

## Website Structure

### Main Pages

- **index.html** - Project homepage with overview and key findings
- **data_source.html** - Dataset description and source information
- **data_cleaning.html** - Data cleaning process and code
- **eda.html** - Exploratory data analysis with interactive visualizations
- **modeling.html** - Statistical modeling (in progress)
- **report.html** - Complete project report
- **team.html** - Team member information

### Key Features

- **Interactive World Map** - Explore BMW sales by region and year with zoom/pan capabilities
- **BMW Blue Theme** - Professional color scheme matching BMW's brand identity
- **Unified Code Toggle** - "Show/Hide Code" button for all R code blocks
- **Responsive Design** - Works on desktop, tablet, and mobile devices
- **Floating Table of Contents** - Easy navigation through analysis sections

## Data Source

BMW Sales Dataset (2010-2024) from [Kaggle](https://www.kaggle.com/datasets/eshummalik/bmw-sales-dataset)

- ~50,000 sales transactions
- 6 global regions
- 15+ BMW models
- Variables: model, year, region, fuel type, price, sales volume, etc.

## Key Findings

1. **Regional Balance** - Sales relatively balanced across regions, but with different growth patterns
2. **SUV Dominance** - X5 and X3 consistently top sellers globally
3. **Gradual EV Transition** - Electric/hybrid adoption growing but slower than expected
4. **COVID-19 Impact** - 2020 decline with varied recovery rates by region
5. **Price Inelasticity** - Weak correlation between price and sales in luxury segment

## Technologies Used

- **R** - Data analysis and visualization
- **RMarkdown** - Reproducible reporting
- **ggplot2** - Static visualizations
- **plotly** - Interactive charts and maps
- **HTML/CSS** - Website design
- **Git/GitHub** - Version control and hosting

## Files and Folders

```
├── index.html              # Homepage
├── data_source.html        # Data documentation
├── data_cleaning.html      # Cleaning process
├── eda.html               # Exploratory analysis
├── modeling.html          # Statistical models
├── report.html            # Full report
├── team.html              # Team info
├── styles.css             # BMW blue theme styling
├── navbar.html            # Navigation bar component
├── Data Cleaning.Rmd      # Cleaning source code
├── EDA.Rmd               # Analysis source code
├── data/
│   ├── BMW sales data (2010-2024).csv
│   ├── bmw_clean.csv
│   └── bmw_yearly_clean.csv
└── image/
    ├── BMW-M-Cars-696x464.jpg
    └── cq5dam.resized.img.585.low.time1689578512404.jpg
```

## How to View

1. Clone this repository
2. Open `index.html` in a web browser
3. Navigate through sections using the top menu bar
4. Explore interactive visualizations in the EDA section

## Project Timeline

- **Week 1-2**: Proposal, data collection, cleaning
- **Week 3**: Exploratory analysis and visualization
- **Week 4**: Statistical modeling and website development
- **Week 5**: Report writing and screencast creation
- **Week 6**: Final submission and peer review



## License

Educational project for Columbia University P8105 Data Science course.
