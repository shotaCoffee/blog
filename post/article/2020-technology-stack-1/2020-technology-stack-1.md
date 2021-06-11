---
title: "2020年の技術周り振り返り①"
date: 2020-12-05T20:00:00+09:00

toc: false
backtotop: false
disable_comments: true
draft: false
comments: true
adsense: false
description: ""

author: ["shotaCoffee"]
categories: ["blog"]
tags: ["棚卸し"]
ogimage: "/images/og/2020-technology-stack-1.png"
url: "/post/2020-technology-stack-1/"
carduse: true
---

ℹ️  社会人まる4年と少しのフロントエンドエンジニアの振り返り。

## はじめに

今年は PdM や、UX リサーチをやったり、前年よりもより幅広く深く経験を積むことができたような気がしています。

最近いろんなブログで、技術スタック振り返りを見かけるので、自分も今年の経験を踏まえつつ自分の軸である、フロントエンド周りのことを中心に、スタックの振り返りをしてみようかなという記事。

### フロントエンド・アプリ

**言語**

- TypeScript
    - もはや既存環境で採用していない環境以外は全部 TypeScript で書くようになりました。
    - 簡単な Util を小さく作っては GitHub にスニペット的に置いてあります。
- Dart
    - Flutter を書く時に少しだけ。後述

**ライブラリ・フレームワーク**

- React.js（Next.js）
    - ブログは Next.js 採用
    - 個人開発は React + TypeScript
    - hooks 便利すぎ。こちらも小さいスニペット作って、GitHub やらにメモ的に置いてます。
- Angular
    - 前半職場で利用、Angular はやっぱり使いやすいし好き。
- React Native
    - アプリを少しずつ触り始めた。React の知識ままでほぼ描けるので楽しい。何かしらストアに出せるようになりたいとは思っている
- Flutter
    - React Native と違った方法も知りたいなぁということで手を出した。
    - これでも何かストアに出したいところ、アイデアは沢山ある。。。
- Storybook
    - 個人開発などで利用、コンポーネント駆動開発はチームともコミュニケーションがとりやすく、ついでにTDD風にいろいろ使えるのでいいなぁと改めて思ってます。
    - バージョンアップのたびにいろいろ困る気がしてるけど、それをとっても便利。

**ビルド環境・依存管理**

- webpack
    - ずっとwebpack、たまーに parcel 使うけど、結局これ。
    - というよりは、angular-cli or create-react-app という方が正しい。
    - 基本 eject しなくていいようにうまくやっていってる感じ。
- Prettier、ESLint + Husky
    - 自動化、なるだけ意識しなくていいように。
    - config は可能な限りきつめに、自分が抜け漏れ多いし、レビューに負担もかけたくないし。可能な限り自動化
- npm
    - yarn でもよかったけど、いろいろ不便だなぁとか思うことがあって結局 npm
    - npm script は当たり前のように追加して、いろいろ簡単にする。

**テスト周り**

- Jest
    - まだちゃんとかけてないことが多いので、来年はどんどこ書いていきたい。
- React Testing Library
    - Jest に同じ、hooks のテストを書き始めた感じ。
