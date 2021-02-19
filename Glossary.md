
**rm** - a command used to remove a file from the filesystem. Use the '-r' flag to removes recursively. Use the '-'f flag to force the operation without checking with the user.
```
# remove the folder called folderOne and all the files in it.

rm -rf folderOne
```


**cp** - a command to copy a file from the filesystem. Use the '-r' flad to copy files and directories recursively.

```
# copy a file named fileOne and rename it fileTwo.

cp fileOne fileTwo
```


**mv** - a command to move a file to another directory or rename a file. Use the new filename or directory name to move to.

```
# move a file name fileOne to a directory called directoryOne

mv fileOne directoryOne
```

**chmod** - change permissions for a fiel. Only accessible to creator of the file

```
#change permissions of a file name fileOne for user to be able to write to a file named fileOne

chmod u+w fileOne
```


**cd** - a command to change directories. 

```
#change from home directory to directory named directoryOne

cd directoryOne
```


**ls** - a command that lists the directory contents of directories and files.

```
#list directories and files from a directory named directoyOne

ls directoryOne
```


**echo** - a command that writes its arguments to standard output

```
#display input text of 'test output' using the echo command

$ echo test output
```


**git add** - adds file to be committed to git repository

```
# add a file named fileOne

git add fileOne
```

**git push** - pushes the updated files to git repository

```
# push all updated files 
git push
```


**touch** - updates the timestamp of a file or creates a new file if the filename does not already exist

```
# update the timestamp of a file that has already been created called fileOne

touch fileOne
```


**grep** - command that searches for text that match regular expression

```
# searches a file called fileOne for a string "sample"

grep "sample" fileOne
```


