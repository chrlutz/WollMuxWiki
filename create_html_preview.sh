#!/bin/bash
##############################################################
# this script uses pandoc to convert the .mediawiki pages
# to html. This could be used to create a local preview
# of the mediawiki-pages without the need of a full mediawiki
# on the local machine. NOTE: this is only a rough preview
# since pandoc might in details behave different than the
# original mediawiki engine.
##############################################################

mkdir html_preview 2>/dev/null

for i in *.mediawiki
do
  echo converting $i to html...

  # Some preprocessing before pandoc is called:
  # In case of table start elements "{|", we have to remove trailing
  # arguments like "{| border=1" - they are currently not
  # recognized by pandoc.
  cat "$i" | \
    sed "s/{|.*/{|/" | \
    pandoc --toc -s -f mediawiki -t html -o "html_preview/${i/.mediawiki/}"
done

echo "finished. Now please open \"file://$(pwd)/html_preview\" in the browser"
