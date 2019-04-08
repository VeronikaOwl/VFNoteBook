//
//  VFNoteModel.m
//  VFNoteBook
//
//  Created by Филиппов Алексей on 07/04/2019.
//  Copyright © 2019 BuboBubo. All rights reserved.
//

#import "VFNoteModel.h"

NSString * const cNameKey = @"name";
NSString * const cTextKey = @"text";
NSString * const cIdentifierKey = @"identifier";


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


- (void)encodeWithCoder:(NSCoder *)aCoder
{
  [aCoder encodeObject: self.name
                forKey: cNameKey];
  [aCoder encodeObject: self.text
                forKey: cTextKey];
  [aCoder encodeInteger: self.identifier
                 forKey: cIdentifierKey];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
  self = [super init];
  
  if (self != nil)
  {
    _name = [aDecoder decodeObjectForKey: cNameKey];
    _text = [aDecoder decodeObjectForKey: cTextKey];
    _identifier = [aDecoder decodeIntegerForKey: cIdentifierKey];
  }
  return self;
}

@end
