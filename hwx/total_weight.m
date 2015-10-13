function [tw, tv] = total_weight(vol, wd)
tv = sum(vol);
tw = vol*wd';
end