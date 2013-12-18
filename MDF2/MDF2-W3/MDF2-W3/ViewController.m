//
//  ViewController.m
//  MDF2-W3
//
//  Created by Jeff Mitsou on 10/14/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "ViewController.h"
#import "LibraryViewController.h"
#import "PhotoViewController.h"
#import "MovieViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>

@interface ViewController ()

@end

@implementation ViewController
@synthesize  camLib;

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

-(IBAction)openLibrary:(id)sender
{
    LibraryViewController *photoView = [[LibraryViewController alloc] initWithNibName:@"LibraryViewController" bundle:nil];
    if (photoView != nil)
    {
        //Show the detailed view controller
        [self presentViewController:photoView animated:YES completion:nil];
    }
}

//user selected an image
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [self dismissViewControllerAnimated:YES completion:^{
        
        if (mode == 0)
        {
            //Create an instance of the photoCapture view
            PhotoViewController *photoPage = [[PhotoViewController alloc] initWithNibName:@"PhotoViewController" bundle:nil];
            
            if (photoPage != nil)
            {
                //Pass in the copied info dictionary
                photoPage.camLib = info;
                
                //Present the photo viewing view
                [self presentViewController:photoPage animated:YES completion:nil];
            }
        }
        else if (mode == 1)
        {
            //Create an instance of the videoCapture view
            MovieViewController *videoCapture = [[MovieViewController alloc] initWithNibName:@"MovieViewController" bundle:nil];
            
            if (videoCapture != nil)
            {
                //Pass in the copied info dictionary
                videoCapture.camLib = info;
                
                NSLog(@"%@",[info description]);
                
                NSURL *urlS = [info valueForKey:UIImagePickerControllerMediaURL];
                if (urlS != nil)
                {
                    NSString* videoPath = [urlS path];
                    
                    UISaveVideoAtPathToSavedPhotosAlbum(videoPath, self, @selector(video:didFinishSavingWithError:contextInfo:), nil);
                }
                
                //[self presentViewController:videoCapture animated:YES completion:nil];
            }
        }
    }];
    
}

// user selected cancel
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:true completion:nil];
}

-(IBAction)onCapture:(id)sender
{
    UIImagePickerController *pickerController = [[UIImagePickerController alloc]init];
    
    if (pickerController != nil)
    {
        pickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        // setup the delegate
        pickerController.delegate = self;
        
        pickerController.allowsEditing = true;
        
        mode = 0;
        [self presentViewController:pickerController animated:true completion:nil];
    }
}

-(IBAction)onRecord:(id)sender
{
    UIImagePickerController *pickerController = [[UIImagePickerController alloc]init];
    
    if (pickerController != nil)
    {
        pickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        // setup the delegate
        pickerController.delegate = self;
        
        pickerController.allowsEditing = false;
        
        pickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
        pickerController.mediaTypes = [NSArray arrayWithObjects:(NSString*) kUTTypeMovie, nil];
                                       
        mode = 1;
        [self presentViewController:pickerController animated:true completion:nil];
    }
}

- (void)video:(NSString *)videoPath didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    if (error != nil)
    {
        NSLog(@"Image Can not be saved");
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Video saved" message:@"Your video has been saved to your Photo Album" delegate:self cancelButtonTitle:nil otherButtonTitles:nil];
        // optional - add more buttons:
        [alert addButtonWithTitle:@"Okay"];
        [alert show];
        NSLog(@"Successfully saved Video");
    }
    
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0)
    {
        [self dismissViewControllerAnimated:true completion:nil];
    }
}


@end
