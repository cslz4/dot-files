local prefix = { "cmd", "alt" }


hs.hotkey.bind(prefix, "1", function()
	hs.application.launchOrFocus("kitty")
end)

hs.hotkey.bind(prefix, "2", function()
	hs.application.launchOrFocus("IntelliJ IDEA")
end)

hs.hotkey.bind(prefix, "3", function()
	hs.application.launchOrFocus("Arc")
end)

hs.hotkey.bind(prefix, "4", function()
	hs.application.launchOrFocus("Slack")
end)

