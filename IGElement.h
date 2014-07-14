//
//  IGElement.h
//  InstantGame
//
//  Created by AppCreator13 on 2014. 7. 14..
//  Copyright (c) 2014년 mirim. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface IGElement : NSObject
{
    @public
    int theX;
    int theY;
    
    int tileX;
    int tileY;
    
    int theType;
    int bRegistered;
    
    UIImageView* theIV;
}

@end
