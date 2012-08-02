# PSMTabBarControl

Bringing the infamous cocoa component to a more modern Objective-C life. The initial code importation is based on [zachwaugh/PSMTabBarControl@823eb00c00d3b9233c7dbd27145867be9a4eb341](https://github.com/zachwaugh/PSMTabBarControl/commit/823eb00c00d3b9233c7dbd27145867be9a4eb341).

PSMTabBarControl provides a user interface for the management of NSTabView components.

## Features
* Codebase clean-up (ongoing)
* Conversion to ARC
* Entirely new demo app!

# Installation
* Drag the `PSMTabBarControl/PSMTabBarControl` folder into your project.
  * _If your project **does not use ARC** you must add the `-fobjc-arc` compiler flag for every files from PSMTabBarControl in `Target Settings > Build Phases > Compile Sources`._
  
# Usage

* You need an instance of an NSTabView (with the tabless style and without pre-existing tabs for best results)
* Connect the PSMTabBarControl `tabView` property to the instance of NSTabView (either via Interface Builder or programmatically)
* Set the NSTabView `delegate` property to the instance of PSMTabBarControl (either via Interface Builder or programmatically)

The PSMTabBarControl instance should occupy the width of the window, and should be precisely 24 pixels in height. It should be resizable in width, but not height.


# Credits
This new version of PSMTabBarControl is brought to your by [Jean-Philippe Couture](http://www.twitter.com/jcouture). Previous work on PSMTabBarControl was done by Zach Waugh of [Giant Comet, LLC](http://giantcomet.com/) and John Pannell of [Positive Spin Media, Inc](http://www.positivespinmedia.com/).

# License
```
Portions Copyright (c) 2012, Jean-Philippe Couture. All rights reserved.
Portions Copyright (c) 2011-2012, Giant Comet, LLC. All rights reserved.
Portions Copyright (c) 2004, The Shiira Project. All rights reserved.

Copyright (c) 2005, Positive Spin Media, Inc.  All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
 3. Neither the name of Positive Spin Media nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
        
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```