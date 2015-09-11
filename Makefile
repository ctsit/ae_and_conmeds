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

clean:
	rm instrument.csv
