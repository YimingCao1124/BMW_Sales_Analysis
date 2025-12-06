#!/usr/bin/env Rscript

cat("=== BMW Sales Analysis - RMarkdown Renderer ===\n\n")

# Function to create wrapper HTML
create_wrapper <- function(rmd_file, page_name, title) {
  cat(sprintf("Processing %s...\n", page_name))

  # Render RMD
  rmarkdown::render(rmd_file)

  # Get generated HTML name
  html_name <- sub("\\.Rmd$", ".html", rmd_file)
  rmd_html_name <- paste0(page_name, "_rmd.html")
  wrapper_html_name <- paste0(page_name, ".html")

  # Rename RMD output
  if (file.exists(html_name)) {
    file.rename(html_name, rmd_html_name)
  }

  # Create wrapper HTML with navbar
  wrapper <- sprintf('<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BMW Sales Analysis | %s</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body { margin: 0; padding: 0; }
        iframe { border: none; width: 100%%; height: calc(100vh - 70px); display: block; }
    </style>
</head>
<body>
    <div id="bmw-top-nav" style="position: fixed; top: 0; left: 0; right: 0; height: 70px; background: linear-gradient(135deg, #1C69D4 0%%, #0F4C81 100%%); z-index: 9999; box-shadow: 0 4px 12px rgba(0,0,0,0.15); display: flex; align-items: center; justify-content: center; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', sans-serif;">
        <div style="max-width: 1400px; width: 100%%; padding: 0 3rem; display: flex; justify-content: space-between; align-items: center;">
            <a href="index.html" style="color: white; font-size: 1.5rem; font-weight: 800; text-decoration: none; letter-spacing: -0.5px;">BMW Sales Analysis</a>
            <div style="display: flex; gap: 0.25rem; align-items: center;">
                <a href="index.html" style="color: white; text-decoration: none; padding: 0.6rem 1.1rem; border-radius: 6px; font-weight: 500; font-size: 0.9rem; background: rgba(255,255,255,0.1);">Home</a>
                <a href="data_source.html" style="color: white; text-decoration: none; padding: 0.6rem 1.1rem; border-radius: 6px; font-weight: 500; font-size: 0.9rem; background: rgba(255,255,255,0.1);">Data Source</a>
                <a href="data_cleaning.html" style="color: white; text-decoration: none; padding: 0.6rem 1.1rem; border-radius: 6px; font-weight: 500; font-size: 0.9rem; background: rgba(255,255,255,%s);">Data Cleaning</a>
                <a href="eda.html" style="color: white; text-decoration: none; padding: 0.6rem 1.1rem; border-radius: 6px; font-weight: 500; font-size: 0.9rem; background: rgba(255,255,255,%s);">EDA</a>
                <a href="modeling.html" style="color: white; text-decoration: none; padding: 0.6rem 1.1rem; border-radius: 6px; font-weight: 500; font-size: 0.9rem; background: rgba(255,255,255,%s);">Modeling</a>
                <a href="report.html" style="color: white; text-decoration: none; padding: 0.6rem 1.1rem; border-radius: 6px; font-weight: 500; font-size: 0.9rem; background: rgba(255,255,255,0.1);">Report</a>
                <a href="team.html" style="color: white; text-decoration: none; padding: 0.6rem 1.1rem; border-radius: 6px; font-weight: 500; font-size: 0.9rem; background: rgba(255,255,255,0.1);">Team</a>
            </div>
        </div>
    </div>
    <div style="height: 70px;"></div>
    <iframe src="%s"></iframe>
    <script>
        document.querySelectorAll("#bmw-top-nav a").forEach(link => {
            link.addEventListener("mouseenter", function() {
                if (!this.style.background.includes("0.25")) this.style.background = "rgba(255,255,255,0.25)";
            });
            link.addEventListener("mouseleave", function() {
                if (this.getAttribute("href") !== "%s") this.style.background = "rgba(255,255,255,0.1)";
            });
        });
    </script>
</body>
</html>',
    title,
    if(page_name == "data_cleaning") "0.25" else "0.1",
    if(page_name == "eda") "0.25" else "0.1",
    if(page_name == "modeling") "0.25" else "0.1",
    rmd_html_name,
    wrapper_html_name
  )

  writeLines(wrapper, wrapper_html_name)
  cat(sprintf("  ✓ Created %s\n", wrapper_html_name))
}

# Render all pages
create_wrapper("Data Cleaning.Rmd", "data_cleaning", "Data Cleaning")
create_wrapper("EDA.Rmd", "eda", "EDA")
create_wrapper("Modeling.Rmd", "modeling", "Statistical Modeling")

cat("\n✓ All files rendered successfully!\n")
cat("\nGenerated files:\n")
cat("  - data_cleaning.html (wrapper) + data_cleaning_rmd.html (content)\n")
cat("  - eda.html (wrapper) + eda_rmd.html (content)\n")
cat("  - modeling.html (wrapper) + modeling_rmd.html (content)\n")
