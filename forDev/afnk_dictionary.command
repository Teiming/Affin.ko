printf "→ Add Affinity Dictionary\n"
printf "> English\n"
read RAWENG
printf "> 한국어\n"
read RAWKOR

# 특수문자 변환
ENG=$(printf $RAWENG | sed -e "s/ \/ / \\\\\/ /" | sed -e "s/\[/\\\[/")
KOR=$(printf $RAWKOR | sed -e "s/ \/ / \\\\\/ /" | sed -e "s/\[/\\\[/")

# 결과 생성
result=$(echo "s/\\\"$ENG\\\";/\\\"$KOR\\\";/")

# 사전 등록
cd ~/Affin.ko/dict/
echo ${result} >>Designer
echo ${result} >>Photo
echo ${result} >>Publisher

# 사전 정렬
cat ./Designer | sort | uniq >./Designer.temp && mv ./Designer.temp ./Designer
cat ./Photo | sort | uniq >Photo.temp && mv Photo.temp Photo
cat ./Publisher | sort | uniq >Publisher.temp && mv Publisher.temp Publisher
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
