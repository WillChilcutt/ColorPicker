//
//  ColorPickerViewController.m
//  ColorPicker
//
//  Created by Will Chilcutt on 1/25/12.
//  Copyright (c) 2012 ETSU. All rights reserved.
//

#import "ColorPickerViewController.h"

@implementation ColorPickerViewController
@synthesize sampleTextDisplay=_sampleTextDisplay;

@synthesize fontValueLabel = _fontValueLabel;
@synthesize backgroundValueLabel = _backgroundValueLabel;

@synthesize redFontSlider=_redFontSlider;
@synthesize greenFontSlider=_greenFontSlider;
@synthesize blueFontSlider=_blueFontSlider;

@synthesize redFontLabel=_redFontLabel;
@synthesize greenFontLabel=_greenFontLabel;
@synthesize blueFontLabel=_blueFontLabel;

@synthesize redBackgroundSlider=_redBackgroundSlider;
@synthesize greenBackgroundSlider=_greenBackgroundSlider;
@synthesize blueBackgroundSlider=_blueBackgroundSlider;

@synthesize redBackgroundLabel=_redBackgroundLabel;
@synthesize greenBackgroundLabel=_greenBackgroundLabel;
@synthesize blueBackgroundLabel=_blueBackgroundLabel;

-(void)updateScreenElements 
{
    float redFontValue = [self.redFontSlider value];
    float greenFontValue = [[self greenFontSlider] value];
    float blueFontValue = [[self blueFontSlider] value];
    float redBackgroundValue = [[self redBackgroundSlider] value];
    float greenBackgroundValue = [[self greenBackgroundSlider] value];
    float blueBackgroundValue = [[self blueBackgroundSlider] value];
    
    self.redFontLabel.text = [NSString stringWithFormat:@"%3.2f", redFontValue];
    self.greenFontLabel.text = [NSString stringWithFormat:@"%3.2f", greenFontValue];
    self.blueFontLabel.text = [NSString stringWithFormat:@"%3.2f", blueFontValue];
    self.redBackgroundLabel.text = [NSString stringWithFormat:@"%3.2f", redBackgroundValue];
    self.greenBackgroundLabel.text = [NSString stringWithFormat:@"%3.2f", greenBackgroundValue];
    self.blueBackgroundLabel.text = [NSString stringWithFormat:@"%3.2f", blueBackgroundValue];
    
    self.fontValueLabel.text =[NSString stringWithFormat:@"Font: #%2.2x%2.2x%2.2x",(int)(255*redFontValue),(int)(255*greenFontValue),(int)(255*blueFontValue)];
    
    self.backgroundValueLabel.text =[NSString stringWithFormat:@"Background: #%2.2x%2.2x%2.2x",(int)(255*redBackgroundValue),(int)(255*greenBackgroundValue),(int)(255*blueBackgroundValue)];
    
    //Set the sample text colors for font and background
    
    self.sampleTextDisplay.textColor =[UIColor colorWithRed:redFontValue 
                                                      green:greenFontValue 
                                                       blue:blueFontValue 
                                                      alpha:1.0];
    
    self.sampleTextDisplay.backgroundColor=[UIColor colorWithRed:redBackgroundValue 
                                                           green:greenBackgroundValue 
                                                            blue:blueBackgroundValue 
                                                           alpha:1.0];
    
}//end of -(void)updateScreenElements

- (IBAction)sliderChanged 
{
    [self updateScreenElements];
     
}//end of - (IBAction)fontSliderChanged 

- (IBAction)fontPresetSelected:(UISegmentedControl *)sender {
    
    float red = 0.0;
    float green = 0.0;
    float blue = 0.0;
    
    switch ([sender selectedSegmentIndex]) {
        case 0: // Gold
            red = 1.0;
            green =(float)0xD7/255.0;
            blue=0.0;
            break;
        
        case 1: // Tan
            red = (float)0xD2/255.0;
            green =(float)0xD7/255.0;
            blue=(float)0x8C/255.0;
            break;
            
        case 2: // Peru
            red = (float)0xCD/255.0;
            green =(float)0x85/255.0;
            blue=(float)0x3F/255.0;
            break;
            
        case 3: // Pink
            red = (float)0xFF/255.0;
            green =(float)0xC0/255.0;
            blue=(float)0xCB/255.0;
            break;
            
        case 4: // Plum
            red = (float)0xDD/255.0;
            green =(float)0xA0/255.0;
            blue=(float)0xDD/255.0;
            break;
            
        case 5: // Teal
            red = (float)0x00/255.0;
            green =(float)0x80/255.0;
            blue=(float)0x80/255.0;
            break;
            
        default:
            break;
    }
    
    self.redFontSlider.value = red;
    self.greenFontSlider.value = green;
    self.blueFontSlider.value = blue;
    [self updateScreenElements];
    
}//end of - (IBAction)fontPresetSelected:(UISegmentedControl *)sender 


- (IBAction)backgroundPresentSelected:(UISegmentedControl *)sender {
    
    float red = 0.0;
    float green = 0.0;
    float blue = 0.0;
    
    switch ([sender selectedSegmentIndex]) {
        case 0: // Gold
            red = 1.0;
            green =(float)0xD7/255.0;
            blue=0.0;
            break;
            
        case 1: // Tan
            red = (float)0xD2/255.0;
            green =(float)0xD7/255.0;
            blue=(float)0x8C/255.0;
            break;
            
        case 2: // Peru
            red = (float)0xCD/255.0;
            green =(float)0x85/255.0;
            blue=(float)0x3F/255.0;
            break;
            
        case 3: // Pink
            red = (float)0xFF/255.0;
            green =(float)0xC0/255.0;
            blue=(float)0xCB/255.0;
            break;
            
        case 4: // Plum
            red = (float)0xDD/255.0;
            green =(float)0xA0/255.0;
            blue=(float)0xDD/255.0;
            break;
            
        case 5: // Teal
            red = (float)0x00/255.0;
            green =(float)0x80/255.0;
            blue=(float)0x80/255.0;
            break;
            
        default:
            break;
    }
    
    self.redBackgroundSlider.value = red;
    self.greenBackgroundSlider.value = green;
    self.blueBackgroundSlider.value = blue;
    [self updateScreenElements];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setSampleTextDisplay:nil];
    [self setRedFontSlider:nil];
    [self setGreenFontSlider:nil];
    [self setBlueFontSlider:nil];
    [self setRedFontLabel:nil];
    [self setGreenFontLabel:nil];
    [self setBlueFontLabel:nil];
    [self setRedBackgroundSlider:nil];
    [self setGreenBackgroundSlider:nil];
    [self setBlueBackgroundSlider:nil];
    [self setRedBackgroundLabel:nil];
    [self setGreenBackgroundLabel:nil];
    [self setBlueBackgroundLabel:nil];
    [self setFontValueLabel:nil];
    [self setBackgroundValueLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
