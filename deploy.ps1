$ErrorActionPreference = "Stop"

Write-Host "Deploying updates to GitHub"

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public

# Add changes to git.
git add .

# Commit changes.
$date = Get-Date
$msg="rebuilding site " + $date.ToString("u")

git commit -m "$msg"

# Push source and build repos.
git push origin master