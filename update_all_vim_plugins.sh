cd ~/.vim/bundle
for i in `ls`; do
  cd "$i"
  git stash
  git pull
  cd ..
done
