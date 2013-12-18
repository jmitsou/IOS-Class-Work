//
//  SecondViewController.m
//  MDF1-W2
//
//  Created by Jeff Mitsou on 8/14/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "SecondViewController.h"
#import "DetailViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //sets title for the second tab and navbar title
        self.title = NSLocalizedString(@"Current Game Consoles", @"Current Game Consoles");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    
    titles = [[NSMutableArray alloc] initWithObjects:
              @"Playstation 3",
              @"Xbox 360",
              @"Wii U",
              @"PS Vita",
              @"3DS",
              nil];
    Info = [[NSMutableArray alloc] initWithObjects:
            @"Playstation 3 -, Sony's 3rd gaming console came out in 2010. The Playstation 3 is also known as the next generation gaming console because of its sophisticated features. This console also allows you to watch Blu-Ray movies. And you can also use a High Definition Multimedia Image [HDMI] cord to enjoy better quality of images. It also has a built-in WiFi, so you can surf the internet and play online games. It comes with bluetooth, so use a bluetooth headset and chat away.The Playstation 3 has two USB ports for you to plug-in and removable drives or an external hard drive for extra storage. ",
            @"Microsoft is bringing out a new version of the Xbox 360 game machine that has a bigger hard drive, better high-definition video support and a stylish black finish, not an insignificant feature in a world where looking cool ranks high.The idea is to appeal to an elite class of hard-core game players who would like a little more of everything.The Xbox 360 Elite, which was announced Wednesday and will be in U.S. stores in late April, will have a list price of $479, or $80 more than the Xbox 360 Pro and $180 more than the basic Xbox 360.The new model has a 120-gigabyte hard drive, in contrast to the standard model's 20-gigabyte drive. It also has a high-definition multimedia interface port and cable, and a wireless controller and headset. Current Xbox 360 owners can buy the new 120-gigabyte hard drive as a separate accessory for $179. Microsoft is clearly hoping to fill what it sees as a hole at the top end of the market.",
            @"Sales of the Wii U declined by 51.3 per cent to 160,000 units for the last quarter. The original Wii console is still selling better than its successor, with 210,000 units sold in the same period. Nintendo has sold 3.61 million Wii U consoles, significantly lower than the quantity it had predicted. It had expected to sell 5.5 million units by March this year. Specs for new USB standard finalised. The USB alliance has finalised the specifications for USB 3.1, paving the way for companies to start building chipsets for the new standard. USB 3.1 offers bandwidth of up to 10Gbps, twice that of the current USB 3.0 standard. It will be compatible with older USB devices.",
            @"Skype have unveiled a new addition to their video calling service with the news that Sony's PS Vita will soon offer Skype video calling capabilities and voice calling on both Wi-Fi and 3G models.'Our users appreciate being able to access Skype features wherever and whenever they choose,' said Manrique Brenes, senior director of emerging opportunities at Skype. 'With the launch of Skype for PS Vita, we are taking another step towards our ultimate goal of making Skype video calling available on every platform, all over the world, and meeting the demands of existing PlayStation users to offer video on a gaming console.'Skype on PS Vita system runs in 'background mode' for users while gaming or using other applications and users have the capability to pause a game, conduct a call and then return to their previous activity. Additionally, PS Vita system features both front and rear facing cameras, which allows users to switch back and forth between the two during a Skype call.PS Vita system users can download the application for free from the 'Social' category of the PlayStation Store as the Skype service becomes available on a games console for the first time.",
            @"The new Nintendo 3DS LL ups the original 3-inch and 3.53-inch displays to 4.18-inch and 4.88-inches. Like the original, the upper display is stereoscopic, which means it will display games in full 3-D without the need for glasses. Obviously, bigger displays mean a better viewing experience. Every game screen you now see on the 3DS will basically be twice as big on the new 3DS LL. Unfortunately for the 3DS LL, bigger doesn't mean clearer, because the new displays offer the same image resolutions (800x240 pixels for the top and 320x240 pixels for the bottom). This is good because you can basically play all the same games, and they will display the same, except stretched over a larger surface. The other bad news is that Nintendo doesn't seem to have bothered upgrading anything else on the 3DS LL, which has the same 300k -pixel cameras, same speakers, same buttons and controls, speakers, and wireless connections. The 3DS LL's only other improvement is a bigger battery, but operating life is the same as the 3DS at about 3 1/2 hours since it takes more juice to power the bigger displays.",
            nil];
    Urls = [[NSMutableArray alloc] initWithObjects:
            @"http://www.lexisnexis.com.oclc.fullsail.edu:81/lnacui2api/api/version1/getDocCui?lni=4VHN-FCN0-TX2H-N0DW&csi=151977&hl=t&hv=t&hnsd=f&hns=t&hgn=t&oc=00240&perma=true",
            @"http://www.lexisnexis.com.oclc.fullsail.edu:81/lnacui2api/api/version1/getDocCui?lni=4NCC-NS50-TX2H-Y2YG&csi=8357&hl=t&hv=t&hnsd=f&hns=t&hgn=t&oc=00240&perma=true",
            @"http://www.lexisnexis.com.oclc.fullsail.edu:81/lnacui2api/api/version1/getDocCui?lni=592K-5HT1-DYX4-019K&csi=144965&hl=t&hv=t&hnsd=f&hns=t&hgn=t&oc=00240&perma=true",
            @"http://www.lexisnexis.com.oclc.fullsail.edu:81/lnacui2api/api/version1/getDocCui?lni=55GW-JTD1-DYBF-H212&csi=382507&hl=t&hv=t&hnsd=f&hns=t&hgn=t&oc=00240&perma=true",
            @"http://www.lexisnexis.com.oclc.fullsail.edu:81/lnacui2api/api/version1/getDocCui?lni=56CG-J1Y1-DYRW-R52G&csi=11314&hl=t&hv=t&hnsd=f&hns=t&hgn=t&oc=00240&perma=true",
            nil];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [titles count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
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
    //add text to cell
    cell.textLabel.text = (NSString *)[titles objectAtIndex:indexPath.row];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.textLabel.highlightedTextColor = [UIColor whiteColor];
    cell.selectionStyle = UITableViewCellSelectionStyleGray;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //catches what row is selected
    [titles objectAtIndex:indexPath.row];
    
    //open second view
    DetailViewController *secondView = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    if(secondView != nil)
    {
        [self presentViewController:secondView animated:true completion:nil];
        //add title to detail view
        secondView.titleLabel.text = [titles objectAtIndex:indexPath.row];
        //add info to detail view
        secondView.infoLabel.text = [Info objectAtIndex:indexPath.row];
        //add URL to detail view
        secondView.urlLabel.text = [Urls objectAtIndex:indexPath.row];
    }
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
