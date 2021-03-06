//
//  ImageLoaderBasicVC.m
//  PlutoLand
//
//  Created by xu xhan on 7/16/10.
//  Copyright 2010 xu han. All rights reserved.
//

#import "ImageLoaderBasicVC.h"
#import "UIImageView+Http.h"

@implementation ImageLoaderBasicVC

@synthesize imageView4;
@synthesize imageView3;
@synthesize imageView2;
@synthesize imageView1;

- (IBAction)onBtnFetchPressed:(id)sender
{
//	[imageView1 fetchByURL:@"http://c0043312.cdn.cloudfiles.rackspacecloud.com/iwl/iwl.png"];		
	[imageView1 fetchByURL:@"http://api.ting.baidu.com:8080/image/baike/pic/item/948bcfc8f04187317e3e6f4a.jpg_40-40.jpg"];
	[imageView2 fetchByURL:@"http://tctechcrunch.files.wordpress.com/2010/07/a2.jpg?w=119" ];
	[imageView3 fetchByURL:@"http://tctechcrunch.files.wordpress.com/2010/07/annn.png?w=119" ];
	[imageView4 fetchByURL:@"http://www.javaeye.com/upload/logo/user/39790/cf70eb66-c7d0-3a94-9082-fa0701346847.jpg?1236834109" ];
}


- (IBAction)onBtnCleanPressed:(id)sender
{
	imageView1.image = imageView2.image = imageView3.image = imageView4.image = nil;
}



- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [imageView4 release], imageView4 = nil;
    [imageView3 release], imageView3 = nil;
    [imageView2 release], imageView2 = nil;
    [imageView1 release], imageView1 = nil;
    [super dealloc];
}


@end




