# Simple configs used in my Ubuntu installation:

## Files:

### 99-rocal.rules
> Auto swap power profle depending if the power is connected or not.
>
> Usage:  
> 1 - Copy file or edit a loral rule.  
> 2 - udevadm control --reload-rules  
> 3 - udevadm trigger --attr-match=subsystem=net  
