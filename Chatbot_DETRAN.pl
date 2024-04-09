% Categorias
categorias('Habilita��o').
categorias('Ve�culos').
categorias('Educa��o').

% Servi�os
servico('Habilita��o', 'Renova��o da CNH ou Emiss�o da Segunda via da CNH').
servico('Ve�culos', 'Licenciamento Anual (CRLV) ou Imposto sobre a Propriedade de Ve�culos Automotores (IPVA)').
servicos('Educa��o', 'Programas Permanentes ou Dire��o Segura.').

informacao('Renova��o da CNH', "Para renovar sua CNH, voc� deve:
1. Confirmar os seus dados no site do DETRAN.
2. Agendar um exame toxicol�gico (V�lido apenas para renova��o de categorias C, D ou E).
3. Marcar um exame m�dico no site do DETRAN
4. Realizar a avalia��o psicol�gica (V�lido apenas para quem exerce atividade remunerada EAR).
5. pagar a taxa de renova��o e entregar os documentos necess�rio no posto do DETRAN.").
informacao('Emiss�o da segunda via da CNH', "Para emitir a segunda via de documentos, � necess�rio pagar a taxa correspondente e solicitar a emiss�o no site do DETRAN ou presencialmente.").
informacao('Licenciamento Anual (CRLV)', "O licenciamento anual do ve�culo pode ser realizado online atrav�s do site do DETRAN ou presencialmente, ap�s o pagamento da taxa de licenciamento.").
informacao('Imposto sobre a Propriedade de Ve�culos Automotores (IPVA)', "Para emitir a segunda via de documentos, � necess�rio pagar a taxa correspondente e solicitar a emiss�o no site do DETRAN, presencialmente.").
informacao('Programas Permanentes', "As atividades propostas em cada programa educacional do DETRAN-SP oferece oferece iniciativas e campanhas educativas para que os participanetes adotem comportamentos seguros e orientam os participantes, sejam eles crian�as ou adultos, a se posicionarem de maneira cr�tica, respons�vel e construtiva nas diferentes situa��es sociais que envolvem o contexto do tr�nsito.

O DETRAN oferece os seguintes programas educacionais:

1. Clube do Bem-te-vi (Parceria com a Pol�cia Militar do Estado de S�o Paulo)
- Programa direcionado a crian�as do ensino fundamental.

2. Cidadania em Movimento (Parceria com a Funda��o Grupo Volkswagen)
- Programa direcionado a educadores.

3. Crian�a Segura no Tr�nsito (Parceria com a Organiza��o Crian�a Segura)
- Programa dedicado a crian�as e adolecentes at� 14 anos de idade.

4. Educa��o Vi�ria � Vital (Parceria com FUNDACI�N MAPFRE)
- Programa direcionado a alunos, familiares e profissionais de educa��o das escolas p�blicas municipais de Ensino Fundamental.

5. Na Medida (Parceria com a PERNOD RICARD BRASIL)
- Programa direcionado a alunos matriculados na rede p�blica de ensino (Estadual e Municipal) dos Anos Finais do Ensino Fundamental e do Ensino M�dio e/ou T�cnico.

Para saber sobre outras not�cias relacionadas aos programas do DETRAN, acesse o site: https://www.detran.sp.gov.br/wps/portal/portaldetran/cidadao/educacao/fichaservico/clubeBemTeVi").
informacao('Dire��o Segura', "A Opera��o Dire��o Segura (atualmente sob o Decreto 58.881/2013) consiste em uma das a��es institu�das pela Secretaria de Planejamento e Desenvolvimento Regional, a partir do Decreto 61.442/2015, o qual criou o Comit� Paulista de A��es para a Seguran�a Vi�ria, com o objetivo de identificar, propor, coordenar, implementar e executar medidas e a��es que visam ao tr�nsito seguro no Estado de S�o Paulo.

Sob a coordena��o do DETRAN-SP, a��es de Educa��o para o Tr�nsito e de Fiscaliza��o, preconizadas pela ODS, constituem-se em um conjunto de alternativas para a redu��o de acidentes de tr�nsito provocados pela ingest�o de �lcool.

A ODS � organizada pelos seguintes entes p�blicos:

Abordagem Conceitual

1. DETRAN-SP (Coordenadoria Estadual de Dire��o Segura);

2. Policia Militar;

3. Pol�cia Civil;

4. Pol�cia T�cnico-Cient�fica.

Cada um dos entes p�blicos envolvidos organiza equipes de trabalho, as quais desenvolvem pap�is espec�ficos e complementares que permitem a execu��o correta de todas as etapas que envolvem a ODS.

Funcionamento da Opera��o

1. Sendo registrado o �ndice de alcoolemia at� 0,33mg/L no baf�metro, o condutor ser� multado, ter� a CNH apreendida e ve�culo retido. Posteriormente, ser� instaurado processo de suspens�o de 1 ano de validade de sua CNH.

2. Sendo registrado o �ndice de alcoolemia a partir de 0,34mg/ L (inclusive) no baf�metro aplica-se todos os procedimentos anteriores e est� configurado crime de tr�nsito (art. 306 CTB). Na recusa, se for elaborado laudo m�dico positivo de embriaguez, o condutor ser� preso em flagrante pela autoridade policial, sendo fixado valor de fian�a.").

% Regras
perguntar(Servico) :-
    servico(Servico),
    informacao(Servico, Informacao),
    format('Sobre o servi�o ~w, aqui est� o que encontrei: ~n~w~n', [Servico, Informacao]).

% Interface simples de chat
chat :-
    write('Ol�, Este � o chatbot do DETRAN como posso ajudar? (Digite sair para encerrar)'), nl,
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
