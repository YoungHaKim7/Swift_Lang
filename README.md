<p align="center">
  <img width=130px src="https://www.svgrepo.com/show/452110/swift.svg" />
</p>

<hr>

# Swift - Getting-started(Linux 도 된다) 좋네 굿 

- https://github.com/apple/swift
- Linux에서 macOS가상 환경 설치해서 Xcode실행하기 ㅋㅋ
  - https://www.baeldung.com/linux/xcode

https://www.swift.org/getting-started/

- https://www.swift.org/download/

- Swift Package 찾는곳 

  - https://swiftpackageindex.com/

- Swift공식 문서
  - https://docs.swift.org/swift-book/documentation/the-swift-programming-language/

## init
```
swift package init --name MyCLIAdd --type executable
```

- run
```
swift run

or

swift run MyCLIAdd
```

<hr>

<hr>

# Xcode

- macOS

```
$ swift --version

swift-driver version: 1.87.3 Apple Swift version 5.9.2 (swiftlang-5.9.2.2.56 clang-1500.1.0.2.5)
Target: arm64-apple-macosx14.0
```
# Swift (Visual Studio Code)

https://marketplace.visualstudio.com/items?itemName=sswg.swift-lang  


# iPhone App(Code Swift)

- Code Swift
  - 공부하기 좋다.
  - 아이폰 앱(코스 2까지 공짜 ㅎㅎ 굿)(2. true or false 까지)
    - https://apps.apple.com/kr/app/code-learn-swift-version/id1032546737

<hr>


# Visual Studio Code Dev Containers 

https://github.com/swift-server/vscode-swift/blob/main/docs/remote-dev.md

# Swift Playground (repl 활용)

- https://replit.com/

# Swift_Lang


- Swift Programming Tutorial – Full Course for Beginners 7hr | freeCodeCamp.org

  - https://youtu.be/8Xg7E9shq0U
 
- Swift Programming Tutorial for Beginners (Full Tutorial) 3hr | CodeWithChris

  - https://www.youtube.com/live/Ulp1Kimblg0?feature=share

<br>

<hr>

# .gitignore (Swift)
- https://github.com/github/gitignore/blob/main/Swift.gitignore

```
# Xcode
#
# gitignore contributors: remember to update Global/Xcode.gitignore, Objective-C.gitignore & Swift.gitignore

## User settings
xcuserdata/

## compatibility with Xcode 8 and earlier (ignoring not required starting Xcode 9)
*.xcscmblueprint
*.xccheckout

## compatibility with Xcode 3 and earlier (ignoring not required starting Xcode 4)
build/
DerivedData/
*.moved-aside
*.pbxuser
!default.pbxuser
*.mode1v3
!default.mode1v3
*.mode2v3
!default.mode2v3
*.perspectivev3
!default.perspectivev3

## Obj-C/Swift specific
*.hmap

## App packaging
*.ipa
*.dSYM.zip
*.dSYM

## Playgrounds
timeline.xctimeline
playground.xcworkspace

# Swift ####
.DS_Store
/.build
/Packages
xcuserdata/
DerivedData/
.swiftpm/configuration/registries.json
.swiftpm/xcode/package.xcworkspace/contents.xcworkspacedata
.netrc
#####
# Swift Package Manager
# Add this line if you want to avoid checking in source code from Swift Package Manager dependencies.
# Packages/
# Package.pins
# Package.resolved
# *.xcodeproj
#
# Xcode automatically generates this directory with a .xcworkspacedata file and xcuserdata
# hence it is not needed unless you have added a package configuration file to your project
# .swiftpm

.build/

# CocoaPods
#
# We recommend against adding the Pods directory to your .gitignore. However
# you should judge for yourself, the pros and cons are mentioned at:
# https://guides.cocoapods.org/using/using-cocoapods.html#should-i-check-the-pods-directory-into-source-control
#
# Pods/
#
# Add this line if you want to avoid checking in source code from the Xcode workspace
# *.xcworkspace

# Carthage
#
# Add this line if you want to avoid checking in source code from Carthage dependencies.
# Carthage/Checkouts

Carthage/Build/

# Accio dependency management
Dependencies/
.accio/

# fastlane
#
# It is recommended to not store the screenshots in the git repo.
# Instead, use fastlane to re-generate the screenshots whenever they are needed.
# For more information about the recommended setup visit:
# https://docs.fastlane.tools/best-practices/source-control/#source-control

fastlane/report.xml
fastlane/Preview.html
fastlane/screenshots/**/*.png
fastlane/test_output

# Code Injection
#
# After new code Injection tools there's a generated folder /iOSInjectionProject
# https://github.com/johnno1962/injectionforxcode

iOSInjectionProject/

```

# 3. OSX-KVM(macOS 가상환경 설치 LinuxOS에서 함)

https://github.com/kholia/OSX-KVM

- 외국사람은 성공함  macOS in QEMU VM tutorial for beginners - September 2023 - 91623ac4 | nmariusp
  - https://youtu.be/P2hVcwV4Pts?si=y76qy6GXtpZ7pmoZ



# 4. Darling
- 설명서 https://docs.darlinghq.org/build-instructions.html

- https://github.com/microsoft/vcpkg#installing-macos-developer-tools

- https://www.baeldung.com/linux/xcode

- Darling is a translation layer that enables Linux users to run macOS applications. Currently, Darling works with simple graphical user interface (GUI) apps and several command-line apps. Hence, we can run the Xcode command-line tool using Darling.

- 3.1. Build and Install Darling

First, we’ll download the necessary dependencies for our Linux distro. For example, let’s download and install what’s required on Ubuntu:

```
$ sudo apt-get install cmake clang bison flex xz-utils libfuse-dev libudev-dev pkg-config \
libc6-dev:i386 linux-headers-generic gcc-multilib libcap2-bin libcairo2-dev libgl1-mesa-dev \
libtiff5-dev libfreetype6-dev libfreetype6-dev:i386 git libelf-dev libxml2-dev libegl1-mesa-dev \
libfontconfig1-dev libbsd-dev
```

Next, let’s clone the Darling git repository to our local machine:

```
$ git clone --recursive https://github.com/darlinghq/darling.git
```
Then, we’ll change into the Darling clone directory:

```
$ cd darling
```

Now, let’s make a build directory for the build process:

```
$ mkdir build && cd build
```

Inside the build directory, we configure the build with CMake:

```
$ cmake ..
```

Now, let’s build Darling with make:

```
$ make
```

Importantly, the actual build process can take up to an hour, depending on the resources of our machine.

Finally, we’ll install Darling, build the Darling kernel module, and install darling_mach:

- Error 해결 해야함.
- 여기서 막힘 https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu

```bash
Including component: iokitd
Found Python 2; enabling pre-compilation of Python bytecode
Found required libraries; building with Metal support
-- Found dsymutil: /home/gyoung/Utilities/clang+llvm-17.0.6-x86_64-linux-gnu-ubuntu-22.04/bin/dsymutil
-- Compiler include path detected as /home/gyoung/Utilities/clang+llvm-17.0.6-x86_64-linux-gnu-ubuntu-22.04/lib/clang/17/include/
-- Checking for module 'libavcodec'
--   Package 'libavcodec', required by 'virtual:world', not found
-- Checking for module 'libavformat'
--   Package 'libavformat', required by 'virtual:world', not found
-- Checking for module 'libavutil'
--   Package 'libavutil', required by 'virtual:world', not found
CMake Error at cmake/FindFFmpeg.cmake:86 (message):
  Could not find libavcodec or libavformat or libavutil
Call Stack (most recent call first):
  src/CoreAudio/CMakeLists.txt:10 (find_package)
```


```bash
[/Volumes/SystemRoot/usr/local/bin]$

[/Volumes/DarlingEmulatedDrive/Users/gyoung]

//
usr/local/bin/darling

// 가상환경 시작
./darling shell

// 가상환경 종료
./darling shutdown
```

# 4.1. Install QEMU and KVM

- To demonstrate, we’ll use the macOS-Simple-KVM project to set up a simple macOS VM in QEMU/KVM setup. For this setup, the Linux system must have:

https://www.baeldung.com/linux/xcode

https://manpages.ubuntu.com/manpages/xenial/man1/qemu-img.1.html
