//
//  IGVC1.m
//  InstantGame
//
//  Created by AppCreator13 on 2014. 7. 14..
//  Copyright (c) 2014년 mirim. All rights reserved.
//

#import "IGVC1.h"

@interface IGVC1 ()

@end

@implementation IGVC1

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    theManager = [ [ IGElementManager alloc ] init ];
    
    theTile1 = [ UIImage imageNamed:@"tile1" ];
    theTile2 = [ UIImage imageNamed:@"tile2" ];
    theTile3 = [ UIImage imageNamed:@"tile3" ];
    
    int i;
    int j;
    for( i = 0; i < 7; i ++ )
    {
        for( j = 0; j < 7; j++ )
        {
            [ theManager AddTileWithType:rand() %3 withX:i withY:j ];
        }
    }
    
    
    theTick = 0;
    
    [ self LoopGame ];
    
	// Do any additional setup after loading the view.
}

- (void) LoopGame
{
    NSArray* tmpKeys = [ theManager->theElementList allKeys ];
    
    UIImage* tmpI;
    
    for( NSNumber* num in tmpKeys )
    {
        IGElement* iter = [ theManager->theElementList objectForKey:num ];
        if( iter->theType == 0 )
        {
            tmpI = theTile1;
        }
        else if( iter->theType == 1 )
        {
            tmpI = theTile2;
        }
        else
        {
            tmpI = theTile3;
        }
        iter->theIV = [ [ UIImageView alloc ] initWithImage:tmpI ];
        
        if( iter->bRegistered == 0 )
        {
            [ self.view addSubview:iter->theIV ];
            iter->bRegistered = 1;
        }
        iter->theIV.frame = CGRectMake(30.0f + iter->tileX * 30.0f, 80.0f + iter->tileY * 30.0f, 30.0f, 30.0f);
    }
    
    
    
    
    
    theTick++;
    [ self performSelector:@selector(LoopGame) withObject:nil afterDelay:0.033f ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
