# Tool for sorting Xcode import headers alphabetically

This tool will work with **_any Xcode_** including **Xcode 8**:
this **_is not_** a plugin for **Alcatraz** which is not fully available in **Xcode 8**. 

## How to install

```shell
$ git clone https://github.com/kudinovdenis/Xcode-headers-sorting.git
$ cd Xcode-headers-sorting
$ ./install.sh
```

## How to use

1. **Select** headers
2. **Right-click** on the text in Xcode editor
3. Choose **"Sort Alphabetically"**

### Or

Just <kbd>ctrl</kbd>+<kbd>shift</kbd>+<kbd>S</kbd>

## Example

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

## Additional info

Delimiter symbols to group headers (see Example): 

- **\n** (new line)
- **//** (comments)

## Known issues

Shortcut is not active on the first file right after Xcode is _launched_.
