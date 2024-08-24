#
# Description:  Create an elevator at the current position with the specified block and height.
#
# Parameters:   
# block
# height
#

$execute summon block_display run function arena_elevator:display/create {block:$(block), height:$(height)}