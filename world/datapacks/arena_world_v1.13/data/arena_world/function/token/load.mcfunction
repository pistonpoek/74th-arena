#
# Description:  Load the token data
#

execute unless data storage arena_world:. token run \
    data modify storage arena_world:. token set value \
    {components:{"minecraft:custom_name":'{"italic":false,"text": "Tribute Token"}'},count:1,id:"minecraft:sunflower"}