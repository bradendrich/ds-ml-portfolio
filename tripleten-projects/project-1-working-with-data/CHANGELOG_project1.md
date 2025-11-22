
# Changelog — Project 1: Working with Data in Python

All notable changes to this project will be documented in this file.

## [1.0.0] - Initial GitHub Version

- Migrated the original learning project notebook into a standalone, portfolio-ready format.
- Cleaned column names and fixed data-quality issues (e.g., misspelled actor name).
- Implemented helper functions:
  - `get_unique_top_movies(min_score)`
  - `get_top_movies_from_decade(decade_start, min_score)`
  - `categorize_imdb_score(title)`
- Removed platform-specific reviewer comments and annotations.
- Added this `README.md`, `CHANGELOG.md`, and a minimal `requirements.txt` file.

## Potential Future Improvements (Ideas for v1.1+)

- **Complete the analytical story**:
  - Focus explicitly on TV shows released from 1999 onward.
  - Analyze the relationship between IMDb rating (`imdb_score`) and popularity (`imdb_votes`).
  - Compute correlation and create visualizations to support or refute the initial assumption.

- **Visualization and EDA**:
  - Add histograms and boxplots for ratings and votes.
  - Create scatterplots of `imdb_score` vs. `imdb_votes` for different time periods or genres.

- **Refactoring & Testing**:
  - Move functions into a separate Python module (e.g., `src/utils.py`) and import them in the notebook.
  - Add simple unit tests for helper functions using `pytest` or the standard library’s `unittest`.

- **Reproducibility & Packaging**:
  - Add a `Makefile` or simple run script for setting up the environment and launching the notebook.
  - Provide an `environment.yml` for conda-based setups, if desired.

- **Storytelling for Hiring Managers**:
  - Add a short “Executive Summary” markdown cell at the top of the notebook describing the key question,
    data-cleaning steps, and how this project could be extended.
