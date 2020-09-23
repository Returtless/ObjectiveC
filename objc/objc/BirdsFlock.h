//
//  BirdsFlock.h
//  objc
//
//  Created by Владислав Лихачев on 23.09.2020.
//  Copyright © 2020 Vladislav Likhachev. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BirdsFlock : NSObject

- (void)configWithBirds:(NSArray *)birds;

@property (nonatomic, strong) NSArray *birds;

@end

NS_ASSUME_NONNULL_END
