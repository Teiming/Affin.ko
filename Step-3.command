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
  ~/Affin.ko/Step-2.command
  ;;
esac

echo ${APPNAME}"를 변환합니다."
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/*
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ja.lproj/*


sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/AnchorsPage.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/AstroStackFilesPage.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/AstroStackResultsPage.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/DataMergeManagerWindowController.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/GuidesWindowController.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/HyperlinkPage.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/IndexPage.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/LayerPage.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/PackageDocumentWindowController.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/PageSetupWindowController.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/ParagraphPage.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/Preferences.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/ResourceManagerWindowController.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/SectionsWindowController.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/SnapshotsPage.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/TableFormatEditor.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/TextFramePage.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/TextStyleEditor.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/TocPage.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/UserStatusView.nib/keyedobjects.nib
sudo plutil -convert xml1 /Applications/"${APPNAME}".app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/WorkspacePresetWindowController.nib/keyedobjects.nib
