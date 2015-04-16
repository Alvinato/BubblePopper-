//
//  Bullet.h
//  Bubble Pop
//
//  Created by Alvin Chan on 2014-05-07.
//  Copyright (c) 2014 Alvin Chan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bullet : NSObject{
    IBOutlet UIImageView *Bullet;
}

@property  NSInteger * xCoordinate;

@property NSInteger * yCoordinate;

@property NSInteger * UpMovement;



-(id)initWithxCoordinate:(float *) xCoordinate
         withyCoordinate:(float *) yCoordinate;
          //  AlsoMovement:(NSInteger *) UpMovement;

-(void) Movement;



@end
