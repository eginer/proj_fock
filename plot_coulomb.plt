plot "fort.33" u 1:6 w l title "coulomb", "" u 1:7 w l title "proj coulomb"
set term eps
set output "H_tz_coulomb.eps"
replot
