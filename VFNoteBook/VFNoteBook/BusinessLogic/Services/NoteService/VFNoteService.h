//
//  VFNoteService.h
//  VFNoteBook
//
//  Created by Филиппов Алексей on 08/04/2019.
//  Copyright © 2019 BuboBubo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class VFNoteModel;


/**
 Протокол сервиса работы с заметками
 */
@protocol VFNoteService <NSObject>


/**
 Создать заметку

 @param name Название заметки
 @param text Текст заметки
 */
- (void) createNoteWithName: (nonnull NSString *) name
                       text: (nonnull NSString *) text;

/**
 Удалить заметку

 @param identifier Идентификатор заметки
 */
- (void) removeNoteWithIdentifier: (NSUInteger) identifier;


/**
 Получить заметки

 @return Массив заметок
 */
- (nonnull NSArray<VFNoteModel *> *) obtainNotes;

@end

