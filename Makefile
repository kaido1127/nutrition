build-runner:			 			## Run build_runner to generate resources and codes
	flutter pub run build_runner build --delete-conflicting-outputs

build-runner-watch:					## Watch build_runner to auto generate resources and codes
	flutter pub run build_runner watch --delete-conflicting-outputs

clean:							 	## Cleans the environment
	echo "Cleaning project..."
	rm -rf pubspec.lock
	flutter clean

# Adding a help file: https://gist.github.com/prwhite/8168133#gistcomment-1313022
help: 				 				## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build-ipa:							## Build IPA file to upload to AppStore or TestFlight
	flutter build ipa --obfuscate --split-debug-info=./debug-info --no-tree-shake-icons
gen-intl:							## Generate localization strings
	flutter --no-color pub global run intl_utils:generate

.PHONY: build-runner build-runner-watch clean build-ipa help