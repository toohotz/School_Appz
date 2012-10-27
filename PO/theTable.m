//
//  theTable.m
//  PO
//
//  Created by Jason on 9/10/12.
//  Copyright (c) 2012 J & J Corp. All rights reserved.
//

#import "theTable.h"

@implementation theTable




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    UIDeviceOrientation orient = [[UIDevice currentDevice] orientation];
    orient = UIDeviceOrientationPortrait; // set to what ever you want
    
    if (orient) {
        NSLog(@"Do something here ");
    }
    
    
    // Return the number of rows in the section.
    return 5;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    cell.textLabel.text = @"Hello there!";
    
    return cell;
}



@end
