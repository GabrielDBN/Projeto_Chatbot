% Fatos
servico(renovacao_cnh).
servico(licenciamento_anual).
servico(segunda_via_documento).

informacao(renovacao_cnh, "Para renovar sua CNH, voc� deve agendar um exame m�dico, pagar a taxa de renova��o e entregar os documentos necess�rios no posto do DETRAN.").
informacao(licenciamento_anual, "O licenciamento anual do ve�culo pode ser realizado online atrav�s do site do DETRAN ou presencialmente, ap�s o pagamento da taxa de licenciamento.").
informacao(segunda_via_documento, "Para emitir a segunda via de documentos, � necess�rio pagar a taxa correspondente e solicitar a emiss�o no site do DETRAN ou presencialmente.").

% Regras
perguntar(Servico) :-
    servico(Servico),
    informacao(Servico, Informacao),
    format('Sobre o servi�o ~w, aqui est� o que encontrei: ~n~w~n', [Servico, Informacao]).

% Interface simples de chat
chat :-
    write('Ol�, como posso ajudar? (Digite sair para encerrar)'), nl,
    repeat,
    read(Input),
    ( Input = sair ->
        write('At� mais!'), nl, !, fail;
        ( perguntar(Input) ->
            true;
            write('Desculpe, n�o tenho informa��es sobre isso.'), nl
        ),
        fail
    ).
