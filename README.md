# Goodhart's Commit Overflow

This repository contains a PowerShell script to accomplish the following:
* Add a few random characters to RandomStrings.txt
* Generate a verb-adjective-noun phrase that sounds like a real technical commit message
* Run Git commands to push a commit with that message to a remote repository

One can sign the script with a locally-generated script certificate on Windows
using the following instructions from Microsoft:

[Microsoft Learn:  PowerShell, _aboutSigning](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_signing?view=powershell-7.5)

Then, if the local execution policy (for the user and the local machine) are set
to `Remote-Signed` (or anything less restrictive), the script can be run from the 
command line similar to an executable.

The script can be set to run on startup or login, thus guaranteeing a Git commit
every day, which can be used to fulfill a New Year's resolution or a challenge that
was originally intended to get one learning or working on projects.  Using it in
this fashion is a demonstration of Goodhart's Law, that when a metric becomes a 
target it is no longer a useful metric.