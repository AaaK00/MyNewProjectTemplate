# New iOS Project Wizard by AaaKoo

## WTF
This is a script that eases up the creation of an iOS project. The script creates a basic Hello World project with tools [XcodeGen](https://github.com/yonaskolb/XcodeGen) and [SwiftLint](https://github.com/realm/SwiftLint) installed and configured properly. Tools are installed using Mint, which makes sure everyone uses the correct versions.

## How to use:
## Prerequisites:
- Make sure you have HomeBrew installed

## Steps to create a new project
1. Execute command `curl -L https://raw.githubusercontent.com/AaaK00/MyNewProjectTemplate/master/launch.sh | bash -s -- MyNewApp`
   - Replace string `MyNewApp` with the desired app name
2. Open created `MyNewApp/MyNewApp.xcodeproj` with Xcode and start coding 🛠

- Whenever you have modified project.yml file, run XCodeGen with the command: `mint run xcodegen`.

(The tool is inspired by https://github.com/muzix/ForkMyApp)