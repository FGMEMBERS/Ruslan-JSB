# Liveries
aircraft.livery.init("Aircraft/Ruslan-JSB/Models/Liveries");

# Listener for nose wheel steering
setlistener("controls/gear/nosegear-steering-enabled", func() {
	if (getprop("controls/gear/nosegear-steering-enabled")) {
		setprop("controls/gear/nosegear-angle", 45.0);
		setprop("controls/gear/maingear-angle", 22.5);
	} else {
		setprop("controls/gear/nosegear-angle", 8.0);
		setprop("controls/gear/maingear-angle", 0.0);
	}
},0,0);

# Listeners for autostart
setlistener("/sim/model/start-idling", func(idle) {
	var run= idle.getBoolValue();
	if (run) {
print("called idle");
		Startup();
	} else {
		Shutdown();
	}
},0,0);

var batstart= func {
	setprop("controls/electric/battery-switch",1);
	gui.popupTip("System on battery, starting APU!");
}

var apustart= func {
	setprop("controls/APU/off-start-run", 1);
	setprop("controls/electric/APU-generator", 1);
	gui.popupTip("APU starting!");
}

var pump0start= func {
	setprop("controls/fuel/tank[0]/boost-pump[0]", 1);
	setprop("controls/fuel/tank[0]/boost-pump[1]", 1);
	gui.popupTip("Fuel pumps wing tank left starting!");
}

var pump1start= func {
	setprop("controls/fuel/tank[2]/boost-pump[0]", 1);
	setprop("controls/fuel/tank[2]/boost-pump[1]", 1);
	gui.popupTip("Fuel pumps wing tank right starting!");
}

var eng1start= func {
	setprop("controls/electric/engine[0]/bus-tie",1);
	setprop("controls/electric/engine[0]/generator",1);
	setprop("controls/engines/engine[0]/cutoff", 1);	# needs to be true for JSB to spin up with starter
	setprop("controls/engines/engine[0]/fuel-pump", 1);
	setprop("controls/engines/engine[0]/ignition", 1);
	setprop("controls/engines/engine[0]/starter", 1);
	gui.popupTip("Engine 1 starting!");
}

var eng5start= func {
	setprop("controls/electric/engine[4]/bus-tie",1);
	setprop("controls/electric/engine[4]/generator",1);
	setprop("controls/engines/engine[4]/cutoff", 1);	# needs to be true for JSB to spin up with starter
	setprop("controls/engines/engine[4]/fuel-pump", 1);
	setprop("controls/engines/engine[4]/ignition", 1);
	setprop("controls/engines/engine[4]/starter", 1);
	gui.popupTip("Engine 1 starting!");
}

var eng2start= func {
	setprop("controls/electric/engine[1]/bus-tie",1);
	setprop("controls/electric/engine[1]/generator",1);
	setprop("controls/engines/engine[1]/cutoff", 1);	# needs to be true for JSB to spin up with starter
	setprop("controls/engines/engine[1]/fuel-pump", 1);
	setprop("controls/engines/engine[1]/ignition", 1);
	setprop("controls/engines/engine[1]/starter", 1);
	gui.popupTip("Engine 2 starting!");
}

var eng6start= func {
	setprop("controls/electric/engine[5]/bus-tie",1);
	setprop("controls/electric/engine[5]/generator",1);
	setprop("controls/engines/engine[5]/cutoff", 1);	# needs to be true for JSB to spin up with starter
	setprop("controls/engines/engine[5]/fuel-pump", 1);
	setprop("controls/engines/engine[5]/ignition", 1);
	setprop("controls/engines/engine[5]/starter", 1);
	gui.popupTip("Engine 2 starting!");
}

var eng3start= func {
	setprop("controls/electric/engine[2]/bus-tie",1);
	setprop("controls/electric/engine[2]/generator",1);
	setprop("controls/engines/engine[2]/cutoff", 1);	# needs to be true for JSB to spin up with starter
	setprop("controls/engines/engine[2]/fuel-pump", 1);
	setprop("controls/engines/engine[2]/ignition", 1);
	setprop("controls/engines/engine[2]/starter", 1);
	gui.popupTip("Engine 3 starting!");
}

var eng7start= func {
	setprop("controls/electric/engine[6]/bus-tie",1);
	setprop("controls/electric/engine[6]/generator",1);
	setprop("controls/engines/engine[6]/cutoff", 1);	# needs to be true for JSB to spin up with starter
	setprop("controls/engines/engine[6]/fuel-pump", 1);
	setprop("controls/engines/engine[6]/ignition", 1);
	setprop("controls/engines/engine[6]/starter", 1);
	gui.popupTip("Engine 3 starting!");
}

var eng4start= func {
	setprop("controls/electric/engine[3]/bus-tie",1);
	setprop("controls/electric/engine[3]/generator",1);
	setprop("controls/engines/engine[3]/cutoff", 1);	# needs to be true for JSB to spin up with starter
	setprop("controls/engines/engine[3]/fuel-pump", 1);
	setprop("controls/engines/engine[3]/ignition", 1);
	setprop("controls/engines/engine[3]/starter", 1);
	gui.popupTip("Engine 4 starting!");
}

var eng8start= func {
	setprop("controls/electric/engine[7]/bus-tie",1);
	setprop("controls/electric/engine[7]/generator",1);
	setprop("controls/engines/engine[7]/cutoff", 1);	# needs to be true for JSB to spin up with starter
	setprop("controls/engines/engine[7]/fuel-pump", 1);
	setprop("controls/engines/engine[7]/ignition", 1);
	setprop("controls/engines/engine[7]/starter", 1);
	gui.popupTip("Engine 4 starting!");
}

var eng1norm= func {
	setprop("controls/engines/engine[0]/cutoff", 0);	# now cutoff to false to make her run on her own
	gui.popupTip("Engine 1 spinning up!");
}

var eng5norm= func {
	setprop("controls/engines/engine[4]/cutoff", 0);	# now cutoff to false to make her run on her own
	gui.popupTip("Engine 1 spinning up!");
}

var eng2norm= func {
	setprop("controls/engines/engine[1]/cutoff", 0);	# now cutoff to false to make her run on her own
	gui.popupTip("Engine 2 spinning up!");
}

var eng6norm= func {
	setprop("controls/engines/engine[5]/cutoff", 0);	# now cutoff to false to make her run on her own
	gui.popupTip("Engine 2 spinning up!");
}

var eng3norm= func {
	setprop("controls/engines/engine[2]/cutoff", 0);	# now cutoff to false to make her run on her own
	gui.popupTip("Engine 3 spinning up!");
}

var eng7norm= func {
	setprop("controls/engines/engine[6]/cutoff", 0);	# now cutoff to false to make her run on her own
	gui.popupTip("Engine 3 spinning up!");
}

var eng4norm= func {
	setprop("controls/engines/engine[3]/cutoff", 0);	# now cutoff to false to make her run on her own
	gui.popupTip("Engine 4 spinning up!");
}

var eng8norm= func {
	setprop("controls/engines/engine[7]/cutoff", 0);	# now cutoff to false to make her run on her own
	gui.popupTip("Engine 4 spinning up!");
}

var eng1watch= func {
	var n2=getprop("fdm/jsbsim/propulsion/engine[0]/n2");
	if (n2<49) {
		settimer(eng1watch, 5);
		if (n2<1) {
			# re-trigger jsbsim to spin this engine up
			setprop("controls/engines/engine[0]/cutoff", 1);
			setprop("controls/engines/engine[0]/cutoff", 0);
		}
	} else {
		gui.popupTip("Engine 1 running!");
	}
}

var eng5watch= func {
	var n2=getprop("fdm/jsbsim/propulsion/engine[4]/n2");
	if (n2<49) {
		settimer(eng5watch, 5);
		if (n2<1) {
			# re-trigger jsbsim to spin this engine up
			setprop("controls/engines/engine[4]/cutoff", 1);
			setprop("controls/engines/engine[4]/cutoff", 0);
		}
	} else {
		gui.popupTip("Engine 1 running!");
	}
}

var eng2watch= func {
	var n2=getprop("fdm/jsbsim/propulsion/engine[1]/n2");
	if (n2<49) {
		settimer(eng2watch, 5);
		if (n2<1) {
			# re-trigger jsbsim to spin this engine up
			setprop("controls/engines/engine[1]/cutoff", 1);
			setprop("controls/engines/engine[1]/cutoff", 0);
		}
	} else {
		gui.popupTip("Engine 2 running!");
	}
}

var eng6watch= func {
	var n2=getprop("fdm/jsbsim/propulsion/engine[5]/n2");
	if (n2<49) {
		settimer(eng6watch, 5);
		if (n2<1) {
			# re-trigger jsbsim to spin this engine up
			setprop("controls/engines/engine[5]/cutoff", 1);
			setprop("controls/engines/engine[5]/cutoff", 0);
		}
	} else {
		gui.popupTip("Engine 2 running!");
	}
}

var eng3watch= func {
	var n2=getprop("fdm/jsbsim/propulsion/engine[2]/n2");
	if (n2<49) {
		settimer(eng3watch, 5);
		if (n2<1) {
			# re-trigger jsbsim to spin this engine up
			setprop("controls/engines/engine[2]/cutoff", 1);
			setprop("controls/engines/engine[2]/cutoff", 0);
		}
	} else {
		gui.popupTip("Engine 3 running!");
	}
}

var eng7watch= func {
	var n2=getprop("fdm/jsbsim/propulsion/engine[6]/n2");
	if (n2<49) {
		settimer(eng7watch, 5);
		if (n2<1) {
			# re-trigger jsbsim to spin this engine up
			setprop("controls/engines/engine[6]/cutoff", 1);
			setprop("controls/engines/engine[6]/cutoff", 0);
		}
	} else {
		gui.popupTip("Engine 3 running!");
	}
}

var eng4watch= func {
	var n2=getprop("fdm/jsbsim/propulsion/engine[3]/n2");
	if (n2<49) {
		settimer(eng4watch, 5);
		if (n2<1) {
			# re-trigger jsbsim to spin this engine up
			setprop("controls/engines/engine[3]/cutoff", 1);
			setprop("controls/engines/engine[3]/cutoff", 0);
		}
	} else {
		gui.popupTip("Engine 4 running!");
	}
}

var eng8watch= func {
	var n2=getprop("fdm/jsbsim/propulsion/engine[7]/n2");
	if (n2<49) {
		settimer(eng8watch, 5);
		if (n2<1) {
			# re-trigger jsbsim to spin this engine up
			setprop("controls/engines/engine[7]/cutoff", 1);
			setprop("controls/engines/engine[7]/cutoff", 0);
		}
	} else {
		gui.popupTip("Engine 4 running!");
	}
}

var Startup = func {
print("start engines");
	settimer(batstart, 1);
	settimer(apustart, 6);
	settimer(pump0start, 8);
	settimer(pump1start, 12);

	if (getprop("engines/engine-set")=="DT18T") {
		settimer(eng1start, 16);
		settimer(eng4start, 18);
		settimer(eng2start, 20);
		settimer(eng3start, 22);
	} 
	if (getprop("engines/engine-set")=="GP7277") {
		settimer(eng5start, 16);
		settimer(eng8start, 18);
		settimer(eng6start, 20);
		settimer(eng7start, 22);
	}

	if (getprop("engines/engine-set")=="DT18T") {
		settimer(eng1norm, 24);
		settimer(eng4norm, 26);
		settimer(eng2norm, 28);
		settimer(eng3norm, 30);
	}
	if (getprop("engines/engine-set")=="GP7277") {
		settimer(eng5norm, 24);
		settimer(eng8norm, 26);
		settimer(eng6norm, 28);
		settimer(eng7norm, 30);
	}

	if (getprop("engines/engine-set")=="DT18T") {
		settimer(eng1watch, 32);
		settimer(eng4watch, 34);
		settimer(eng2watch, 36);
		settimer(eng3watch, 38);
	}
	if (getprop("engines/engine-set")=="GP7277") {
		settimer(eng5watch, 32);
		settimer(eng8watch, 34);
		settimer(eng6watch, 36);
		settimer(eng7watch, 38);
	}
}

var Shutdown = func{
	setprop("controls/electric/engine[0]/generator",0);
	setprop("controls/electric/engine[1]/generator",0);
	setprop("controls/electric/engine[2]/generator",0);
	setprop("controls/electric/engine[3]/generator",0);

	setprop("controls/electric/engine[0]/bus-tie",0);
	setprop("controls/electric/engine[1]/bus-tie",0);
	setprop("controls/electric/engine[2]/bus-tie",0);
	setprop("controls/electric/engine[3]/bus-tie",0);

	setprop("controls/electric/APU-generator",0);
	setprop("controls/electric/avionics-switch",0);
	setprop("controls/electric/battery-switch",0);
	setprop("controls/electric/inverter-switch",0);
	setprop("controls/lighting/instruments-norm",0);
	setprop("controls/lighting/instrument-norm",0.0);
	setprop("controls/lighting/nav-lights",0);
	setprop("controls/lighting/beacon",0);
	setprop("controls/lighting/strobe",0);
	setprop("controls/lighting/wing-lights",0);
	setprop("controls/lighting/taxi-lights",0);
	setprop("controls/lighting/logo-lights",0);
	setprop("controls/lighting/cabin-lights",0);
	setprop("controls/lighting/landing-light[0]",0);
	setprop("controls/lighting/landing-light[1]",0);
	setprop("controls/lighting/landing-light[2]",0);

	setprop("controls/engines/engine[0]/cutoff",1);
	setprop("controls/engines/engine[1]/cutoff",1);
	setprop("controls/engines/engine[2]/cutoff",1);
	setprop("controls/engines/engine[3]/cutoff",1);
	setprop("controls/engines/engine[4]/cutoff",1);
	setprop("controls/engines/engine[5]/cutoff",1);
	setprop("controls/engines/engine[6]/cutoff",1);
	setprop("controls/engines/engine[7]/cutoff",1);

	setprop("controls/fuel/tank/boost-pump",0);
	setprop("controls/fuel/tank/boost-pump[1]",0);
	setprop("controls/fuel/tank[1]/boost-pump",0);
	setprop("controls/fuel/tank[1]/boost-pump[1]",0);
	setprop("controls/fuel/tank[2]/boost-pump",0);
	setprop("controls/fuel/tank[2]/boost-pump[1]",0);
	setprop("controls/lighting/instrument-lights-norm",0.0);
	setprop("controls/lighting/efis-norm",0.0);
	setprop("controls/lighting/panel-norm",0.0);
	setprop("systems/electrical/volts",0.0);
}


