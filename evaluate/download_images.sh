#!/bin/bash

# List of repository names
repo_names=(
  "astropy"
  "requests"
  "plotly.py"
  "flask"
  "sphinx"
  "scikit-learn"
  "seaborn"
  "xarray"
  "datasets"
  "more-itertools"
  "sympy"
  "pylint"
)

# Base Docker image URL
image_base="shanchaol/repocod:"

# Loop through each repository name to pull images
for repo in "${repo_names[@]}"; do
    # Pull the Docker image
    echo "Pulling image for ${repo}..."
    docker pull "${image_base}${repo}"

    # Check if the image pull was successful
    if [[ $? -eq 0 ]]; then
        echo "Image for ${repo} pulled successfully."
    else
        echo "Failed to pull image for ${repo}."
    fi
done
