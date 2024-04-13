% Categorias
categorias('Habilitação').
categorias('Veículos').
categorias('Educação').

% Servicos
servico('Habilitação', ['Renovação da CNH, Emissão da segunda via da CNH']).
servico('Veículos', ['Licenciamento Anual (CRLV), Imposto sobre a Propriedade de Veículos Automotores (IPVA)']).
servico('Educação', ['Programas permanentes, Direção Segura.']).

informacao('Renovação da CNH', 'Para renovar sua CNH, você deve:

1. Confirmar os seus dados no site do DETRAN.
2. Agendar um exame toxicológico (Válido apenas para renovação de categorias C, D ou E).
3. Marcar um exame médico no site do DETRAN
4. Realizar a avaliação psicológica (Válido apenas para quem exerce atividade remunerada EAR).
5. Realizar O Pagamento de taxa ao DETRAN-SP em algum banco conveniado ou nas casas lotéricas.

Após completar essas etapas a sua CNH em versão digital será disponibilizada em um prazo de até 3 dias úteis.
Para a sua CNH física, ela será enviada para o seu endereço cadastrado em até 14 dias úteis.
Para mais informações sobre as etapas e acompanhamento do processo, acesse o site https://detran.sp.gov.br/wps/portal/portaldetran/cidadao/habilitacao/home').

informacao('Emissão da segunda via da CNH', 'Para emitir a segunda via de documentos você deve:

1. Confirmar os dados no site do DETRAN ou ir em uma unidade de atendimento com os documentos solicitados.
2. Realizar o pagamento de taxa ao DETRAN-SP em algum banco conveniado ou nas casas lotéricas.

Após completar essas etapas a sua CNH em versão digital será disponibilizada em um prazo de até 3 dias úteis.
Para a sua CNH física, ela será enviada para o seu endereço cadastrado em até 14 dias úteis.').

informacao('Licenciamento Anual (CRLV)', 'O licenciamento anual do veículo é realizado de forma online (CRLV-e).

Siga os passos abaixo para fazer a emissão do CRLV:
1. Acesse o site da secretaria da fazenda para fazer a consulta de débitos pendentes, como multas, taxa de licenciamento, pagamento de IPVA e DPVAT.
- Realize uma consulta no site do DETRAN se o seu veículo possui alguma restrição/bloqueio.

2. Pague a taxa de emissão do novo CRLV-e.
- Com o número Renavam do veículo em mãos, vá até um dos bancos conveniados ou em uma casa lotérica para realizar o pagamento da taxa.

3. Emissão digital do documento.
- 24 horas após o pagamento do licenciamento, DPVAT e eventuais débitos, você poderá ter acesso ao documento por meio de download no portal do DETRAN ou pelo aplicativo CDT - Carteira Digital de Trânsito').

informacao('Imposto sobre a Propriedade de Veículos Automotores (IPVA)', 'A Secretaria da Fazenda é responsável pela arrecadação do IPVA, para mais informações acesse: https://portal.fazenda.sp.gov.br/servicos/ipva').

informacao('Programas permanentes', 'As atividades propostas em cada programa educacional do DETRAN-SP oferece oferece iniciativas e campanhas educativas para que os participanetes adotem comportamentos seguros e orientam os participantes, sejam eles crianças ou adultos, a se posicionarem de maneira crítica, responsável e construtiva nas diferentes situações sociais que envolvem o contexto do trânsito.

O DETRAN oferece os seguintes programas educacionais:

1. Clube do Bem-te-vi (Parceria com a Polícia Militar do Estado de São Paulo)
- Programa direcionado a crianças do ensino fundamental.

2. Cidadania em Movimento (Parceria com a Fundação Grupo Volkswagen)
- Programa possui diversas formações e palestras, essas têm o seu público-alvo específico.

3. Criança Segura no Trânsito (Parceria com a Organização Criança Segura)
- Programa dedicado a crianças e adolescentes até 14 anos de idade.

4. Educação Viária é Vital (Parceria com FUNDACION MAPFRE)
- Programa direcionado a alunos, familiares e profissionais de educação das escolas públicas municipais de Ensino Fundamental.

5. Na Medida (Parceria com a PERNOD RICARD BRASIL)
- Programa direcionado a alunos matriculados na rede pública de ensino (Estadual e Municipal) dos Anos Finais do Ensino Fundamental e do Ensino Médio e/ou Técnico.

Para saber sobre outras notícias relacionadas aos programas do DETRAN, acesse o site: https://www.detran.sp.gov.br/wps/portal/portaldetran/cidadao/educacao/fichaservico/clubeBemTeVi').

informacao('Direção Segura', 'A Operação Direção Segura (atualmente sob o Decreto 58.881/2013) consiste em uma das ações instituídas pela Secretaria de Planejamento e Desenvolvimento Regional, a partir do Decreto 61.442/2015, o qual criou o Comitê Paulista de Ações para a Segurança Viária, com o objetivo de identificar, propor, coordenar, implementar e executar medidas e ações que visam ao trânsito seguro no Estado de São Paulo.

Sob a coordenação do DETRAN-SP, ações de Educação para o Trânsito e de Fiscalização, preconizadas pela ODS, constituem-se em um conjunto de alternativas para a redução de acidentes de trânsito provocados pela ingestão de álcool.

A ODS é organizada pelos seguintes entes públicos:

Abordagem Conceitual

1. DETRAN-SP (Coordenadoria Estadual de Direção Segura);

2. Polícia Militar;

3. Polícia Civil;

4. Polícia Técnico-Científica.

Cada um dos entes públicos envolvidos organiza equipes de trabalho, as quais desenvolvem papéis específicos e complementares que permitem a execução correta de todas as etapas que envolvem a ODS.

Funcionamento da Operação

1. Sendo registrado o índice de alcoolemia até 0,33mg/L no bafômetro, o condutor será multado, terá a CNH apreendida e veículo retido. Posteriormente, será instaurado processo de suspensão de 1 ano de validade de sua CNH.

2. Sendo registrado o índice de alcoolemia a partir de 0,34mg/L (inclusive) no bafômetro, aplica-se todos os procedimentos anteriores e está configurado crime de trânsito (art. 306 CTB). Na recusa, se for elaborado laudo médico positivo de embriaguez, o condutor será preso em flagrante pela autoridade policial, sendo fixado valor de fiança.').

% Regras
opcoes_categorias :-
    write('Aqui estão as categorias disponíveis:'), nl,
    forall(categorias(Categoria), format('~w~n', [Categoria])).

opcoes_servicos(Categoria) :-
    categorias(Categoria),
    servico(Categoria, Servicos),
    write('Aqui estão os serviçoss disponíveis para a categoria '), write(Categoria), write(':'), nl,
    forall(member(Servico, Servicos), format('~w~n', [Servico])),
    write('Para saber mais sobre, digite o nome do serviço abaixo: '), nl.

informacoes_servico(Servico) :-
    informacao(Servico, Informacao),
    format('Aqui está a informação que encontrei sobre ~w: ~n~w~n', [Servico, Informacao]).

% Interface simples de chat
chat :-
    write('Olá, bem vindo ao chatbot do DETRAN-SP, como posso ajudar? (Digite sair para encerrar)'), nl,
    opcoes_categorias,
    read(Categoria),
    ( Categoria = 'Habilitação' ->
        opcoes_servicos(Categoria),
        read(Servico),
        informacoes_servico(Servico)
    ; Categoria = 'Veículos' ->
        opcoes_servicos(Categoria),
        read(Servico),
        informacoes_servico(Servico)
    ; Categoria = 'Educação' ->
        opcoes_servicos(Categoria),
        read(Servico),
        informacoes_servico(Servico)
    ; Categoria = sair ->
        write('Até mais!'), nl, !, fail
    ;   write('Desculpe, não tenho informações sobre isso.'), nl,
        fail
    ).
