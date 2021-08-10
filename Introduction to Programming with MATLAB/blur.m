function out = blur(img,w)
    % convertig to double 
    imgD = double(img);
    [r, c] = size(img);
    out = zeros(r, c);
    for i = 1:r
        for j = 1:c
            % Getting the indices for submatrix
            r1 = i-w;
            r2 = i+w;
            c1 = j-w;
            c2 = j+w;
            % Set to limits to indices
            if r1 < 1
                r1 = 1;
            end
            if r2 > r
                r2 = r;
            end
            if c1 < 1
                c1 = 1;
            end
            if c2 > c
                c2 = c;
            end
            % Take mean of the submatrix and assign to the output pixel
            m = imgD(r1:r2, c1:c2);
            out(i,j) = mean(m(:));
        end
    end
    % convert back to uint8
    out = uint8(out);
end