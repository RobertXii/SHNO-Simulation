%% function: read ovf function
% reads from file 0 to file NN
function [data,A]= Read_Ovf(start,NN)
    data.bx = [];
    data.by = [];
    data.bz = [];
    data.time = [];
    
    for j = start:NN
        if mod(j,10) == 0
            disp(j);
        end
        number = int2str(j);
            
        name = strcat('p-',number,'.ovf');
        %name = 'm000002.ovf';
        
        fid=fopen(name,'r');

        for i=1:16
            c=fgets(fid);
        end
        c = fgets(fid);
        durTime = str2num(c(33:(end-2)));
        data.time = [data.time durTime];
        
        for i = 1:3
            c=fgets(fid);
        end
        
        c=fgets(fid);
        dim1 = str2num(c(11:end));
        c=fgets(fid);
        dim1y = str2num(c(11:end));
        c=fgets(fid);
        dim2 = str2num(c(11:end));
        data.dim = [dim1 dim1y dim2];

        c=fgets(fid);
        xcellsize = str2num(c(14:end));

        c=fgets(fid);
        ycellsize = str2num(c(14:end));

        c=fgets(fid);
        zcellsize = str2num(c(14:end));
        
        data.cellsize = [xcellsize ycellsize zcellsize];
        for i=1:2
            c=fgets(fid);
        end

        magic=fread(fid,1,'float32');
      %  whos magic
        
        a=fread(fid,dim1*dim1y*dim2*3,'float32');
      
        for i=1:2
            c=fgets(fid);
            if c == -1
                error('Error de Dimensiones');
                break
            end
        end
        fclose(fid);

        b=reshape(a,3,dim1*dim1y*dim2);
        bx=reshape(b(1,:),dim1,dim1y*dim2);
        by=reshape(b(2,:),dim1,dim1y*dim2);
        bz=reshape(b(3,:),dim1,dim1y*dim2);
        
        data.bx = [data.bx bz];
        data.by = [data.by by];
        data.bz = [data.bz bz];
        %plot(data.bx,data.by)


        clear a
        clear b
        
%         figure(1)
%         imagesc(data.bx);
%         waitforbuttonpress;
%         figure(2)
%         imagesc(data.by);
%         waitforbuttonpress;
%         figure(3)
%         A = imagesc(data.bz);
%         colorbar
%          waitforbuttonpress;
    A = 0;
    

        
    end
end

