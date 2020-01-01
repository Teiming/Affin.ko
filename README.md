 only
# Affin.ko
Affinity 시리즈 한글화 프로젝트
>일본식 한자 표기는 지양하고 있습니다.
>마땅히 대체할 단어가 없다면 최대한 원문 그대로 표기하고 있습니다.

## Step 0. 설치하기
> 이미 Affinity 시리즈를 이용한다면 이 단계를 건너 뛰어도 좋습니다.

Affin.ko은 Affinity 시리즈를 번역합니다. Affinity 시리즈가 없다면 번역할 수 없습니다. 아래에서 Affinity 시리즈를 구매하실 수 있습니다.
* 최신 버전 구매
  * [Affinity Designer for desktop - Professional graphic design software](https://affinity.serif.com/designer/desktop)
  * [Affinity Photo for desktop - Professional image editing software](https://affinity.serif.com/photo/desktop)
  * [Affinity Publisher - Professional desktop publishing software](https://affinity.serif.com/publisher)
* LTS 버전 구매
  * [Affinity Designer on the Mac App Store](https://itunes.apple.com/app/affinity-designer/id824171161)
  * [Affinity Photo on the Mac App Store](https://itunes.apple.com/app/affinity-photo/id824183456)
  * [Affinity Publisher on the Mac App Store](https://itunes.apple.com/app/affinity-publisher/id881418622)

<!-- 베타 프로그램의 번역도 가능합니다. 베타 프로그램은 베타 사용자 포럼에서 구할 수 있습니다.
* 베타 프로그램
  * [Affinity Designer Beta](https://affin.co/des17beta)
  * [Affinity Photo Beta](https://affin.co/photo17beta)
  * [Affinity Publisher Beta]() -->
## Step 1. 복제하기
Step-1.command를 실행하여 Affin.ko을 당신의 Mac으로 복제합니다.
> git을 처음 이용하시는 경우, 설치부터 해야합니다. [Xcode](https://itunes.apple.com/app/xcode/id497799835)를 권장합니다. Xcode의 대안으로 [git-scm.com](https://git-scm.com)을 이용하셔도 됩니다.

```sh
cd ~/
git clone https://github.com/Teiming/Affin.ko.git
```
## Step 2. 변환하기
Step-2.command를 실행합니다. Affinity 시리즈의 기본 언어 파일은 binary입니다. 실제로 읽을 수 있는 xml로 변환합니다. 다음과 같이 관리자 권한으로 실행할 수 있습니다.
```sh
sudo ~/Affin.ko/Step-2.command
```
## Step 3. 번역 폴더 생성
한국어 번역 파일을 저장할 ko.lproj 폴더를 만듭니다. Step-2.command는 이 기능을 포함하고 있습니다. 별도로 수행할 작업은 없습니다.
> 이미 ko.lproj 폴더가 있다면 오류를 출력합니다. 하지만 Affin.ko은 정상 작동합니다.

만약 ```Permission denied``` 오류가 나타난다면, 아래 명령어를 통해 해결합니다.
```sh
sudo chown {{{USER NAME}}} /Applications/Affinity\ Designer.app/Contents/Resources/ko.lproj
sudo chown {{{USER NAME}}} /Applications/Affinity\ Designer.app/Contents/Frameworks/libcocoaui.framework/Versions/A/Resources/ko.lproj
```
## Step 4. 번역하기
> 원본 영어 파일을 한국어 파일로 번역합니다. 번역된 내용이 늘어나면 보다 긴 시간이 소요됩니다.

다음 명령어를 입력하고 Affinity 시리즈를 번역합니다.
```sh
chmod +x ~/Affin.ko/Affin.ko-translate
~/Affin.ko/Affin.ko-translate
```
### Check Update
git 저장소에서 최신 번역 자료를 가져옵니다. 이미 최신이라면 다음 메시지를 출력합니다.
```sh
Already up to date.
```
### Select Application
어떤 프로그램을 번역할지 선택합니다. 숫자만 입력합니다.
* 1: Affinity Designer
* 2: Affinity Designer Beta
* 3: Affinity Photo
* 4: Affinity Photo Beta
* 5: Affinity Publisher
* 6: Affinity Publisher Beta
### Select Main Menu or Frameworks
Main Menu 및 Frameworks 중 어느 것을 번역할지 선택합니다. 마찬가지로 숫자만 입력합니다.
* 1: Main Menu
* 2: Frameworks
## Step 5. 수정하기
Affin.ko는 완성된 프로젝트가 아닙니다. 번역은 완전하지 않아서 추가 또는 수정될 수 있습니다. 새로운 번역에 맞게 Affinity 시리즈를 다시 번역해주세요. 수정하는 과정은 Step 4.와 같습니다.
## Feedback
[카카오톡 오픈채팅방](https://open.kakao.com/o/gmcERP6) 또는 [디스코드 채팅 채널](https://discord.gg/Y2DGXE3)에서 새로운 번역을 제안하고, 틀린 번역을 고칠 수 있습니다. Affin.ko를 이용하면서 궁금한 점을 질문해도 좋습니다.

![카카오톡 오픈채팅방](/Kakaotalk.jpeg)

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
