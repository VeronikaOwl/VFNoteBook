//
//  VFNoteModel.h
//  VFNoteBook
//
//  Created by Филиппов Алексей on 07/04/2019.
//  Copyright © 2019 BuboBubo. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface VFNoteModel : NSObject

@property (nonnull, nonatomic, copy, readonly) NSString *name;
@property (nonnull, nonatomic, copy, readonly) NSString *text;
@property (nonatomic, assign, readonly) NSUInteger identifier;

- (nonnull instancetype) init __unavailable;
- (nonnull instancetype) initWithName: (nonnull NSString *) name
                                 text: (nonnull NSString *) text
                           identifier: (NSUInteger) identifier NS_DESIGNATED_INITIALIZER;

@end
