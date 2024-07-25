v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -370 -210 -370 -130 {
lab=#net1}
N -330 -240 -250 -240 {
lab=#net1}
N -310 -240 -310 -190 {
lab=#net1}
N -370 -190 -310 -190 {
lab=#net1}
N -210 -210 -210 -130 {
lab=Vout}
N -370 -70 -370 -40 {
lab=node}
N -370 -40 -290 -40 {
lab=node}
N -290 -40 -290 -10 {
lab=node}
N -290 -40 -210 -40 {
lab=node}
N -210 -70 -210 -40 {
lab=node}
N -430 20 -330 20 {
lab=Ib}
N -470 -30 -410 -30 {
lab=Ib}
N -410 -30 -410 20 {
lab=Ib}
N -470 50 -470 70 {
lab=VSS}
N -290 50 -290 70 {
lab=VSS}
N -370 -290 -370 -270 {
lab=VDD}
N -210 -290 -210 -270 {
lab=VDD}
N -490 90 -210 90 {
lab=VSS}
N -470 70 -470 90 {
lab=VSS}
N -290 70 -290 90 {
lab=VSS}
N -490 -310 -210 -310 {
lab=VDD}
N -210 -310 -210 -290 {
lab=VDD}
N -370 -310 -370 -290 {
lab=VDD}
N -470 -50 -470 -10 {
lab=Ib}
N -370 -100 -360 -100 {
lab=VSS}
N -210 -240 -200 -240 {
lab=VDD}
N -380 -240 -370 -240 {
lab=VDD}
N -220 -100 -210 -100 {
lab=VSS}
N -290 20 -280 20 {
lab=VSS}
N -480 20 -470 20 {
lab=VSS}
N -210 -170 -180 -170 {
lab=Vout}
N -70 -280 -70 -240 {
lab=VDD}
N -70 -240 -60 -240 {
lab=VDD}
N -20 -240 -10 -240 {
lab=VDD}
N -10 -280 -10 -240 {
lab=VDD}
N -70 -280 -10 -280 {
lab=VDD}
N -20 -280 -20 -270 {
lab=VDD}
N -70 30 -60 30 {
lab=VSS}
N -70 30 -70 70 {
lab=VSS}
N -70 70 -20 70 {
lab=VSS}
N -20 60 -20 70 {
lab=VSS}
N -20 30 -10 30 {
lab=VSS}
N -10 30 -10 70 {
lab=VSS}
N -20 70 -10 70 {
lab=VSS}
N -20 -10 -20 0 {
lab=node}
N -20 -210 -20 -190 {
lab=Vout}
N -70 -100 -60 -100 {
lab=VSS}
N -70 -100 -70 -60 {
lab=VSS}
N -70 -60 -20 -60 {
lab=VSS}
N -20 -70 -20 -60 {
lab=VSS}
N -20 -100 -10 -100 {
lab=VSS}
N -10 -100 -10 -60 {
lab=VSS}
N -20 -60 -10 -60 {
lab=VSS}
N -20 -140 -20 -130 {
lab=node}
C {devices/ipin.sym} -410 -100 0 0 {name=p1 lab=Vp}
C {devices/ipin.sym} -170 -100 0 1 {name=p2 lab=Vn}
C {devices/opin.sym} -180 -170 0 0 {name=p3 lab=Vout
}
C {devices/iopin.sym} -490 -310 0 1 {name=p4 lab=VDD}
C {devices/iopin.sym} -480 90 2 0 {name=p5 lab=VSS}
C {devices/ipin.sym} -470 -50 1 0 {name=p6 lab=Ib}
C {sky130_fd_pr/nfet_01v8.sym} -390 -100 0 0 {name=M4
L=0.5
W=20
nf=4
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} -360 -100 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} -230 -240 0 0 {name=M1
L=1
W=2
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} -200 -240 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} -350 -240 0 1 {name=M2
L=1
W=2
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} -380 -240 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -190 -100 0 1 {name=M3
L=0.5
W=20
nf=4
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} -220 -100 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -310 20 0 0 {name=M5
L=1
W=2
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} -280 20 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -450 20 0 1 {name=M6
L=1
W=2
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} -480 20 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} -40 -240 0 0 {name=M7
L=1
W=2
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -40 -100 0 0 {name=M8
L=0.5
W=20
nf=4
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -40 30 0 0 {name=M9
L=1
W=2
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} -10 -280 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -70 70 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -20 -190 0 1 {name=p16 sig_type=std_logic lab=Vout}
C {devices/lab_wire.sym} -290 -40 0 1 {name=p17 sig_type=std_logic lab=node}
C {devices/lab_wire.sym} -70 -60 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -20 -10 0 1 {name=p19 sig_type=std_logic lab=node}
C {devices/lab_wire.sym} -20 -140 0 1 {name=p18 sig_type=std_logic lab=node}
