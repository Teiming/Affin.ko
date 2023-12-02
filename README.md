 only

# Affin.ko

Affinity 시리즈 한글화 프로젝트 `시즌 2`

> 일본식 한자 표기는 지양하고 있습니다.
> 마땅히 대체할 단어가 없다면 최대한 원문 그대로 표기하고 있습니다.

## 준비하기

### Affinity 프로그램 설치

> 이미 Affinity 시리즈를 이용한다면 이 단계를 건너 뛰어도 좋습니다.

Affin.ko은 Affinity 시리즈를 번역합니다. Affinity 시리즈가 없다면 번역할 수 없습니다. 아래에서 Affinity 시리즈를 구매 및 설치하실 수 있습니다.

- [Affinity Designer](https://affinity.serif.com/designer)
- [Affinity Photo](https://affinity.serif.com/photo)
- [Affinity Publisher](https://affinity.serif.com/publisher)

설치한 후에는 제대로 설치된 것인지 확인을 위해 한 번 실행해주시기 바랍니다.

## Affin.ko 설치

> git을 처음 이용하시는 경우, 설치부터 해야합니다. [Xcode](https://itunes.apple.com/app/xcode/id497799835)를 권장합니다. Xcode의 대안으로 [git-scm.com](https://git-scm.com)을 이용하셔도 됩니다.

Affin.ko을 당신의 Mac으로 복제합니다. `Terminal`을 실행하고 다음 명령어를 입력합니다.

```sh
cd ~/
git clone https://github.com/Teiming/Affin.ko.git
chmod +x ~/Affin.ko/Affin.ko.command
```

## Affin.ko 실행

`Affin.ko.command`를 실행합니다. 또는 아래 명령어를 입력합니다.

```sh
~/Affin.ko/Affin.ko.command
```

이 과정이 끝나면, Affinity 설정에서 한국어를 선택할 수 있습니다.

원본 영어 파일을 한국어 파일로 번역합니다. 번역 항목이 늘어나면 소요시간도 늘어납니다.

### Affinity 프로그램 선택

세 종류의 프로그램 중에서 어떤 항목을 번역할 것인지 선택합니다.

### App 위치 변경

루트 사용자가 아닌 개인 사용자 폴더로 이동합니다.
만약 오류가 생길 경우 아래 명령어를 입력해주세요.

```sh
mkdir ~/Applications
```

### ko.lproj 폴더 생성

한국어 번역 파일을 저장하는 곳입니다.

### Check Update

git 저장소에서 최신 번역 자료를 가져옵니다. 이미 최신이라면 다음 메시지를 출력합니다.

```sh
Already up to date.
```

## 업데이트

Affin.ko는 완성된 프로젝트가 아닙니다. 번역은 완전하지 않아서 추가 또는 수정될 수 있습니다. 새로운 번역에 맞게 Affinity 시리즈를 다시 번역해주세요.
또는 Affinity가 업데이트될 경우 번역이 해제됩니다. 새롭게 번역할 때에는 `Affin.ko.command`를 다시 실행해주세요.

## Feedback

[카카오톡 오픈채팅방](https://open.kakao.com/o/gmcERP6)에서 새로운 번역을 제안하고, 틀린 번역을 고칠 수 있습니다. Affin.ko를 이용하면서 궁금한 점을 질문해도 좋습니다.
