function [image]=dec(code)
[code_r,code_c]=size(code);
image_r=code(1);
image_c=code(2);
image=zeros(image_r,image_c);   %创建与原图像大小相同的零矩阵
image(:,:)=43;
% for j=1:64
%     for i=1:64
%         buffer(i,j)=code((j-1)*64+i+2);
%     end
% end

for i=1:10000
    buffer(1,i)=code(i+2);
end
% buffer(:)=code(3:64*64+2);

code_index=2+10001;
row_numalc=0;
% co_ind=1;
row_ind=10000;
for code_index=2+10000+1:2:code_c
    row_number=code(code_index);
    row_numalc=row_numalc+row_number;
    code_contain=code(code_index+1);
%     if(row_numalc<image_r/2)
%         image(row_ind+1:(row_ind+row_number),co_ind)=code_contain;
     image(row_ind+1:row_number)=code_contain;
     row_ind=row_ind+row_number;
end
image(1,1:10000)=buffer;
%     else
%         if (row_numalc==image_r/2)
%             image(row_ind+1:(row_ind+row_number),co_ind)=code_contain;
%             row_ind=0;
%             co_ind=co_ind+1;
%             row_numalc=0;
%         else
%             code_othrnum=row_numalc-image_r/2;
%             code_resnum=row_number-code_othrnum;
%             image(row_ind+1:(row_ind+code_resnum),co_ind)=code_contain;
%             co_ind=co_ind+1;
%             image(1:code_othrnum,co_ind)=code_contain;
%             row_ind=code_othrnum;
%             row_numalc=code_othrnum;
%         end
%     end
% end
% image(1,1:4096)=buffer;