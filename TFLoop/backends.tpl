%{for addr in ip_addr ~}
backend ${addr}:${port}
%{endfor ~}
