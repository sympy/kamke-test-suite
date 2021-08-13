repo_uri="https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"
remote_name="origin"
branch_name="gh-pages"

git config user.name "$GITHUB_ACTOR"
git config user.email "${GITHUB_ACTOR}@bots.github.com"

git add .

if git status | grep 'new file\|modified'
then
    git commit -m "Run the test suite"
    git remote set-url "$remote_name" "$repo_uri"
    git push --force "$remote_name" "$branch_name"
fi