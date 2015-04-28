note
	description: "Summary description for {CONFIGURAZIONE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CONFIGURAZIONE

create
	make_with_condition

feature --creazione

	make_with_condition (lo_stato_iniziale: STATO; le_condizioni: HASH_TABLE [BOOLEAN, STRING])
		do
			stato_corrente:= lo_stato_iniziale
			condizioni := le_condizioni
		ensure
			condizioni_settate: condizioni = le_condizioni
		end

feature --attributi

	stato_corrente: STATO

	condizioni: HASH_TABLE [BOOLEAN, STRING]

feature --routines

	set_stato_corrente (uno_stato: STATO)
		require
			stato_corrente_not_void: stato_corrente /= Void
		do
			stato_corrente := uno_stato
		end

	chiusura
		do
		end

end
