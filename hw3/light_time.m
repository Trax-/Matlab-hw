function [row1, row2] = light_time(distance_miles)
speed_of_light_kms = 300000;
mile_km = 1.609;
row2 = distance_miles * mile_km;
row1 = row2 / speed_of_light_kms / 60;