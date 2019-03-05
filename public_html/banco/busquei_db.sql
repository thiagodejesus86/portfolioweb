-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02-Out-2018 às 22:51
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busquei_db`
--CREATE DATABASE IF NOT EXISTS busquei_db
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `comentario` text NOT NULL,
  `comentario_user` varchar(150) NOT NULL,
  `data_comentario` DATETIME,
  `id_news` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `comentario`, `comentario_user`, `data_comentario`, `id_news`) VALUES
(1, 'Muito bom esse site. Já estou viciado.\n', 'thiago.jesus', '2018-10-02 13:34:51', 9),
(2, 'Muito obrigado pelo comentário, ficamos muito felizes em poder colaborar com nossos usua´rios', 'admin', '2018-10-02 13:36:15', 9),
(3, 'O cara é fera. Parabéns.', 'herick.souza', '2018-10-02 15:19:35', 9),
(4, 'Olá meus amigos, sejam bem vindos ao nosso mais novo projeto. Trata-se de um projeto voltado para aprendizagem e desenvolvimento pessoal, porém não quer dizer que não possa se tornar algo comercial.\nEspero que vocês possam aproveitar o máximo que puderem.\n\nAgradeço a todos que utilizam e testam nosso projeto.\n\nMuito obrigado.', 'admin', '2018-10-02 15:33:18', 8),
(5, 'O incrível sistema simples.', 'admin', '2018-10-02 15:50:07', 9),
(6, 'Deus seja louvado por sua vida pastor Bergamin.', 'admin', '2018-10-02 16:22:14', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `news`
--

CREATE TABLE `news` (
  `id` int(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `titulo` text NOT NULL,
  `subtitulo` text NOT NULL,
  `texto` text NOT NULL,
  `creditos` text NOT NULL,
  `imagem` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `news`
--

INSERT INTO `news` (`id`, `titulo`, `subtitulo`, `texto`, `creditos`, `imagem`, `data`) VALUES
(1, 'Inauguração do Portal OBPC - Cotia', 'Inauguração do Portal OBPC - Cotia', 'Olá! Seja bem vindo ao nosso portal, um aplicativo desenvolvido com o intuito de trazer a você notícias concernentes ao ministério e também trazer interatividade.\nAqui você encontra a agenda anual, informações sobre os ministérios, etc...\n', 'Thiago de Jesus', 'IGREJA-OBPC.jpg', '2018-05-04 23:46:01'),
(2, 'Conheça nossa Sede - Jd. João XXIII', 'Igreja Evangélica Pentecostal O Brasil Para Cristo - Jd. João XIII', 'Localizada no bairro do Jd. João XXIII São Paulo, a igreja hoje é sede de uma centena de igrejas e conta com seu líder Pr. Ricardo Ferreira Campos.\nDesde meados dos anos 90, a igreja em crescido e desenvolvidos a obra de Deus de maneira séria e comprometida.\nHoje é vista como uma igreja modelo e de cunho religioso inconstável.\nVenha conhecer.\nAcompanhe nossa agenda e horários.', 'Diácono Thiago de Jesus', 'IGREJA-OBPC.jpg', '2018-05-04 21:48:07'),
(3, 'Missionário Manoel de Melo', 'Fundador da IEP O Brasil Para Cristo', 'Manoel de Mello e Silva passou a infância e juventude em sua cidade natal, até se mudar em 1947 para São Paulo. Tornou-se membro da Assémbleia de Deus e foi consagrado diácono. Casou-se em 1951 com Ruth Lopes, e teve dois filhos, Boaz de Mello e Paulo Lutero de Mello.\n<br />\nDurante o dia, trabalhava como mestre-de-obras e à  noite, atendendo a convites, pregava em igrejas das Assembleias de Deus. Depois, une-se a Cruzada Nacional de Evangelização, que deu origem é Igreja do Evangelho Quadrangular brasileira.[1] Em 1952 contraiu uma paralisia intestinal e foi milagrosamente curado. Deixa então o trabalho de mestre-de-obras para dedicar-se totalmente Ã  pregação do Evangelho e ao ministério. Em 1955, nos Estados Unidos, foi ordenado ministro pela International Church of the Foursquare Gospel (Igreja do Evangelho Quadrangular). Neste mesmo ano, relata que teve uma visão de Deus, que o comissiona a começar a obra que ficou conhecida como O Brasil para Cristo, fundada em 1956, depois de voltar para o Brasil. Entretanto, o pastor começa primeiro um programa de rádio em janeiro de 1956 com o título A Voz do Brasil Para Cristo. Apenas em março de 1956 que realiza a fundação da igreja, o programa acabou dando origem a igreja.\n<br />\nManoel de Mello torna-se então um dos maiores líderes do pentecostalismo brasileiro, chegando a reunir, em suas campanhas, até duzentas mil pessoas.\n<br />\nFoi preso 27 vezes por denúncias ao regime militar, e no tempo em que desbravou o interior brasileiro fortemente católico ainda viu seus tabernáculos e tendas serem queimados, até construir o templo sede na Vila Pompéia, por muitos anos considerado o maior do mundo.\n<br />\nManoel de Mello foi o primeiro evangélico a ser capa da Revista Veja em 1981.\n<br />\nFez parte do Conselho Mundial de Igrejas, e do seu Comitê Central, cargo exercido somente por grandes lí­deres mundiais. Era procurado por diversas autoridades e mantinha relações de amizade com muitos deles, como o Presidente Juscelino Kubitschek. Foi recebido por diversas autoridades, como o Presidente americano Jimmy Carter. Pregou em dezenas de paí­ses e teve seu nome e seu ministério no Brasil noticiado por redes de televisão americanas, inglesas, suecas e alemãs, pelo jornal americano The New York Times e pelo francês Le Monde, entre outros, e pela Veja. Seu nome e sua obra foram citados em várias obras literárias, inclusive na conceituada Enciclopédia Delta Larousse. Recebeu o prêmio de religião como o pregador que mais se destacou em 1972, pela Fundação Edward Browning. Em 1978, recebeu o tí­tulo de O Bandeirante do Brasil Presente, concedido pelo Instituto Nacional de Expansão Cultural (INEC).\n<br />\nEm 1986, Missionário Manoel de Mello deixou a direção da denominação. Em 3 de maio de 1990, foi acometido de um mal súbito, quando estava a caminho dos estádios de uma emissora de televisão, para gravar programa que estaria em cadeia nacional em poucos dias. Dois dias depois, faleceu.', 'https://pt.wikipedia.org/wiki/Manoel_de_Mello_e_Silva', 'manoel-de-mello.jpg', '2018-05-04 16:26:06'),
(4, 'Perseguição no Chile: Sete igrejas queimadas este ano', 'Embora pouco se fale sobre a perseguição de cristãos na América do Sul,  os casos de intolerância vêm se multiplicando...', 'Embora pouco se fale sobre a perseguição de cristãos na América do Sul,  os casos de intolerância vêm se multiplicando em paí­ses como a Colômbia e o Chile. Ao contrário da África, onde a questão maior são os islâmicos, em nosso continente trata-se de uma questão político-ideológica.\n<br />\nNo Chile, na região de Araucanã­a, sul do país, 27 igrejas foram queimadas nos Últimos anos. Em 2017 foram sete. Entre 2015 e 2016 chagou-se a 20 templos (12 católicas e 8 evangélicos). Todos os ataques foram de autoria do grupo indí­gena Weichan Auka Mapu [Luta do Território Rebelde], de inspiração marxista.<br />\nEles afirmam defender os direitos dos mapuches, tribo que vivia no paí­s antes da colonização espanhola. Contudo, atualmente 87% dos membros da etnia são cristãos, entre católicos e protestantes. Isso comprova que se trata de uma questão que vai além da religião.  Os mapuche são a etnia mais numerosa do paí­s com cerca de 700.000 membros, de uma população total do Chile de 17,5 milhões.<br />\nMuitas das igrejas incendiadas também eram usadas escolas e abrigos para pessoas deslocadas devido a desastres. Juan Mella, presidente do conselho de pastores da região e lí­der de uma igreja queimada em julho, diz ter testemunhado o momento em que sua igreja foi reduzida a cinzas. O templo simples, de madeira, fora construí­da 15 anos atrás, com dinheiro dos próprios fieis.\n<br />\nEm setembro, quatro outras igrejas foram queimadas e várias congregações, ameaçadas. Isso levou a polí­cia a colocar guardas nas duas igrejas da região.\nEm um caso que se teve maior repercussão, quatro homens mascarados invadiram o culto de domingo de uma igreja e a incendiaram. Até agora, foi o único em que a polí­cia efetuou prisões. Os suspeitos alegam pertenceram ao Weichan Auca Mapu. Eles deixaram uma mensagem pixada na igreja: Cristianismo, cúmplice da repressão do povo mapucheâ.\n<br />\nLuis Torres, o promotor no caso dos quatro detidos, diz: além dos ataques, há os panfletos que eles deixam com suas exigências e justificativas do comportamento. O governo chileno decidiu que os homens seriam acusados de incêndio criminoso e não por terrorismo.  Curiosamente, quando os mapuches incendiaram caminhões florestais do governo, foram acusados de praticar um atentado.\nO conselho de pastores de Araucanã­a publicou uma nota, que foi divulgada pela Missão Portas Abertas: responsabilidade do Estado garantir que eventos como esses não aconteçam novamente, assegurando que justiça seja feita aos responsáveis, assim como protegendo as ví­timas e garantindo que a igreja seja reconstruída.  Com informações de Portas Abertas', 'https://noticias.gospelprime.com.br/perseguicao-no-chile-sete-igrejas-queimadas-este-ano/', 'igreja-chile-queimada.jpg', '2018-05-04 16:35:30'),
(5, 'Campanha 12 dias de clamor', '12 dias de clamor para 12 meses de bêncãos', 'O que já é tradição não pode faltar, a campanha que tem abalado o ano de muitos está de volta. <br />\nTodos os anos damos iní­cio com doze dias de oração em busca da benção de Deus sobre nossas vidas.<br />\nÀ partir do dia 15 daremos iní­cio as orações, serão 12 dias seguidos com orações e ações de graças, e assim acreditando na benção de Deus para mais 12 meses abençoados.\nVocê é nosso convidado, esteja conosco em uma das igrejas O Brasil para Cristo, campo Cotia, e seja uma benção.', 'Diácono Thiago de Jesus', 'se-o-meu-povo-orar-e-clamar-eu-ouvirei-o-seu-clamor-e-sararei-a-sua-terra.jpg', '2018-05-04 16:37:04'),
(6, 'Inauguração do sistema de busca Busquei', 'Sistema de busca Busquei', 'O que é Lorem Ipsum?\r\nLorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.', 'Lorem ipsum', 'busquei-logo.png', '2018-08-30 14:56:35'),
(7, 'Palavra do Presidente', 'A Oração Incessante da Igreja', '“Pedro, pois, estava guardado no cárcere; mas havia oração incessante a Deus por parte da igreja a favor dele” (Atos 12.5).\r\n\r\nÀ estas alturas dos acontecimentos a Igreja de Cristo sofria grande perseguição, que havia começado lá no capítulo 8 (At 8.1-3). Aqui no capítulo 12, por exemplo, observamos que o rei Herodes já tinha matado um dos apóstolos (Tiago – v. 2), e aproveitou a oportunidade para prender Pedro, com o mesmo intento, a fim de agradar os líderes religiosos dos judeus (At 12.3).\r\n\r\nSe analisarmos atentamente, aos olhos humanos, Pedro estava preso num cadeia de “segurança máxima”, se é que podemos assim dizer, porque além das 16 sentinelas, ele ainda estava algemado. Portanto, não havia chance alguma de escapar. Apesar disso tudo, Lucas escreveu que a Igreja se reuniu para fazer a única coisa que podia e devia fazer: clamar pelo socorro de Deus.\r\n\r\nO lugar onde a igreja se reunia é descrito no verso 12 nos seguintes termos: “casa de Maria, mãe de João, cognominado Marcos, onde muitas pessoas estavam congregadas e oravam”. Como vimos, era uma casa de família, lugar pequeno, que comportava provavelmente cerca de 40 pessoas. Assim, não foi o número de pessoas, mas o empenho no clamor, o fervor dos irmãos que tocou o coração de Deus, que respondeu rapidamente enviando um anjo (At 12.7).\r\n\r\nLucas escreveu que o anjo de Deus fez a obra de soltura de Pedro sem que ninguém percebesse, é assim mesmo que Deus trabalha, nem Pedro viu nada, só quando o anjo o despertou. À semelhança do apóstolo Pedro, Deus não quer nos ver algemados, sejam as “algemas” que for (ex: doenças, opressões, perseguições etc.). É maravilhoso notarmos o cuidado de Deus com cada um de nós, pois o anjo de Deus lembrou Pedro de pegar sua capa, era de madrugada e deveria estar frio.\r\n\r\nOutro fato que nos faz pensar, tem relação com o comportamento de Pedro, que estava sob pressão naquela prisão e ele sabia que se não houvesse uma ação divina, seria executado, como foi Tiago. No entanto, o anjo precisou despertá-lo, porque ele dormia profundamente. Este estado de espírito ocorre somente com quem mantem uma vida limpa, cuja consciência está em paz, porque vive em plena comunhão com Deus.\r\n\r\nDe fato, nem correntes, algemas, ferrolhos ou cadeias de segurança máxima, conseguem resistir à presença de Deus. A Bíblia diz: “Agindo Eu (Deus), quem impedirá?” (Is 43.13), então quando Deus age os seus servos são libertos e salvos (At 12.7-9). Lucas escreveu que Pedro, depois de liberto, não foi para sua casa, para estar com sua família, mas seguiu direto para o lugar onde a Igreja estava reunida em oração. Sua chegada ali produziu muita alegria no coração dos irmãos, que glorificaram a Deus por sua graça e poder.\r\n\r\nPortanto, meus amados irmãos obreiros, pastores e líderes da obra de Deus, vale a pena cultivarmos este estilo de vida limpa com Deus, que nos leva a dormir, mesmo sob ameaça de morte, mesmo estando num momento difícil, num deserto, porque a presença de Deus conosco realmente faz toda a diferença.\r\n\r\nQue Deus vos abençoe e guarde a todos;\r\n\r\nPr. Luiz Fernandes Bergamin;\r\n\r\nPresidente do Conselho Nacional OBPC', 'http://conselhonacional.org.br/site/oracao-incessante-da-igreja/', 'biblia.png', '2018-08-30 20:37:32'),
(8, 'Inauguração do Sistema BUSQUEI', 'Inauguração do Sistema BUSQUEI', 'Ponsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nPonsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nPonsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nPonsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Thiago de Jesus', 'busquei.jpg', '2018-09-25 23:45:31'),
(9, 'Criador do Sistema Busquei', 'Conheça o autor', 'Thiago de Jesus desenvolvedor web é o criador do Sistema de busca Busquei.\r\nSua visão é de uma maneira simples, trazer o que há de mais completo quando o assunto é sistema web.\r\n', 'Thiago de Jesus', 'busquei.jpg', '2018-09-26 21:51:39'),
(10, 'Ateus impedem estudantes de orarem por criança doente em escola, mas efeito é contrário', 'Um grupo de estudantes de uma escola do Ensino Médio decidiu se mobilizar, em oração, por uma colega que adoeceu...', 'Um grupo de estudantes de uma escola do Ensino Médio decidiu se mobilizar, em oração, por uma colega que adoeceu. No entanto, eles foram proibidos de organizarem uma reunião de fé devido à ação de um grupo de ativistas ateus.\r\n\r\nO caso foi registrado na cidade de Lake City, estado de Michigan (EUA), e gerou enorme repercussão. Tudo começou quando os alunos, voluntariamente, passaram a organizar encontros no campo de futebol americano da escola para orar por Harper, de 4 anos, que é filha do treinador da equipe local e foi diagnosticada com infecção intestinal.\r\n\r\nO movimento de oração se fortaleceu na escola e também nas redes sociais, e chegou ao conhecimento da organização ateísta Freedom From Religion Foundation (FFRF). Repetindo o modus operandi adotado em diversas outras circunstâncias, os ativistas ateus ameaçaram processar a escola caso a direção não proibisse o uso das instalações pelos alunos para orarem.\r\n\r\n“O distrito escolar pode se envolver de várias maneiras [para mobilizar as pessoas em solidariedade à menina], mas não pode se envolver com a religião patrocinadora”, disse Colin McNamara, integrante do grupo ateísta, em entrevista ao portal UpNorthLive. “A Primeira Emenda da Constituição dos EUA proíbe atores do governo de endossar a religião. Eles são obrigados a serem neutros em relação à religião. Eles não podem endossá-la ou promovê-la”, acrescentou o ativista.\r\n\r\nSegundo informações do portal Faithwire, a ação dos ativistas ateus foi recebida com desprezo por muitos moradores: “Os fatores externos devem ficar fora da nossa comunidade. Naquele momento, isso aconteceu para ajudar uma garotinha que todos apoiam”, disse o empresário Burce DeBoer.\r\n\r\nA Associação de Ativistas pelos Direitos Civis de Michigan também analisou a situação e declarou apoio às queixas da FFRF. “A escola tem a responsabilidade de tratar como qualquer outra propriedade, e isso significa que ela deve permanecer livre da religião”, disse o co-fundador Mitch Kahle.\r\n\r\nCom a enorme repercussão da história, a escola produziu um vídeo do encontro de oração e o publicou em sua página no Facebook, mas posteriormente terminou obrigada a deletá-lo, e esclareceu que fez esta escolha por questões legais.\r\n\r\n“Nossos advogados nos aconselharam que nesta situação não podemos agir de acordo com nossas preferências pessoais, então nós relutantemente escolhemos remover a postagem”, anunciou a Lake City High School.\r\n\r\nEmbora os encontros dos estudantes tenham sido barrados na escola, milhares de pessoas estão sendo incentivadas a orar pela garotinha através do movimento #HarperStrong (“Harper forte” em tradução livre). “Conforme você passa pelas ruas, vê muitos #harperstrong”, disse a residente local Elizabeth Kramer, acrescentando que a controvérsia “só vai nos fazer avançar e lutar mais pelo apoio que a família merece”.\r\n\r\n', 'https://noticias.gospelmais.com.br/ateus-estudantes-orarem-crianca-doente-escola-102881.html', 'estudantes-oracao-770x410.jpg', '2018-09-27 15:49:58'),
(11, 'Criador do Sistema Busquei', 'Conheça o autor', 'Thiago de Jesus desenvolvedor web é o criador do Sistema de busca Busquei.\r\nSua visão é de uma maneira simples, trazer o que há de mais completo quando o assunto é sistema web.\r\n', 'Thiago de Jesus', 'reverendo-olavo-nunes.jpg', '2018-09-28 21:07:08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `email` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nivel` int(1) NOT NULL DEFAULT '0',
  `ativo` int(1) NOT NULL DEFAULT '1',
  `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `imagem` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user_login`
--

INSERT INTO `user_login` (`id`, `email`, `user`, `password`, `nivel`, `ativo`, `data`, `imagem`) VALUES
(1, 'admin@email.com', 'admin', '200806', 2, 1, '2018-01-04 02:45:49', NULL),
(2, 'thiago@email.com', 'thiago.jesus', 'thiago123', 1, 1, '2018-01-04 02:46:50', NULL),
(3, 'marcos@email.com', 'marcos.rodrigues', 'marcos123', 0, 1, '2018-01-04 02:47:21', NULL),
(4, 'pr.josue@email.com', 'josue.estevam', 'josue123', 0, 1, '2018-01-04 02:47:57', NULL),
(5, 'joao@email.com', 'joao.silva', 'joao123', 0, 0, '2018-08-24 15:23:41', NULL),
(6, 'maria@email.com', 'maria.souza', 'maria123', 0, 0, '2018-08-24 19:35:47', NULL),
(7, 'herick.souza@gmail.com', 'herick.souza', 'herick123', 0, 0, '2018-08-27 16:02:37', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
