# Borrowed from: https://blog.mikecordell.com/2019/04/14/bulk-org-mode-to-github-flavored-markdown.html

SRC="."
DEST="/Users/rajath/bleh/org-roam-docsify-test/knowledge/docs"

SRC_ESCAPED=$(echo $SRC | sed -e 's/\.\//\\.\\\//g')
DEST_ESCAPED=$(echo $DEST | sed -e 's/\//\\\//g')

STATEMENT="s/^$SRC_ESCAPED/$DEST_ESCAPED/"

# Create mirror'd folder structure at destination
find "$SRC" -type d -exec sh -c 'echo $1 | sed -e "$0" | xargs -I}{ mkdir -p "}{"' "$STATEMENT" {} \;

# Convert each org file to markdown in the destination folder structure
find "$SRC" -iregex ".*org" -exec sh -c 'echo $1 | sed -e "s/\.org$/\.md/" -e "$0" | xargs -I}{ pandoc -s --wrap=preserve -f org -t gfm $1 -o }{' "$STATEMENT" {} \;
# find "$SRC" -iregex ".*org" -exec sh -c 'echo $1 | sed -e "s/\.org$/\.md/" -e "s/[0-9]//g" -e "s/-//g" -e "$0"' "$STATEMENT" {} \;

SIDEBAR_FILE="$DEST/_sidebar.md"
sed -e 's/\.org/\.md/g' $SIDEBAR_FILE | tee $SIDEBAR_FILE
