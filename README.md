# Script to download images from Google Drive and resize them

## Usage

### Download

* Put image links to `input/input.txt`

* Run `sh download.sh`

* Images will be in `img/input.txt/` with their IDs preserved

### Resize

* Go to directory

* Run `mogrify -resize x720 ./*`
