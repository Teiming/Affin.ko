# Affinity-in-Korean
Affinity 시리즈의 한글화를 위하여. (기존 시스템의 비효율성을 개선하고자 새롭게 시작한 프로젝트입니다.)
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
  * [Affinity Phto Customer Beta](https://s3.amazonaws.com/affinity-beta/download/Affinity%20Photo%20Customer%20Beta.dmg)
## Start
Terminal.app에서 다음 명령어를 입력합니다. 번역된 자료를 다운로드할 수 있습니다.
```sh
git clone https://github.com/Teiming/Affinity-in-Korean.git
```
### Affinity Designer
다음 명령어를 입력하고 Affinity Designer를 번역합니다. 번역은 자주 갱신됩니다. 최신 번역을 이용하고 싶다면 명령어를 다시 입력합니다.
```sh
cd ~/Affinity-in-Korean/
git pull
chmod +x ./DesignerSync
sudo ./DesignerSync
```
### Affinity Photo
다음 명령어를 입력하고 Affinity Photo를 번역합니다. 번역은 자주 갱신됩니다. 최신 번역을 이용하고 싶다면 명령어를 다시 입력합니다.
```sh
cd ~/Affinity-in-Korean/
git pull
chmod +x ./PhotoSync
sudo ./PhotoSync
```
## Tips
다음 명령어를 입력하면 AddTranslator, AutoTranslator를 손쉽게 이용할 수 있습니다.
```sh
sudo ln ~/Affinity-in-Korean/addTranslator /usr/local/bin/addTranslator
sudo ln ~/Affinity-in-Korean/autoTranslator /usr/local/bin/autoTranslator
addTranslator
autoTranslator
```
## Feedback
번역은 완전하지 않아서 추가 또는 개선될 수 있습니다. [오픈채팅방](https://open.kakao.com/o/gmcERP6)에서 번역을 직접 제안하고 최적의 번역본으로 업데이트하세요.
***
© 2018 Serif (Europe) Ltd, All rights reserved
