//
//  IGElementManager.m
//  InstantGame
//
//  Created by AppCreator13 on 2014. 7. 14..
//  Copyright (c) 2014년 mirim. All rights reserved.
//

#import "IGElementManager.h"

@implementation IGElementManager

- (id) init
{
    self = [ super init ];
    if( self != nil )
    {
        theElementList = [ [ NSMutableDictionary alloc ] init ];
        theID = 0;
    }
    return self;
}

- (void) AddTileWithType:(int) aType withX:(int) aX withY:(int) aY
{
    IGElement* tmpIE = [ [ IGElement alloc ] init ];
    tmpIE->tileX = aX;
    tmpIE->tileY = aY;
    tmpIE->theType = aType;
    tmpIE->bRegistered = 0;

    [ theElementList setObject:tmpIE forKey:[ NSNumber numberWithInt:theID ] ];
    
    theID++;
}


-(void) theTypeUpdate
{
    for (id iter in theElementList) {
        
    }
}
@end
