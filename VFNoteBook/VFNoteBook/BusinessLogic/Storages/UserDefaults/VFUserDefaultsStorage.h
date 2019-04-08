//
//  VFUserDefaultsStorage.h
//  VFNoteBook
//
//  Created by Филиппов Алексей on 07/04/2019.
//  Copyright © 2019 BuboBubo. All rights reserved.
//

#import "VFStorage.h"



/**
 Реализация протокола хранилища заметок на NSUserDefaults
 */
@interface VFUserDefaultsStorage : NSObject <VFStorage>

@property (nonnull, nonatomic, strong) NSUserDefaults *userDefaults;

@end
