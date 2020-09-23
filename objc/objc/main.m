//
//  main.m
//  objc
//
//  Created by Владислав Лихачев on 07.09.2020.
//  Copyright © 2020 Vladislav Likhachev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BirdsFlock.h"
#import "Bird.h"

int main(int argc, const char * argv[]) {
    
    
    BirdsFlock *flock = [[BirdsFlock alloc] init];
    
    Bird *bird1 = [[Bird alloc] initWithType:@"Кукушка" AndChild: nil];
    Bird *bird2 = [[Bird alloc] initWithType:@"Утка" AndChild: bird1];
    Bird *bird3 = [[Bird alloc] initWithType:@"Утка" AndChild: nil];
    Bird *bird4 = [[Bird alloc] initWithType:@"Утка" AndChild: nil];
    
    NSArray *birds = [[NSArray alloc] initWithObjects:bird1, bird2, bird3, bird4, nil];
    
    [flock configWithBirds:birds];
    
    [flock release];
    
    return 0;
}
