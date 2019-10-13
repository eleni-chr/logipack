function out = logipack(m)

% The function takes a square logical matrix as input and returns a cell
% array of n elements where the kth element corresponds to the kth row of
% the matrix. Each element of the cell array is a row vector of positive
% integers in increasing order representing the column indexes of the
% logical true values in the given row of the matrix. All other elements in
% the given row of the logical matrix are false. Note that empty array
% elements of the cell array corresponding to rows with all false values
% have a size of 0x0.

s=size(m);
out=cell(1,s(1));
for r=1:s(2)
    logicals=m(r,:)==0;
    if sum(logicals)==s(2)
        out{1,r}=[];
    else
        for c=1:s(2)
            if m(r,c)==1
                out{1,r}=[out{1,r},c];
            end
        end
    end
end
end