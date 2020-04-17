# Otter Iron PRO BOM (& other stuff)

Just a quick repository I set up to store all the informations around Otter Iron PRO (v2) when I wanted to build one for myself. Otter Iron PRO is a soldering iron controller designed by [Jan Henrik](https://twitter.com/janhenrikh) for JBC T245 system. It is powered through a USB-C connector, thus requiring a suitable USB-C power source (ie. a beefy laptop charger).

## Schematics & PCB files

[CAD files](https://github.com/Jan--Henrik/Otter-Iron-PRO), [firmware?](https://github.com/Jan--Henrik/Otter-Iron)

v2 uses four PCBs which are in four different KiCAD projects. TODO: panelize

## Parts

### Handle

Official JBC T245 handpieces are easily available for 70€ ([Welectron, unsponsored link](https://www.welectron.com/JBC-T245-A-Loetkolben)). Third-party compatible handles are available from chinese manufacturers for half that price ("UD-1200 replacement handle", "T12-11 handle", etc.).

### PCBs

The PCBs are both two-layers designs, small enough to be panelized on a same 10x10cm PCB.

### Components

I decided to gather as much components as possible from LCSC, and top up with Arrow parts. The components used in this design aren't difficult to source, feel free to rework my BOM to suit your favorite dealer.

 * [Bottom PCB](BOM/OtterIron_PRO_Bot.html)
 * _Link to BOM for Top PCB_
 * _Link to BOM for C245 PCB_
 * _Link to BOM for Back PCB_

### Programming

An SWD programmer is necessary to program the onboard STM32, I'd recommend the ever-present $2 ST-Link clones. In addition to the programmer, instead of soldering wires directly to the PCB, [a TagConnect clone](https://oshpark.com/shared_projects/iu92RM5z) could come in handy...
