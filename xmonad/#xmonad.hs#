import XMonad
import qualified XMonad.StackSet as W

import XMonad.Layout.Grid
import XMonad.Layout.NoBorders(smartBorders)

import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks

import XMonad.Layout.ResizableTile -- resize non-master windows too


import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeysP)
import XMonad.Util.Scratchpad
import XMonad.Util.Loggers

import XMonad.Prompt
import XMonad.Prompt.Shell(shellPrompt)
import XMonad.Prompt.Window

import System.IO(hPutStrLn)

myLayoutHook = Full ||| tiled ||| Mirror tiled ||| Grid
	where
		-- default tiling algorithm partitions the screen into two panes
		tiled   = Tall nmaster delta ratio

		-- The default number of windows in the master pane
		nmaster = 1

		-- Default proportion of screen occupied by master pane
		ratio   = 1/2

		-- Percent of screen to increment by when resizing panes
		delta   = 3/100

main = do
	xmproc <- spawnPipe "xmobar"
	xmonad $ defaultConfig
			{ manageHook = manageDocks <+> scratchpadManageHook (W.RationalRect 0.25 0.25 0.5 0.5) <+> manageHook defaultConfig 
			, layoutHook = avoidStruts  $  smartBorders $ myLayoutHook
			, logHook    = dynamicLogWithPP $ xmobarPP
				{ ppOutput = hPutStrLn xmproc
                                , ppExtras = [ battery ]
				, ppTitle  = xmobarColor "#8AE234" ""
				}
                        , terminal = "urxvtc"
                        , modMask = mod4Mask
			}
			`additionalKeysP`
			[ ("M-p", shellPrompt defaultXPConfig { position = Top })
			, ("M-S-a", windowPromptGoto defaultXPConfig { position = Top })
			, ("M-a", windowPromptBring defaultXPConfig { position = Top })
			, ("M-x", sendMessage ToggleStruts)
			, ("M-S-l", spawn "~/bin/lock")
---			, ("M-e", spawn "emacsclient -c")
			, ("M-f", spawn "firefox")
			, ("M-r", spawn "urxvtc")                                                     
			, ("M-g", scratchpadSpawnActionTerminal "urxvtc")
			]
