const RType <- typeobject RType
  operation replicate[X : t, N : Integer]
    forall t
    suchthat
      t *> typeobject ot
        op clone -> [result : t]
    end ot
end RType

% const RObj : RType <- object RObj
%   operation replicate[X : t, N : Integer]
%     forall t
%     suchthat
%       t *> typeobject ot
%         op clone -> [result : t]
%     end ot
%     for i : Integer <- 0 while i < N by i <- i + 1
%       stdout.putstring[
%     end for
%   end replicate
% end RObj
% 
% const main <- class main
%   initially
%     RObj.replicate[5, 3]
%   end initially
% end main
