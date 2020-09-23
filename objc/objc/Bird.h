//
//  Bird.h
//  objc
//
//  Created by Владислав Лихачев on 23.09.2020.
//  Copyright © 2020 Vladislav Likhachev. All rights reserved.
//

#import <Foundation/Foundation.h>



NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject
enum State {
    Child = 1,
    Parent
} ;
typedef enum State State;

- (instancetype) initWithType:(NSString *)type AndChild: (Bird *) child;

@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) Bird *child;
@property (nonatomic) State state;


@end

NS_ASSUME_NONNULL_END
