#!/bin/bash
# Authors : Emma Goodwill
# Date: 2/6/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem!
#prompts for file name and regex
echo "Enter a file name: "
read fileName
echo "Enter a regex: "
read regEx
#uses grep to find in accordance with pattern
grep $regEx $fileName
#define txt file var
practiceTxt=regex_practice.txt
#this regex looks for the phone numbers
newRegEx=[0-9]{3}-[0-9]{3}-[0-9]{4}
#output number of phone numbers in txt file
egrep -c $newRegEx $practiceTxt
#find and output number of emails in txt file
newRegEx=@[a-z]+.[a-z]+
egrep -c $newRegEx $practiceTxt
#find and output number of 303 phone numbers in txt file
newRegEx=303-[0-9]{3}-[0-9]{4}
egrep -o $newRegEx $practiceTxt
newRegEx=@geocities.com
#create a new file, send number of @geocities.com emails to it
newFile=email_results.txt
egrep $newRegEx $practiceTxt >> $newFile
