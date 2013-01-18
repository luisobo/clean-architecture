//
//  LSActivateRegisterViewController.m
//  CleanArchitecture
//
//  Created by Luis Solano Bonet on 14/01/13.
//  Copyright (c) 2013 Luis Solano Bonet. All rights reserved.
//

#import "LSActivateRegisterViewController.h"
#import "LSActivateRegister.h"
#import "LSActivateRegisterResponse.h"

@interface LSActivateRegisterViewController ()
@property (nonatomic, strong) LSActivateRegister *interactor;
@property (nonatomic, strong) IBOutlet UIActivityIndicatorView *spinner;
- (IBAction)activateButtonTapped:(id)sender;
@end

@implementation LSActivateRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.interactor = [LSActivateRegister new];
    self.spinner.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IB Actions
- (IBAction)activateButtonTapped:(id)sender {
    LSActivateRegisterResponse *response = [self.interactor activateRegisterWithStoreName:@"foo" login:@"foo" password:@"password" registerNumber:2];
    self.spinner.hidden = NO;
    
    [response waitUntilIsDone];

    self.spinner.hidden = YES;
    NSLog(@"is result nil? %d", response.result == nil);    
}

@end
