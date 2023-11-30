printf "→ Add Affinity Dictionary\n"
printf "> English\n"
read RAWENG
printf "> 한국어\n"
read RAWKOR

# 특수문자 변환
ENG=$(printf $RAWENG | sed -e "s/ \/ / \\\\\/ /" | sed -e "s/\[/\\\[/")
KOR=$(printf $RAWKOR | sed -e "s/ \/ / \\\\\/ /" | sed -e "s/\[/\\\[/")

# 결과 생성
result=$(printf "s/$ENG\";/$KOR\";/")

# 사전 등록
cd ~/Affin.ko/dict/
printf ${result} >>Designer
printf ${result} >>Photo
printf ${result} >>Publisher

# 사전 정렬
cat ./Designer | sort | uniq >DictionaryDesigner.temp && mv DictionaryDesigner.temp DictionaryDesigner
cat ./Photo | sort | uniq >DictionaryPhoto.temp && mv DictionaryPhoto.temp DictionaryPhoto
cat ./Publisher | sort | uniq >DictionaryPublisher.temp && mv DictionaryPublisher.temp DictionaryPublisher
diff3 ./Designer ./Photo ./Publisher >./diff3.log

# printf "주의할 특수문자 &" >>DictionaryDiff
# cat DictionaryDesigner | grep "&" >>DictionaryDiff
# cat DictionaryPhoto | grep "&" >>DictionaryDiff
# cat DictionaryPublisher | grep "&" >>DictionaryDiff
# git add Dictionary*
# git commit -m "Update Dictionary (${ENG} → ${KOR})"
# git push
# ln -sf ~/Affin.ko/Affin.ko-dictionary /usr/local/bin/afdic
# afdic
