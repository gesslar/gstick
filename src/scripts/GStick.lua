GStick.MainContainer = GStick.MainContainer or Geyser.Container:new({
    name = "MainContainer",
    x = 0,
    y = -(GStick.metrics.height),
    width = "100%",
    height = GStick.metrics.height
})

GStick.BarBox = GStick.BarBox or Geyser.HBox:new({
    name = "BarBox",
    x = 0,
    y = 0,
    width = "100%",
    height = "100%"
}, GStick.MainContainer)

-- Char.Vitals information
GStick.VitalsBox = GStick.VitalsBox or Geyser.VBox:new({
    name = "VitalsBox"
}, GStick.BarBox)

-- HP
GStick.HPContainer = GStick.HPContainer or Geyser.Container:new({
    name = "HPContainer",
    x = 0,
    y = 0,
    height = "100%",
    width = "100%",
}, GStick.VitalsBox);

GStick.HPLabel = GStick.HPLabel or Geyser.Label:new({
    x = 0,
    y = 0,
    height = "100%",
    width = 30,
    name = "HPLabel",
    font = GStick.Styles.font,
    fontSize = 10,
    fgColor = "white",
    color = "black",
    message = "HP:"
}, GStick.HPContainer)

GStick.HPBar = GStick.HPBar or Geyser.Gauge:new({
    name = "HPBar",
    x = 30,
    y = "20%",
    width = "100%-40",
    height = "75%",
}, GStick.HPContainer)
GStick.HPBar.front:setStyleSheet(GStick.Styles.HPFront)
GStick.HPBar.back:setStyleSheet(GStick.Styles.HPBack)
GStick.HPBar.text:setStyleSheet(GStick.Styles.HPText)
GStick.HPBar.text:setFontSize(10)
GStick.HPBar.text:echo(nil, "nocolor", "bc")

-- SP
GStick.SPContainer = GStick.SPContainer or Geyser.Container:new({
    name = "SPContainer",
    x = 0,
    y = 0,
    height = "100%",
    width = "100%",
}, GStick.VitalsBox);

GStick.SPLabel = GStick.SPLabel or Geyser.Label:new({
    x = 0,
    y = 0,
    height = "100%",
    width = 30,
    name = "SPLabel",
    font = GStick.Styles.font,
    fontSize = 10,
    fgColor = "white",
    color = "black",
    message = "SP:"
}, GStick.SPContainer)

GStick.SPBar = GStick.SPBar or Geyser.Gauge:new({
    name = "SPBar",
    x = 30,
    y = "20%",
    width = "100%-40",
    height = "75%",
}, GStick.SPContainer)
GStick.SPBar.front:setStyleSheet(GStick.Styles.SPFront)
GStick.SPBar.back:setStyleSheet(GStick.Styles.SPBack)
GStick.SPBar.text:setStyleSheet(GStick.Styles.SPText)
GStick.SPBar.text:setFontSize(10)
GStick.SPBar.text:echo(nil, "nocolor", "bc")

-- FP
GStick.FPContainer = GStick.FPContainer or Geyser.Container:new({
    name = "FPContainer",
    x = 0,
    y = 0,
    height = "100%",
    width = "100%",
}, GStick.VitalsBox);

GStick.FPLabel = GStick.FPLabel or Geyser.Label:new({
    x = 0,
    y = 0,
    height = "100%",
    width = 30,
    name = "FPLabel",
    font = "Bitstream Vera Sans Mono",
    fontSize = 10,
    fgColor = "white",
    color = "black",
    message = "FP:"
}, GStick.FPContainer)

GStick.FPBar = GStick.FPBar or Geyser.Gauge:new({
    name = "FPBar",
    x = 30,
    y = "20%",
    width = "100%-40",
    height = "75%",
}, GStick.FPContainer)
GStick.FPBar.front:setStyleSheet(GStick.Styles.FPFront)
GStick.FPBar.back:setStyleSheet(GStick.Styles.FPBack)
GStick.FPBar.text:setStyleSheet(GStick.Styles.FPText)
GStick.FPBar.text:setFontSize(10)
GStick.FPBar.text:echo(nil, "nocolor", "bc")

function GStick:UpdateVitals()
    if gmcp.Char.Vitals.hp ~= nil and gmcp.Char.Vitals.maxhp ~= nil then
        self.HPBar:setValue(
            tonumber(gmcp.Char.Vitals.hp),
            tonumber(gmcp.Char.Vitals.maxhp),
            f"<center>{gmcp.Char.Vitals.hp}/{gmcp.Char.Vitals.maxhp}</center>")
    end

    if gmcp.Char.Vitals.sp ~= nil and gmcp.Char.Vitals.maxsp ~= nil then
        self.SPBar:setValue(
            tonumber(gmcp.Char.Vitals.sp),
            tonumber(gmcp.Char.Vitals.maxsp),
            f"<center>{gmcp.Char.Vitals.sp}/{gmcp.Char.Vitals.maxsp}</center>")
    end

    if gmcp.Char.Vitals.fp ~= nil and gmcp.Char.Vitals.maxfp ~= nil then
        self.FPBar:setValue(
            tonumber(gmcp.Char.Vitals.fp),
            tonumber(gmcp.Char.Vitals.maxfp),
            f"<center>{gmcp.Char.Vitals.fp}/{gmcp.Char.Vitals.maxfp}</center>")
    end
end

-- Foe, XP, etc
GStick.OtherBox = GStick.OtherBox or Geyser.VBox:new({
    name = "OtherBox"
}, GStick.BarBox)

-- Foe
GStick.FoeContainer = GStick.FoeContainer or Geyser.Container:new({
    name = "FoeContainer",
    x = 0,
    y = 0,
    height = "100%",
    width = "100%",
}, GStick.OtherBox);

GStick.FoeLabel = GStick.FoeLabel or Geyser.Label:new({
    x = 0,
    y = 0,
    height = "100%",
    width = 60,
    name = "FoeLabel",
    font = "Bitstream Vera Sans Mono",
    fontSize = 10,
    fgColor = "white",
    color = "black",
    message = "Foe:"
}, GStick.FoeContainer)

GStick.FoeBar = Geyser.Gauge:new({
    name="FoeBar",
    x = 60,
    y = "20%",
    width = "100%-65",
    height = "75%",
  }, GStick.FoeContainer)
  GStick.FoeBar.front:setStyleSheet(GStick.Styles.FoeFront)
  GStick.FoeBar.back:setStyleSheet(GStick.Styles.FoeBack)
  GStick.FoeBar.text:setStyleSheet(GStick.Styles.FoeText)
  GStick.FoeBar.text:setFontSize(10)
  GStick.FoeBar.text:echo(nil, "nocolor", "bc")

-- XP
GStick.XPContainer = GStick.XPContainer or Geyser.Container:new({
    name = "XPContainer",
    x = 0,
    y = 0,
    height = "100%",
    width = "100%",
}, GStick.OtherBox);

GStick.XPLabel = GStick.XPLabel or Geyser.Label:new({
    x = 0,
    y = 0,
    height = "100%",
    width = 60,
    name = "XPLabel",
    font = "Bitstream Vera Sans Mono",
    fontSize = 10,
    fgColor = "white",
    color = "black",
    message = "XP:"
}, GStick.XPContainer)

GStick.XPBar = Geyser.Gauge:new({
    name="XPBar",
    x = 60,
    y = "20%",
    width = "100%-65",
    height = "75%",
}, GStick.XPContainer)
GStick.XPBar.front:setStyleSheet(GStick.Styles.XPFront)
GStick.XPBar.back:setStyleSheet(GStick.Styles.XPBack)
GStick.XPBar.text:setStyleSheet(GStick.Styles.XPText)
GStick.XPBar.text:setFontSize(10)
GStick.XPBar.text:echo(nil, "nocolor", "bc")

function GStick:UpdateXP()
    local xp = tonumber(gmcp.Char.Status.xp)
    local tnl = tonumber(gmcp.Char.Status.nl)
    local total = xp + tnl
    local per = math.floor(xp / total * 100)

    self.XPBar:setValue(xp, total, f"<center>{per}%</center>")
end

function GStick:UpdateFoe()
    local name = gmcp.Char.Status.enemy
    local status = gmcp.Char.Status.enemy_health
    local health = tonumber(100)

    if     status == "mortally wounded" then health = 0
    elseif status == "nearly dead" then health = 4
    elseif status == "in very bad shape" then health = 10
    elseif status == "in bad shape" then health = 20
    elseif status == "not in good shape" then health = 50
    elseif status == "slightly hurt" then health = 95
    elseif status == "in good shape" then health = 100
    else   status = "unknown" health = 100
    end


    local foetext = f"<center>No Foe</center>"

    if name ~= "None" then foetext = f"<center>{name} ({status})</center>" end

    self.FoeBar:setValue(health, 100, foetext)
end

GStick.EventHandlers.UpdateVitals = registerNamedEventHandler(GStick.appName, "GStickUpdateVitals", "gmcp.Char.Vitals", "GStick:UpdateVitals")
GStick.EventHandlers.UpdateXP = registerNamedEventHandler(GStick.appName, "GStickUpdateXP", "gmcp.Char.Status", "GStick:UpdateXP")
GStick.EventHandlers.UpdateFoe = registerNamedEventHandler(GStick.appName, "GStickUpdateFoe", "gmcp.Char.Status", "GStick:UpdateFoe")
