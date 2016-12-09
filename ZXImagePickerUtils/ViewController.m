//
//  ViewController.m
//  ZXImagePickerUtils
//
//  Created by JuanFelix on 2016/12/9.
//  Copyright © 2016年 screson. All rights reserved.
//

#import "ViewController.h"
#import "ZXImagePickerUtils.h"

@interface ViewController ()
{
    ZXImagePickerUtils * zxImgPickerUtils;
}
@property (weak, nonatomic) IBOutlet UIImageView *imgTest;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    zxImgPickerUtils = [[ZXImagePickerUtils alloc] init];
}

//从相册取
- (IBAction)choosePhoto:(id)sender {
    [zxImgPickerUtils choosePhotoUponVC:self callBack:^(UIImage *image, ZXTakePhotoStatus status, NSString *errorMsg) {
        if (status == ZXPSuccess) {
            [_imgTest setImage:image];
        }
        NSLog(@"%@",errorMsg);
    }];
}

//拍照
- (IBAction)takePhoto:(id)sender {
    [zxImgPickerUtils takePhotoUponVC:self callBack:^(UIImage *image, ZXTakePhotoStatus status, NSString *errorMsg) {
        if (status == ZXPSuccess) {
            [_imgTest setImage:image];
        }
        NSLog(@"%@",errorMsg);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
