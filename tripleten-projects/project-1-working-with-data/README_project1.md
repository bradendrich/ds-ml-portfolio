
 # Working with Data in Python: IMDb Movies and TV Shows

 ## Project Overview

 This project explores a dataset of movies and TV shows from the entertainment industry using **Python** and **pandas**.
 The work is framed around the idea of the modern “Golden Age” of television, starting around the late 1990s, and uses
 real-world style tasks to practice loading, cleaning, and transforming data in preparation for more advanced analysis.

 The original learning objective was to investigate how the number of votes a title receives on IMDb relates to its rating,
 with a focus on TV shows during the “Golden Age” of television. In this version of the project, the emphasis is on
 building a clean, well-structured dataset and reusable helper functions that make it easy to carry out that analysis.

 ## Business/Analytical Question

 > Do highly rated TV shows from the “Golden Age” of television also tend to have the highest number of IMDb votes?

 While this notebook primarily focuses on data cleaning and transformations, it sets up the tools and filtered data you would
 need to fully test this assumption (for example, by plotting IMDb rating vs. IMDb votes for selected time periods and types).

 ## Dataset

The dataset used in the original learning platform is `movies_and_shows.csv` and contains one row per person–title combination,
 with information about both movies and TV shows.

 **Columns:**

 - `name` — name of the actor or director  
 - `character` — character played (for actors)  
 - `role` — whether the person is an actor or a director  
 - `title` — title of the movie or show  
 - `type` — whether the title is a *movie* or a *show*  
 - `genres` — comma-separated list of genres for the title  
 - `release_year` — year the title was released  
 - `imdb_score` — IMDb rating for the title  
 - `imdb_votes` — number of IMDb user votes for the title  

 In the original training environment the file lived at `/datasets/movies_and_shows.csv`. For this GitHub version, it’s
 recommended to place it under a local `data/` directory, e.g. `data/movies_and_shows.csv`.

 ## Project Goals

 - Practice loading tabular data with pandas  
 - Explore DataFrame structure and identify data-quality issues  
 - Clean inconsistent column names and fix obvious data entry errors  
 - Filter and subset the data using conditions  
 - Implement reusable helper functions for:
   - Selecting top-rated titles by IMDb score
   - Selecting titles from a specific decade
   - Categorizing a title’s IMDb score into “Excellent / Good / Average / Low”  

 ## Tools and Technologies

 - **Language:** Python 3.x  
 - **Libraries:**  
   - `pandas` for data loading and manipulation  
 - **Environment:** Jupyter Notebook / JupyterLab / VS Code with Jupyter extension

 ## Repository Structure (suggested)

 ```text
 project-root/
 ├─ data/
 │  └─ movies_and_shows.csv        # Dataset (not always included in repo)
 ├─ notebooks/
 │  └─ project1_working_with_data_in_python_clean.ipynb
 ├─ README.md
 ├─ CHANGELOG.md
 └─ requirements.txt
 ```

 You can adjust the exact paths to match your own organization, but separating **data** from **notebooks** is a good practice.

 ## Key Steps and Workflow

 1. **Load the dataset**
    - Read the CSV file into a pandas DataFrame.
    - Quickly inspect the first few rows (`.head()`) to understand the structure.

 2. **Inspect the DataFrame**
    - Use `.info()` and `.describe()` to get an overview of the schema and basic statistics.
    - Check for suspicious column names, types, and missing values.

 3. **Clean column names**
    - Fix typos and inconsistent formatting in column names such as:
      - `'   name'` → `name`
      - `'Character'` → `character`
      - `'r0le'` → `role`
      - `'TITLE'` → `title`
      - `'  Type'` → `type`
      - `'release Year'` → `release_year`
      - `'imdb sc0re'` → `imdb_score`
      - `'imdb v0tes'` → `imdb_votes`  

    This ensures consistent naming and avoids bugs later in the analysis.

 4. **Fix data quality issues**
    - Correct a misspelled actor name entry (e.g., fixing `"In??s Prieto"` to `"Ines Prieto"`)
      using `.loc[]` and conditional indexing.

 5. **Filter data for analysis**
    - Filter by type (e.g., separate movies from shows).
    - Prepare subsets of data based on score thresholds or time periods (e.g., by decade).

 6. **Implement helper functions**
    - `get_top_movies_from_decade(decade_start, min_score)`  
      Returns the top-rated titles for a given decade above a specified IMDb score.
    - `get_unique_top_movies(min_score)`  
      Returns a set of unique movie titles with at least `min_score` on IMDb.
    - `categorize_imdb_score(title)`  
      Looks up a title and categorizes its IMDb score as:
      - `Excellent` (≥ 9.0)
      - `Good` (≥ 7.0)
      - `Average` (≥ 5.0)
      - `Low` (< 5.0)
      - or `"Title not found"` if the title doesn’t exist in the dataset.

 These functions demonstrate how to combine filtering, indexing, and simple logic into reusable, testable building blocks.

 ## Example Usage

 ```python
 # Get all unique movie titles with IMDb score >= 9.0
 top_movies = get_unique_top_movies(9.0)

 # Get the best titles from the 1990s with score >= 8.5
 nineties_hits = get_top_movies_from_decade(1990, 8.5)

 # Categorize a single movie by its IMDb score
 rating_category = categorize_imdb_score("Taxi Driver")
 ```

 ## Results and Next Steps

 In its current form, this project focuses on preparing and exploring the data rather than presenting final, polished
 statistical conclusions about the relationship between IMDb votes and ratings.

 **Next analytical steps could include:**

 - Filtering specifically for **TV shows** released from around **1999 onward**.
 - Plotting `imdb_score` vs. `imdb_votes` for those shows to visualize the relationship.
 - Calculating correlation coefficients between rating and number of votes.
 - Comparing highly rated but obscure titles (high score, low votes) with popular hits (high score, high votes).

 These additions would turn this learning project into a more polished portfolio analysis.

 ## How to Run the Project

 1. Clone the repository:

    ```bash
    git clone <your-repo-url>.git
    cd <your-repo-folder>
    ```

 2. (Optional but recommended) Create and activate a virtual environment:

    ```bash
    python -m venv .venv
    source .venv/bin/activate  # On Windows: .venv\Scripts\activate
    ```

 3. Install dependencies:

    ```bash
    pip install -r requirements.txt
    ```

 4. Place the dataset in the `data/` directory (or update the path in the notebook).

 5. Open the notebook:

    ```bash
    jupyter notebook notebooks/project1_working_with_data_in_python_clean.ipynb
    ```

    or open it directly in VS Code with the Jupyter extension.

 ## Author

 **Braden Richards**  
 - Data Science & Machine Learning trainee  
 - Background in Biology and research  
 - Interested in applying data analysis to real-world problems in science, media, and beyond.
