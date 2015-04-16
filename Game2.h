//
//  Game2.h
//  Bubble Pop
//
//  Created by Alvin Chan on 2014-05-08.
//  Copyright (c) 2014 Alvin Chan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Bullet.h"
float DownMovement;

// the side movements for each individual ball...
float SideMovement;
float SideMovement1;
float SideMovement2;
float SideMovement3;
float SideMovement4;
float SideMovement5;
float SideMovement6;

float SideMovement7;
float SideMovement8;
float SideMovement9;
float SideMovement10;
float SideMovement11;
float SideMovement12;
float SideMovement13;


float PlayerMovement;
int BulletsOnScreen;
int BulletMovement;
BOOL PlayerLeft;
BOOL PlayerRight;
BOOL PlayerFire;
// we have to declare the new bullet here...
@interface Game2 : UIViewController
{
    IBOutlet UIButton *Play;
    
    IBOutlet UIImageView *Ball;
    IBOutlet UIImageView *Ball1;
    IBOutlet UIImageView *Ball2;
    IBOutlet UIImageView *Ball3;
    IBOutlet UIImageView *Ball4;
    IBOutlet UIImageView *Ball5;
    IBOutlet UIImageView *Ball6;
    
    IBOutlet UIImageView *Ball7;
    IBOutlet UIImageView *Ball8;
    IBOutlet UIImageView *Ball9;
    IBOutlet UIImageView *Ball10;
    IBOutlet UIImageView *Ball11;
    IBOutlet UIImageView *Ball12;
    IBOutlet UIImageView *Ball13;
    
    
    
    IBOutlet UIImageView *Player;
    
    
    IBOutlet UIImageView *BulletImage;
    
    IBOutlet UIButton *FIRE1;
    IBOutlet UIButton *FIRE2;
    
    IBOutlet UILabel *GameOver;
    IBOutlet UILabel *Level1;
    IBOutlet UILabel *YouWin;
    IBOutlet UIButton *PlayNextLevel;
    
    IBOutlet UIButton *Menu;
    
    NSTimer *Movement;
    
    NSTimer *Wait;
    NSTimer *Wait1;
}

-(void)BallSplit;
-(IBAction)FIRE2:(id)sender;
-(IBAction)FIRE1:(id)sender;
-(void) Player;

-(void) BounceBottom;

-(void) BounceRightSide;
-(void) BounceRightSide1;
-(void) BounceRightSide2;
-(void) BounceRightSide3;
-(void) BounceRightSide4;
-(void) BounceRightSide5;
-(void) BounceRightSide6;


-(void) BounceLeftSide;
-(void) BounceLeftSide1;
-(void) BounceLeftSide2;
-(void) BounceLeftSide3;
-(void) BounceLeftSide4;
-(void) BounceLeftSide5;
-(void) BounceLeftSide6;




-(void) Win;
-(void)Moving;
-(IBAction)Play:(id)sender;
-(void)GameOver;

//-(void) MakeSure1;
//-(void) MakeSure2;
@end
