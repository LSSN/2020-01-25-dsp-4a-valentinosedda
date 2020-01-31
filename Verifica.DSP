import("stdfaust.lib");
order = 8;
freq = 7560;
process= no.noise : fi.lowpass(order,freq) : fi.highpass(order,freq);
// La sintesi sotrattiva è un processo di sintesi, questo processo di sintesi è volto alla creazione di un 
// suono dovuto dalla semplificazione di un suono complesso a uno semplice.
// Il filtro passaalto attenua le frequenze basse mentre il filtro passabasso attenua le frequenze alte:
// nell'applicazione di un filtro ad un ordine maggiore corrisponde una pendenza più ripida del suono che viene 
// rappresentato nello spettroscopio. 
// Un suono viene definito un rumore quando all'interno di esso non sono presenti le caratteristiche descrittive
// di ess.
// RANDMAX è il primo generarore di numeri ed è inoltre un numero casuale chiamato dal software faust in base 
// alla frequenza di campionamento.
// La larghezza del filtro applicato ad un suono varia in base all'ordine, se l'ordine ha un coefficiente alto la 
// banda diminuisce mentre se l'ordine ha un coefficiente basso la banda aumenta.
