x_check = load('checkx.mat');
t_check = load('checkt.mat');
for i=1:13
    %n = randi(length(t_check.cluster));
    %while t_check.cluster(n) ~= i
    %    n = randi(length(t_check.cluster));
    %end
    %spe = x_check.data(n);
    spe = sum(x_check.data(t_check.cluster==i,:));
    f = figure(i);
    im = imagesc(reshape(rescale(spe), [100,40]),[0,0.8]);
    im.CDataMapping = 'scaled';
    axis off
    drawnow
end