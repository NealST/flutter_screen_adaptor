# screen_adaptor

A flutter screen_adaptor tool.

## Getting Started

This library is designed to solve the problem of flutter screen adaptor. The default UI sketch width is 750px, based on this width, you can use this tool as follows: 

```
// import
import 'package:screen_adaptor/screen_adaptor.dart'

// used in ui code
// 100 is the ui sketch size
Container(
  width: Fpx.to(100)
)

// 1px problem
Container(
  decoration: BoxDecoration(border: Border.all(color: Colors.blue, width: Fpx.one()))
)

// get screen width
Fpx.vw()

// get screen height
Fpx.vh()

```
if your ui sketch width is not 750px, such as 375px. you need set the ui width first through

```
Fpx.init(375)
```

