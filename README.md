# GLActionSheet
一个自定义的sheetView,支持显示标题，默认选中，使用block回调。

---

###使用说明
```
[GLActionSheet showWithDataSource:@[@"我是第一条",@"我2我自豪",@"老3怎么了",@"怒射楼上一脸",@"喔喔喔"]
                                title:@"逗比集中营"
                          selectIndex:3
                        completeBlock:^(NSInteger index) {
                            NSLog(@"%ld",(long)index);
                        }];
```
![自定义sheet](http://7u2lyw.com1.z0.glb.clouddn.com/blog自定义sheet.gif)
打印
```
2015-12-19 23:04:53.037 demo[1242:331980] -1
2015-12-19 23:05:05.294 demo[1242:331980] 2
```

###修改
```
#define kNormalColor RGB(0x54,0x54,0x54)   //正常颜色
#define kSelectedColor RGB(0x0,0x0,0x0)    //选中颜色

#define kHeadFont 13    //标题的大小
#define kItemFont 15    //内容显示的大小

#define kCellHeight 39          //cell的高度
#define kHeadViewHeight 33      //头部的高度
#define kAnimationTime 0.3      //动画的执行时间
```

###修改item显示的样式
如果要自定义显示的item，直接修改GLActionSheet.m中的此处代码即可
```
@implementation GLActionSheetCell
//在这个地方自定义显示的item
@end

```
