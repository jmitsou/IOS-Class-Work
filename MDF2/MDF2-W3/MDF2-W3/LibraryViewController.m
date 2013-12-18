//
//  LibraryViewController.m
//  MDF2-W3
//
//  Created by Jeff Mitsou on 10/15/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "LibraryViewController.h"
#import "ViewController.h"

@interface LibraryViewController ()

@end

@implementation LibraryViewController


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

//user selected an image
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
 {
     UIImage *selectedImage = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
 
     if (selectedImage != nil)
     {
         photoImage.image = selectedImage;
     }
     
     [picker dismissViewControllerAnimated:true completion:nil];
  }

// user selected cancel
 - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
 {
     [picker dismissViewControllerAnimated:true completion:nil];
 }

-(IBAction)onClick:(id)sender
 {
     UIImagePickerController *pickerController = [[UIImagePickerController alloc]init];
 
     if (pickerController != nil)
     {
         pickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
 
         // setup the delegate
         pickerController.delegate = self;
 
         pickerController.allowsEditing = true;
 
         [self presentViewController:pickerController animated:true completion:nil];
     }
 }

-(IBAction)onClose:(id)sender
{
    //Dismiss the current view and return to the main view
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
