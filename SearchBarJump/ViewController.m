//
//  ViewController.m
//  SearchBarJump
//
//  Created by Eyal Cohen on 3/9/14.
//  Copyright (c) 2014 Eyal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
 
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillDisappear:(BOOL)animated{
    
      self.tabBarController.tabBar.hidden = NO;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
