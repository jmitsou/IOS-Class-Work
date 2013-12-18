//
//  PhotoViewController.m
//  MDF2-W3
//
//  Created by Jeff Mitsou on 10/15/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "PhotoViewController.h"
#import "ViewController.h"

@interface PhotoViewController ()

@end

@implementation PhotoViewController
@synthesize camLib;

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated
{
    begin = [camLib objectForKey:@"UIImagePickerControllerOriginalImage"];
    
    if (begin != nil)
    {
        original.image = begin;
    }
    
    end = [camLib objectForKey:@"UIImagePickerControllerEditedImage"];
    
    if (end != nil)
    {
        edited.image = end;
    }

}

-(IBAction)onSave:(id)sender
{
    UIImageWriteToSavedPhotosAlbum(begin, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    UIImageWriteToSavedPhotosAlbum(end, self, nil, nil);
}

-(IBAction)onCancel:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Image Not Saved" message:@"Your image has not been saved to your Photo Album" delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
    // optional - add more buttons:
    [alert addButtonWithTitle:@"Okay"];
    [alert show];
    NSLog(@"Image not saved");
    
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0)
    {
        [self dismissViewControllerAnimated:true completion:nil];
    }
}

- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo: (void *)contextInfo
{
    if (error != nil)
    {
        NSLog(@"Image Can not be saved");
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Image saved" message:@"Your image has been saved to your Photo Album" delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
        // optional - add more buttons:
        [alert addButtonWithTitle:@"Okay"];
        [alert show];
        NSLog(@"Successfully saved Image");
    }

}


 
@end
