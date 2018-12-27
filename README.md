
# Affin.ko
Affinity 시리즈 한글화 프로젝트
>일본식 한자 표기는 지양하고 있습니다.
>마땅히 대체할 단어가 없다면 최대한 원문 그대로 표기하고 있습니다.

## Step 0. 설치하기
> 이미 Affinity 시리즈를 이용한다면 이 단계를 건너 뛰어도 좋습니다.

Affinity-in-Korean은 Affinity 시리즈를 번역합니다. Affinity 시리즈가 없다면 번역할 수 없습니다. 아래에서 Affinity 시리즈를 구매하실 수 있습니다.
* 최신 버전 구매
  * [Affinity Designer for desktop - Professional graphic design software](https://affinity.serif.com/designer/desktop)
  * [Affinity Photo for desktop - Professional image editing software](https://affinity.serif.com/photo/desktop)
  <!-- * [Affinity Publisher for desktop](https://affinity.serif.com/publisher/desktop) -->
* LTS 버전 구매
  * [Affinity Designer on the Mac App Store](https://itunes.apple.com/app/affinity-designer/id824171161)
  * [Affinity Photo on the Mac App Store](https://itunes.apple.com/app/affinity-photo/id824183456)
  <!-- * [Affinity Publisher on the Mac App Store](https://itunes.apple.com/app/affinity-publisher/id) -->
베타 프로그램의 번역도 가능합니다. 베타 프로그램은 베타 사용자 포럼에서 구할 수 있습니다.
* 베타 프로그램
  * [Affinity Designer Beta](https://s3.amazonaws.com/affinity-beta/download/Affinity%20Designer%20Beta.dmg)
  * [Affinity Photo Beta](https://s3.amazonaws.com/affinity-beta/download/Affinity%20Photo%20Customer%20Beta.dmg)
## Step 1. 복제하기
Affinity-in-Korean을 당신의 Mac으로 복제합니다. Terminal.app에서 다음 명령어를 입력해주세요.
```sh
cd ~/
git clone https://github.com/Teiming/Affinity-in-Korean.git
```
## Step 2. 변환하기
Affinity 시리즈의 기본 언어 파일은 binary입니다. 사람이 읽을 수 있는 xml로 변환합니다.
```sh
sudo ~/Affinity-in-Korean/Converter
```
권한 부족으로 Converter를 실행할 수 없다면 다음 명령어로 권한을 부여합니다.
```sh
chmod +x ~/Affinity-in-Korean/Converter
```
## Step 3. 번역 폴더 생성
한국어 번역 파일을 저장할 ko.lproj 폴더를 만듭니다. Converter는 이 기능을 포함하고 있습니다. 별도로 수행할 작업은 없습니다.
> 이미 ko.lproj 폴더가 있다면 오류를 출력합니다. 하지만 Affinity-in-Korean은 정상 작동합니다.

## Step 4. 변역하기
> 원본 영어 파일을 한국어 파일로 번역합니다. 번역된 내용이 늘어나면 보다 긴 시간이 소요됩니다.

권한 부족으로 taf 명령어를 이용할 수 없다면 다음 명령어로 권한을 부여합니다.
```sh
chmod +x ~/Affinity-in-Korean/taf*
```
### Affinity Designer 번역하기
다음 명령어를 입력하고 Affinity Designer를 번역합니다.
```sh
ln -s ~/Affinity-in-Korean/tafd /usr/local/bin/
tafd
```
베타 프로그램은 다음 명령어를 입력합니다.
```sh
ln -s ~/Affinity-in-Korean/tafdb /usr/local/bin/
tafdb
```
### Affinity Photo 번역하기
다음 명령어를 입력하고 Affinity Photo를 번역합니다.
```sh
ln -s ~/Affinity-in-Korean/tafp /usr/local/bin/
tafp
```
베타 프로그램은 다음 명령어를 입력합니다.
```sh
ln -s ~/Affinity-in-Korean/tafpb /usr/local/bin/
tafpb
```
## Step 5. 수정하기
Affinity-in-Korean은 아직 끝나지 않았습니다. 번역은 완전하지 않아서 추가 또는 수정될 수 있습니다. [카카오톡 오픈채팅방](https://open.kakao.com/o/gmcERP6) 또는 [디스코드 채팅 채널](https://discord.gg/Y2DGXE3)에서 새로운 번역을 제안하고, 틀린 번역을 고칠 수 있습니다. 아래에서는 바뀐 번역에 맞게 Affinity 시리즈를 다시 번역합니다. 필요한 명령어는 Step 4.에서 등록했습니다. 바로 이용하실 수 있습니다.
### Affinity Designer 수정하기
다음 명령어를 입력하고 Affinity Designer을(를) 다시 번역합니다.
```sh
tafd
```
베타 프로그램은 다음 명령어를 입력합니다.
```sh
tafdb
```
### Affinity Photo 수정하기
다음 명령어를 입력하고 Affinity Photo을(를) 다시 번역합니다.
```sh
tafp
```
베타 프로그램은 다음 명령어를 입력합니다.
```sh
tafpb
```
## Bugs
지금까지 발견된 오류는 다음과 같습니다.
* 설정 화면에서 아이콘이 깨지는 현상
  * 해당 번역 파일을 제거하면 해결됩니다.
```sh
sudo rm /Applications/Affinity\ Designer.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj/Preferences.nib
sudo rm /Applications/Affinity\ Designer\ Beta.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj/Preferences.nib
sudo rm /Applications/Affinity\ Photo.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj/Preferences.nib
sudo rm /Applications/Affinity\ Photo\ Beta.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj/Preferences.nib
```
