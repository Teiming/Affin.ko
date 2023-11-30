echo "→ Check Update"
cd ~/Affin.ko/
git pull

echo "→ Select Application"
echo "1: Affinity Designer 2"
echo "2: Affinity Photo 2"
echo "3: Affinity Publisher 2"
read Application
case ${Application} in
1)
  APPNAME=Affinity\ Designer\ 2
  ;;
2)
  APPNAME=Affinity\ Photo\ 2
  ;;
3)
  APPNAME=Affinity\ Publisher\ 2
  ;;
*)
  echo "Unknown Application."
  ;;
esac

APPVERS=2.2.1

ENGPATH=~/Applications/"${APPNAME}".app/Contents/Resources/en-US.lproj/
JAPPATH=~/Applications/"${APPNAME}".app/Contents/Resources/ja.lproj/
KORPATH=~/Applications/"${APPNAME}".app/Contents/Resources/ko.lproj/

ENGFPATH=~/Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en-US.lproj/
JAPFPATH=~/Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ja.lproj/
KORFPATH=~/Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj/

FILECOUNT=$(ls -a "${JAPPATH}" | grep "i" | sed -n "=" | tail -n "1")
FILECOUNTF=$(ls -a "${JAPFPATH}" | grep "i" | sed -n "=" | tail -n "1")

for ((i = 1; i <= ${FILECOUNT}; i++)); do
  NAME=$(/bin/ls "${JAPPATH}" | /usr/bin/sed -n "${i}p")
  echo ${i}
  cd ~/Affin.ko/forDev/compare/
  iconv -f utf16le -t utf8 "${JAPPATH}${NAME}" >"${KORPATH}${NAME}.ja.temp"
  diff "${KORPATH}${NAME}.temp" "${KORPATH}${NAME}" >./"${APPNAME}"/"${NAME}".en2ko.log
  diff "${KORPATH}${NAME}.temp" "${KORPATH}${NAME}.ja.temp" >./"${APPNAME}"/"${NAME}".en2ja.log
  diff ~/Affin.ko/forDev/compare/"${APPNAME}"/"${NAME}".en2ja.log ~/Affin.ko/forDev/compare/"${APPNAME}"/"${NAME}".en2ko.log >~/Affin.ko/forDev/compare/"${APPNAME}"/"${NAME}".ja2ko.log
  echo " (로그 종료)"
  cd ~/Affin.ko/
  git add .
  git commit -m "${APPNAME} ${NAME} Updated"
done

for ((i = 1; i <= ${FILECOUNTF}; i++)); do
  NAME=$(/bin/ls "${JAPFPATH}" | /usr/bin/sed -n "${i}p")
  echo ${NAME}
  cd ~/Affin.ko/forDev/compare/
  iconv -f utf16le -t utf8 "${JAPFPATH}${NAME}" >"${KORFPATH}${NAME}.ja.temp"
  diff "${KORFPATH}${NAME}.temp" "${KORFPATH}${NAME}" >./"${APPNAME}"/Frameworks/"${NAME}".en2ko.log
  diff "${KORFPATH}${NAME}.temp" "${KORFPATH}${NAME}.ja.temp" >./"${APPNAME}"/Frameworks/"${NAME}".en2ja.log
  diff ~/Affin.ko/forDev/compare/"${APPNAME}"/Frameworks/"${NAME}".en2ja.log ~/Affin.ko/forDev/compare/"${APPNAME}"/Frameworks/"${NAME}".en2ko.log >~/Affin.ko/forDev/compare/"${APPNAME}"/Frameworks/"${NAME}".ja2ko.log
  echo " (로그 종료)"
  cd ~/Affin.ko/
  git add .
  git commit -m "${APPVERS} ${APPNAME} ${NAME} Updated"
done
