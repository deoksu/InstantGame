//
//  IGVC1.h
//  InstantGame
//
//  Created by AppCreator13 on 2014. 7. 14..
//  Copyright (c) 2014년 mirim. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "IGElement.h"
#import "IGElementManager.h"

@interface IGVC1 : UIViewController
{
    @public
    IGElementManager* theManager;
    UIImage* theTile1;
    UIImage* theTile2;
    UIImage* theTile3;
    
    
    int theTick;
}

@end
