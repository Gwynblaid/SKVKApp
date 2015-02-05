//
//  VKPermissions.c
//
//  Copyright (c) 2014 VK.com
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//  the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//  FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import "VKPermissions.h"

NSArray *parseVkPermissionsFromInteger(int permissionsValue) {
	NSMutableArray *res = [NSMutableArray new];
	if (permissionsValue & 1<<0) [res addObject:VK_PER_NOTIFY];
	if (permissionsValue & 1<<1) [res addObject:VK_PER_FRIENDS];
	if (permissionsValue & 1<<2) [res addObject:VK_PER_PHOTOS];
	if (permissionsValue & 1<<3) [res addObject:VK_PER_AUDIO];
	if (permissionsValue & 1<<4) [res addObject:VK_PER_VIDEO];
	if (permissionsValue & 1<<5) [res addObject:VK_PER_PAGES];
	if (permissionsValue & 1<<6) [res addObject:VK_PER_STATUS];
	if (permissionsValue & 1<<7) [res addObject:VK_PER_NOTES];
	if (permissionsValue & 1<<8) [res addObject:VK_PER_MESSAGES];
	if (permissionsValue & 1<<9) [res addObject:VK_PER_WALL];
	if (permissionsValue & 1<<10) [res addObject:VK_PER_ADS];
	if (permissionsValue & 1<<11) [res addObject:VK_PER_OFFLINE];
	if (permissionsValue & 1<<12) [res addObject:VK_PER_DOCS];
	if (permissionsValue & 1<<13) [res addObject:VK_PER_GROUPS];
	if (permissionsValue & 1<<14) [res addObject:VK_PER_NOTIFICATIONS];
	if (permissionsValue & 1<<15) [res addObject:VK_PER_STATS];
	return res;
}
