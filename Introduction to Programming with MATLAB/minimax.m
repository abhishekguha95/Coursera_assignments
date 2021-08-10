function [mmr,mmm] = minimax(M)
MT = M';
mmr = [max(MT) - min(MT)];
mmm = [max(M(:))- min(M(:))];
end