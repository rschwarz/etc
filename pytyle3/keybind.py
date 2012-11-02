import state
import tile

bindings = {
    'Mod4-q': tile.cmd('decrease_master'),
    'Mod4-w': tile.cmd('increase_master'),
    'Mod4-e': tile.cmd('tile'),
    'Mod4-r': tile.cmd('untile'),
    'Mod4-a': tile.cmd('remove_master'),
    'Mod4-s': tile.cmd('add_master'),
    'Mod4-z': tile.cmd('make_master'),
    'Mod4-x': tile.cmd('focus_master'),
    'Mod4-c': tile.cmd('cycle'),
}

# 'Mod4-j':       tile.cmd('prev_client'),
# 'Mod4-k':       tile.cmd('next_client'),
