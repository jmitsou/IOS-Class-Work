//
//  FirstViewController.m
//  MDF1-W4
//
//  Created by Jeff Mitsou on 8/26/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "FirstViewController.h"
#import "DetailViewController.h"
#import "SecondViewController.h"
#import "AppDelegate.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Anime", @"Anime");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}

- (void)viewDidLoad
{
    //create url - connection to
    url = [[NSURL alloc] initWithString:@"http://mymovieapi.com/?title=Naruto&type=xml&plot=simple&episode=0&limit=10&yg=0&mt=none&lang=en-US&offset=&aka=simple&release=simple&business=0&tech=0"];
    //request connection from web service
    request = [[NSURLRequest alloc] initWithURL:url];
    //allocate mutable array - movies
    anime = [[NSMutableArray alloc] init];
    
    if(request != nil)
    {
        
        //connect
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        //create our mutableData object
        requestData = [NSMutableData data];
        
    }
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
//did receive data
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    //check if we have valid data
    if(data != nil)
    {
        //add this data to existing requestData
        [requestData appendData:data];
    }
}
//this function is called when we have all the data from the request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    //all information in requestData
    requestString = [[NSString alloc] initWithData:requestData encoding:NSASCIIStringEncoding];
    if(requestString != nil)
    {
        
        appDelegate.rawXData = requestString;
        
    }
    //create xml parser
    NSXMLParser *xmlParse = [[NSXMLParser alloc] initWithData:requestData];
    if(xmlParse != nil)
    {
        //set delegate
        [xmlParse setDelegate:self];
        //kick off parsing
        [xmlParse parse];
    }
}

//when xml <elementName> is started
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    currentElement =[[NSMutableString alloc] init];
    // parse item
    if([elementName isEqualToString:@"title"])
    {
        currentInfo = [[NSMutableDictionary alloc] init];
        
    }
}
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    if (string != nil)
    {
        //append string to mutable string
        [currentElement appendString:string];
    }
    
}
- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if(currentElement != nil)
    {
        
        if([elementName isEqualToString:@"rating"])
        {
            [currentInfo setValue:currentElement forKey:elementName];
            //NSLog(@"%@",currentElement);
            
        }
        else if([elementName isEqualToString:@"title"])
        {
            [currentInfo setValue:currentElement forKey:elementName];
            [anime addObject:currentInfo];
        }
        currentElement = nil;
        NSLog(@"%@", anime.description);
    }
    
}
-(void)parserDidEndDocument:(NSXMLParser *)parser
{
    [itemList reloadData];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [anime count];

}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    //create instance of table view
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    if(cell != nil)
    {
        cell.textLabel.text = [[anime objectAtIndex:indexPath.row] objectForKey:@"title"];
    }
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    appDelegate.mTitle = [[anime objectAtIndex:indexPath.row]objectForKey:@"title"];
    appDelegate.mRating = [[anime objectAtIndex:indexPath.row] objectForKey:@"rating"];
    
    DetailViewController *detailView = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    if(detailView != nil)
    {
        [self presentViewController:detailView animated:true completion:nil];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
