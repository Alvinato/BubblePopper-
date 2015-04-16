//
//  Bullet.m
//  Bubble Pop
//
//  Created by Alvin Chan on 2014-05-07.
//  Copyright (c) 2014 Alvin Chan. All rights reserved.
//

#import "Bullet.h"

@implementation Bullet  // this method should take in the xcoordinate of the recently popped ball...
-(id)initWithxCoordinate:(float *) xCoordinate
         withyCoordinate:(float *) yCoordinate
      //      AlsoMovement:(NSInteger *) UpMovement{
{
    self = [super init];
    
    self.xCoordinate = _xCoordinate;
    self.yCoordinate = _yCoordinate;
    
    
    return self;
}

-(void) Movement{
    
    Bullet.center = CGPointMake(280, 280);
    
    
    
}


@end
