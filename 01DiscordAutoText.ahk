#IfWinActive ahk_exe Discord.exe
#IfWinActive ahk_exe DiscordCanary.exe

MsgBox, 1, Welcome to Discord Quick Text,
(
This program is just to help auto fill commands for Fortnite OCE discord server
)

IfMsgBox Cancel
	ExitApp

IfMsgBox Ok
	MsgBox, 4096, Quick Text,
(
*This Tab is Always on Top so you can drag this tab to wherever you want*
i recommend on another monitor
And do make sure you use this script on the discord client
----------
Ctrl + h = history details

Ctrl + w = whois

Ctrl + m = mute

Ctrl + q = warn
----------
Alt + g =
Posted LFG in #general,

Alt + f = Posted LFG in

Alt + d =
Posting LF duo messages in (5second wait for you to type the channel - 5555ms)
#lfduo channel for this in the future

Alt + t =
Posting LF trio message in (5second wait - 5555ms)
#lftrio channel for this in the future

Alt = C = (Incorrect Channel Usage)

Alt + x = Please post in

Ctrl + Alt + 1 = Reload Script

Ctrl + z = Toggle Pause OFF | ON
)

IfMsgBox Ok
	ExitApp
return

^h::
Send {!}history details
Sleep, 100
Send {Space}
return

^m::
Send {!}mute
Sleep, 100
Send {Space}
return

^q::
Send {!}warn
Sleep, 100
Send {Space}
return

^w::
Send {!}whois
Sleep, 100
Send {Space}
return

; Auto types "Posted in #general, "
!g::
Sleep, 50
Send Posted LFG in
Sleep, 50
Send {Space}
Sleep, 100
Send {#}
Sleep, 100
Send g
Sleep, 100
Send e
Sleep, 100
Send n
Sleep, 100
Send e
Sleep, 100
Send r
Sleep, 100
Send a
Sleep, 100
Send l
sleep, 100
Send {Tab}
Sleep, 100
Send {Backspace}
Sleep, 100
Send, {,}
Sleep, 100
Send, {Space}
return

!f::
Send, Posted LFG in
Sleep, 50
Send, {Space}
return

; Posting LF duo messages in (5sec wait for you to input the channel then)
; Please use the #lfduo (then tabs to the correct Channel)
; channel for this in the future
!d::
Send, Posting LF duo messages in
Sleep, 50
Send, {Space}
Sleep, 5555
Send, Please use the
Sleep, 50
Send, {Space}
Sleep, 50
Send, {#}
Sleep, 50
Send, l
Sleep, 50
Send, f
Sleep, 50
Send, d
Sleep, 50
Send, u
Sleep, 50
Send, o
Sleep, 50
Send, {Tab}
Sleep, 50
Send, channel for this in the future
return

; Same as above but for trios
!t::
Send, Posting LF trio messages in
Sleep, 50
Send, {Space}
Sleep, 5555
Send, Please use the
Sleep, 50
Send, {Space}
Sleep, 50
Send, {#}
Sleep, 50
Send, l
Sleep, 50
Send, f
Sleep, 50
Send, t
Sleep, 50
Send, r
Sleep, 50
Send, i
Sleep, 50
Send, o
Sleep, 50
Send, {Tab}
Sleep, 50
Send, channel for this in the future
return

; "Please post in"
!x::
Send Please post in
Sleep, 100
Send, {Space}
return

!c::
Send, (Incorrect Channel Usage)
return

^z::
Suspend, Toggle
toggle := !toggle
Menu, Tray, Tip,  % toggle ? "State OFF" : "State ON"
Menu, Tray, Icon, % toggle ? trayIconOFF : trayIconON, 1
ToolTip % toggle ? "Script OFF" : "Script ON"
SetTimer, RemoveToolTip, 1000
return

RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return

;#Space::
;Suspend, Toggle
;return

^!1::
Reload
return
