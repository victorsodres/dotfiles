#! /bin/bash

ID_TOUCHPAD=`xinput list --id-only "ETPS/2 Elantech Touchpad"`

ID_PROP_BUTTON_TAPPING=294

xinput set-prop $ID_TOUCHPAD $ID_PROP_BUTTON_TAPPING 1
