#SingleInstance Force
#NoEnv
SetWorkingDir %A_ScriptDir%
SetBatchLines -1

Gui Add, Text, x14 y20 w100 h13 vq, Q 0
Gui Add, Text, x14 y37 w100 h13 vw, W 0
Gui Add, Text, x14 y55 w100 h13 ve, E 0
Gui Add, Text, x14 y72 w100 h13 vr, R 0
Gui Add, Text, x135 y19 w100 h11 v1, 1 0
Gui Add, Text, x12 y167 w100 h13 vRMB, RMB 0
Gui Add, GroupBox, x3 y6 w120 h83, Skils
Gui Add, GroupBox, x4 y88 w120 h50, Summoners
Gui Add, Text, x14 y101 w88 h18 vd +0x200, D 0
Gui Add, Text, x14 y117 w88 h18 vF +0x200, F 0
Gui Add, GroupBox, x5 y136 w120 h65, Mouse
Gui Add, Text, x12 y183 w100 h13 +0x200 vMMB, MMB 0
Gui Add, Text, x12 y152 w100 h13 vLMB, LMB 0
Gui Add, Text, x135 y49 w100 h11 vi3, 3 0
Gui Add, Text, x135 y34 w100 h11 vi2, 2 0
Gui Add, Text, x135 y79 w100 h11 vi6, 5 0
Gui Add, Text, x135 y94 w100 h11 vi7, 6 0
Gui Add, Text, x135 y64 w100 h11 vi5, 4 0
Gui Add, Text, x135 y112 w100 h11 +0x200 vi4, Trinket 0
Gui Add, GroupBox, x128 y6 w120 h131, Items
Gui Add, GroupBox, x129 y136 w120 h65, Misc
Gui Add, Text, x134 y149 w120 h16 +0x200 vb, Back 0
Gui Add, Text, x134 y165 w120 h16 +0x200 vp, Shop 0
Gui Add, Text, x9 y201 w223 h19 +0x200, Note: Use numpad 0 to clean counters

Gui Show, w254 h223, LolKeyCounter

Q := 0
w := 0
e := 0
r := 0
b := 0
p := 0
d := 0
f := 0
i1 := 0
i2 := 0
i3 := 0
i4 := 0
i5 := 0
i6 := 0
i7 := 0
RMB := 0
LMB := 0
MMB := 0
Return
~q::   
  Q := Q + 1
  GuiControl,,Q, Q %Q%
  KeyWait, q  
return

~w::   
  w := w + 1
  GuiControl,,W, W %w%
  KeyWait, w
return

~e::   
  e := e + 1
  GuiControl,,E, E %e%
  KeyWait, e
return

~r::   
  r := r + 1
  GuiControl,,R, R %R%
  KeyWait, r
return

~d::   
  d := d + 1
  GuiControl,,D, D %D%
  KeyWait, d
return

~f::   
  f := f + 1
  GuiControl,,F, F %F%
  KeyWait, f
return

~b::   
  b := b + 1
  GuiControl,,B, Back %B%
  KeyWait, b
return


~p::   
  p := p + 1
  GuiControl,,P, Shop %P%
  KeyWait, p
return



~1::   
  i1 := i1 + 1
  GuiControl,,1, 1 %i1%
  KeyWait, 1
return

~2::   
  i2 := i2 + 1
  GuiControl,,2, 2 %i2%
  KeyWait, 2
return

~3::   
  i3 := i3 + 1
  GuiControl,,3, 3 %i3%
  KeyWait, 3
return

~4::   
  i7 := i7 + 1
  GuiControl,,i4, Trinket %i7%
  KeyWait, 4
return

~6::   
  i5 := i5 + 1
  GuiControl,,5, 5 %i5%
  KeyWait, 6
return

~7::   
  i6 := i6 + 1
  GuiControl,,6, 6 %i6%
  KeyWait, 7
return



~5::   
  i4 := i4 + 1
  GuiControl,,4, 4 %i4%
  KeyWait, 5
return



~LButton:: 
	KeyWait, LButton
	LMB := LMB + 1
	GuiControl,,LMB, LMB %LMB%
return


~RButton:: 
	KeyWait, RButton
	RMB := RMB + 1
	GuiControl,,RMB, RMB %RMB%
return

~MButton:: 
	KeyWait, MButton
	MMB := MMB + 1
	GuiControl,,MMB, MMB %MMB%
return

~Numpad0::
  Q := 0
  w := 0
  e := 0
  r := 0
  b := 0
  p := 0
  d := 0
  f := 0
  i1 := 0
  i2 := 0
  i3 := 0
  i4 := 0
  i5 := 0
  i6 := 0
  i7 := 0
  RMB := 0
  LMB := 0
  MMB := 0
  GuiControl,,6, 6 %i6%
  GuiControl,,4, 4 %i4%
  GuiControl,,7, 7 %i7%
  GuiControl,,LMB, LMB %LMB%
  GuiControl,,MMB, MMB %MMB%
  GuiControl,,RMB, RMB %RMB%
  GuiControl,,4, 4 %i4%
  GuiControl,,6, 6 %i6%
  GuiControl,,5, 5 %i5%
  GuiControl,,i4, Trinket %i7%
  GuiControl,,3, 3 %i3%
  GuiControl,,2, 2 %i2%
  GuiControl,,1, 1 %i1%
  GuiControl,,P, Shop %P%
  GuiControl,,B, Back %B%
  GuiControl,,F, F %F%
  GuiControl,,D, D %D%
  GuiControl,,Q, Q %Q%
  GuiControl,,W, W %W%
  GuiControl,,E, E %E%
  GuiControl,,R, R %R%
return
GuiEscape:
GuiClose:
    ExitApp