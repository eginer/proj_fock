set yrange [-10:1.]
plot "fort.33" u 1:4 w l title "vne", "" u 1:5 w l title "proj vne"
set term eps
set output "H_tz_vne.eps"
replot
