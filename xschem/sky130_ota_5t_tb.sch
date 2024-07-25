v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -260 240 540 640 {flags=graph
y1=-19
y2=40
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=2.4417377
x2=7.4417371
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
color=4
node="\\"Vout db20()\\""}
B 2 -260 640 540 1040 {flags=graph
y1=-92
y2=-0.06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.4417377
x2=7.4417371
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ph(Vout)"
color=""
dataset=-1
unitx=1
logx=1
logy=0
}
T {tcleval(A0: [to_eng [xschem raw value A0 0]]
A0dB: [to_eng [xschem raw value A0dB 0]]
UGF: [to_eng [xschem raw value ugf 0]]
PM: [to_eng [xschem raw value pm 0]])} 630 600 0 0 0.6 0.6 {floater=1}
N 220 -290 240 -290 {
lab=Vout}
N 240 -290 240 -270 {
lab=Vout}
N -270 -250 -270 -230 {
lab=GND}
N -270 -350 -270 -310 {
lab=VSS}
N -190 -250 -190 -230 {
lab=GND}
N -270 -230 -270 -210 {
lab=GND}
N -190 -350 -190 -310 {
lab=VDD}
N -270 -230 -190 -230 {
lab=GND}
N -110 -350 -110 -310 {
lab=VDD}
N -110 -250 -110 -230 {
lab=Ib}
N -110 -230 -110 -210 {
lab=Ib}
N -90 -50 -50 -50 {
lab=#net1}
N -270 -100 -270 60 {
lab=#net1}
N -270 -100 -90 -100 {
lab=#net1}
N -270 120 -270 140 {
lab=GND}
N -90 120 -90 140 {
lab=GND}
N -90 40 -10 40 {
lab=#net2}
N -90 40 -90 60 {
lab=#net2}
N -90 -10 -50 -10 {
lab=GND}
N -90 -10 -90 10 {
lab=GND}
N -170 0 -170 40 {
lab=#net2}
N -10 0 -10 40 {
lab=#net2}
N -90 -100 -90 -50 {
lab=#net1}
N -10 -140 -10 -60 {
lab=Vn}
N -170 -140 -170 -60 {
lab=Vp}
N -170 40 -90 40 {
lab=#net2}
N -130 -10 -90 -10 {
lab=GND}
N -130 -50 -90 -50 {
lab=#net1}
C {devices/isource.sym} -110 -280 0 0 {name=I0 value=10u}
C {devices/lab_wire.sym} 130 -350 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/capa.sym} 240 -240 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 240 -210 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 70 -330 0 0 {name=p3 sig_type=std_logic lab=Vp}
C {devices/lab_wire.sym} 70 -250 0 0 {name=p4 sig_type=std_logic lab=Vn}
C {devices/lab_wire.sym} 70 -290 0 0 {name=p7 sig_type=std_logic lab=Ib}
C {devices/code_shown.sym} 640 -110 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
value="
.param vdd=1.8
.param vcm=0.9

.control

    save all

    save @m.x1.xm1.msky130_fd_pr__pfet_01v8[id] @m.x1.xm1.msky130_fd_pr__pfet_01v8[gm] @m.x1.xm1.msky130_fd_pr__pfet_01v8[gds]
    save @m.x1.xm2.msky130_fd_pr__pfet_01v8[id] @m.x1.xm2.msky130_fd_pr__pfet_01v8[gm] @m.x1.xm2.msky130_fd_pr__pfet_01v8[gds]

    save @m.x1.xm3.msky130_fd_pr__nfet_01v8[id] @m.x1.xm3.msky130_fd_pr__nfet_01v8[gm] @m.x1.xm3.msky130_fd_pr__nfet_01v8[gds]
    save @m.x1.xm4.msky130_fd_pr__nfet_01v8[id] @m.x1.xm4.msky130_fd_pr__nfet_01v8[gm] @m.x1.xm4.msky130_fd_pr__nfet_01v8[gds]
    save @m.x1.xm5.msky130_fd_pr__nfet_01v8[id] @m.x1.xm5.msky130_fd_pr__nfet_01v8[gm] @m.x1.xm5.msky130_fd_pr__nfet_01v8[gds]
    save @m.x1.xm6.msky130_fd_pr__nfet_01v8[id] @m.x1.xm6.msky130_fd_pr__nfet_01v8[gm] @m.x1.xm6.msky130_fd_pr__nfet_01v8[gds]

    * operating point
    op

    write sky130_ota_5t_tb.raw
    set appendwrite

    * run ac simulation
    ac dec 20 1k 100e6

    * measure parameters
    let vout_mag = abs(v(Vout))
    let vout_phase_margin = phase(v(Vout)) * 180/pi + 180
    let vout_mag_db = db(vout_mag)
    meas ac A0 find vout_mag at=1k
    meas ac A0dB find vout_mag_db at=1k
    meas ac UGF when vout_mag=1 fall=1
    meas ac PM find vout_phase_margin when vout_mag=1

    write sky130_ota_5t_tb.raw
.endc
"}
C {devices/launcher.sym} 140 130 0 0 {name=h26
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 140 190 0 0 {name=h27
descr="Load waves AC" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw ac

"
}
C {devices/lab_wire.sym} 240 -290 0 1 {name=p11 sig_type=std_logic lab=Vout}
C {devices/vsource.sym} -270 -280 0 0 {name=V0 value=0 savecurrent=false}
C {devices/gnd.sym} -270 -210 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -190 -280 0 0 {name=V2 value=\{vdd\} savecurrent=false}
C {devices/lab_wire.sym} -270 -350 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -110 -210 2 0 {name=p8 sig_type=std_logic lab=Ib}
C {devices/vcvs.sym} -170 -30 0 1 {name=E1 value=0.5}
C {devices/vcvs.sym} -10 -30 0 0 {name=E2 value=-0.5}
C {devices/vsource.sym} -270 90 0 0 {name=Vdm value="ac 1" savecurrent=false}
C {devices/vsource.sym} -90 90 0 0 {name=Vcm value=\{vcm\} savecurrent=false}
C {devices/gnd.sym} -270 140 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -90 140 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -90 10 0 0 {name=l7 lab=GND}
C {devices/lab_wire.sym} -170 -140 0 0 {name=p12 sig_type=std_logic lab=Vp}
C {devices/lab_wire.sym} -10 -140 0 0 {name=p13 sig_type=std_logic lab=Vn}
C {devices/lab_wire.sym} -190 -350 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -110 -350 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 130 -230 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 470 -290 0 0 {name=CORNER only_toplevel=false corner=tt}
C {/foss/designs/sky130_ota_5t/xschem/sky130_ota_5t.sym} 130 -280 0 0 {name=x1}
