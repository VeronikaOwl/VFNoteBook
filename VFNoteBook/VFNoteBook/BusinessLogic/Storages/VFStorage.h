//
//  VFStorage.h
//  VFNoteBook
//
//  Created by Филиппов Алексей on 07/04/2019.
//  Copyright © 2019 BuboBubo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class VFNoteModel;



/**
 Протокол типового хранилища
 */
@protocol VFStorage <NSObject>

/**
 получить модели заметок из хранилища

 @return Массив моделей заметок
 */
- (nonnull NSArray <VFNoteModel *> *) obtainNotes;


/**
 Сохраняем заметки в хранилище

 @param notes Массив моделей заметок
 */
- (void) storeNotes: (nonnull NSArray <VFNoteModel *> *) notes;


/**
 Удаляем заметки из хранилища
 */
- (void) removeNotes;

@end

