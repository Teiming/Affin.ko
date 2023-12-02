printf "→ 번역할 프로그램을 선택합니다.\n"
printf "1: Affinity Designer 2\n"
printf "2: Affinity Photo 2\n"
printf "3: Affinity Publisher 2\n"
read APP

case ${APP} in
1)
  APPNAME=Affinity\ Designer\ 2
  DICPATH=~/Affin\.ko/dict/Designer
  ;;
2)
  APPNAME=Affinity\ Photo\ 2
  DICPATH=~/Affin\.ko/dict/Photo
  ;;
3)
  APPNAME=Affinity\ Publisher\ 2
  DICPATH=~/Affin\.ko/dict/Publisher
  ;;
*)
  echo "알 수 없는 프로그램입니다. 1, 2, 3(으)로만 입력해주세요."
  exit
  ;;
esac

printf "\n→ App 위치 변경\n"
sudo mv /Applications/"${APPNAME}".app ~/Applications/
echo "각주) No such file or directory : <정상>입니다."

printf "\n→ ko.lproj 폴더를 생성합니다.\n"
mkdir ~/Applications/"${APPNAME}".app/Contents/Resources/ko.lproj
mkdir ~/Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj
echo "각주) File exists : <정상>입니다."

printf "\n→ Check Update\n"
cd ~/Affin.ko/
git pull

ENGPATH=~/Applications/"${APPNAME}".app/Contents/Resources/en-US.lproj/
KORPATH=~/Applications/"${APPNAME}".app/Contents/Resources/ko.lproj/
FILECOUNT=$(ls -a "${ENGPATH}" | grep "strings" | sed -n "=" | tail -n "1")
for ((i = 1; i <= ${FILECOUNT}; i++)); do
  FILENAME=$(/bin/ls "${ENGPATH}" | /usr/bin/sed -n "${i}p")
  sudo printf "총 ${FILECOUNT}개 파일 중에서 ${i}번째 파일을 변환합니다.\n→ 파일 이름: ${FILENAME}"
  sudo iconv -f utf16le -t utf8 "${ENGPATH}${FILENAME}" >"${KORPATH}${FILENAME}.temp"
  sudo sed -f "${DICPATH}" "${KORPATH}${FILENAME}.temp" >"${KORPATH}${FILENAME}"
  printf " (완료)\n"
done

ENGFPATH=~/Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en-US.lproj/
KORFPATH=~/Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj/
FILECOUNT=$(ls -a "${ENGFPATH}" | grep "strings" | sed -n "=" | tail -n "1")
for ((i = 1; i <= ${FILECOUNT}; i++)); do
  FILENAME=$(/bin/ls "${ENGFPATH}" | /usr/bin/sed -n "${i}p")
  sudo printf "총 ${FILECOUNT}개 파일 중에서 ${i}번째 파일을 변환합니다.\n→ 파일 이름: ${FILENAME}"
  sudo iconv -f utf16le -t utf8 "${ENGFPATH}${FILENAME}" >"${KORFPATH}${FILENAME}.temp"
  sudo sed -f "${DICPATH}" "${KORFPATH}${FILENAME}.temp" >"${KORFPATH}${FILENAME}"
  printf " (완료)\n"
done
