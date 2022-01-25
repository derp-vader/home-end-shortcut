﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; -----------------------------------------------------------
; Ref: https://www.autohotkey.com/boards/viewtopic.php?f=6&t=62837&sid=81ebd579a5656baaa13993469329910b
; Sane Navigation Shortcuts with Alt
;
; An easier and more consistent way to send PgUp/PgDown/
; Home/End for laptops with no dedicated keys for these
; functions.
;
; The following shortcuts recruit Alt as a better Fn key, 
; since Alt is on both sides of the keyboard and isn't used
; much otherwise.
;
; Alt + left arrow = Home
; Alt + right arrow = End
; Alt + up arrow = PgUp
; Alt + down arrow = PgDn
;
; Each Alt key (right and left) must be referred to specific-
; ally, else problems arise. Also, it's sometimes necessary 
; to leave out {Alt Up}.
; -----------------------------------------------------------

#BS::ExitApp  ; Exit script with Win + Backspace key

; Win + Alt + Left Arrow sends Win-Home
#!Left:: send {Win Up}{Alt Up}#{Home}

; PgUp/Down + Home/End shortcuts (Alt + arrow keys):

; ; first using right-Alt 

; ; + arrow keys
; >!Up::send {RAlt Up}{PgUp}
; >!Down::send {RAlt Up}{PgDn}
; >!Left::send {RAlt Up}{Home}
; >!Right::send {RAlt Up}{End}

; ; Ctrl + PgUp/Down, Home/End
; ; function for text editors and word processors
; >!^Up::send {Alt Up}{Crtl Up}^{PgUp}
; >!^Down::send {Alt Up}{Crtl Up}^{PgDn}
; >!^Left::send {Alt Up}{Crtl Up}^{Home}
; >!^Right::send {Alt Up}{Crtl Up}^{End}

; ; Shift + PgUp/Down, Home/End
; ; function for text editors and word processors
; >!+Up::send {Alt Up}{Shift Up}+{PgUp}
; >!+Down::send {Alt Up}{Shift Up}+{PgDn}
; >!+Left::send {Alt Up}{Shift Up}+{Home}
; >!+Right::send {Alt Up}{Shift Up}+{End}

; ; Ctrl + Shift + PgUp/Down, Home/End
; ; function for text editors and word processors
; >!^+Up::send {Alt Up}{Crtl Up}{Shift Up}^+{PgUp}
; >!^+Down::send {Alt Up}{Crtl Up}{Shift Up}^+{PgDn}
; >!^+Left::send {Alt Up}{Crtl Up}{Shift Up}^+{Home}
; >!^+Right::send {Alt Up}{Crtl Up}{Shift Up}^+{End}

; now using left Alt too

; + arrow keys
<!Up::send {RAlt Up}{PgUp}
<!Down::send {RAlt Up}{PgDn}
<!Left::send {RAlt Up}{Home}
<!Right::send {RAlt Up}{End}

; Ctrl + PgUp/Down, Home/End
; function for text editors and word processors
<!^Up::send {Alt Up}{Crtl Up}^{PgUp}
<!^Down::send {Alt Up}{Crtl Up}^{PgDn}
<!^Left::send {Alt Up}{Crtl Up}^{Home}
<!^Right::send {Alt Up}{Crtl Up}^{End}

; Shift + PgUp/Down, Home/End
; function for text editors and word processors
<!+Up::send {Alt Up}{Shift Up}+{PgUp}
<!+Down::send {Alt Up}{Shift Up}+{PgDn}
<!+Left::send {Alt Up}{Shift Up}+{Home}
<!+Right::send {Alt Up}{Shift Up}+{End}

; Ctrl + Shift + PgUp/Down, Home/End
; function for text editors and word processors
<!^+Up::send {Alt Up}{Crtl Up}{Shift Up}^+{PgUp}
<!^+Down::send {Alt Up}{Crtl Up}{Shift Up}^+{PgDn}
<!^+Left::send {Alt Up}{Crtl Up}{Shift Up}^+{Home}
<!^+Right::send {Alt Up}{Crtl Up}{Shift Up}^+{End}

; Alt + left/right arrow keys conflicts with existing short-
; cuts in file/internet browsers (plus Alt + up arrow con-
; flicts in Explorer). So, use OS X keyboard shortcuts in 
; those programs, instead (plus an imperfect compromise 
; to replace Alt + up).
;
; In OS X, to go back/forward, Command + left and right 
; brackets ('[]') are used. So, the same are set up here,
; except using Alt instead of Command.
;
; An imperfect replacement for Alt-Up (or Command-Up in
; OS X) is Alt + '.' (period). The mnemonic for this is that
; '..' is used on the command line to go up one level in a
; directory.

; --Test if browser or Explorer is active window--
; #If WinActive("ahk_class MozillaWindowClass") or WinActive("ahk_class Chrome_WidgetWin_1") or WinActive("ahk_class CabinetWClass")

; ; Alt-arrow navigation shortcuts for those programs
; <!.::send !{Up}
; <![::send !{Left}
; <!]::send !{Right}

; >!.::send !{Up}
; >![::send !{Left}
; >!]::send !{Right}

; --end Alt shortcuts--


; --Not used--

; I considered using right-Shift plus arrow keys for 
; PgUp/Down and Home/End for browsers and Explorer, since
; Alt + right/left arrows, and Alt + up arrow for Explorer, 
; are already shortcuts in these programs. But, this 
; seemed like too much cognitive dissonance. However, if 
; you want to use that scheme, the below may be useful.

; Exclude browsers and Explorer to avoid conflict with Alt +
; left/right arrow conflicts for Back/Forward shortcuts in
; those programs (and Alt + up arrow in Explorer for "up one
; directory level")
; #If !(WinActive("ahk_class MozillaWindowClass") OR WinActive("ahk_class Chrome_WidgetWin_1") OR WinActive("ahk_class CabinetWClass"))

; >+Up::send {RShift Up}{PgUp}
; >+Down::send {RShift Up}{PgDn}
; >+Left::send {RShift Up}{Home}
; >+Right::send {RShift Up}{End}