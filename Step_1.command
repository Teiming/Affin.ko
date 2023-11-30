printf "→ 번역할 프로그램을 선택합니다.\n"
echo "1: Affinity Designer 2"
echo "2: Affinity Photo 2"
echo "3: Affinity Publisher 2"
read app
case ${app} in
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
  echo "\n알 수 없는 프로그램입니다. 1, 2, 3(으)로만 입력해주세요.\n"
  ;;
esac

printf "\n→ App 위치 변경\n"
sudo mv /Applications/"${APPNAME}".app ~/Applications/
echo "각주) No such file or directory : <정상>입니다."

printf "\n→ ko.lproj 폴더를 생성합니다.\n"
mkdir ~/Applications/"${APPNAME}".app/Contents/Resources/ko.lproj
mkdir ~/Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj
echo "각주) File exists : <정상>입니다."

# printf "\n→ ko.lproj 폴더의 권한을 부여합니다.\n"
# sudo chown ${USERNAME} ~/Applications/"${APPNAME}".app/Contents/Resources/ko.lproj
# sudo chown ${USERNAME} ~/Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj
