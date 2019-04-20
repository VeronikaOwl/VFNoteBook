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


#pragma mark - Identifier

/**
 Получить идентификатор для заметки

 @return Идентификатор заметки
 */
- (NSUInteger) takeNoteIdentifier;

/**
 Сохраняем идентификатор заметки

 @param identifier Идентификатор заметки
 */
- (void) storeNoteIdentifier: (NSUInteger) identifier;



#pragma mark - Notes

/**
 Получить модели заметок из хранилища

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

