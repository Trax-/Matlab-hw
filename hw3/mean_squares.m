function mm = mean_squares(nn)
mm = sum([nn:-1:1].^2) / nn;