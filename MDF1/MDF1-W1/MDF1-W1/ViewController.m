//
//  ViewController.m
//  MDF1-W1
//
//  Created by Jeff Mitsou on 8/7/13.
//  Copyright (c) 2013 Jeff Mitsou. All rights reserved.
//

#import "ViewController.h"
#import "customTCell.h"
#import "detailViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    
    
    aniDetails = [[NSMutableArray alloc] init];
    animeDetails *onePiece = [[animeDetails alloc] init];
    onePiece.Title = @"onePiece";
    onePiece.Summary = @"Gold Roger was known as the Pirate King, the strongest and most infamous being to have sailed the Grand Line. The capture and death of Roger by the World Government brought a change throughout the world. His last words before his death revealed the location of the greatest treasure in the world, One Piece. ";
    onePiece.chapter = @"717";
    [aniDetails addObject:onePiece];
    
    animeDetails *naruto = [[animeDetails alloc] init];
    naruto.Title = @"naruto";
    naruto.Summary = @"Twelve years before the start of the series, a powerful creature known as the Nine-tailed Demon Fox attacked the ninja village Konohagakure, decimating many people. In response, the leader of Konohagakure's ninja military – theFourth Hokage – sacrificed his life to seal the demon inside his newly born child Naruto Uzumaki. Konohagakure, however, regarded Naruto as if he were the demon fox itself and mistreated him throughout most of his childhood. The plot tells the story of Naruto Uzumaki, now a adolescent ninja who constantly searches for recognition and dreams to become the Hokage, the ninja in his village who is acknowledged as the leader and the strongest of all. ";
    naruto.chapter = @"642";
    [aniDetails addObject:naruto];
    
    animeDetails *bleach = [[animeDetails alloc] init];
    bleach.Title = @"bleach";
    bleach.Summary = @"Bleach follows the adventures of Ichigo Kurosaki after he obtains the powers of a Soul Reaper —a death personification similar to the Grim Reaper—from another Soul Reaper, Rukia Kuchiki. His newfound powers force him to take on the duties of defending humans from evil spirits and guiding departed souls to the afterlife. What the Bleach manga attracted us is not the novel lot, but the interpretation about the fate of Ichigo Kurosaki, a young who stay with the sad memories. The Bleach tried to outline the story out with a lot of memories and dialogues, slowly but implicative.";
    bleach.chapter = @"546";
    [aniDetails addObject:bleach];
    
    
    
    //array for titles, used in the custom cell and in the detail view
    titleArray = [[NSMutableArray alloc] initWithObjects:
                  @"One Piece",
                  @"Naruto",
                  @"Fairy Tail",
                  @"Bleach",
                  @"Beelzebub",
                  @"The Breaker: New Waves",
                  @"HISTORYS STRONGEST DISCIPLE KENICHI",
                  @"Nisekoi (KOMI Naoshi)",
                  @"Girl the Wild's",
                  @"The World God Only Knows",
                  @"Kimi no Iru Machi",
                  @"Ao no Exorcist",
                  @"Noblesse",
                  @"Skip Beat",
                  @"Cage of Eden",
                  @"Sankarea",
                  @"Onepunch-Man",
                  @"Magi",
                  @"Denpa Kyoushi",
                  @"Yamada-kun to 7-nin no Majo",
                  nil];
    
    
    
    //rank array used on the custom cells
    rank = [[NSMutableArray alloc] initWithObjects:@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", @"13", @"14", @"15", @"16", @"17", @"18", @"19",@"20", nil];
    
    //chapter array in detail view
    currentChap = [[NSMutableArray alloc] initWithObjects:@"717", @"642", @"346", @"546", @"216", @"127", @"533", @"85", @"97", @"238", @"239", @"47", @"290", @"202", @"185", @"42", @"27", @"192", @"85", @"72", nil];
    
    //summary array in detail view
    plot = [[NSMutableArray alloc] initWithObjects:
            @"Gold Roger was known as the Pirate King, the strongest and most infamous being to have sailed the Grand Line. The capture and death of Roger by the World Government brought a change throughout the world. His last words before his death revealed the location of the greatest treasure in the world, One Piece. ",
            @"Twelve years before the start of the series, a powerful creature known as the Nine-tailed Demon Fox attacked the ninja village Konohagakure, decimating many people. In response, the leader of Konohagakure's ninja military – theFourth Hokage – sacrificed his life to seal the demon inside his newly born child Naruto Uzumaki. Konohagakure, however, regarded Naruto as if he were the demon fox itself and mistreated him throughout most of his childhood. The plot tells the story of Naruto Uzumaki, now a adolescent ninja who constantly searches for recognition and dreams to become the Hokage, the ninja in his village who is acknowledged as the leader and the strongest of all. ",
            @"Fairy Tail is a world filled with magic spells, flying cats, and exhibitionist ice mages! We travel to the land of Fiore, where we stumble upon Fairy Tail; a mage guild with the most outrageous and interesting people you can find. Fairy Tail is trying to tell us: If there is no close relatives of words in the world, then what about the the friends company in the side ? Even though we looking for to the end of the world, but if the attachment can't be saved, the fatigue steps will not stop.",
            @"Bleach follows the adventures of Ichigo Kurosaki after he obtains the powers of a Soul Reaper —a death personification similar to the Grim Reaper—from another Soul Reaper, Rukia Kuchiki. His newfound powers force him to take on the duties of defending humans from evil spirits and guiding departed souls to the afterlife. What the Bleach manga attracted us is not the novel lot, but the interpretation about the fate of Ichigo Kurosaki, a young who stay with the sad memories. The Bleach tried to outline the story out with a lot of memories and dialogues, slowly but implicative.",
            @"Serialized in Weekly Shounen Jump in February 2009. The Beelzebub manga is about this invincible delinquent who found this mysterious baby by accident and the baby became attached to him. It turns out the baby is actually the next Demon King in line and now Oga Tatsumi (the major character) is chosen as his parent. Burdened with the responsibility to raise the kid whilst avoiding the kid to grow up to a demon that ends all mankind, what kind of trouble awaits the legendary Oga?",
            @"In the aftermath of the desperate battle between Goomoonryong and the Martial Arts Alliance -- Yi Shioon's ki-center was destroyed by his own master Goomoonryong, leaving him unable to practice martial arts... Even though Shioon is no longer a murim-in, more assailants continue to pursue him. Through his encounter with Goomoonryong, the bullied boy has grown in to a respectable man. However, Shioon must now learn to survive in this chilly world of Murim without his master...",
            @"The story focuses on Kenichi Shirahama, an average 16-year-old high school student who has been picked on his whole life. However, on the first day of class, he meets and befriends the mysterious transfer student, Miu Fūrinji. Driven by his desire to become stronger and to protect those around him, he follows her to Ryōzanpaku, a dojo where those who are truly strong and have mastered their arts gather (Ryōzanpaku comes from the Chinese story of Heroes of the Water Margin who train together at Liangshan 梁山). After learning basics from Miu, Kenichi is able to beat a high ranking member of the school's karate club, and becomes a target for all the delinquents in the school. Kenichi's reason for training is to fulfill the promise he made to protect Miu. Subsequently, Kenichi's daily routine is divided between hellish training under the six masters of Ryōzanpaku, and his fights against the members of Ragnarok, a gang that views him as either a possible ally or an impending threat to their plans. After defeating Ragnarok, he faces a new enemy called YOMI, a group of disciples who are each personally trained by a master of an even bigger organization rivaling Ryōzanpaku, Yami. He realized that he wanted to be the strongest in order to protect everyone without killing anyone. Along with former members of Ragnarok who joined the Shinpaku Alliance, a group created by Kenichi's schoolmate Haruo Niijima, Kenichi now fights Yami to prove his ideals and protect those in need.",
            @"Their families are currently at war because of business rivalry: the boy's family are yakuza while the girl's family are gangsters. The leaders of both groups would like to get along, because if the war is not stopped, there will surely be many casualties. The problem is that their underlings won't listen to them, so they decided on something that will make them cooperate. They want Ichijou and Kirisaki to become lovers, so that their families will come to an understanding with each other. Will the two of them become official lovers and make their families get along? Or will their families continue to fight and create many troubles along with it?",
            @"Wilds high, it has a history of 42 years as a fighting specialist all girls private highschool meant solely for the elite. The place Wilds-League is held, the most popular event in the country, the only place in the world where teenage girls have brutal fights with their lives. This year has been changed into a mixed gender school. The only male student- Song Jae Gu, has been granted a full 3-year scholarship regardless of grades. Being someone who had to spend every moment working or taking care of his two younger brothers, he accepted. However, the scholarship was granted with the sole condition he does not leave. But after meeting Queen, the bloody champion of Wild's-League, drenching her in coffee, calling her a 'Monster' and getting caught while she was taking a shower... that could prove fatal. ",
            @"Keima Katsuragi, a second-year high school student, is an avid bishōjo game player. He is known on the Internet as 'The God of Conquests (落とし神 Otoshi-gami?)' for his legendary skills to be able to 'conquer' any 2D girl in games. However, in his actual school life, Keima is known as otamegane (オタメガネ), a derogatory portmanteau of the two words otaku (オタク) and megane (メガネ-'glasses'), and is considered nothing but an intelligent yet gloomy geek with glasses.",
            @"Eba Yuzuki has mysteriously decided to go to high school in the countryside. But despite Kirishima Haruto's objections, she is living in his home. Now he has to put up with a freeloading city girl and even worse, make sure Kanzaki Nanami, the girl he likes, doesn't get the wrong idea! The story’s setting is based on the author, Seo Kouji’s hometown.",
            @"This world consists of two dimensions joined as one, like a mirror. The first is the world in which the humans live, Assiah. The other is the world of demons, Gehenna. Ordinarily, travel between the two, and indeed any kind of contact between the two, is impossible. However the demons can pass over into this world by possessing anything that exist within it. Satan the god of demons, but there's one thing that he doesn't have, and that's a substance in the human world that is powerful enough to contain him!! For that purpose he created Rin, his son from a human woman, but will is son agree to his plans? or will he become something else...? An exorcist?",
            @"Noblesse (노블레스) is an online manhwa written by Son Jae Ho and illustrated by Lee Gwang Su. Noblesse is about a powerful, noble vampire - Cadis Etrama Di Raizel (also called Rai) - who has been asleep for 820 years with no knowledge of mankind's advancement and scientific successes. He has recently woken up in an abandoned building in South Korea[1], and is starting to get used to the modern world. He goes to a school where he meets his loyal servant Frankenstein. With Frankenstein's help, Rai enrolls into Ye Ran high school, and inadvertently befriended Shinwoo - an athletic teenager, Ik-Han - a computer geek, Yuuna, Shinwoo's crush, and a few others. Noblesse follows the group's often dangerous adventures against a secret organization while uncovering Rai's past. This Webtoon Manhwa started on the 30th December of 2007 and is still publishing.",
            @"It is the story of Kyoko Mogami (最上 キョーコ Mogami Kyōko) a 16-year-old girl who discovers that her childhood friend and romantic goal, Sho Fuwa, only keeps her around to act as a maid and earn his living expenses, as he works his way to become the top pop idol in Japan. Furious and heart broken, she vows to get revenge by beating him in show business.",
            @"Cage of Eden (エデンの檻 Eden no Ori?) is a Japanese manga written and illustrated by Yamada Keiyou, which began serialization in Weekly Shōnen Magazine starting in December 2008. The creator Yamada Keiyou was previously the artist of the manga Chanbara and EX-Shōnen Hyoryu (Young Castaways). Akira and his classmates are on a field trip back home from Guam, while on flight there a turbulance and the plane crashes on an uncharted island inhabited by prehistoric species thought to be long extinct. The battle for survival in a nightmarish island begins.[1] The story has elements of Lost and Lord of the Flies in a prehistoric lost world setting.",
            @"Furuya is a regular high school student, and an avid fan of zombies. Sankarea is the daughter of a high class family, pretty humble and unpretentious. At least that's what it seems like from across the river where the boys go to school. But if everything were as it seemed, these two would never meet, and zombies would never be more than a story. To think everything happened due to an owner loving his cat a lot.",
            @"Follows the life of an average hero who manages to win all battles with only one punch. This ability seems to frustrate him as he no longer feels the thrill and adrenaline of fighting a tough battle, which leads to him questioning his past desire of being strong.After all what's so good about having an overwhelming power?",
            @"This story is about the flow of fate and the battle to keep the world on the right path. Aladdin is a boy who has set out to explore the world after being trapped in a room for most of his life. His best friend is a flute with a djinn in it named Ugo. Soon enough, Aladdin discovers he is a Magi, a magician who chooses kings, and he was born to choose kings who will follow the righteous path, battling against those who want to destroy fate. Follow his adventures as he meets others from 1000 Arabian Nights, like Ali Baba and Sinbad, and fights to keep the balance of world in check!",
            @"Kagami Junichirou is known as a Genius Physicist. He wrote a thesis at a young age of 17 and it was even published by 'Nature' a prominent science magazine. After college he devoted himself to being an Otaku and a NEET. Updating his Anime Blog, aiming for #1 ranking. He claims to have a disease that makes him do ONLY what he wants to do. Desperate to get him to do something with his life, his little sister manages to get him a job as a teacher at his Alma Mater.",
            @"Ryu Yamada is a second year student at Suzaku High. Ryu is always late for school, naps in class and gets abysmal grades. His life is a dead bore. The beautiful Urara Shiraishi, on the other hand, is Suzaku High's brightest student. One day, without explanation, their bodies are swapped! Ryu ends up in Urara's body, and Urara in Ryu's.",
            nil];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //tells table view to run throught entire array
    return [aniDetails count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    //tells table view to reuse cells and save memory
    customTCell *cell = [tView dequeueReusableCellWithIdentifier: CellIdentifier];
    if (cell == nil)
    {
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        NSArray* views = [[NSBundle mainBundle] loadNibNamed:@"customCellView" owner:nil options:nil];
        
        for (UIView *view in views)
        {
            if ([view isKindOfClass:[customTCell class]])
            {
                //add custom view cell 
                cell = (customTCell*)view;
                
                animeDetails *currentAnime = [aniDetails objectAtIndex:indexPath.row];
                //adds data to custom view cell 
                cell.title.text = currentAnime.Title;
                cell.sRank.text = [rank objectAtIndex:indexPath.row];
            }
        }
    }
    else
    {
        //adds data to custom view cell
        animeDetails *currentAnime = [aniDetails objectAtIndex:indexPath.row];
        //adds data to custom view cell
        cell.title.text = currentAnime.Title;
        cell.sRank.text = [rank objectAtIndex:indexPath.row];
    }
    return cell;
}
//Delete style
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //enables delete function
    return UITableViewCellEditingStyleDelete;
}

//Delete Mode
- (void)tableView:(UITableView*)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //enters delete mode
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        //removes the object from array
        [aniDetails removeObjectAtIndex:indexPath.row];
        
        [tView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}



//action for selecting a cell
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
        [titleArray objectAtIndex:indexPath.row];
    
    //grabs detail view
    detailViewController *dView = [[detailViewController alloc]initWithNibName:@"detailView" bundle:nil];
    if (dView != nil)
    {
        //switches pages
        [self presentViewController:dView animated:true completion:nil];
        
        animeDetails *currentAnime = [aniDetails objectAtIndex:indexPath.row];
        //places info in detail view
        dView.mtitle.text = currentAnime.Title;
        dView.chap.text = currentAnime.chapter;
        dView.plotSum.text = currentAnime.Summary;
    }
    
}

//Allows delete
-(IBAction)onClick:(id)sender
{
    bool isInEdit = tView.editing;
    
    if (isInEdit)
    {
        [tView setEditing:false];
        //edit.style = UIBarButtonItemStyle;
    }
    else
    {
        [tView setEditing:true];
        //edit.style = UIBarButtonItemStyleDone;
    }
}




@end
