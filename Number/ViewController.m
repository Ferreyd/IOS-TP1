//
//  ViewController.m
//  Number
//
//  Created by MBDS on 04/11/2014.
//  Copyright (c) 2014 MBDS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize numberTF;
@synthesize infoTV;

- (void)viewDidLoad {
    [super viewDidLoad];
    number = arc4random()% 100;
    [infoTV setText:@"Veuillez inserer un nombre entre 0 et 99. \n"];
}

- (IBAction)checkBtn:(id)sender {
    [numberTF resignFirstResponder];
    NSString *string = numberTF.text;
    int temp = [string intValue];
    if(temp < number)
    {
        essais++;
        NSString *old = [infoTV text];
        [infoTV setText:[NSString stringWithFormat:@"%@C'est plus !. \nVous avez fait %d essai(s). \n", old, essais]];
        
    }
    if(temp > number)
    {
         essais++;
        NSString *old = [infoTV text];
        [infoTV setText:[NSString stringWithFormat:@"%@C'est moins !. \nVous avez fait %d essai(s). \n", old, essais]];
    }
    if (temp == number )
    {
         essais++;
        NSString *old = [infoTV text];
        [infoTV setText:[NSString stringWithFormat:@"%@C'est gagné !. \nVous avez fait %d essai(s). \n", old, essais]];
    }
    
    
}

- (IBAction)resetBtn:(id)sender {
    number = arc4random()% 100;
    [infoTV setText:(@"Bonjour,\nVeuillez inserer un nombree entre 0 et 99")];
    essais = 0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
