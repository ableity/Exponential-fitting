function [relax,intensity,fitresult1D] = calc_relax_time_using_fit1D(t,y)
%20230310修改了强度
% 输出的曲线应该是intensity*exp(-t/relax)

%20230214李蕾 通过读取的MPS数据或者仿真数据计算一维拟合的弛豫时间
%核心代码是matlab app生成的仿真代码

[fitresult1D, ~] = createFit1D(t,y);
%曲线拟合的结果使用了归一化的横坐标，所以需要缩放回去
relax = -var(t)^0.5/fitresult1D.b*1e6;
%计算出
intensity = fitresult1D.a/exp(fitresult1D.b*mean(mean(t))/var(t)^0.5);



end