//
//  VFNoteServiceImplementation.h
//  VFNoteBook
//
//  Created by Филиппов Алексей on 08/04/2019.
//  Copyright © 2019 BuboBubo. All rights reserved.
//

#import "VFNoteService.h"


@class VFUserDefaultsStorage;


@interface VFNoteServiceImplementation : NSObject <VFNoteService>

@property (nonnull, nonatomic, strong) VFUserDefaultsStorage *storage;

@end

