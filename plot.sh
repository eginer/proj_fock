

cat << EOF > plot_kin.plt 

plot "fort.33" w l title "kin", "" u 1:3 w l title "proj kin"
set term eps
set output "H_tz_kin.eps"
replot
EOF

gnuplot plot_kin.plt

cat << EOF > plot_vne.plt 
set yrange [-10:1.]
plot "fort.33" u 1:4 w l title "vne", "" u 1:5 w l title "proj vne"
set term eps
set output "H_tz_vne.eps"
replot
EOF

gnuplot plot_vne.plt

cat << EOF > plot_coulomb.plt 
plot "fort.33" u 1:6 w l title "coulomb", "" u 1:7 w l title "proj coulomb"
set term eps
set output "H_tz_coulomb.eps"
replot
EOF

gnuplot plot_coulomb.plt

cat << EOF > plot_exchange.plt 
plot "fort.33" u 1:8 w l title "exchange", "" u 1:9 w l title "proj exchange"
set term eps
set output "H_tz_exchange.eps"
replot
EOF

gnuplot plot_exchange.plt

cat << EOF > plot_mo.plt 
plot "fort.33" u 1:10 w l title "MO"
set term eps
set output "H_tz_MO.eps"
replot
EOF

gnuplot plot_mo.plt

cat << EOF > plot_e_loc.plt 
set yrange [-1:1.]
plot "fort.33" u 1:(\$2+\$4+\$6+\$8) w l title "E loc", "" u 1:(\$3+\$5+\$7+\$9) w l title "proj E loc"
set term eps
set output "H_tz_e_loc.eps"
replot
EOF

gnuplot plot_e_loc.plt

cat << EOF > plot_e_loc_mono.plt 
set yrange [-1:1.]
plot "fort.33" u 1:(\$2+\$4) w l title "E loc mono elec", "" u 1:(\$3+\$5) w l title "proj E loc mono elec"
set term eps
set output "H_tz_e_loc_mono.eps"
replot
EOF

gnuplot plot_e_loc_mono.plt
