function [fitresult, gof] = createFit1D(t, u1)
%CREATEFIT1(T,U1)
%  创建一个拟合。
%
%  要进行 '无标题拟合 1' 拟合的数据:
%      X 输入: t
%      Y 输出: u1
%  输出:
%      fitresult: 表示拟合的拟合对象。
%      gof: 带有拟合优度信息的结构体。
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 13-Feb-2023 14:55:52 自动生成


%% 拟合: '无标题拟合 1'。
[xData, yData] = prepareCurveData( t, u1 );

% 设置 fittype 和选项。
ft = fittype( 'exp1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Normalize = 'on';
opts.StartPoint = [8.01733673045534e-07 -5.51955692415723];

% 对数据进行模型拟合。
[fitresult, gof] = fit( xData, yData, ft, opts );




