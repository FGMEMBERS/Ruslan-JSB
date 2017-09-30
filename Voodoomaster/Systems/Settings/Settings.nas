var SettingsDialog = {

	new: func(width=140,height=160) {
		var m = {
			parents: [SettingsDialog],
			_dlg: canvas.Window.new([width, height], "dialog")
			.set("title", getprop("/voodoomaster/dialogs/system-settings"))
			.set("resize", 1),
		};

		m._dlg.getCanvas(1)
		.set("background", canvas.style.getColor("bg_color"));
		m._root = m._dlg.getCanvas().createGroup();
 
		var vbox = canvas.VBoxLayout.new();
		m._dlg.setLayout(vbox);

		var settings_base = props.globals.getNode("/voodoomaster/settings");
		if (settings_base != nil) {
			var settings = settings_base.getChildren("setting");
		} else {
			var settings = [];
		}

		for (var i=0; i<size(settings); i+=1) {
			var s = settings[i];
			var sname = s.getNode("name", 1).getValue();
			var scurrent = s.getNode("current", 1).getValue();
print(sname~" = "~scurrent);

			#### 1st hbox ###############################################################################
 
			var line=canvas.Label.new(m._root, canvas.style, {});
#OptionSelector.new(m._root, canvas.style, {});
			line.setTitle(sname);
#			line.setSetting(i);
#			line.setOption(getprop("voodoomaster/settings/setting["~i~"]/current"));

print(line.getBox());
			vbox.addItem(line.getBox());

		}

		var hint = vbox.sizeHint();
		hint[0] = math.max(width, hint[0]);
		m._dlg.setSize(hint);

		return m;
	}

};


