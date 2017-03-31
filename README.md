# OC-照片选取和拍照

### Tips

---

- 支持照片选取和拍照
- 支持Block回调
- [Swift Version](https://github.com/iFallen/HImagePickerUtils-Swift)

### 使用方法  
---

- 定义为`类的成员变量`
	
```
ZXImagePickerUtils * zxImgPickerUtils;
```
	
- 对象初始化

```
zxImgPickerUtils = [[ZXImagePickerUtils alloc] init];
```
	
- 拍一张

```
[zxImgPickerUtils takePhotoUponVC:self callBack:^(UIImage *image, ZXTakePhotoStatus status, NSString *errorMsg) {
	if (status == ZXPSuccess) {
		[_imgTest setImage:image];
	}
	NSLog(@"%@",errorMsg);
}];
```
- 从相册取

```
[zxImgPickerUtils choosePhotoUponVC:self callBack:^(UIImage *image, ZXTakePhotoStatus status, NSString *errorMsg) {
	if (status == ZXPSuccess) {
		[_imgTest setImage:image];
	}
	NSLog(@"%@",errorMsg);
}];
```

### 效果图
---

>
![](https://github.com/iFallen/HImagePickerUtils-OC/raw/master/ScreenShot/1.png)
