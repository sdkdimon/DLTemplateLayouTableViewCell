// The MIT License (MIT)
//
// Copyright (c) 2015-2016 sdkdimon ( https://github.com/sdkdimon )
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#import "UITableView+DLTemplateLayoutCellDebug.h"
#import <objc/runtime.h>

@implementation UITableView (DLTemplateLayoutCellDebug)

- (BOOL)dl_debugLogEnabled {
    return [objc_getAssociatedObject(self, _cmd) boolValue];
}

- (void)setDl_debugLogEnabled:(BOOL)debugLogEnabled {
    objc_setAssociatedObject(self, @selector(dl_debugLogEnabled), @(debugLogEnabled), OBJC_ASSOCIATION_RETAIN);
}

- (void)dl_debugLog:(NSString *)message {
    if (self.dl_debugLogEnabled) {
        NSLog(@"** FDTemplateLayoutCell ** %@", message);
    }
}

@end
