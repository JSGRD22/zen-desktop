set -ex

branch=zen-"$1"
default_branch="central"

if [ $branch = "zen-stable" ]; then
  default_branch="zen-twilight"
fi

git checkout "$branch"
git merge "$default_branch"
git push origin "$branch"

git checkout "$default_branch"