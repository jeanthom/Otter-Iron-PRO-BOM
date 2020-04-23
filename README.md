# Otter-Iron PRO BOM (& other stuff)

Just a quick repository I set up to store all the informations around Otter Iron PRO (v2) when I wanted to build one for myself. Otter Iron PRO is a soldering iron controller designed by [Jan Henrik](https://twitter.com/janhenrikh) for JBC T245 system. It is powered through a USB-C connector, thus requiring a suitable USB-C power source (ie. a beefy laptop charger).

## Schematics & PCB files

[CAD files](https://github.com/Jan--Henrik/Otter-Iron-PRO), [firmware](https://github.com/Jan--Henrik/Otter-Iron-PRO/tree/master/firmware)

v2 uses four PCBs which are in four different KiCAD projects.

## Parts

### Handle

Official JBC T245 handpieces are easily available for 70€ ([Welectron, unsponsored link](https://www.welectron.com/JBC-T245-A-Loetkolben)). Third-party compatible handles are available from chinese manufacturers for half that price ("UD-1200 replacement handle", "T12-11 handle", etc.).

### PCBs

The PCBs are both two-layers designs, small enough to be panelized on a 10x10cm PCB.

Prices at major PCB manufacturers:
 * $22.90 at [oshpark](https://oshpark.com) (unpanelized, 3pcs of each PCB)
 * $18.24 at [pcbs.io](https://pcbs.io) (unpanelized, 4pcs of each PCB, estimate)
 * $14.00 + S&H at [jlcpcb](https://jlcpcb.com) (unpanelized, 5pcs of each PCB)

### Components

I decided to gather as much components as possible from LCSC, and top up with Arrow parts. The components used in this design aren't difficult to source, feel free to rework my BOM to suit your favorite dealer.

 * [Bottom PCB](BOM/OtterIron_PRO_Bot.html)
 * [Top PCB](BOM/BOM/OtterIron_PRO_Top.html)
 * [C245 PCB](BOM/BOM/C245_conn.html)
 * No BOM for back PCB

### Programming

~~An SWD programmer is necessary to program the onboard STM32, I'd recommend the ever-present $2 ST-Link clones. In addition to the programmer, instead of soldering wires directly to the PCB, [a TagConnect clone](https://oshpark.com/shared_projects/iu92RM5z) could come in handy...~~

The microcontroller used in Otter Iron PRO has a built-in USB DFU bootloader. That means you don't need an external programmer to flash a firmware.
