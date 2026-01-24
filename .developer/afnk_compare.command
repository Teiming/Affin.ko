#!/bin/zsh
APPVERS=3.0.3

ENGPATH=/Applications/Affinity.app/Contents/Resources/en-US.lproj/
JAPPATH=/Applications/Affinity.app/Contents/Resources/ja.lproj/
KORPATH=/Applications/Affinity.app/Contents/Resources/ko.lproj/

ENGFPATH=/Applications/Affinity.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en-US.lproj/
JAPFPATH=/Applications/Affinity.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ja.lproj/
KORFPATH=/Applications/Affinity.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj/

FILECOUNT=$(ls -a "${JAPPATH}" | grep "i" | sed -n "=" | tail -n "1")

for ((i = 1; i <= ${FILECOUNT}; i++)); do
  NAME=$(ls "${JAPPATH}" | sed -n "${i}p")
  printf "${i}/${FILECOUNT}\t${NAME}\n"
  cd ~/literate-winner
  iconv -f utf16le -t utf8 "${JAPPATH}${NAME}" >"${KORPATH}${NAME}.ja.temp"
  diff "${KORPATH}${NAME}.temp" "${KORPATH}${NAME}" | sort | uniq >./"${NAME}".en2ko.log
  diff "${KORPATH}${NAME}.temp" "${KORPATH}${NAME}.ja.temp" | sort | uniq >./"${NAME}".en2ja.log
  diff "${NAME}".en2ja.log "${NAME}".en2ko.log >./"${NAME}".ja2ko.pre.log
  cat ./"${NAME}".ja2ko.pre.log | sed '/ObjectID/d' >./"${NAME}".ja2ko.log
  rm ./"${NAME}".ja2ko.pre.log
  git add .
  git commit -m "${APPVERS} ${NAME} Updated"
done

FILECOUNT=$(ls -a "${JAPFPATH}" | grep "i" | sed -n "=" | tail -n "1")

for ((i = 1; i <= ${FILECOUNT}; i++)); do
  NAME=$(/bin/ls "${JAPFPATH}" | /usr/bin/sed -n "${i}p")
  printf "${i}/${FILECOUNT}\t${NAME}\n"
  cd ~/literate-winner
  iconv -f utf16le -t utf8 "${JAPFPATH}${NAME}" >"${KORFPATH}${NAME}.ja.temp"
  diff "${KORFPATH}${NAME}.temp" "${KORFPATH}${NAME}" | sort | uniq > ./Frameworks/"${NAME}".en2ko.log
  diff "${KORFPATH}${NAME}.temp" "${KORFPATH}${NAME}.ja.temp" | sort | uniq > ./Frameworks/"${NAME}".en2ja.log
  diff ./Frameworks/"${NAME}".en2ja.log ./Frameworks/"${NAME}".en2ko.log > ./Frameworks/"${NAME}".ja2ko.pre.log
  cat ./Frameworks/"${NAME}".ja2ko.pre.log | sed '/ObjectID/d' > ./Frameworks/"${NAME}".ja2ko.log
  rm ./Frameworks/"${NAME}".ja2ko.pre.log
  git add .
  git commit -m "${APPVERS} ${NAME} Updated"
done
# git push
