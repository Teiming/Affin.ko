echo "번역할 프로그램을 선택합니다."
echo "1: Affinity Designer"
echo "2: Affinity Photo"
echo "3: Affinity Publisher"
read app
case ${app} in
  1 )
  APPNAME=Affinity\ Designer
  ;;
  2 )
  APPNAME=Affinity\ Photo
  ;;
  3 )
  APPNAME=Affinity\ Publisher
  ;;
  * )
  echo "알 수 없는 프로그램입니다. 1, 2, 3(으)로만 입력해주세요."
  ~/Affin.ko/Affin.ko-convert
  ;;
esac

echo ${APPNAME}"를 변환합니다."
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Resources/en.lproj/*
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Resources/ja.lproj/*
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/*
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ja.lproj/*
echo "ko.lproj 폴더를 생성합니다."
sudo mkdir /Applications/"${APPNAME}".app/Contents/Resources/ko.lproj
sudo mkdir /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj
exit
