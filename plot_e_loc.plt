set yrange [-1:1.]
plot "fort.33" u 1:($2+$4+$6+$8) w l title "E loc", "" u 1:($3+$5+$7+$9) w l title "proj E loc"
set term eps
set output "H_tz_e_loc.eps"
replot
