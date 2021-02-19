mkdir $1

cd $1

git init

mkdir bin
mkdir include
mkdir lib
mkdir share
mkdir man
mkdir info

echo $1 >> "README.md"

echo ".gitignore"


git add --all


git commit -m "Create initial structure"

