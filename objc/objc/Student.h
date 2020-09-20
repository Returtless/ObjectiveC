//
//  Student.h
//  objc
//
//  Created by Владислав Лихачев on 20.09.2020.
//  Copyright © 2020 Vladislav Likhachev. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
- (instancetype)initWithParams:(NSString *)name surname:(NSString *)surname age:(int)age;


@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *surname;
@property (nonatomic, readonly) int age;
@property (nonatomic, readonly) NSString *fullName;

- (void)incrementAge:(int)inc;

@end

NS_ASSUME_NONNULL_END
