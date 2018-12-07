pic = zeros(144169, 1);
pics = 0;
pic1 = zeros(144169, 1);
pics1 = 0;
for i = 1:144169
    if X(i) > 5
        pic(pics+1, 1) = i;
        pics = pics + 1;
    else
        pic1(pics1+1, 1) = i;
        pics1 = pics1 + 1;
    end
end

fprintf('%d\n', pic(70000));
fprintf('%d\n', pics1);

dlmwrite('/Users/gomathiramalingam/good.txt', pic(1:pics, 1), 'delimiter', '\n', 'precision', 7);
dlmwrite('/Users/gomathiramalingam/bad.txt', pic1(1:pics1, 1), 'delimiter', '\n', 'precision', 7);