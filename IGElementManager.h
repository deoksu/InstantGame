//
//  IGElementManager.h
//  InstantGame
//
//  Created by AppCreator13 on 2014. 7. 14..
//  Copyright (c) 2014년 mirim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IGElement.h"

#define MAX_SCREEN_X 7
#define MAX_SCREEN_Y 7

@interface IGElementManager : NSObject
{
    @public
    NSMutableDictionary* theElementList;
    
    int theID;
    
    int tileType[ MAX_SCREEN_X ][ MAX_SCREEN_Y ];
}

- (id) init;

- (void) AddTileWithType:(int) aType withX:(int) aX withY:(int) aY;

- (void) theTypeUpdate;
@end
