x_check = load('checkx.mat');
t_check = load('checkt.mat');
while true
    num = input('< ');
    disp(strcat(string(num), ' ->  ', char(t_check.cluster(num)+96)))
    spe = x_check.data(num,:);
    f = figure(9);
    im = imagesc(reshape(rescale(spe), [100,40]),[0,0.8]);
    im.CDataMapping = 'scaled';
    axis off
    drawnow
end