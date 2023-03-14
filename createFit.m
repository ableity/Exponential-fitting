function [fitresult, gof] = createFit(x, line)
%CREATEFIT(X,LINE)
%  创建一个拟合。
%
%  要进行 '无标题拟合 1' 拟合的数据:
%      X 输入: x
%      Y 输出: line
%  输出:
%      fitresult: 表示拟合的拟合对象。
%      gof: 带有拟合优度信息的结构体。
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 13-Feb-2023 09:04:31 自动生成


%% 拟合: '无标题拟合 1'。
[xData, yData] = prepareCurveData( x, line );

% 设置 fittype 和选项。
ft = fittype( 'exp2' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Normalize = 'on';
opts.Robust = 'LAR';
opts.StartPoint = [0.000516645492152897 -3.01315562808664 0.00227910465513665 -1.38580318129394];

% 对数据进行模型拟合。
[fitresult, gof] = fit( xData, yData, ft, opts );

% % 为绘图创建一个图窗。
% figure( 'Name', '无标题拟合 1' );
% 
% % 绘制数据拟合图。
% subplot( 2, 1, 1 );
% h = plot( fitresult, xData, yData, 'predobs', 0.9 );
% legend( h, 'line vs. x', '无标题拟合 1', '下界(无标题拟合 1)', '上界(无标题拟合 1)', 'Location', 'NorthEast', 'Interpreter', 'none' );
% % 为坐标区加标签
% xlabel( 'x', 'Interpreter', 'none' );
% ylabel( 'line', 'Interpreter', 'none' );
% grid on
% 
% % 绘制残差图。
% subplot( 2, 1, 2 );
% h = plot( fitresult, xData, yData, 'residuals' );
% legend( h, '无标题拟合 1 - 残差', 'Zero Line', 'Location', 'NorthEast', 'Interpreter', 'none' );
% % 为坐标区加标签
% xlabel( 'x', 'Interpreter', 'none' );
% ylabel( 'line', 'Interpreter', 'none' );
% grid on


