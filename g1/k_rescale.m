function [ k_out ] = k_rescale( k )

k_max=max(max(k));
k_min=min(min(k));

k_out=(k-k_min)/(k_max-k_min);

end

