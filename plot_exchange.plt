plot "fort.33" u 1:8 w l title "exchange", "" u 1:9 w l title "proj exchange"
set term eps
set output "H_tz_exchange.eps"
replot
