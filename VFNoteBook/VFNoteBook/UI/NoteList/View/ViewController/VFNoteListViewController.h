//
//  VFNoteListViewController.h
//  VFNoteBook
//
//  Created by Филиппов Алексей on 07/04/2019.
//  Copyright © 2019 BuboBubo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol VFStorage;



@interface VFNoteListViewController : UIViewController <UITableViewDataSource>

@property (nonnull, nonatomic, strong) id <VFStorage> storage;

@end
