//
//  VTViewController.m
//  VerticalTransition
//
//  Created by yuko fujii on 2014/05/14.
//  Copyright (c) 2014年 yucha. All rights reserved.
//

#import "VTViewController.h"

@interface VTViewController ()

@end

@implementation VTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)next:(id)sender {
    [self performSegueWithIdentifier:@"next" sender:self];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"next"]){
        CATransition* transition = [CATransition animation];
        transition.type = kCATransitionPush;
        transition.subtype = kCATransitionFromTop;
        transition.duration = 2.0f;
        [self.navigationController.view.layer addAnimation:transition forKey:kCATransition];
    }
}

- (IBAction)returnHome:(UIStoryboardSegue *)segue
{
    NSLog(@"return Home");
}
@end
