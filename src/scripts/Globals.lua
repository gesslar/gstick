-- Main table
GStick = GStick or {}

-- Threshold App Name
GStick.appName = GStick.appName or "GStick"
GStick.EventHandlers = GStick.EventHandlers or {}
GStick.metrics = { height = 66 }

GStick.Styles = {
    HPFront = [[ background-color: rgba(137,0,0,100%) ; ]],
    HPBack = [[ background-color: rgba(59,0,0,100%) ; ]],
    HPText = [[ color: rgb(211,211,211); ]],
    SPFront = [[ background-color: rgba(0,69,137,100%) ; ]],
    SPBack = [[ background-color: rgba(0,29,59,100%) ; ]],
    SPText = [[ color: rgb(211,211,211); ]],
    FPFront = [[ background-color: rgba(176,0,89,100%) ; ]],
    FPBack = [[ background-color: rgba(59,0,29,100%) ; ]],
    FPText = [[ color: rgb(211,211,211); ]],
    FoeFront = [[ background-color: rgba(230,0,0,100%) ; ]],
    FoeBack = [[ background-color: rgba(130,0,0,100%) ; ]],
    FoeText = [[ color: rgb(211,211,211); ]],
    XPFront = [[ background-color: rgba(128,0,128,100%) ; ]],
    XPBack = [[ background-color: rgba(50,0,50,100%) ; ]],
    XPText = [[ color: rgb(211,211,211); ]]
}

if getAvailableFonts()["Verdana"] then
    GStick.Styles.font = "Verdana"
else
    GStick.Styles.font = "Bitstream Vera Sans Mono"
end
