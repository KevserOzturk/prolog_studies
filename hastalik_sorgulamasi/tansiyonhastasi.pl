tansiyon(kevser,12).
ates(kevser,34).
midebulantisi(kevser).
%kevserin mide bulantısı olduğunu belirttik
%kevserinin baş dönmesi olmadığı için belirtmeye gerek yok

tansiyon(hatice,15).
ates(hatice,35).
midebulantisi(hatice).

tansiyon(sefa,16).
ates(sefa,39).
basdonmesi(sefa).

tansiyon(firdevs,18).
ates(firdevs,40).
midebulantisi(firdevs).
basdonmesi(firdevs).




%türkçe karakter kullanmıyoruz, hata veriyor prolog

%buradaki tansiyon,ates, midebulantisi, basdönmesi birer fact'tir
%ahmet, mehmet, hilmi, mazhar ve diğer 12,15,16,18, var ,yok ,34,35,39,40 bunlar arity'dir

%tablodaki fact'ler bitti, artık rules'ları oluşturacağız
%değişkenler büyük harfle yazılır, bu yüzden x büyük yazıldı

yuksektansiyon(X) :- tansiyon(X,Y) , Y>13.

yuksekates(Z) :- ates(Z,Q), Q>37.

xhastası(A) :- yuksekates(A),midebulantisi(A).

yhastası(B) :- yuksektansiyon(B), xhastası(B).

zhastası(C) :-  basdonmesi(C), yhastası(C).






 