 only

# Affin.ko

Affinity 시리즈 한글화 프로젝트 `3.x.x`

> 일본식 한자 표기는 지양하고 있습니다.
> 마땅히 대체할 단어가 없다면 최대한 원문 그대로 표기하고 있습니다.

## 빠른 목차

1. [Affin.ko 설치](#affinko-설치)
1. [Affin.ko 실행](#affinko-실행)
1. [카카오톡 오픈채팅방](https://open.kakao.com/o/gmcERP6)

## 준비하기

### Affinity 프로그램 설치

> 이미 Affinity.app이 설치되어 있다면, 이 단계를 건너 뛰어도 좋습니다.

Affin.ko은 Affinity.app을 번역합니다. Affinity.app이 없다면 번역할 수 없습니다. 아래에서 Affinity.app을 설치하실 수 있습니다.

- [Affinity.app](https://www.affinity.studio/download)

설치한 후에는 제대로 설치된 것인지 확인을 위해 한 번 실행해주시기 바랍니다.

## Terminal 권한 설정

시스템 설정 → 개인정보 보호 및 보안 → 전체 디스크 접근 권한 → Terminal.app 허용

## git 설치

> git을 처음 이용하시는 경우, 설치부터 해야합니다. macOS의 `Terminal`을 실행하고 다음 명령어를 입력합니다.

```sh
xcode-select --install
```

## Affin.ko 설치

Affin.ko을 당신의 Mac으로 복제합니다. macOS의 `Terminal`을 실행하고 다음 명령어를 입력합니다.

```sh
cd ~;
git clone https://github.com/Teiming/Affin.ko.git;
chmod +x ~/Affin.ko/Affinity-ko;
```

## Affin.ko 실행

`Affin-ko`를 실행합니다. 또는 아래 명령어를 입력합니다.

```sh
~/Affin.ko/Affinity-ko
```

이 과정이 끝나면, Affinity 설정에서 한국어를 선택할 수 있습니다.

원본 영어 파일을 한국어 파일로 번역합니다. 번역 항목이 늘어나면 소요시간도 늘어납니다.

### ko.lproj 폴더 생성

한국어 번역 파일을 저장하는 곳입니다.

### Check Update

git 저장소에서 최신 번역 자료를 가져옵니다. 이미 최신이라면 다음 메시지를 출력합니다.

```sh
Already up to date.
```

## 기타

### 축약어 생성

```sh
echo 'alias aff-ko=~/Affin.ko/Affinity-ko' >> ~/.zshrc
```

## 업데이트 및 피드백

1. Affin.ko는 완성된 프로젝트가 아닙니다. 번역은 완전하지 않아서 추가 또는 수정될 수 있습니다. 새로운 번역에 맞게 Affinity 시리즈를 다시 번역해주세요.
1. Affinity가 새로운 버전으로 업데이트될 경우 번역이 초기화됩니다. 새롭게 번역할 때에는 `Affin-ko`를 다시 실행해주세요.

[카카오톡 오픈채팅방](https://open.kakao.com/o/gmcERP6)에서 새로운 번역을 제안하고, 틀린 번역을 고칠 수 있습니다. Affin.ko를 이용하면서 궁금한 점을 질문해도 좋습니다.
