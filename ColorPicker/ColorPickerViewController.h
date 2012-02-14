//
//  ColorPickerViewController.h
//  ColorPicker
//
//  Created by Will Chilcutt on 1/25/12.
//  Copyright (c) 2012 ETSU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColorPickerViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *sampleTextDisplay;
@property (weak, nonatomic) IBOutlet UILabel *fontValueLabel;
@property (weak, nonatomic) IBOutlet UILabel *backgroundValueLabel;

@property (weak, nonatomic) IBOutlet UISlider *redFontSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenFontSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueFontSlider;

@property (weak, nonatomic) IBOutlet UILabel *redFontLabel;
@property (weak, nonatomic) IBOutlet UILabel *greenFontLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueFontLabel;

@property (weak, nonatomic) IBOutlet UISlider *redBackgroundSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenBackgroundSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueBackgroundSlider;

@property (weak, nonatomic) IBOutlet UILabel *redBackgroundLabel;
@property (weak, nonatomic) IBOutlet UILabel *greenBackgroundLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueBackgroundLabel;

-(void)updateScreenElements;

@end
