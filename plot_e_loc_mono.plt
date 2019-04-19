set yrange [-1:1.]
plot "fort.33" u 1:($2+$4) w l title "E loc mono elec", "" u 1:($3+$5) w l title "proj E loc mono elec"
set term eps
set output "H_tz_e_loc_mono.eps"
replot
