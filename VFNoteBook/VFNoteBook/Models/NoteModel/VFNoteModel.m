//
//  VFNoteModel.m
//  VFNoteBook
//
//  Created by Филиппов Алексей on 07/04/2019.
//  Copyright © 2019 BuboBubo. All rights reserved.
//

#import "VFNoteModel.h"

@implementation VFNoteModel

- (instancetype) initWithName: (NSString *) name
                         text: (NSString *) text
                   identifier: (NSUInteger) identifier
{
  self = [super init];
  
  if (self != nil)
  {
    _name = name;
    _text = text;
    _identifier = identifier;
  }
  return self;
}

@end
