% Categorias
categorias('Habilitacao').
categorias('Veiculos').
categorias('Educacao').

% Servicos
servico('Habilitacao', ['Renovacao da CNH, Emissao da segunda via da CNH']).
servico('Veiculos', ['Licenciamento Anual (CRLV), Imposto sobre a Propriedade de Veiculos Automotores (IPVA)']).
servico('Educacao', ['Programas permanentes, Direcao Segura.']).

informacao('Renovacao da CNH', 'Para renovar sua CNH, voce deve:

1. Confirmar os seus dados no site do DETRAN.
2. Agendar um exame toxicologico (Valido apenas para renovacao de categorias C, D ou E).
3. Marcar um exame medico no site do DETRAN
4. Realizar a avaliacao psicologica (Valido apenas para quem exerce atividade remunerada EAR).
5. Realizar O Pagamento de taxa ao DETRAN-SP em algum banco conveniado ou nas casas lotericas.

Apos completar essas etapas a sua CNH em versao digital sera disponibilizada em um prazo de ate 3 dias dteis.
Para a sua CNH fisica, ela sera enviada para o seu endereco cadastrado em ate 14 dias uteis.
Para mais informacoes sobre as etapas e acompanhamento do processo, acesse o site https://detran.sp.gov.br/wps/portal/portaldetran/cidadao/habilitacao/home').

informacao('Emissao da segunda via da CNH', 'Para emitir a segunda via de documentos voce deve:

1. Confirmar os dados no site do DETRAN ou ir em uma unidade de atendimento com os documentos solicitados.
2. Realizar o pagamento de taxa ao DETRAN-SP em algum banco conveniado ou nas casas lotericas.

Apos completar essas etapas a sua CNH em versao digital sera disponibilizada em um prazo de ate 3 dias uteis.
Para a sua CNH fisica, ela sera enviada para o seu endereco cadastrado em ate 14 dias uteis.').

informacao('Licenciamento Anual (CRLV)', 'O licenciamento anual do veiculo e realizado de forma online (CRLV-e).

Siga os passos abaixo para fazer a emissao do CRLV:
1. Acesse o site da secretaria da fazenda para fazer a consulta de debitos pendentes, como multas, taxa de licenciamento, pagamento de IPVA e DPVAT.
- Realize uma consulta no site do DETRAN se o seu veiculo possui alguma restricaoo/bloqueio.

2. Pague a taxa de emissao do novo CRLV-e.
- Com o numero Renavam do veiculo em maos, va ate um dos bancos conveniados ou em uma casa loterica para realizar o pagamento da taxa

3. Emissao digital do documento.
- 24 horas apos o pagamento do licenciamento, DPVAT e eventuais debitos, voce podera ter acesso ao documento por meio de download no portal do DETRAN ou pelo aplicativo CDT - Carteira Digital de Transito').

informacao('Imposto sobre a Propriedade de Veiculos Automotores (IPVA)', 'A Secretaria da Fazenda e responsavel pela arrecadacao do IPVA, para mais informacoes acesse: https://portal.fazenda.sp.gov.br/servicos/ipva').

informacao('Programas permanentes', 'As atividades propostas em cada programa educacional do DETRAN-SP oferece oferece iniciativas e campanhas educativas para que os participanetes adotem comportamentos seguros e orientam os participantes, sejam eles criancas ou adultos, a se posicionarem de maneira critica, responsavel e construtiva nas diferentes situacoes sociais que envolvem o contexto do transito.

O DETRAN oferece os seguintes programas educacionais:

1. Clube do Bem-te-vi (Parceria com a Policia Militar do Estado de Sao Paulo)
- Programa direcionado a criancas do ensino fundamental.

2. Cidadania em Movimento (Parceria com a Fundacao Grupo Volkswagen)
- Programa possui diversas formacoes e palestras, essas tem o seu publico-alvo especifico.

3. Crianca Segura no Transito (Parceria com a Organizacao Crianca Segura)
- Programa dedicado a criancas e adolecentes ate 14 anos de idade.

4. Educacao Viaria e Vital (Parceria com FUNDACION MAPFRE)
- Programa direcionado a alunos, familiares e profissionais de educacao das escolas publicas municipais de Ensino Fundamental.

5. Na Medida (Parceria com a PERNOD RICARD BRASIL)
- Programa direcionado a alunos matriculados na rede publica de ensino (Estadual e Municipal) dos Anos Finais do Ensino Fundamental e do Ensino Medio e/ou Tecnico.

Para saber sobre outras noticias relacionadas aos programas do DETRAN, acesse o site: https://www.detran.sp.gov.br/wps/portal/portaldetran/cidadao/educacao/fichaservico/clubeBemTeVi').

informacao('Direcao Segura', 'A Operacao Direcao Segura (atualmente sob o Decreto 58.881/2013) consiste em uma das acoes instituidas pela Secretaria de Planejamento e Desenvolvimento Regional, a partir do Decreto 61.442/2015, o qual criou o Comite Paulista de Acoes para a Seguranca Viaria, com o objetivo de identificar, propor, coordenar, implementar e executar medidas e acoes que visam ao transito seguro no Estado de Sao Paulo.

Sob a coordenacao do DETRAN-SP, acoes de Educacao para o Transito e de Fiscalizacao, preconizadas pela ODS, constituem-se em um conjunto de alternativas para a reducao de acidentes de transito provocados pela ingestao de alcool.

A ODS e organizada pelos seguintes entes publicos:

Abordagem Conceitual

1. DETRAN-SP (Coordenadoria Estadual de Direcao Segura);

2. Policia Militar;

3. Policia Civil;

4. Policia Tecnico-Cientifica.

Cada um dos entes publicos envolvidos organiza equipes de trabalho, as quais desenvolvem papeis especificos e complementares que permitem a execucao correta de todas as etapas que envolvem a ODS.

Funcionamento da Operacao

1. Sendo registrado o indice de alcoolemia ate 0,33mg/L no bafometro, o condutor sera multado, tera a CNH apreendida e veiculo retido. Posteriormente, sera instaurado processo de suspensao de 1 ano de validade de sua CNH.

2. Sendo registrado o indice de alcoolemia a partir de 0,34mg/ L (inclusive) no bafometro aplica-se todos os procedimentos anteriores e esta configurado crime de transito (art. 306 CTB). Na recusa, se for elaborado laudo medico positivo de embriaguez, o condutor sera preso em flagrante pela autoridade policial, sendo fixado valor de fianca.').

% Regras
opcoes_categorias :-
    write('Aqui estao as categorias disponiveis:'), nl,
    forall(categorias(Categoria), format('~w~n', [Categoria])).

opcoes_servicos(Categoria) :-
    categorias(Categoria),
    servico(Categoria, Servicos),
    write('Aqui estao os servicos disponiveis para a categoria '), write(Categoria), write(':'), nl,
    forall(member(Servico, Servicos), format('~w~n', [Servico])).

informacoes_servico(Servico) :-
    informacao(Servico, Informacao),
    format('Aqui esta a informacao que encontrei sobre ~w: ~n~w~n', [Servico, Informacao]).

% Interface simples de chat
chat :-
    write('Ola, como posso ajudar? (Digite sair para encerrar)'), nl,
    opcoes_categorias,
    repeat,
    read(Input),
    ( Input = sair ->
        write('Ate mais!'), nl, !, fail;
    ).