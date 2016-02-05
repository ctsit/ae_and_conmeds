# Helper script for merging metadata files
#
# Contributors:
#    Andrei Sura <sura.andrei@gmail.com>
#    Ruchi Vivek Desai <ruchivdesai@gmail.com>

help:
	@echo "Available tasks :"
	@echo "\t export                   - export each of the instrument(s)"
	@echo "\t build                    - package instrument(s) for distribution"
	@echo "\t clean                    - remove stray files from directory"

export:
	bash export-all.sh

build:
	bash package-instrument.sh
	@echo "Please attach revised packages to each release at https://github.com/ctsit/ae_and_conmeds/releases"

clean:
	@echo Removing instrument.csv, all.csv, *.zip
	@test ! -f instrument.csv || rm instrument.csv
	@test ! -f all.csv || rm all.csv
	@test ! -f *.zip || rm *.zip
