# taobao_coupon_delete_tool
# 起因，乱七八糟的淘宝店铺优惠券
  淘宝的店铺优惠券可以由淘宝卖家主动发放，导致我的优惠券里很多乱七八糟的优惠券，好多店铺根本没见过。
  更加糟糕的是，淘宝的店铺优惠券有500个的上限，导致我自己想领优惠券的时候，因为500的限制而无法领取。
  
  在手机淘宝上的提示如下，提示的是系统繁忙，实际上是优惠券达到了上限
  
![](https://img.alicdn.com/tfs/TB1qczoDNTpK1RjSZFMXXbG_VXa-326-555.png)

在pc上提示如下， 提示还算正确

![](https://img.alicdn.com/tfs/TB1ZXriDHPpK1RjSZFFXXa5PpXa-337-206.png)

实际上淘宝优惠券的情况 

![](https://img.alicdn.com/tfs/TB1jyzsDMHqK1RjSZFkXXX.WFXa-198-220.png)


# 多次反馈无果

没有批量删除，也无法突破500的限制，给淘宝的使用带来了非常大的不方便。手动删除？ 工作量巨大无比。无论是通过淘宝客服进行反馈，甚至是通过阿里巴巴内网阿里味进行反馈，2个月过去了，犹如石沉大海。幸亏咱们是程序员，没有提供批量删除的功能，我们就自己动手呗，花了两个小时，写了一个脚本，终于把这个鬼东西干掉了。

# 使用方法
第一步，使用电脑，打开taobao.com并且登陆淘宝
第二步，使用chrome浏览器，打开https://taoquan.taobao.com/coupon/list_my_coupon.htm 查看你的优惠券有多少张
第三步，找到curl，方法如图所示。先鼠标右键，点击最下面的检查，然后点击NetWork，然后寻找到
	![](https://img.alicdn.com/tfs/TB1zh_jDH2pK1RjSZFsXXaNlXXa-1911-760.png)
	
第四步，复制Curl 

![](https://img.alicdn.com/tfs/TB1hZvnDSzqK1RjSZFpXXakSXXa-900-324.png)

然后这个复制的内容就是你的参数。


第五步，运行脚本 

sh delete.sh 你复制的cURL


可以看到输出内容, 就代表删除成功了，一次不行，多运行几次就好。

![](https://img.alicdn.com/tfs/TB1NQPrDQzoK1RjSZFlXXai4VXa-463-912.png)

终于清静了
![](https://img.alicdn.com/tfs/TB1B_2sDMHqK1RjSZFEXXcGMXXa-1067-267.png)


# 还有不会的可以联系我 
