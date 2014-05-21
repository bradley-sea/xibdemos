//
//  ViewController.m
//  xibtest
//
//  Created by Bradley Johnson on 5/21/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomTableViewCell" bundle:nil] forCellReuseIdentifier:@"Twitter"];
    
    self.tableView.rowHeight = 100;
    
    UIView *YoView = [[[NSBundle mainBundle] loadNibNamed:@"View" owner:nil options:nil] lastObject];
    
    YoView.center = CGPointMake(100, 100);
    
    [self.view addSubview:YoView];
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 40;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Twitter" forIndexPath:indexPath];
    cell.nameLabel.text = @"Brad";
    
    return cell;
    
}




@end
