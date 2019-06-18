//
//  RootTableViewController.m
//  Task3
//
//  Created by Roma on 6/17/19.
//  Copyright © 2019 Roman. All rights reserved.
//

#import "RootTableViewController.h"
#import "DetailsViewController.h"
#import "ImageCell.h"


@interface RootTableViewController ()
@end

static NSString *cellID = @"ImageCell";

@implementation RootTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:ImageCell.self forCellReuseIdentifier:cellID];
    self.title = @"Images with URLs";
    self.navigationItem.hidesBackButton = YES;
    self.tableView.allowsSelection = NO;
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    [self loadPresentedCells];
}

-(void)loadPresentedCells{
    NSArray *presentedIndexes = [self.tableView indexPathsForVisibleRows];
    for (NSIndexPath *index in presentedIndexes){
        RKImage *image = [self.data objectAtIndex:index.row];
        if (!image.IsLoaded && !image.IsLoading) {
            [image beginUploadImage];
        }
    }
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ImageCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    cell.image = [self.data objectAtIndex:indexPath.row];
    
   if (cell.imageFromUrlView.gestureRecognizers.count == 0) {
        UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapOnImage:)];
        [cell.imageFromUrlView addGestureRecognizer:recognizer];
        cell.imageFromUrlView.tag = indexPath.row;
    }
    
    [cell layoutSubviews];
    return cell;
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    if (!decelerate) {
        [self scrollingFinish];
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    [self scrollingFinish];
}

- (void)scrollingFinish {
    [self loadPresentedCells];
}

- (void)didTapOnImage:(UITapGestureRecognizer *)recognizer {
    NSUInteger tag = recognizer.view.tag;
    DetailsViewController *detailsController = [[DetailsViewController alloc] initWithImage:[self.data objectAtIndex:tag]];
    [self.navigationController pushViewController:detailsController animated:YES];
}


@end
