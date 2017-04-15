#!/bin/csh
if ($#argv == 0) echo There are no arguments
if (-e tetIfFileExists.csh ) echo tetIfFileExists.csh is an ordinary file
if (-f testIfFileExists.csh ) then
    echo testIfFileExists.csh is an ordinary file
endif

# space between ! and '-d' or '-f' is required below
if (! -d tetIfFileExists.csh ) echo tetIfFileExists.csh is not a directory
if (! -f testDir ) echo testDir is not an ordinary file.
if (-d testDir ) echo testDir rather is a directory.

#https://superuser.com/questions/522230/shell-script-how-to-output-the-owner-of-a-file 4/15/17
#lso() { ls -dl ${1:?usage: lso file} | awk '{print $3;exit}'; }
#https://unix.stackexchange.com/questions/7730/find-the-owner-of-a-directory-or-file-but-only-return-that-and-nothing-else
if (-o tetIfFileExists.csh ) then
echo The file tetIfFileExists.csh is user owned and the user is:
stat -f '%Su' tetIfFileExists.csh
echo In this case, I am using -o option '('in if-statement]')' to check the ownership of the file,
echo '  ' but I am using [[ stat -f '%Su' tetIfFileExists.csh ]] command to get the owner.
endif

if (-o testDir ) then
echo ''
echo The testDir is user owned and the user is:
ls -ld testDir | awk '{print $3}'
echo In this case also, I am using -o option '('in if-statement')' to check the ownership of the dir,
echo "  but I am using ( ls -ld testDir | awk '{print $3}' ) command to get the owner."
endif

if (-r tetIfFileExists.csh ) echo User has read access to the file tetIfFileExists.csh.
if (-w tetIfFileExists.csh ) echo User has write access to the file tetIfFileExists.csh.
if (-x tetIfFileExists.csh ) echo User has execute access to the file tetIfFileExists.csh.
if (! -z tetIfFileExists.csh ) echo The file tetIfFileExists.csh is not zero bytes long.

#https://en.wikipedia.org/wiki/Zero-byte_file:
#  A zero byte file or zero length file is a computer file containing no data; that is, it has a length or size of zero bytes.
#  Zero byte files cannot be loaded or used by most applications. Even a file describing an empty word processor document, an image file with zero by zero dimensions, or an audio file of length zero seconds usually still contains metadata identifying the file format and describing some basic attributes of the file; it results in the file with some positive size. Some very simple formats do not use metadata, such as ASCII text files; these may validly be zero bytes.
#In some cases, zero byte files may be used to convey information like file metadata (for example, its filename may contain an instruction to a user viewing a directory listing such as documents-have-been-moved-to-partition-D.txt, etc); or to put in a directory to ensure that it is nonempty, since some tools such as backup and revision control software may ignore the empty directories.
#There are many ways that could manually create a zero byte file, for example, saving empty content in a text editor, using utilities provided by operating systems, or programming to create it. Zero byte files may arise in cases where a program creates a file but aborts or is interrupted prematurely while writing to it. Because writes are cached in memory and only flushed to disk at a later time (page cache), a program that does not flush its writes to disk or terminate normally may result in a zero byte file. When the zero byte file is made, file system does not record the file's content on storage, but only updates its index table.

if (-z justTouchedFile_DontAddAnythingInThisFile.txt ) echo The file justTouchedFile_DontAddAnythingInThisFile.txt is zero bytes long.
