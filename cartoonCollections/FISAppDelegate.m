//
//  FISAppDelegate.m
//  cartoonCollections
//
//  Created by Joe Burgess on 6/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    NSArray *dwarvesToBeRollCalled = @[@"Doc",@"Dopey",@"Bashful"];
    NSLog(@"%@",[self rollCallDwarves:dwarvesToBeRollCalled]);

    NSArray *callsToBeGivenWithHeart = @[@"earth",@"wind"];
    NSLog(@"%@",[self summonCaptainPlanet:callsToBeGivenWithHeart]);

    NSLog(@"%@",[self longPlaneteerCalls:callsToBeGivenWithHeart]);

    NSArray *possibleCheeses= @[@"prosciutto", @"cambert", @"baguette"];
    NSLog(@"%@",[self findTheCheese:possibleCheeses]);

    NSArray *scroogesMoney = @[@"$$",@"$",@"$$$"];
    NSLog(@"%@",[self calculateDollarAmountsWithReceipt:scroogesMoney]);

    
    return YES;
}

- (NSString *)rollCallDwarves:(NSArray *)dwarves
{
    NSMutableString *rollCall = [[NSMutableString alloc] initWithString:@""];
    for (int i = 0; i < dwarves.count; i++){
        if (i == ((dwarves.count) - 1)){
            [rollCall appendFormat:@"%d. %@", i + 1, dwarves[i]];
        }
        else {
            [rollCall appendFormat:@"%d. %@ | ", i +1, dwarves[i]];
        }
    }
    return rollCall;
}

- (NSArray *)summonCaptainPlanet:(NSArray *)planteerCalls
{
    NSMutableArray *earthPowered = [[NSMutableArray alloc] init];
    for (int i = 0; i < planteerCalls.count; i++){
        NSMutableString *poweredElement = [[planteerCalls[i] uppercaseString] mutableCopy];
        [poweredElement appendFormat:@"!"];
        [earthPowered addObject:poweredElement];
    }
    return earthPowered;
}

- (NSArray *)longPlaneteerCalls:(NSArray *)planteerCalls
{
    NSMutableArray *longCalls = [[NSMutableArray alloc] init];
    for (int i = 0; i < planteerCalls.count; i++){
        if ([planteerCalls[i] length] > 4){
            [longCalls addObject:planteerCalls[i]];
        }
    }
    return longCalls;
}

- (NSString *)findTheCheese:(NSArray *)cheeses
{
    // possibleCheeses = @[@"prosciutto", @"cambert", @"baguette"];
    
    NSString *chosenCheese = nil;
    
    for (NSString *cheese in cheeses){
        if ([cheese isEqualToString:@"cheddar"] || [cheese isEqualToString: @"gouda"] || [cheese isEqualToString: @"cambert"]){
            chosenCheese = cheese;
        }
        else if ([chosenCheese isEqual:@""]){
            return chosenCheese;
        }
    }
    return chosenCheese;
}

- (NSArray *)calculateDollarAmountsWithReceipt:(NSArray *)receipt
{
    // scroogesMoney = @[@"$$",@"$",@"$$$"];
    
    NSMutableArray *makeItRain = [[NSMutableArray alloc] init];
    
    for (NSString *moneys in receipt){
        NSUInteger counter = [[moneys componentsSeparatedByString:@"$"] count] - 1;
        // NSLog(@"%d", numberOfMoneys);
        NSMutableString *numberOfMoneys = [[@(counter) stringValue] mutableCopy]; //convert counter to string
        [numberOfMoneys insertString:@"$" atIndex:0];
        [makeItRain addObject:numberOfMoneys];
    }
    return makeItRain;
}

















- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
