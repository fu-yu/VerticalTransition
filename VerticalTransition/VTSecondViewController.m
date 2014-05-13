//
//  VTSecondViewController.m
//  VerticalTransition
//
//  Created by yuko fujii on 2014/05/14.
//  Copyright (c) 2014年 yucha. All rights reserved.
//

#import "VTSecondViewController.h"

@interface VTSecondViewController ()

@end

@implementation VTSecondViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)back:(id)sender {
    [self performSegueWithIdentifier:@"returnHome" sender:self];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"returnHome"]){
        CATransition* transition = [CATransition animation];
        transition.type = kCATransitionPush;
        transition.subtype = kCATransitionFromBottom;
        transition.duration = 2.0f;
        [self.navigationController.view.layer addAnimation:transition forKey:kCATransition];
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
