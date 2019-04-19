
plot "fort.33" w l title "kin", "" u 1:3 w l title "proj kin"
set term eps
set output "H_tz_kin.eps"
replot
