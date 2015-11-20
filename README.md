# RightToLeftViewDemo
弹出更多功能视图，从右到左动画效果
##效果图
![image](https://github.com/panyaorui/RightToLeftViewDemo/blob/master/效果图/01.gif)
##使用说面
```swift
var right:RightToLeftView!;
    override func viewDidLoad() {
        super.viewDidLoad()
        right = RightToLeftView.viewFromNibNamed();
        self.view.addSubview(right);
    }
   
    @IBAction func click(sender: AnyObject) {
        if(right.isShow){
            right.hidden();
        }else{
             right.show(sender.frame);
        }
    }

```
