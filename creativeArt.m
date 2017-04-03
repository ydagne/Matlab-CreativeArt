function creativeArt()

    % Global variables
    N=40;
    M=12;
    W=300;
    dlta = 2:.7:5;
    colr = 'kyrwk';

    figure;
    hold off;

    for n = 1:N

        originX = randi(W,1);
        originY = randi(W,1);
        radus   = randi(M,1);

        if(randi(2,1)==1)
            plotFlower();
        else
            plotFilledCircles();
        end
    end

    set(gca, 'XTick',[], 'YTick',[]);
    axis off;


    function plotFilledCircles()

        tht= 0:.1:2*pi;
        fill(originX + radus*dlta(end)*cos(tht), originY + radus*dlta(end)*sin(tht), 'g');
        hold on;
        fill(originX + radus*dlta(end-2)*cos(tht), originY + radus*dlta(end-2)*sin(tht), 'w');
        fill(originX + radus*dlta(1)*cos(tht), originY + radus*dlta(1)*sin(tht), 'k');
    end

    function plotFlower()
        
        for k = length(dlta):-1:1

            tht= 0:dlta(k):60*pi;

            plot(originX + radus*dlta(k)*cos(tht) + ...
                1j*(originY + radus*dlta(k)*sin(tht)),...
                'color',colr(k), 'LineWidth',sqrt(dlta(k)));
            hold on;

        end
    end

end
