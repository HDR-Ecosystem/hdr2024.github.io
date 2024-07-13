#/bin/bash

rm -rf ./dist
git clone -b gh-pages `git config remote.origin.url` dist
npm run astro build
cd dist
git add -A
git commit -a -m 'publish'
git push
cd ..

