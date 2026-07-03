<<<<<<< HEAD

# iOS Demo App

一个用于演示 Windows + VS Code + GitHub Actions 自动编译 iOS 应用的示例项目。

## 流程概览

```
Windows
  ↓
VS Code + AI 写 Swift 代码
  ↓
GitHub
  ↓
GitHub Actions 自动编译
  ↓
下载 IPA
  ↓
TrollStore 安装
```

## 项目结构

```
ios-demo/
├── ios-demo.xcodeproj/          # Xcode 项目文件
│   └── project.pbxproj          # 项目配置
├── ios-demo/                    # 源代码目录
│   ├── AppDelegate.swift        # 应用入口
│   ├── ViewController.swift     # 主页面（欢迎页面）
│   ├── main.swift               # 程序入口
│   ├── Info.plist               # 应用配置
│   └── Assets.xcassets/         # 资源文件
└── .github/
    └── workflows/
        └── build-ios.yml        # GitHub Actions 编译配置
```

## 使用步骤

### 1. 准备工作

- 安装 [VS Code](https://code.visualstudio.com/)
- 安装 [Git](https://git-scm.com/)
- 注册 [GitHub](https://github.com/) 账号
- iOS 设备已安装 [TrollStore](https://github.com/opa334/TrollStore)

### 2. 创建 GitHub 仓库

1. 在 GitHub 上创建一个新的仓库
2. 复制仓库地址

### 3. 本地操作

```bash
# 初始化 git 仓库
git init

# 添加远程仓库
git remote add origin <你的仓库地址>

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit"

# 推送到 GitHub
git push -u origin main
```

### 4. 触发自动编译

推送代码后，GitHub Actions 会自动开始编译：

1. 打开 GitHub 仓库页面
2. 点击上方的 `Actions` 标签
3. 等待编译完成（约 5-10 分钟）
4. 编译成功后，在 `Artifacts` 中下载 `ios-demo-ipa`

### 5. 安装到设备

1. 解压下载的 `ios-demo-ipa.zip`
2. 在 iOS 设备上打开 TrollStore
3. 点击 `Install IPA`，选择下载的 `.ipa` 文件
4. 等待安装完成即可打开应用

## 应用功能

- 显示应用标题和描述
- 显示编译时间
- 点击按钮计数功能
- 弹窗提示

## 注意事项

- 本项目使用 `CODE_SIGNING_ALLOWED=NO` 跳过代码签名，仅适用于 TrollStore 安装
- GitHub Actions 使用 `macos-latest` 虚拟机，包含最新版 Xcode
- IPA 文件保留 7 天，过期后需重新编译
- 首次编译可能较慢，请耐心等待

## 自定义修改

你可以修改以下文件来定制应用：

- `ViewController.swift` - 修改页面 UI 和逻辑
- `Info.plist` - 修改应用配置（名称、版本等）
- `project.pbxproj` - 修改项目构建配置
  \=======

# ios

一个新的ios应用

> > > > > > > 944c99375340f9252aa82fd84106e276ab28da97

