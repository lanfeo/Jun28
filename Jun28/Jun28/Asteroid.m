//
//  Asteroid.m
//  Jun28
//
//  Created by Ian Foo on 28/6/12.
//  Copyright (c) 2012 briandennehy@gmail.com. All rights reserved.
//

#import "Asteroid.h"
#import <QuartzCore/QuartzCore.h>

@implementation Asteroid

- (id) initWithFrame: (CGRect)frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        
		self.backgroundColor = [UIColor blackColor];

        
        self.layer.borderColor = [UIColor redColor].CGColor;
        self.layer.borderWidth = 3.0f;
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
    // Drawing code

}
 */


@end
