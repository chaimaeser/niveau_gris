function niveau_gris(im)
    im = imread(im);
    [n,m,p] = size(im);
    im2 = zeros(n,m,3);
    for i=1:n
        for j=1:m
            im2(i,j,1) = floor(0.299*im(i,j,1)+0.587*im(i,j,2)+0.114*im(i,j,3));
            im2(i,j,2) = floor(0.299*im(i,j,1)+0.587*im(i,j,2)+0.114*im(i,j,3));
            im2(i,j,3) = floor(0.299*im(i,j,1)+0.587*im(i,j,2)+0.114*im(i,j,3));
        end
    end
end
figure;imshow(im);
im2=united8(im)
title('image originale')
figure;imshow(im2);
title('image grise')
imwrite(im2,'image.jpeg');