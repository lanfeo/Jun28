//
//  View.h
//  Jun28
//
//  Created by Ian Foo on 28/6/12.
//  Copyright (c) 2012 briandennehy@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Asteroid;
@class Ship;

@interface View : UIView {
    Asteroid *asteroid;
    Ship *ship;
}

@end
