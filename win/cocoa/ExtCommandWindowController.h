//
//  ExtCommandWindowController.h
//  NetHackCocoa
//
//  Created by Bryce on 2/19/10.
//  Copyright 2010 Bryce Cogswell. All rights reserved.
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

#import <Cocoa/Cocoa.h>
#import "Protocols.h"


@interface ExtCommandWindowController : NSWindowController <NSWindowDelegate> {
	IBOutlet NSView * menuView;
	IBOutlet NSButton * acceptButton;
}

-(void)runModal;
-(IBAction)doAccept:(id)sender;
-(IBAction)doCancel:(id)sender;

@end
