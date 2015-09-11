# Developers Notes

## Requirements

The export methods used here require the redcap_cli python module.  To install it use standard python methods

    pip install redcap_cli

## Exporting dictionaries

To export these dictionaries from a project, use the redcap_metadata command to export them on the command line:

    redcap_metadata --token [your_token] --url https://yourhost.domain.org/redcap/api/ > all.csv

If these dictionaries are mixed with other forms you want to exclude, these command can extract them nicely with the script `export-all.sh`


## Contributions

To make your own contribution to this instrument, please fork repo at Github, modify files as needed and submit a pull request. Please submit pull requests to the develop branch if it exists.


## Releases

The project is managed with Gitflow to create releases. We use GitFlow defaults for branch naming. The ChangeLog is managed according to the [Keep a CHANGELOG](http://keepachangelog.com/). Version numbers adhere to [Semantic Versioning 2.0.0](http://semver.org/)

TODO: Consider using https://github.com/aktau/github-release to add packaged instruments to the Github release.
