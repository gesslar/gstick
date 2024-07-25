function GStick:Install(_, package)
    if package == self.appName then
      if self.EventHandlers.installHandler ~= nil then deleteNamedEventHandler(self.appName, "GStickInstall") end
      setBorderBottom(GStick.metrics.height)
      sendGMCP("Char.Vitals")
      sendGMCP("Char.Status")
      print("Thank you for installing GStick!")
    end
end

function GStick:Uninstall(_, package)
    print(1)
    if package == self.appName then
        if(self.EventHandlers.uninstallHandler ~= nil) then deleteNamedEventHandler(self.appName, "GStickUninstall") end
        setBorderBottom(0)
        self.MainContainer:hide()
        print("You have uninstalled GStick.")
        self = {}
    end
end

GStick.EventHandlers.installHandler = registerNamedEventHandler(GStick.appName, "GStickInstall", "sysInstallPackage", "GStick:Install")
GStick.EventHandlers.uninstallHandler = registerNamedEventHandler(GStick.appName, "GStickUninstall", "sysUninstallPackage", "GStick:Uninstall")
