#!/bin/bash

  options="(l)ock\n(e)xit\n(r)eboot\nswitch_(u)ser\n(s)uspend\n(h)ibernate\n(Shift+s)hutdown"
  selected=$(echo -e $options | dmenu -p "choose option : " )
  [ $selected = "(l)ock"         ]  && i3exit lock 
  [ $selected = "(e)xit"           ]  && i3exit logout 
  [ $selected = "switch_(u)ser"    ]  && i3exit switch_user 
  [ $selected = "(s)uspend"        ]  && i3exit suspend
  [ $selected = "(h)ibernate"      ]  && i3exit hibernate 
  [ $selected = "(r)eboot"         ]  && i3exit reboot 
  [ $selected = "(Shift+s)hutdown" ]  && i3exit shutdown 
