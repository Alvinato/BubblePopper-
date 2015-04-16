//
//  Bullet.m
//  Bubble Pop
//
//  Created by Alvin Chan on 2014-05-09.
//  Copyright (c) 2014 Alvin Chan. All rights reserved.
//

#import "Bullet.h"

@implementation Bullet

-(id)initWithxCoordinate: (float) xCoordinate
         withyCoordinate: (float) yCoordinate
        withBulletImage:(UIImageView *)BulletImage{
    
    self = [super init];
    
    self.xCoordinate = xCoordinate;
    self.yCoordinate = yCoordinate;
    self.BulletImage = BulletImage;
    
    return self;
}

-(void) Movement{
    // we need to take the image and have it run up the screen according to the given x and y axis...
    // we either need a timer or a loop...
    self.BulletImage.hidden = NO;
    self.BulletImage.center = CGPointMake(self.xCoordinate, self.yCoordinate);
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:nil selector:@selector(Moving) userInfo:nil repeats:YES];
}

-(void)Moving{
    
    
    if (self.BulletImage.center.y >= 0){
        self.BulletImage.center = CGPointMake(self.xCoordinate, self.yCoordinate + 12);
    }else{
        self.BulletImage.hidden = YES;
        [timer invalidate];
    }
    
    
}



@end
