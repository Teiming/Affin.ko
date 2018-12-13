
# Affinity-in-Korean
Affinity 시리즈 한글화 프로젝트
>일본식 한자 표기는 지양하고 있습니다.
>마땅히 대체할 단어가 없다면 최대한 원문 그대로 표기하고 있습니다.

* 최신 버전 구매
  * [Affinity Designer for desktop - Professional graphic design software](https://affinity.serif.com/designer/desktop)
  * [Affinity Photo for desktop - Professional image editing software](https://affinity.serif.com/photo/desktop)
  <!-- * [Affinity Publisher for desktop](https://affinity.serif.com/publisher/desktop) -->
* LTS 버전 구매
  * [Affinity Designer on the Mac App Store](https://itunes.apple.com/app/affinity-designer/id824171161)
  * [Affinity Photo on the Mac App Store](https://itunes.apple.com/app/affinity-photo/id824183456)
  <!-- * [Affinity Publisher on the Mac App Store](https://itunes.apple.com/app/affinity-publisher/id) -->
* 베타 프로그램
  * [Affinity Designer Beta](https://s3.amazonaws.com/affinity-beta/download/Affinity%20Designer%20Beta.dmg)
  * [Affinity Photo Beta](https://s3.amazonaws.com/affinity-beta/download/Affinity%20Photo%20Customer%20Beta.dmg)
## Start
Terminal.app에서 다음 명령어를 입력합니다. 이용할 때 만드시 필요한 설치를 해결합니다.
```sh
git clone https://github.com/Teiming/Affinity-in-Korean.git
chmod +x ./Affinity-in-Korean/Start.sh
./Affinity-in-Korean/Start.sh
```
### Affinity Designer
다음 명령어를 입력하고 Affinity Designer를 번역합니다. 번역은 자주 갱신됩니다. 최신 번역을 이용하고 싶다면 명령어를 다시 입력합니다.
```sh
cd ~/Affinity-in-Korean/
git pull
sudo ./tafd
sudo ./tafdf
```
베타 프로그램은 다음 명령어를 입력합니다.
```sh
cd ~/Affinity-in-Korean/
git pull
sudo ./tafdb
sudo ./tafdbf
```
### Affinity Photo
다음 명령어를 입력하고 Affinity Photo를 번역합니다. 번역은 자주 갱신됩니다. 최신 번역을 이용하고 싶다면 명령어를 다시 입력합니다.
```sh
cd ~/Affinity-in-Korean/
git pull
sudo ./tafp
sudo ./tafpf
```
베타 프로그램은 다음 명령어를 입력합니다.
```sh
cd ~/Affinity-in-Korean/
git pull
sudo ./tafpb
sudo ./tafpbf
```
### Tips
다음 명령어를 입력하면 affdic을(를) 손쉽게 이용할 수 있습니다.
```sh
sudo ln -sf ~/Affinity-in-Korean/affdic /usr/local/bin/affdic
```
## Bugs
발견된 오류를 수정합니다.
* 설정 화면에서 아이콘이 깨지는 현상
  * 해당 번역 파일을 제거합니다.
```sh
sudo rm /Applications/Affinity\ Designer.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj/Preferences.nib
sudo rm /Applications/Affinity\ Designer\ Beta.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj/Preferences.nib
sudo rm /Applications/Affinity\ Photo.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj/Preferences.nib
sudo rm /Applications/Affinity\ Photo\ Beta.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj/Preferences.nib
```
## Feedback
번역은 완전하지 않아서 추가 또는 개선될 수 있습니다. [카카오톡 오픈채팅방](https://open.kakao.com/o/gmcERP6) 또는 [디스코드 채팅 채널](https://discord.gg/Y2DGXE3)에서 번역을 직접 제안하고 최적의 번역본으로 업데이트하세요.
***
© 2018 Serif (Europe) Ltd, All rights reserved
