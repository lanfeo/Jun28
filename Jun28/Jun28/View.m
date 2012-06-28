//
//  View.m
//  Jun28
//
//  Created by Ian Foo on 28/6/12.
//  Copyright (c) 2012 briandennehy@gmail.com. All rights reserved.
//

#import "View.h"
#import "Asteroid.h"
#import "Ship.h"
#include <stdlib.h>

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor blackColor];
        
        CGRect f = CGRectMake(0, 0, 60, 60);
        CGRect s = CGRectMake(self.bounds.size.width/2, self.bounds.size.height/2, 30, 30);
        asteroid = [[Asteroid alloc] initWithFrame: f];
        [self addSubview: asteroid];
        ship = [[Ship alloc] initWithFrame:s];
        [self addSubview: ship];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // generate random starting point
    asteroid.center = CGPointMake(
                                  arc4random() % (unsigned int)self.bounds.size.width, 
                                  arc4random() % (unsigned int)self.bounds.size.height);
    
    [self animateAsteroid];
}

- (void)animateAsteroid {
    
    [UIView animateWithDuration: 5
                          delay: 0
                        options: 	UIViewAnimationOptionCurveEaseInOut
                     animations: ^{
                         [UIView setAnimationRepeatCount: 1];
                         asteroid.center = CGPointMake(
                                                   arc4random() % (unsigned int)self.bounds.size.width, 
                                                   arc4random() % (unsigned int)self.bounds.size.height);;
                         
                         asteroid.transform = CGAffineTransformRotate(self.transform, 90 * M_PI / 180);
                         
                     }
                     completion: ^(BOOL finished){
                         [self animateAsteroid];
                     }
     ];
}



@end
