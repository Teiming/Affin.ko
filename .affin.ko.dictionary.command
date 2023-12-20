cd ~/Affin.ko
cat .affin.ko.dictionary | sort | uniq >.temp
mv .temp .affin.ko.dictionary
