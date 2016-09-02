# Xcode-headers-sorting
# Tool to sort XCode Hader files alphabetically 

#How to install
Run `./install.sh` in terminal

#How to use
1. Select headers
2. Right-click on the editor in XCode
3. Choose Sort Alphabetically

Or

Just <kbd>ctrl</kbd>+<kbd>shift</kbd>+<kbd>S</kbd>


#Example
```
// headers group 1
#import "A_header.h"
#import "C_header.h"
#import "B_header.h"
// headers group 2
#import "A2_header.h"
#import "C2_header.h"
#import "B2_header.h"
// headers group 2
#import "A3_header.h"
#import "C3_header.h"
#import "B3_header.h"
```
After sorting:
```
// headers group 1
#import "A_header.h"
#import "B_header.h"
#import "C_header.h"
// headers group 2
#import "A2_header.h"
#import "B2_header.h"
#import "C2_header.h"
// headers group 2
#import "A3_header.h"
#import "B3_header.h"
#import "C3_header.h"
```
