---
title: 搭建Hexo博客系统
date: 2020-01-10 22:44:29
categories: # 分类
- [Demo]
- [Hexo]
tags:       # 标签
- Hexo
---

## 什么是Hexo

[Hexo](https://hexo.io/zh-cn/) 是一个快速、简洁且高效的博客框架。Hexo 使用 [Markdown](https://daringfireball.net/projects/markdown/)（或其他渲染引擎）解析文章，在几秒内，即可利用靓丽的主题生成静态网页。

## 安装

### 安装前提

安装Hexo之前需要检查电脑是否安装有以下软件

- [Node.js](http://nodejs.org/) (6.9+的版本)
- [Git](http://git-scm.com/)(可以最新版本)

#### 检查环境

- 检查和安装node

打开cmd , 运行

```
node -v
```

 显示如下结果表示安装成功
{% asset_img 20190610094051.png 执行命令：node -v %}

```
C:\Users\XXX>node -v
v8.11.1
```

- 检查和安装git

打开cmd , 运行 git --version 显示如下结果表示安装成功

```
C:\Users\XXX>git --version
git version 2.19.1.windows.1
```

### 安装 Git

- Windows：下载并安装 [git](https://git-scm.com/download/win).
- Mac：使用 [Homebrew](http://mxcl.github.com/homebrew/), [MacPorts](http://www.macports.org/) ：`brew install git`;或下载 [安装程序](http://sourceforge.net/projects/git-osx-installer/) 安装。
- Linux (Ubuntu, Debian)：`sudo apt-get install git-core`
- Linux (Fedora, Red Hat, CentOS)：`sudo yum install git-core`

>对于windows用户来说，建议使用安装程序进行安装。安装时，请勾选**Add to PATH**选项。
另外，您也可以使用**Git Bash**，这是git for windows自带的一组程序，提供了Linux风格的shell，在该环境下，您可以直接用上面提到的命令来安装Node.js。打开它的方法很简单，在任意位置单击右键，选择“Git Bash Here”即可。由于Hexo的很多操作都涉及到命令行，您可以考虑始终使用**Git Bash**来进行操作。

如果电脑中已经安装上述必备程序，接下来只需要使用 npm 即可完成 Hexo 的安装。

``` bash
npm install -g hexo-cli
```