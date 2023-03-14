function [relax1,intensity1,relax2,intensity2,fitresult] = calc_relax_time_using_fit(t,y)
%20230214李蕾 通过读取的MPS数据或者仿真数据计算一维拟合的弛豫时间
%核心代码是matlab app生成的仿真代码

[fitresult, ~] = createFit(t,y);
%曲线拟合的结果使用了归一化的横坐标，所以需要缩放回去

relax1 = -var(t)^0.5/fitresult.b*1e6;
%计算出
intensity1 = fitresult.a/exp(fitresult.b*mean(mean(t))/var(t)^0.5);

relax2 = -var(t)^0.5/fitresult.d*1e6;
%计算出
intensity2 = fitresult.c/exp(fitresult.d*mean(mean(t))/var(t)^0.5);
end