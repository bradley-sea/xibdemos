//
//  CustomViewController.m
//  xibtest
//
//  Created by Bradley Johnson on 5/21/14.
//  Copyright (c) 2014 Bradley Johnson. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation CustomViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.nameLabel.text = @"Brad";
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
