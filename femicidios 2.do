
*modelo 1

xtreg tasa_femicidios i.ley##c.tendencia,  re vce(cluster codprov)

outreg2 using femicidios.doc, replace ctitle(Femicidios) drop( )

interactplot, byplot cme bars(10) subplot(hist) level(95) scheme(s1mono)



*modelo 2

xtreg tasa_femicidios i.ley##c.tendencia tasa_asesinatos,  re vce(cluster codprov)

outreg2 using femicidios.doc, append ctitle(Femicidios) drop( )

*modelo 3

xtreg tasa_femicidios i.ley##c.tendencia tasa_asesinatos lnpoblacion rural pobindig sierra amazonia,  re vce(cluster codprov)

outreg2 using femicidios.doc, append ctitle(Femicidios) drop( )


*modelo 4

xtreg tasa_femicidios i.ley##c.tendencia tasa_asesinatos lnpoblacion rural pobindig sierra amazonia pobrezacenso,  re vce(cluster codprov)
xttest0 



outreg2 using femicidios.doc, append ctitle(Femicidios) drop( )

interactplot, byplot cme bars(10) subplot(hist) level(95) scheme(s1mono)
