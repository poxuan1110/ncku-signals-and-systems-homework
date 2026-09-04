num = [2 5];
den = [1 5 6]; 
sys = tf(num, den);

fprintf('=== 系統分析結果 ===\n\n');


[r_h, p_h, k_h] = residue(num, den);

fprintf('1. 脈衝響應數學式:\n');
h_str = '   h(t) = ( ';
for i = 1:length(r_h)
    val = r_h(i);
    pole = p_h(i);
    

    if i == 1
        sign_str = ''; if val < 0, sign_str = '-'; end
    else
        if val >= 0, sign_str = ' + '; else, sign_str = ' - '; end
    end
    
    h_str = [h_str, sprintf('%s%.3f*e^(%.1ft)', sign_str, abs(val), pole)];
end
h_str = [h_str, ' ) * u(t)'];
disp(h_str);


[r_y, p_y, k_y] = residue(num, [den 0]);

fprintf('\n2. 階躍響應數學式:\n');
y_str = '   y(t) = ( ';

[~, idx] = sort(abs(p_y));
r_y = r_y(idx);
p_y = p_y(idx);

for i = 1:length(r_y)
    val = r_y(i);
    pole = p_y(i);
    
    if i == 1
        sign_str = ''; if val < 0, sign_str = '-'; end
    else
        if val >= 0, sign_str = ' + '; else, sign_str = ' - '; end
    end
    
    if abs(pole) < 1e-10
        y_str = [y_str, sprintf('%s%.3f', sign_str, abs(val))];
    else
        y_str = [y_str, sprintf('%s%.3f*e^(%.1ft)', sign_str, abs(val), pole)];
    end
end
y_str = [y_str, ' ) * u(t)'];
disp(y_str);



% 繪製 Impulse Response
subplot(2,1,1);
impulse(sys, 0:0.1:10);
grid on;
title('Impulse Response');


% 繪製 Step Response
subplot(2,1,2);
step(sys, 0:0.1:10);
grid on;
title('Step Response');

