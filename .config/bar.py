import os
from pynput.keyboard import Key, Listener, KeyCode

# Set of keys to track
pressed_keys = set()

polybar_visible = True  # Initial state

def toggle_polybar():
    global polybar_visible
    polybar_visible = not polybar_visible
    action = "windowmap" if polybar_visible else "windowunmap"
    os.system(f'xdotool search --class Polybar {action} %@')

def on_press(key):
    if key == Key.cmd:
        # Add the pressed key to the set
        pressed_keys.add(key)
    elif key == KeyCode.from_char('m') and Key.cmd in pressed_keys:
        toggle_polybar()

def on_release(key):
    if key == Key.cmd:
        # Remove the released key from the set
        pressed_keys.discard(key)

with Listener(
        on_press=on_press,
        on_release=on_release) as listener:
    listener.join()
