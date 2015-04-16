//
//  Game.m
//  Bubble Pop
//
//  Created by Alvin Chan on 2014-05-04.
//  Copyright (c) 2014 Alvin Chan. All rights reserved.
//
// objective c for creating a new object...

//  SomeObject *myObject = [SomeObject new];
#import "Game.h"

@interface Game ()

@end
// note:  when the player touches the invader then it shoots...
@implementation Game



-(void)GameOver{  // this code should be called when player hit by ball...
    
        GameOver.hidden = NO;
        Menu.hidden = NO;
        [Movement invalidate];
}

-(void)Win{
        if (Ball.hidden == YES && Ball1.hidden == YES && Ball2.hidden == YES && Ball3.hidden == YES && Ball4.hidden == YES && Ball5.hidden == YES && Ball6.hidden == YES){
            YouWin.hidden = NO;
            PlayNextLevel.hidden = NO;
            [Movement invalidate];
        }
}


-(IBAction)FIRE1:(id)sender{
    if (Bullet.hidden == YES){
        Bullet.hidden = NO;
        Bullet.center = CGPointMake(Player.center.x, 281);
        BulletMovement = 12;
        return;
    }
    if(Bullet1.hidden == YES){
        Bullet1.hidden = NO;
        Bullet1.center = CGPointMake(Player.center.x, 281);
        BulletMovement = 12;
        return;
    }
    if(Bullet2.hidden == YES){
        Bullet2.hidden = NO;
        Bullet2.center = CGPointMake(Player.center.x, 281);
        BulletMovement = 12;
        return;
    }
    if(Bullet3.hidden == YES){
        Bullet3.hidden = NO;
        Bullet3.center = CGPointMake(Player.center.x, 281);
        BulletMovement = 12;
        return;
    }
    if(Bullet4.hidden == YES){
        Bullet4.hidden = NO;
        Bullet4.center = CGPointMake(Player.center.x, 281);
        BulletMovement = 12;
        return;
    }
    if(Bullet5.hidden == YES){
        Bullet5.hidden = NO;
        Bullet5.center = CGPointMake(Player.center.x, 281);
        BulletMovement = 12;
        return;
    }
    if(Bullet6.hidden == YES){
        Bullet6.hidden = NO;
        Bullet6.center = CGPointMake(Player.center.x, 281);
        BulletMovement = 12;
        return;
    }
    if(Bullet7.hidden == YES){
        Bullet7.hidden = NO;
        Bullet7.center = CGPointMake(Player.center.x, 281);
        BulletMovement = 12;
        return;
    }

}


-(IBAction)FIRE2:(id)sender{
    if(Bullet.hidden == YES){
        Bullet.hidden = NO;
        Bullet.center = CGPointMake(Player.center.x, 281);
        BulletMovement = 12;
        return;
    }
    if(Bullet1.hidden == YES){
        Bullet1.hidden = NO;
        Bullet1.center = CGPointMake(Player.center.x, 281);
        BulletMovement = 12;
        return;
    }
    if(Bullet2.hidden == YES){
        Bullet2.hidden = NO;
        Bullet2.center = CGPointMake(Player.center.x, 281);
        BulletMovement = 12;
        return;
    }
    if(Bullet3.hidden == YES){
        Bullet3.hidden = NO;
        Bullet3.center = CGPointMake(Player.center.x, 281);
        BulletMovement = 12;
        return;
    }
    if(Bullet4.hidden == YES){
        Bullet4.hidden = NO;
        Bullet4.center = CGPointMake(Player.center.x, 281);
        BulletMovement = 12;
        return;
    }
    if(Bullet5.hidden == YES){
        Bullet5.hidden = NO;
        Bullet5.center = CGPointMake(Player.center.x, 281);
        BulletMovement = 12;
        return;
    }
    if(Bullet6.hidden == YES){
        Bullet6.hidden = NO;
        Bullet6.center = CGPointMake(Player.center.x, 281);
        BulletMovement = 12;
        return;
    }
    if(Bullet7.hidden == YES){
        Bullet7.hidden = NO;
        Bullet7.center = CGPointMake(Player.center.x, 281);
        BulletMovement = 12;
        return;
    }

}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // point is the point on the screen the user has touched
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    
    if (point.x < 260){
        PlayerLeft = YES;
    }else{
        PlayerRight = YES;
    }
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    PlayerRight = NO;
    PlayerLeft = NO;
}

-(void) Player {
    if (PlayerLeft == YES && Player.center.x >= 17){
        Player.center = CGPointMake(Player.center.x - 5, Player.center.y);
    }
    if (PlayerRight == YES && Player.center.x <= 550){
        Player.center = CGPointMake(Player.center.x + 5, Player.center.y);
    }
}

-(void) BounceLeftSide{
    if(Ball.hidden == NO){
    Ball.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                            [UIImage imageNamed:@"LSideBallBounce2.png"],
                            [UIImage imageNamed:@"LSideBallBounce3.png"],
                            [UIImage imageNamed:@"LSideBallBounce2.png"],
                            [UIImage imageNamed:@"Ball.png"], nil];
    [Ball setAnimationRepeatCount:1];
    Ball.animationDuration = 0.2;
    [Ball startAnimating];
    
        SideMovement = 3;
    }
}

-(void) BounceLeftSide1{
    if(Ball1.hidden == NO){
        Ball1.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                                 [UIImage imageNamed:@"LSideBallBounce2.png"],
                                 [UIImage imageNamed:@"LSideBallBounce3.png"],
                                 [UIImage imageNamed:@"LSideBallBounce2.png"],
                                 [UIImage imageNamed:@"Ball.png"], nil];
        [Ball1 setAnimationRepeatCount:1];
        Ball1.animationDuration = 0.2;
        [Ball1 startAnimating];
        
        SideMovement1 = 3;
    }
}
-(void) BounceLeftSide2{
    if(Ball2.hidden == NO){
        Ball2.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                                 [UIImage imageNamed:@"LSideBallBounce2.png"],
                                 [UIImage imageNamed:@"LSideBallBounce3.png"],
                                 [UIImage imageNamed:@"LSideBallBounce2.png"],
                                 [UIImage imageNamed:@"Ball.png"], nil];
        [Ball2 setAnimationRepeatCount:1];
        Ball2.animationDuration = 0.2;
        [Ball2 startAnimating];
        
        SideMovement2 = 3;
    }
}

-(void) BounceLeftSide3{
    if(Ball3.hidden == NO){
        Ball3.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                                 [UIImage imageNamed:@"LSideBallBounce2.png"],
                                 [UIImage imageNamed:@"LSideBallBounce3.png"],
                                 [UIImage imageNamed:@"LSideBallBounce2.png"],
                                 [UIImage imageNamed:@"Ball.png"], nil];
        [Ball3 setAnimationRepeatCount:1];
        Ball3.animationDuration = 0.2;
        [Ball3 startAnimating];
        
        SideMovement3 = 3;
    }
}
-(void) BounceLeftSide4{
    if(Ball4.hidden == NO){
        Ball4.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                                 [UIImage imageNamed:@"LSideBallBounce2.png"],
                                 [UIImage imageNamed:@"LSideBallBounce3.png"],
                                 [UIImage imageNamed:@"LSideBallBounce2.png"],
                                 [UIImage imageNamed:@"Ball.png"], nil];
        [Ball4 setAnimationRepeatCount:1];
        Ball4.animationDuration = 0.2;
        [Ball4 startAnimating];
        
        SideMovement4 = 3;
    }
}
-(void) BounceLeftSide5{
    if(Ball5.hidden == NO){
        Ball5.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                                 [UIImage imageNamed:@"LSideBallBounce2.png"],
                                 [UIImage imageNamed:@"LSideBallBounce3.png"],
                                 [UIImage imageNamed:@"LSideBallBounce2.png"],
                                 [UIImage imageNamed:@"Ball.png"], nil];
        [Ball5 setAnimationRepeatCount:1];
        Ball5.animationDuration = 0.2;
        [Ball5 startAnimating];
        
        SideMovement5 = 3;
    }
}
-(void) BounceLeftSide6{
    if(Ball6.hidden == NO){
        Ball6.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                                 [UIImage imageNamed:@"LSideBallBounce2.png"],
                                 [UIImage imageNamed:@"LSideBallBounce3.png"],
                                 [UIImage imageNamed:@"LSideBallBounce2.png"],
                                 [UIImage imageNamed:@"Ball.png"], nil];
        [Ball6 setAnimationRepeatCount:1];
        Ball6.animationDuration = 0.2;
        [Ball6 startAnimating];
        
        SideMovement6 = 3;
    }
}

-(void)BounceRightSide{
    
    if (Ball.hidden == NO)
    {Ball.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                            [UIImage imageNamed:@"RSideBallBounce2.png"],
                            [UIImage imageNamed:@"RSideBallBounce3.png"],
                            [UIImage imageNamed:@"RSideBallBounce2.png"],
                            [UIImage imageNamed:@"Ball.png"], nil];
    [Ball setAnimationRepeatCount:1];
    Ball.animationDuration = 0.2;
    [Ball startAnimating];
    SideMovement = -3;
    }
}
-(void) BounceRightSide1{
    if (Ball1.hidden == NO)
    {Ball1.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                              [UIImage imageNamed:@"RSideBallBounce2.png"],
                              [UIImage imageNamed:@"RSideBallBounce3.png"],
                              [UIImage imageNamed:@"RSideBallBounce2.png"],
                              [UIImage imageNamed:@"Ball.png"], nil];
        [Ball1 setAnimationRepeatCount:1];
        Ball1.animationDuration = 0.2;
        [Ball1 startAnimating];
        SideMovement1 = -3;
    }
}

-(void) BounceRightSide2{
    if (Ball2.hidden == NO)
    {Ball2.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                              [UIImage imageNamed:@"RSideBallBounce2.png"],
                              [UIImage imageNamed:@"RSideBallBounce3.png"],
                              [UIImage imageNamed:@"RSideBallBounce2.png"],
                              [UIImage imageNamed:@"Ball.png"], nil];
        [Ball2 setAnimationRepeatCount:1];
        Ball2.animationDuration = 0.2;
        [Ball2 startAnimating];
        SideMovement2 = -3;
    }
}

-(void) BounceRightSide3{
    if (Ball3.hidden == NO)
    {Ball3.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                              [UIImage imageNamed:@"RSideBallBounce2.png"],
                              [UIImage imageNamed:@"RSideBallBounce3.png"],
                              [UIImage imageNamed:@"RSideBallBounce2.png"],
                              [UIImage imageNamed:@"Ball.png"], nil];
        [Ball3 setAnimationRepeatCount:1];
        Ball3.animationDuration = 0.2;
        [Ball3 startAnimating];
        SideMovement3 = -3;
    }
}


-(void) BounceRightSide4
{
    if(Ball4.hidden == NO){
    Ball4.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                          [UIImage imageNamed:@"RSideBallBounce2.png"],
                          [UIImage imageNamed:@"RSideBallBounce3.png"],
                          [UIImage imageNamed:@"RSideBallBounce2.png"],
                          [UIImage imageNamed:@"Ball.png"], nil];
    [Ball4 setAnimationRepeatCount:1];
    Ball4.animationDuration = 0.2;
    [Ball4 startAnimating];
        SideMovement4 = -3;}
}
-(void) BounceRightSide5
{
    if(Ball5.hidden == NO){
        Ball5.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                                 [UIImage imageNamed:@"RSideBallBounce2.png"],
                                 [UIImage imageNamed:@"RSideBallBounce3.png"],
                                 [UIImage imageNamed:@"RSideBallBounce2.png"],
                                 [UIImage imageNamed:@"Ball.png"], nil];
        [Ball5 setAnimationRepeatCount:1];
        Ball5.animationDuration = 0.2;
        [Ball5 startAnimating];
        SideMovement5 = -3;}
}

-(void) BounceRightSide6
{
    if(Ball6.hidden == NO){
        Ball6.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                                 [UIImage imageNamed:@"RSideBallBounce2.png"],
                                 [UIImage imageNamed:@"RSideBallBounce3.png"],
                                 [UIImage imageNamed:@"RSideBallBounce2.png"],
                                 [UIImage imageNamed:@"Ball.png"], nil];
        [Ball6 setAnimationRepeatCount:1];
        Ball6.animationDuration = 0.2;
        [Ball6 startAnimating];
        SideMovement6 = -3;}
}



-(void)BounceBottom{
    
    if (Ball.hidden == NO){
        
    Ball.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                            [UIImage imageNamed:@"BallBounce2.png"],
                            [UIImage imageNamed:@"BallBounce3.png"],
                            [UIImage imageNamed:@"BallBounce2.png"],
                            [UIImage imageNamed:@"Ball.png"], nil];
    [Ball setAnimationRepeatCount:1];
    Ball.animationDuration = 0.2;
    [Ball startAnimating];
    
    DownMovement = -5;
    }
    
    if (Ball1.hidden == NO){
        Ball1.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                                [UIImage imageNamed:@"BallBounce2.png"],
                                [UIImage imageNamed:@"BallBounce3.png"],
                                [UIImage imageNamed:@"BallBounce2.png"],
                                [UIImage imageNamed:@"Ball.png"], nil];
        [Ball1 setAnimationRepeatCount:1];
        Ball1.animationDuration = 0.2;
        [Ball1 startAnimating];
        
        DownMovement = -5;
    }
    if (Ball2.hidden == NO){
        Ball2.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                                [UIImage imageNamed:@"BallBounce2.png"],
                                [UIImage imageNamed:@"BallBounce3.png"],
                                [UIImage imageNamed:@"BallBounce2.png"],
                                [UIImage imageNamed:@"Ball.png"], nil];
        [Ball2 setAnimationRepeatCount:1];
        Ball2.animationDuration = 0.2;
        [Ball2 startAnimating];
        
        DownMovement = -5;
    }
    if (Ball3.hidden == NO){
        Ball3.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                                 [UIImage imageNamed:@"BallBounce2.png"],
                                 [UIImage imageNamed:@"BallBounce3.png"],
                                 [UIImage imageNamed:@"BallBounce2.png"],
                                 [UIImage imageNamed:@"Ball.png"], nil];
        [Ball3 setAnimationRepeatCount:1];
        Ball3.animationDuration = 0.2;
        [Ball3 startAnimating];
        
        DownMovement = -5;
    }
    
    if (Ball4.hidden == NO){
        Ball4.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                                 [UIImage imageNamed:@"BallBounce2.png"],
                                 [UIImage imageNamed:@"BallBounce3.png"],
                                 [UIImage imageNamed:@"BallBounce2.png"],
                                 [UIImage imageNamed:@"Ball.png"], nil];
        [Ball4 setAnimationRepeatCount:1];
        Ball4.animationDuration = 0.2;
        [Ball4 startAnimating];
        
        DownMovement = -5;
    }
    if (Ball5.hidden == NO){
        Ball5.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                                 [UIImage imageNamed:@"BallBounce2.png"],
                                 [UIImage imageNamed:@"BallBounce3.png"],
                                 [UIImage imageNamed:@"BallBounce2.png"],
                                 [UIImage imageNamed:@"Ball.png"], nil];
        [Ball5 setAnimationRepeatCount:1];
        Ball5.animationDuration = 0.2;
        [Ball5 startAnimating];
        
        DownMovement = -5;
    }
    if (Ball6.hidden == NO){
        Ball6.animationImages = [NSArray arrayWithObjects: // connects the object to the list of images...
                                 [UIImage imageNamed:@"BallBounce2.png"],
                                 [UIImage imageNamed:@"BallBounce3.png"],
                                 [UIImage imageNamed:@"BallBounce2.png"],
                                 [UIImage imageNamed:@"Ball.png"], nil];
        [Ball6 setAnimationRepeatCount:1];
        Ball6.animationDuration = 0.2;
        [Ball6 startAnimating];
        
        DownMovement = -5;
    }
}

-(void) BallSplit{ // need different objects because they have different movements
    Ball.hidden = YES;
    Ball1.hidden = NO;
    Ball2.hidden = NO;
    Ball3.hidden = YES;
    Ball4.hidden = YES;
    Ball5.hidden = YES;
    Ball6.hidden = YES;
    
    SideMovement1 = 3;
    SideMovement2 = -3;
    
    Ball1.center = CGPointMake(Ball.center.x, Ball.center.y);
    Ball2.center = CGPointMake(Ball.center.x, Ball.center.y);
}

-(void) BallSplit1{
    Ball1.hidden = YES;
    Ball4.hidden = NO;
    Ball3.hidden = NO;
    SideMovement3 = 3;
    SideMovement4 = -3;
    Wait1 = [NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(MakeSure2) userInfo:nil repeats:YES];
    
    Ball3.center = CGPointMake(Ball1.center.x+15, Ball1.center.y);
    Ball4.center = CGPointMake(Ball1.center.x-15, Ball1.center.y);
}

-(void) BallSplit2{
    Ball2.hidden = YES;
    Ball5.hidden = NO;
    Ball6.hidden = NO;
    SideMovement5 = 3;
    SideMovement6 = -3;
    // we need something that waits until the bullet passes by...
     Wait = [NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(MakeSure1) userInfo:nil repeats:YES];
    Ball5.center = CGPointMake(Ball2.center.x+15, Ball2.center.y);
    Ball6.center = CGPointMake(Ball2.center.x-15, Ball2.center.y);
}

-(void) MakeSure1 {
    if (CGRectIntersectsRect(Bullet.frame, Ball6.frame)
        || CGRectIntersectsRect(Bullet.frame, Ball5.frame)){
        return;
    }else{
        [Wait invalidate];
    }
}

-(void)MakeSure2{
    if (CGRectIntersectsRect(Bullet.frame, Ball3.frame)
        || CGRectIntersectsRect(Bullet.frame, Ball4.frame)){
        return;
    }else{
        [Wait1 invalidate];
    }
}

-(void)Moving{
    // updates the movement of all balls on the field...
    Ball.center = CGPointMake(Ball.center.x + SideMovement, Ball.center.y + DownMovement);
    Ball1.center = CGPointMake(Ball1.center.x + SideMovement1, Ball1.center.y + DownMovement);
    Ball2.center = CGPointMake(Ball2.center.x + SideMovement2, Ball2.center.y + DownMovement);
    Ball3.center = CGPointMake(Ball3.center.x + SideMovement3, Ball3.center.y + DownMovement);
    Ball4.center = CGPointMake(Ball4.center.x + SideMovement4, Ball4.center.y + DownMovement);
    Ball5.center = CGPointMake(Ball5.center.x + SideMovement5, Ball5.center.y + DownMovement);
    Ball6.center = CGPointMake(Ball6.center.x + SideMovement6, Ball6.center.y + DownMovement);
    
    
    // checking for the ball bounces on the left
    if (Ball.center.y >= 300 ){
        [self BounceBottom];
    }
    if (Ball1.center.y >= 300){
        [self BounceBottom];
    }
    if(Ball2.center.y >= 300){
        [self BounceBottom];
    }
    if (Ball3.center.y >= 300){
        [self BounceBottom];
    }
    if (Ball4.center.y >= 300 ){
        [self BounceBottom];
    }
    if (Ball5.center.y >= 300){
        [self BounceBottom];
    }
    if(Ball6.center.y >= 300){
        [self BounceBottom];
    }
    DownMovement += 0.08;
    // checking for the bounces of the right side
    if (Ball.center.x >= 540 ){
        [self BounceRightSide];
    }
    if (Ball1.center.x >= 540){
        [self BounceRightSide1];
    }
    if(Ball2.center.x >= 540){
        [self BounceRightSide2];
    }
    if (Ball3.center.x >= 540 ){
        [self BounceRightSide3];
        }
    if (Ball4.center.x >= 540){
        [self BounceRightSide4];
        }
    if(Ball5.center.x >= 540){
        [self BounceRightSide5];
        }
    if(Ball6.center.x >= 540){
        [self BounceRightSide6];
        }
    // checking for the bounces on the left side
    if (Ball.center.x <= 10 ){
        [self BounceLeftSide];
    }
    if (Ball1.center.x <= 10){
        [self BounceLeftSide1];
    }
    if (Ball2.center.x <= 10){
        [self BounceLeftSide2];
    }
    if (Ball3.center.x <= 10){
            [self BounceLeftSide3];
        }
    if (Ball4.center.x <= 10 ){
            [self BounceLeftSide4];
        }
    if (Ball5.center.x <= 10){
            [self BounceLeftSide5];
        }
    if (Ball6.center.x <= 10){
            [self BounceLeftSide6];
        }
    // PLAYER MOVEMENT
    [self Player];
    // BULLET MOVEMENT
    Bullet.center = CGPointMake(Bullet.center.x, Bullet.center.y - BulletMovement);
    if (Bullet.center.y < 0){
        Bullet.hidden = YES;
    }
    Bullet1.center = CGPointMake(Bullet1.center.x, Bullet1.center.y - BulletMovement);
    if (Bullet1.center.y < 0){
        Bullet1.hidden = YES;
    }
    Bullet2.center = CGPointMake(Bullet2.center.x, Bullet2.center.y - BulletMovement);
    if (Bullet2.center.y < 0){
        Bullet2.hidden = YES;
    }
    Bullet3.center = CGPointMake(Bullet3.center.x, Bullet3.center.y - BulletMovement);
    if (Bullet3.center.y < 0){
        Bullet3.hidden = YES;
    }
    Bullet4.center = CGPointMake(Bullet4.center.x, Bullet4.center.y - BulletMovement);
    if (Bullet4.center.y < 0){
        Bullet4.hidden = YES;
    }
    Bullet5.center = CGPointMake(Bullet5.center.x, Bullet5.center.y - BulletMovement);
    if (Bullet5.center.y < 0){
        Bullet5.hidden = YES;
    }
    Bullet6.center = CGPointMake(Bullet6.center.x, Bullet6.center.y - BulletMovement);
    if (Bullet6.center.y < 0){
        Bullet6.hidden = YES;
    }
    Bullet7.center = CGPointMake(Bullet7.center.x, Bullet7.center.y - BulletMovement);
    if (Bullet7.center.y < 0){
        Bullet7.hidden = YES;
    }
    
    // COLLISIONS..
    if ((CGRectIntersectsRect(Bullet.frame, Ball1.frame))
        
        || CGRectIntersectsRect(Bullet1.frame, Ball1.frame)
        || CGRectIntersectsRect(Bullet2.frame, Ball1.frame)
        || CGRectIntersectsRect(Bullet3.frame, Ball1.frame)
        || CGRectIntersectsRect(Bullet4.frame, Ball1.frame)
        || CGRectIntersectsRect(Bullet5.frame, Ball1.frame)
        || CGRectIntersectsRect(Bullet6.frame, Ball1.frame)
        || CGRectIntersectsRect(Bullet7.frame, Ball1.frame)){
        [self BallSplit1];
    }
    if ((CGRectIntersectsRect(Bullet.frame, Ball2.frame))
        
        || CGRectIntersectsRect(Bullet1.frame, Ball2.frame)
        || CGRectIntersectsRect(Bullet2.frame, Ball2.frame)
        || CGRectIntersectsRect(Bullet3.frame, Ball2.frame)
        || CGRectIntersectsRect(Bullet4.frame, Ball2.frame)
        || CGRectIntersectsRect(Bullet5.frame, Ball2.frame)
        || CGRectIntersectsRect(Bullet6.frame, Ball2.frame)
        || CGRectIntersectsRect(Bullet7.frame, Ball2.frame)){
        [self BallSplit2];
    }
    if ((CGRectIntersectsRect(Bullet.frame, Ball.frame))
        || CGRectIntersectsRect(Bullet1.frame, Ball.frame)
        || CGRectIntersectsRect(Bullet2.frame, Ball.frame)
        || CGRectIntersectsRect(Bullet3.frame, Ball.frame)
        || CGRectIntersectsRect(Bullet4.frame, Ball.frame)
        || CGRectIntersectsRect(Bullet5.frame, Ball.frame)
        || CGRectIntersectsRect(Bullet6.frame, Ball.frame)
        || CGRectIntersectsRect(Bullet7.frame, Ball.frame)){
        [self BallSplit];
    }
    
    // check if the game has been won.
    if ((CGRectIntersectsRect(Bullet.frame, Ball3.frame))
        || CGRectIntersectsRect(Bullet1.frame, Ball3.frame)
        || CGRectIntersectsRect(Bullet2.frame, Ball3.frame)
        || CGRectIntersectsRect(Bullet3.frame, Ball3.frame)
        || CGRectIntersectsRect(Bullet4.frame, Ball3.frame)
        || CGRectIntersectsRect(Bullet5.frame, Ball3.frame)
        || CGRectIntersectsRect(Bullet6.frame, Ball3.frame)
        || CGRectIntersectsRect(Bullet7.frame, Ball3.frame)){
        Ball3.hidden = YES;
        [self Win];
    }
    if ((CGRectIntersectsRect(Bullet.frame,Ball4.frame))
        || CGRectIntersectsRect(Bullet1.frame, Ball4.frame)
        || CGRectIntersectsRect(Bullet2.frame, Ball4.frame)
        || CGRectIntersectsRect(Bullet3.frame, Ball4.frame)
        || CGRectIntersectsRect(Bullet4.frame, Ball4.frame)
        || CGRectIntersectsRect(Bullet5.frame, Ball4.frame)
        || CGRectIntersectsRect(Bullet6.frame, Ball4.frame)
        || CGRectIntersectsRect(Bullet7.frame, Ball4.frame)){
        Ball4.hidden = YES;
        [self Win];
    }
    if ((CGRectIntersectsRect(Bullet.frame,Ball5.frame))
        || CGRectIntersectsRect(Bullet1.frame, Ball5.frame)
        || CGRectIntersectsRect(Bullet2.frame, Ball5.frame)
        || CGRectIntersectsRect(Bullet3.frame, Ball5.frame)
        || CGRectIntersectsRect(Bullet4.frame, Ball5.frame)
        || CGRectIntersectsRect(Bullet5.frame, Ball5.frame)
        || CGRectIntersectsRect(Bullet6.frame, Ball5.frame)
        || CGRectIntersectsRect(Bullet7.frame, Ball5.frame)
        ){
        Ball5.hidden = YES;
        [self Win];
    }
    if (CGRectIntersectsRect(Bullet.frame,Ball6.frame)
            || CGRectIntersectsRect(Bullet1.frame, Ball6.frame)
            || CGRectIntersectsRect(Bullet2.frame, Ball6.frame)
            || CGRectIntersectsRect(Bullet3.frame, Ball6.frame)
            || CGRectIntersectsRect(Bullet4.frame, Ball6.frame)
            || CGRectIntersectsRect(Bullet5.frame, Ball6.frame)
            || CGRectIntersectsRect(Bullet6.frame, Ball6.frame)
            || CGRectIntersectsRect(Bullet7.frame, Ball6.frame)
        ){
        Ball6.hidden = YES;
        [self Win];
    }
    //check if the game has been lost.
    
    if ((CGRectIntersectsRect(Player.frame, Ball.frame))){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Player.frame, Ball1.frame))){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Player.frame, Ball2.frame))){
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Player.frame,Ball3.frame))){
        Ball3.hidden = YES;
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Player.frame,Ball4.frame))){
        Ball4.hidden = YES;
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Player.frame,Ball5.frame))){
        Ball5.hidden = YES;
        [self GameOver];
    }
    if ((CGRectIntersectsRect(Player.frame,Ball6.frame))){
        Ball6.hidden = YES;
        [self GameOver];
    }
}

-(IBAction)Play:(id)sender{
    YouWin.hidden = YES;
    Level1.hidden = YES;
    Play.hidden = YES;
    Bullet.hidden = YES;
    Bullet1.hidden = YES;
    Bullet2.hidden = YES;
    Bullet3.hidden = YES;
    Bullet4.hidden = YES;
    Bullet5.hidden = YES;
    Bullet6.hidden = YES;
    Bullet7.hidden = YES;
    FIRE1.hidden = NO;
    FIRE2.hidden = NO;
    DownMovement = 5;
    SideMovement = 3;
    Movement = [NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(Moving) userInfo:nil repeats:YES];
}

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

    Bullet.hidden = YES;
    Bullet1.hidden = YES;
    Bullet2.hidden = YES;
    Bullet3.hidden = YES;
    Bullet4.hidden = YES;
    Bullet5.hidden = YES;
    Bullet6.hidden = YES;
    Bullet7.hidden = YES;
    
    Menu.hidden = YES;
    YouWin.hidden = YES;
    PlayNextLevel.hidden = YES;
    GameOver.hidden = YES;
    Ball1.hidden = YES;
    Ball2.hidden = YES;
    Ball3.hidden = YES;
    Ball4.hidden = YES;
    Ball5.hidden = YES;
    Ball6.hidden = YES;
    FIRE1.hidden = YES;
    FIRE2.hidden = YES;
    DownMovement = 0;
    SideMovement = 0;
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
