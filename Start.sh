echo "Affinity Designer를 이용하십니까? (y/n)"
read AFD
if [[ AFD -eq y ]]; then
  echo "Unpack Affinity Designer"
  sudo plutil -convert xml1 /Applications/Affinity\ Designer.app/Contents/Resources/en.lproj/*
  sudo plutil -convert xml1 /Applications/Affinity\ Designer.app/Contents/Resources/ja.lproj/*
  sudo plutil -convert xml1 /Applications/Affinity\ Designer.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/*
  sudo plutil -convert xml1 /Applications/Affinity\ Designer.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ja.lproj/*
  echo "Enable Tanslator"
  chmod +x ~/Affinity-in-Korean/tafd
  chmod +x ~/Affinity-in-Korean/tafdf
  echo "Enable ko.lproj"
  sudo mkdir /Applications/Affinity\ Designer.app/Contents/Resources/ko.lproj/
  sudo mkdir /Applications/Affinity\ Designer.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj/
fi
echo "Affinity Designer Beta를 이용하십니까? (y/n)"
read AFDB
if [[ AFDB -eq y ]]; then
  echo "Unpack Affinity Designer Beta"
  sudo plutil -convert xml1 /Applications/Affinity\ Designer\ Beta.app/Contents/Resources/en.lproj/*
  sudo plutil -convert xml1 /Applications/Affinity\ Designer\ Beta.app/Contents/Resources/ja.lproj/*
  sudo plutil -convert xml1 /Applications/Affinity\ Designer\ Beta.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/*
  sudo plutil -convert xml1 /Applications/Affinity\ Designer\ Beta.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ja.lproj/*
  echo "Enable Tanslator"
  chmod +x ~/Affinity-in-Korean/tafdb
  chmod +x ~/Affinity-in-Korean/tafdfb
  echo "Enable ko.lproj"
  sudo mkdir /Applications/Affinity\ Designer\ Beta.app/Contents/Resources/ko.lproj/
  sudo mkdir /Applications/Affinity\ Designer\ Beta.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj/
fi
echo "Affinity Photo를 이용하십니까? (y/n)"
read AFD
if [[ AFD -eq y ]]; then
  echo "Unpack Affinity Photo"
  sudo plutil -convert xml1 /Applications/Affinity\ Photo.app/Contents/Resources/en.lproj/*
  sudo plutil -convert xml1 /Applications/Affinity\ Photo.app/Contents/Resources/ja.lproj/*
  sudo plutil -convert xml1 /Applications/Affinity\ Photo.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/*
  sudo plutil -convert xml1 /Applications/Affinity\ Photo.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ja.lproj/*
  echo "Enable Tanslator"
  chmod +x ~/Affinity-in-Korean/tafp
  chmod +x ~/Affinity-in-Korean/tafpf
  echo "Enable ko.lproj"
  sudo mkdir /Applications/Affinity\ Photo.app/Contents/Resources/ko.lproj/
  sudo mkdir /Applications/Affinity\ Photo.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj/
fi
echo "Affinity Photo Beta를 이용하십니까? (y/n)"
read AFDB
if [[ AFDB -eq y ]]; then
  echo "Unpack Affinity Photo Beta"
  sudo plutil -convert xml1 /Applications/Affinity\ Photo\ Beta.app/Contents/Resources/en.lproj/*
  sudo plutil -convert xml1 /Applications/Affinity\ Photo\ Beta.app/Contents/Resources/ja.lproj/*
  sudo plutil -convert xml1 /Applications/Affinity\ Photo\ Beta.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/en.lproj/*
  sudo plutil -convert xml1 /Applications/Affinity\ Photo\ Beta.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ja.lproj/*
  echo "Enable Tanslator"
  chmod +x ~/Affinity-in-Korean/tafpb
  chmod +x ~/Affinity-in-Korean/tafpfb
  echo "Enable ko.lproj"
  sudo mkdir /Applications/Affinity\ Photo\ Beta.app/Contents/Resources/ko.lproj/
  sudo mkdir /Applications/Affinity\ Photo\ Beta.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj/
fi
