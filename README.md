#Tool for sorting XCode Haders imports alphabetically 
(works with any XCode including XCode 8)

#How to install
Run `./install.sh` in terminal

#How to use
1. Select headers
2. Right-click on the text in XCode editor
3. Choose "Sort Alphabetically"

###Or

Just <kbd>ctrl</kbd>+<kbd>shift</kbd>+<kbd>S</kbd>


#Example

Before Sorting:
```objective-c
// headers group 1
#import "A_header.h"
#import "C_header.h"
#import "B_header.h"
// headers group 2
#import "A2_header.h"
#import "C2_header.h"
#import "B2_header.h"

#import "A3_header.h"
#import "C3_header.h"
#import "B3_header.h"
```
<kbd>ctrl</kbd>+<kbd>shift</kbd>+<kbd>S</kbd>
```objective-c
// headers group 1
#import "A_header.h"
#import "B_header.h"
#import "C_header.h"
// headers group 2
#import "A2_header.h"
#import "B2_header.h"
#import "C2_header.h"

#import "A3_header.h"
#import "B3_header.h"
#import "C3_header.h"
```

# Additional info
Delimiter symbols to group headers (see Example): 
- \n (new line)
- // (comments)

#Known issues
Shortcut is not active on the first file right after XCode launched
