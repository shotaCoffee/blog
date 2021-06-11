---
title: "React Hook Form と Styled Components を一緒に使いたい"
date: 2020-12-27T20:00:00+09:00

toc: false
backtotop: false
disable_comments: true
draft: false
comments: true
adsense: false
description: ""

author: ["shotaCoffee"]
categories: ["blog"]
tags: ["React"]
ogimage: "/images/og/react-hook-form-with-styled-components.png"
url: "/post/react-hook-form-with-styled-components/"
carduse: true
---

## 解決したいこと

- React Hook Form の register をいい感じに Styled-Components に渡したい。
- Styled-Components の ref の型といい感じに合わせたい。

## 環境

```tsx
"react": "^16.13.1",
"react-hook-form": "^6.9.6",
"styled-components": "^5.1.1",
"typescript": "~3.7.2"
```

## 解決方法

- Styled Components が認識できるように型を書いてあげる。

### コンポーネント側

```tsx
type RefReturn =
  | string
  | ((instance: HTMLInputElement | null) => void)
  | React.RefObject<HTMLInputElement>
  | null
  | undefined;

type Props = React.DetailedHTMLProps<React.InputHTMLAttributes<HTMLInputElement>,
  HTMLInputElement> & {
  placeholder?: string
  name: string
  register: ({required}: { required?: boolean }) => RefReturn;
};

type Ref = (instance: HTMLInputElement | null) => void | React.RefObject<HTMLInputElement> | null | undefined

const FormInput = ({name, register, required, placeholder}: Props) => {
  return (
    <Input
      type="text"
      placeholder={placeholder}
      name={name}
      ref={register({required}) as Ref}
    />
  )
};
```

### 親コンポーネント

```tsx
<FormInput
  type="password"
  placeholder="パスワード"
  name="password"
  register={register}
	required
/>
```

### 参考

- [https://github.com/react-hook-form/react-hook-form/discussions/1681](https://github.com/react-hook-form/react-hook-form/discussions/1681)
- [https://codesandbox.io/s/react-hook-formstyled-components-cboo1?from-embed](https://codesandbox.io/s/react-hook-formstyled-components-cboo1?from-embed)
- [https://styled-components.com/docs/advanced#refs](https://styled-components.com/docs/advanced#refs)
- [https://react-hook-form.com/get-started/#Integratinganexistingform](https://react-hook-form.com/get-started/#Integratinganexistingform)
