# flutter_gen
### 您还希望在开发Flutter应用程序时提高速度吗?那么，如果您还不知道flutter_gen，那么您绝对应该看看这个包。它是一个代码生成器，为你的资源，颜色，和一切你想要包括在你的应用程序。向应用程序添加新资源将设置该资源的路径，并提供访问权限，而不会出现任何输入错误。请看下面的例子</h3>

#### 第一步
Add build_runner and FlutterGen to your package's pubspec.yaml file:

```
dev_dependencies:
  build_runner:
  flutter_gen_runner:
```

#### 第二步
Install FlutterGen
```
flutter pub get
```

#### 第三步
Use FlutterGen
```
flutter packages pub run build_runner build
```

#### 第四步配置好ymal
```
dev_dependencies:
  build_runner:
  flutter_gen_runner:
  flutter_test:
    sdk: flutter
    
  flutter_lints: ^2.0.0


flutter_gen:
  output: lib/gen/ # Optional (default: lib/gen/)
  line_length: 80 # Optional (default: 80)

  # Optional
  integrations:
    flutter_svg: true
    # flare_flutter: true
    # rive: true
    # lottie: true

  assets:
    enabled: true

    outputs:
      class_name: MyAssets
      package_parameter_enabled: false
      style: dot-delimiter

    exclude:
      - assets/images/animals/

  colors:
    enabled: true
    outputs:
      class_name: MyColorName
    inputs:
      - assets/color/colors.xml
      - assets/color/colors2.xml

  fonts:
    enabled: true
    outputs:
      class_name: MyFontFamily

flutter:
  uses-material-design: true

  assets:
    - assets/images/
    - assets/images/animals/

  fonts:
    - family: AaKaiSong
      fonts:
        - asset: assets/fonts/AaKaiSong.ttf
          style: italic
```

#### 第五步

```
$ fluttergen -h

$ fluttergen -c example/pubspec.yaml
```

### 使用

使用图片

```
Image.asset(MyAssets.images.strawberry.path,width: 120, height: 120),
```

使用字体
```
fontFamily: MyFontFamily.aaKaiSong,
```

使用颜色
```
backgroundColor: MyColorName.yellowOcherAccent,
```

### 项目资源文件目录

![WX20230309-110231@2x](https://user-images.githubusercontent.com/17973224/223905494-b9ead23d-43c3-45d3-8591-6573dd5189e4.png)

