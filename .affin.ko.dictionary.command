cd ~/Affin.ko
cat .affin.ko.dictionary | LC_ALL=C sort | LC_ALL=C uniq >.temp
mv .temp .affin.ko.dictionary
