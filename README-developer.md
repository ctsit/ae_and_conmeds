# Developers Notes

## Requirements

The export methods used here require the redcap_cli python module.  To install it use standard python methods

    pip install redcap_cli

## Exporting dictionaries

To export these dictionaries from a project, use the redcap_metadata command to export them on the command line:

    redcap_metadata --token [your_token] --url https://yourhost.domain.org/redcap/api/ > all.csv

If these dictionaries are mixed with other forms you want to exclude, these command can extract them nicely witht he script `export-all.sh`

