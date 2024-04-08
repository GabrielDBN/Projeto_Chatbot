% Fatos
servico(renovacao_cnh).
servico(licenciamento_anual).
servico(segunda_via_documento).

informacao(renovacao_cnh, "Para renovar sua CNH, você deve agendar um exame médico, pagar a taxa de renovação e entregar os documentos necessários no posto do DETRAN.").
informacao(licenciamento_anual, "O licenciamento anual do veículo pode ser realizado online através do site do DETRAN ou presencialmente, após o pagamento da taxa de licenciamento.").
informacao(segunda_via_documento, "Para emitir a segunda via de documentos, é necessário pagar a taxa correspondente e solicitar a emissão no site do DETRAN ou presencialmente.").

% Regras
perguntar(Servico) :-
    servico(Servico),
    informacao(Servico, Informacao),
    format('Sobre o serviço ~w, aqui está o que encontrei: ~n~w~n', [Servico, Informacao]).

% Interface simples de chat
chat :-
    write('Olá, como posso ajudar? (Digite sair para encerrar)'), nl,
    repeat,
    read(Input),
    ( Input = sair ->
        write('Até mais!'), nl, !, fail;
        ( perguntar(Input) ->
            true;
            write('Desculpe, não tenho informações sobre isso.'), nl
        ),
        fail
    ).
