//
//  Bullet.h
//  Bubble Pop
//
//  Created by Alvin Chan on 2014-05-09.
//  Copyright (c) 2014 Alvin Chan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bullet : NSObject{
    NSTimer *timer;
}

@property float xCoordinate;

@property float yCoordinate;

@property UIImageView* BulletImage;

-(id)initWithxCoordinate: (float) xCoordinate
         withyCoordinate: (float) yCoordinate
         withBulletImage: (UIImageView *) BulletImage;



-(void) Movement;


-(void) Moving;

@end
