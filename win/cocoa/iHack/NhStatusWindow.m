//
//  NhStatusWindow.m
//  SlashEM
//
//  Created by dirk on 1/9/10.
//  Copyright 2010 Dirk Zimmermann. All rights reserved.
//

/*
 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License
 as published by the Free Software Foundation, version 2
 of the License.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
 Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

#import "NhStatusWindow.h"

@implementation NhStatusWindow

- (id) initWithType:(int)t {
	if (self = [super initWithType:t]) {
	}
	return self;
}

- (void)clear {
	// status window
	[self lock];
	[lines removeAllObjects];
	[self unlock];
}

- (void) print:(const char *)str attr:(int)attr {
	if (lines.count == 2) {
		[self clear];
	}
	[super print:str attr:attr];
}

@end
