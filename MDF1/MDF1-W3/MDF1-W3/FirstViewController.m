//
//  FirstViewController.m
//  MDF1-W3
//
//  Created by Jeff Mitsou on 8/20/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "FirstViewController.h"
#import "DetailViewController.h"
#import "businessManager.h"
#import "StoreInfo.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Anime Stores", @"Anime Stores");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    
    //sets the titles and locations in the array
    StoreInfo *store1 = [[StoreInfo alloc] initWithTitle:@"GrandLine Boutique" location:CLLocationCoordinate2DMake(41.7000f, -71.5000f)];
    StoreInfo *store2 = [[StoreInfo alloc] initWithTitle:@"Devil Fruit Desserts" location:CLLocationCoordinate2DMake(41.7667f, -71.4500f)];
    StoreInfo *store3 = [[StoreInfo alloc] initWithTitle:@"Mermaid Maid Cafe" location:CLLocationCoordinate2DMake(41.5806f, -71.4539f)];
    StoreInfo *store4 = [[StoreInfo alloc] initWithTitle:@"The Otaku Joint" location:CLLocationCoordinate2DMake(41.7453f, -71.3181f)];
    StoreInfo *store5 = [[StoreInfo alloc] initWithTitle:@"Suki Des Collectibles" location:CLLocationCoordinate2DMake(41.8136f, -71.3700f)];
    StoreInfo *store6 = [[StoreInfo alloc] initWithTitle:@"Anime Eye Lens" location:CLLocationCoordinate2DMake(42.2667f, -71.8000f)];
    StoreInfo *store7 = [[StoreInfo alloc] initWithTitle:@"Black Lotus Kingdom" location:CLLocationCoordinate2DMake(42.0500f, -71.8806f)];
    StoreInfo *store8 = [[StoreInfo alloc] initWithTitle:@"Hotarubi NightClub" location:CLLocationCoordinate2DMake(42.3581f, -71.0636f)];
    StoreInfo *store9 = [[StoreInfo alloc] initWithTitle:@"Shin-obi Lazer Tag" location:CLLocationCoordinate2DMake(40.6700f, -73.9400f)];
    StoreInfo *store10 = [[StoreInfo alloc] initWithTitle:@"Naruto Ramen" location:CLLocationCoordinate2DMake(39.3421f, -74.4828f)];

    //create instance of business manager
    [businessManager CreateInstance];
    
    //Get instance
    businessManager *bManager = [businessManager GetInstance];
    if(bManager != nil)
    {
        NSMutableArray *stores = bManager.aniStores;
        if(stores != nil)
        {
            //add shops to view
            [stores addObject:store1];
            [stores addObject:store2];
            [stores addObject:store3];
            [stores addObject:store4];
            [stores addObject:store5];
            [stores addObject:store6];
            [stores addObject:store7];
            [stores addObject:store8];
            [stores addObject:store9];
            [stores addObject:store10];
            
        }
    }
    
    //hides the done button
    doneBtn.hidden = TRUE;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    [businessManager CreateInstance];
    
    businessManager *bManager = [businessManager GetInstance];
    NSMutableArray * stores = bManager.aniStores;
    
    return [stores count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //create cell identifier
    static NSString *CellIdentifier = @"Cell";
    
    //create instance of tableView
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell == nil)
    {
        //create instance of tableView cell
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    [businessManager CreateInstance];
    businessManager *bManager = [businessManager GetInstance];
    NSMutableArray * stores = bManager.aniStores;
    
    cell.textLabel.text = [[stores objectAtIndex:indexPath.row]aniName];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //create instance of business manager
    [businessManager CreateInstance];
    //get instance
    businessManager *bManager = [businessManager GetInstance];
    NSMutableArray *stores = bManager.aniStores;
    
    //open detail view
    DetailViewController *detailView = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    if(detailView != nil)
    {
        //add business name to view
        detailView.aniStore = [[stores objectAtIndex:indexPath.row]aniName];
        //add latitude and longitude to view
        detailView.aniStoreLocation = [[stores objectAtIndex:indexPath.row]actualLocation];
        
    }
    [self presentViewController:detailView animated:TRUE completion:nil];
}

//enables the 
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        //create instance of business manager
        [businessManager CreateInstance];
        //get instance
        businessManager *bManager = [businessManager GetInstance];
        NSMutableArray *stores = bManager.aniStores;
        
        //delete row from array
        [stores removeObjectAtIndex:indexPath.row];
        //delete row from table
        [aniList deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    //if delete button is clicked
    if(button.tag == 0)
    {
        //display done button
        doneBtn.hidden = false;
        //in edit mode
        [aniList setEditing:true];
        
    }
    //if done button is clicked
    else if(button.tag == 1)
    {
        //get out edit mode
        [aniList setEditing:false];
        //hide done button
        doneBtn.hidden = true;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
