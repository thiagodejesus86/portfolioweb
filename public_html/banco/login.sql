-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Set-2018 às 22:48
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
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `comentario` text NOT NULL,
  `data_comentario` datetime NOT NULL,
  `id_user_login` int(11) NOT NULL,
  `id_news` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `comentario`, `data_comentario`, `id_user_login`, `id_news`) VALUES
(1, 'Um grupo de estudantes de uma escola do Ensino Médio decidiu se mobilizar, em oração, por uma colega que adoeceu. No entanto, eles foram proibidos de organizarem uma reunião de fé devido à ação de um grupo de ativistas ateus.', NOW(), 1, 10),
(2, 'O caso foi registrado na cidade de Lake City, estado de Michigan (EUA), e gerou enorme repercussão. Tudo começou quando os alunos, voluntariamente, passaram a organizar encontros no campo de futebol americano da escola para orar por Harper, de 4 anos, que é filha do treinador da equipe local e foi diagnosticada com infecção intestinal.', NOW(), 2, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo`
--

CREATE TABLE `conteudo` (
  `id` int(11) NOT NULL,
  `texto` text NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco_users`
--

CREATE TABLE `endereco_users` (
  `id_end` int(11) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `num` varchar(30) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` char(2) DEFAULT NULL,
  `cep` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco_users`
--

INSERT INTO `endereco_users` (`id_end`, `rua`, `num`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(1, 'Victor JosÃ©', '232', 'Pq. Isaac Pires', 'Cotia', 'SP', '06716670'),
(2, 'Rua Victor JosÃ©', '232', 'Parque Isaac Pires', 'Cotia', 'SP', '06716670'),
(3, 'Rua Victor JosÃ©', '232', 'Parque Isaac Pires', 'Cotia', 'SP', '06716670'),
(4, 'Rua Victor JosÃ©', '232', 'Parque Isaac Pires', 'Cotia', 'SP', '06716670'),
(5, 'Rua Victor JosÃ©', '232', 'Parque Isaac Pires', 'Cotia', 'SP', '06716670');

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `titulo_evento` varchar(150) NOT NULL,
  `texto_evento` text NOT NULL,
  `data_evento` date NOT NULL,
  `local_evento` varchar(255) NOT NULL,
  `imagem` varchar(100) DEFAULT 'IGREJA-OBPC.jpg',
  `data_criacao_evento` datetime NOT NULL,
  `slide` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `eventos`
--

INSERT INTO `eventos` (`id`, `titulo_evento`, `texto_evento`, `data_evento`, `local_evento`, `imagem`, `data_criacao_evento`, `slide`) VALUES
(1, 'Show hillsong Brasil', 'O evento acontece na Marcha para Jesus na Av. Paulista em São Paulo', '2018-05-27', 'Marcha para Jesus São Paulo', 'hillsong.jpg', '2018-05-16 09:44:51', '1'),
(2, 'Campanha \"O Deus do impossível\"', 'Encerramento da campanha, com o ministro da palavra diácono Thiago de Jesus          ', '2018-05-16', 'OBPC Jd. Lina', 'IMG-20180403-WA0001.jpg', '0000-00-00 00:00:00', '1'),
(3, 'Reunião de obreiros Jd. João XXIII', 'O curso que está no seu encerramento nesse domingo 20/05/2018, contou com a participação de vários de nossos obreiros do campo -atuantes de aspirantes. Glória a Deus. Que esse primeiro curso, seja realmente o primeiro de muitos.', '2018-05-20', 'OBPC Jd. João XXIII', 'IMG-20180429-WA0002.jpg', '2018-05-16 09:50:47', '1'),
(4, 'Congresso Jubrac - Rio Pequeno', 'Congresso Jubrac', '2018-05-19', 'OBPC Rio Pequeno', 'se-o-meu-povo-orar-e-clamar-eu-ouvirei-o-seu-clamor-e-sararei-a-sua-terra.jpg', '2018-05-16 10:25:22', '1'),
(5, 'Culto de Santa Ceia', 'Culto de Santa Ceia do Senhor', '2018-05-20', 'OBPC Jd. Lina', 'Santa-Ceia.jpg', '0000-00-00 00:00:00', '1'),
(6, 'W. Music, o maior festival de música gospel do Brasil', 'O Brasil possui diferentes festivais e mostras musicais voltadas para o público evangélico, mas nenhum deles é tão grande e abrangente quanto o Festival W. Music. Criado em 2003, pelo maestro Wellington Correa, desde o início teve grande aceitação nas igrejas. A partir de 2015 alcançou um patamar nacional, tendo premiado uma média de 100 cantores até o momento.\r\n\r\nO Festival W Music já ocorreu em 24 estados brasileiros, ou seja, a qualquer momento pode acontecer em sua cidade. Ele é dividido em duas etapas distintas. Primeiramente a produção se desloca até uma região onde são feitas as inscrições (gratuitas) e audições, no estilo dos reality shows de música. As melhores vozes se classificam para cantar na grande final.\r\n\r\nComo diretor executivo do estúdio W. Music Wellington Corrêa tem garantido aos ganhadores a gravação do CD Matriz. Ele destaca que as finais “são uma festa a parte, pois é um evento divertido, que conta com a participação de torcidas animadas”.\r\n\r\nTodos os álbuns são arranjados pelo maestro Wellington Corrêa e ele garante que a qualidade em nada fica a dever para os melhores CDs do meio gospel da atualidade.\r\n\r\nO único compromisso dos finalistas é a vendagem dos convites da grande final que é um evento fechado. Os lucros das vendas do CD físico ficam com o vencedor do festival, pois o cantor detém o direito de propriedade sobre a matriz.\r\n\r\nAlguns lançamentos recentes, cujo material se encontra disponível em todas as plataformas digitais incluem “Ei, Você Ai”, de Alessandro Santana, “Legado Fiel”, de Jhony Maick e “Meu Sonho” de Márcio Robert.\r\n\r\nO evento tem o apoio de grandes nomes da música cristã, como Rose Nascimento, Robinson Monteiro, Damares, Leonardo Gonçalves, Anderson Freire, Fernanda Brum, Eyshila, André e Felipe, Priscila Alcântara, Lydia Moisés, Cristina Mel, Willian Nascimento, Alex Gonzaga (Novo Som) e Dayse (Fat Family). Eles participam como jurados do Festival W Music.   ', '2018-05-19', 'Barueri Grande São Paulo', 'festival-w-music.jpg', '0000-00-00 00:00:00', '1'),
(7, 'Agradecimento da Campanha : \"Clama a mim e te responderei\"', '   Campanha da Jubrac   ', '2018-06-08', 'OBPC Jd. Lina', 'se-o-meu-povo-orar-e-clamar-eu-ouvirei-o-seu-clamor-e-sararei-a-sua-terra.jpg', '2018-05-28 00:00:00', '1'),
(8, 'Campanha Clama Mim', ' Endereço: Rua Rodésia, 380 - Jd. Lina - Cotia/SP - Próximo ao Pesqueiro Maravilha - Ministro da palavra de Deus Diác. Thiago de Jesus', '2018-06-01', 'OBPC JD. LIna - Cotia/SP', 'se-o-meu-povo-orar-e-clamar-eu-ouvirei-o-seu-clamor-e-sararei-a-sua-terra.jpg', '2018-05-28 00:00:00', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `foto_perfil`
--

CREATE TABLE `foto_perfil` (
  `id_foto` int(11) NOT NULL,
  `href_foto` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `foto_perfil`
--

INSERT INTO `foto_perfil` (`id_foto`, `href_foto`) VALUES
(1, '1518135517.jpg'),
(2, '1518135474.jpg'),
(3, '1518135549.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `igrejas`
--

CREATE TABLE `igrejas` (
  `id_igrejas` int(11) NOT NULL,
  `pastor` varchar(50) NOT NULL,
  `igreja` varchar(100) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(30) NOT NULL,
  `bairro` varchar(150) NOT NULL,
  `cidade` varchar(150) NOT NULL,
  `uf` char(2) NOT NULL,
  `maps` varchar(100) NOT NULL DEFAULT 'http://maps.google.com/'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `igrejas`
--

INSERT INTO `igrejas` (`id_igrejas`, `pastor`, `igreja`, `cep`, `rua`, `numero`, `bairro`, `cidade`, `uf`, `maps`) VALUES
(1, 'Josué Alves Estevam', 'Mirante da Mata', '06720070', 'Francisco Alves', '219', 'Pq. Mirante da Mata', 'Cotia', 'SP', 'https://goo.gl/maps/GECRNqqaokP2'),
(2, 'Marcos Rodrigues', 'Lina', '06716663', 'Rodésia', '382', 'Jd. Lina', 'Cotia', 'SP', 'https://goo.gl/maps/myMDH1WQN5S2'),
(3, 'Adriano', 'Japão', '06726090', 'Mém de Sá', '332', 'Jd. Japão', 'Cotia', 'SP', 'https://goo.gl/maps/3q1xP6Fhuby'),
(4, 'Daniel', 'Água Espraiada', '06726625', 'Rua Placedina Ribeiro', '254', 'Água Espraiada', 'Cotia', 'SP', 'https://goo.gl/maps/gAzvdsZ8jDH2'),
(5, 'Eliosmar', 'Nova Cotia', '06700549', 'Nova Odessa', '59', 'Nova Cotia', 'Cotia', 'SP', 'https://goo.gl/maps/6TZ8r1ojanK2'),
(6, 'Antônio', 'Mirizola', '06704310', 'Astúrias', '53', 'Parque Miguel Mirizola', 'Cotia', 'SP', 'https://goo.gl/maps/k825jQnV2i12'),
(7, 'Cida de Cássia', 'Vargem Grande Paulista', '06730000', 'Maria Cardoso da Silva', '53', 'Vila Sao Judas Tadeu', 'Vargem Grande Paulista', 'SP', 'https://goo.gl/maps/fGuN1s31XaE2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `membros`
--

CREATE TABLE `membros` (
  `id` int(11) NOT NULL,
  `nome_completo` varchar(200) NOT NULL,
  `data_nascimento` varchar(100) NOT NULL,
  `estado_civil` varchar(30) NOT NULL,
  `funcao_ministerio` varchar(30) NOT NULL DEFAULT 'Membro',
  `data_batismo` varchar(100) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `rua` varchar(200) NOT NULL,
  `numero` varchar(30) NOT NULL DEFAULT 'S/N',
  `bairro` varchar(200) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `uf` char(2) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img_perfil` varchar(255) NOT NULL,
  `status` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `membros`
--

INSERT INTO `membros` (`id`, `nome_completo`, `data_nascimento`, `estado_civil`, `funcao_ministerio`, `data_batismo`, `cep`, `rua`, `numero`, `bairro`, `cidade`, `uf`, `data_cadastro`, `img_perfil`, `status`) VALUES
(1, 'Thiago de Jesus', '1986-09-10', 'Casado', 'DiÃ¡cono', '2000-09-10', '06716670', 'Rua Victor JosÃ©', '232', 'Parque Isaac Pires', 'Cotia', 'SP', '2018-01-04 00:37:14', '1515019034.jpg', 1),
(2, 'Jenifer Regina Alves Silva de Jesus', '1991-09-30', 'Casado', 'DiÃ¡cono', '2000-09-30', '06716670', 'Rua Victor JosÃ©', '232', 'Parque Isaac Pires', 'Cotia', 'SP', '2018-01-04 00:37:58', '1515019078.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `news`
--

CREATE TABLE `news` (
  `id` int(6) NOT NULL,
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
(1, 'Inauguração do Portal OBPC - Cotia', 'Inauguração do Portal OBPC - Cotia', 'Olá! Seja bem vindo ao nosso portal, um aplicativo desenvolvido com o intuito de trazer a você notícias concernentes ao ministério e também trazer interatividade.\nAqui você encontra a agenda anual, informações sobre os ministérios, etc...\n', 'Thiago de Jesus', 'IGREJA-OBPC.jpg', '2018-05-04 20:46:01'),
(2, 'Conheça nossa Sede - Jd. João XXIII', 'Igreja Evangélica Pentecostal O Brasil Para Cristo - Jd. João XIII', 'Localizada no bairro do Jd. João XXIII São Paulo, a igreja hoje é sede de uma centena de igrejas e conta com seu líder Pr. Ricardo Ferreira Campos.\nDesde meados dos anos 90, a igreja em crescido e desenvolvidos a obra de Deus de maneira séria e comprometida.\nHoje é vista como uma igreja modelo e de cunho religioso inconstável.\nVenha conhecer.\nAcompanhe nossa agenda e horários.', 'Diácono Thiago de Jesus', 'IGREJA-OBPC.jpg', '2018-05-04 18:48:07'),
(3, 'Missionário Manoel de Melo', 'Fundador da IEP O Brasil Para Cristo', 'Manoel de Mello e Silva passou a infância e juventude em sua cidade natal, até se mudar em 1947 para São Paulo. Tornou-se membro da Assémbleia de Deus e foi consagrado diácono. Casou-se em 1951 com Ruth Lopes, e teve dois filhos, Boaz de Mello e Paulo Lutero de Mello.\n<br />\nDurante o dia, trabalhava como mestre-de-obras e à  noite, atendendo a convites, pregava em igrejas das Assembleias de Deus. Depois, une-se a Cruzada Nacional de Evangelização, que deu origem é Igreja do Evangelho Quadrangular brasileira.[1] Em 1952 contraiu uma paralisia intestinal e foi milagrosamente curado. Deixa então o trabalho de mestre-de-obras para dedicar-se totalmente Ã  pregação do Evangelho e ao ministério. Em 1955, nos Estados Unidos, foi ordenado ministro pela International Church of the Foursquare Gospel (Igreja do Evangelho Quadrangular). Neste mesmo ano, relata que teve uma visão de Deus, que o comissiona a começar a obra que ficou conhecida como O Brasil para Cristo, fundada em 1956, depois de voltar para o Brasil. Entretanto, o pastor começa primeiro um programa de rádio em janeiro de 1956 com o título A Voz do Brasil Para Cristo. Apenas em março de 1956 que realiza a fundação da igreja, o programa acabou dando origem a igreja.\n<br />\nManoel de Mello torna-se então um dos maiores líderes do pentecostalismo brasileiro, chegando a reunir, em suas campanhas, até duzentas mil pessoas.\n<br />\nFoi preso 27 vezes por denúncias ao regime militar, e no tempo em que desbravou o interior brasileiro fortemente católico ainda viu seus tabernáculos e tendas serem queimados, até construir o templo sede na Vila Pompéia, por muitos anos considerado o maior do mundo.\n<br />\nManoel de Mello foi o primeiro evangélico a ser capa da Revista Veja em 1981.\n<br />\nFez parte do Conselho Mundial de Igrejas, e do seu Comitê Central, cargo exercido somente por grandes lí­deres mundiais. Era procurado por diversas autoridades e mantinha relações de amizade com muitos deles, como o Presidente Juscelino Kubitschek. Foi recebido por diversas autoridades, como o Presidente americano Jimmy Carter. Pregou em dezenas de paí­ses e teve seu nome e seu ministério no Brasil noticiado por redes de televisão americanas, inglesas, suecas e alemãs, pelo jornal americano The New York Times e pelo francês Le Monde, entre outros, e pela Veja. Seu nome e sua obra foram citados em várias obras literárias, inclusive na conceituada Enciclopédia Delta Larousse. Recebeu o prêmio de religião como o pregador que mais se destacou em 1972, pela Fundação Edward Browning. Em 1978, recebeu o tí­tulo de O Bandeirante do Brasil Presente, concedido pelo Instituto Nacional de Expansão Cultural (INEC).\n<br />\nEm 1986, Missionário Manoel de Mello deixou a direção da denominação. Em 3 de maio de 1990, foi acometido de um mal súbito, quando estava a caminho dos estádios de uma emissora de televisão, para gravar programa que estaria em cadeia nacional em poucos dias. Dois dias depois, faleceu.', 'https://pt.wikipedia.org/wiki/Manoel_de_Mello_e_Silva', 'manoel-de-mello.jpg', '2018-05-04 13:26:06'),
(4, 'Perseguição no Chile: Sete igrejas queimadas este ano', 'Embora pouco se fale sobre a perseguição de cristãos na América do Sul,  os casos de intolerância vêm se multiplicando...', 'Embora pouco se fale sobre a perseguição de cristãos na América do Sul,  os casos de intolerância vêm se multiplicando em paí­ses como a Colômbia e o Chile. Ao contrário da África, onde a questão maior são os islâmicos, em nosso continente trata-se de uma questão político-ideológica.\n<br />\nNo Chile, na região de Araucanã­a, sul do país, 27 igrejas foram queimadas nos Últimos anos. Em 2017 foram sete. Entre 2015 e 2016 chagou-se a 20 templos (12 católicas e 8 evangélicos). Todos os ataques foram de autoria do grupo indí­gena Weichan Auka Mapu [Luta do Território Rebelde], de inspiração marxista.<br />\nEles afirmam defender os direitos dos mapuches, tribo que vivia no paí­s antes da colonização espanhola. Contudo, atualmente 87% dos membros da etnia são cristãos, entre católicos e protestantes. Isso comprova que se trata de uma questão que vai além da religião.  Os mapuche são a etnia mais numerosa do paí­s com cerca de 700.000 membros, de uma população total do Chile de 17,5 milhões.<br />\nMuitas das igrejas incendiadas também eram usadas escolas e abrigos para pessoas deslocadas devido a desastres. Juan Mella, presidente do conselho de pastores da região e lí­der de uma igreja queimada em julho, diz ter testemunhado o momento em que sua igreja foi reduzida a cinzas. O templo simples, de madeira, fora construí­da 15 anos atrás, com dinheiro dos próprios fieis.\n<br />\nEm setembro, quatro outras igrejas foram queimadas e várias congregações, ameaçadas. Isso levou a polí­cia a colocar guardas nas duas igrejas da região.\nEm um caso que se teve maior repercussão, quatro homens mascarados invadiram o culto de domingo de uma igreja e a incendiaram. Até agora, foi o único em que a polí­cia efetuou prisões. Os suspeitos alegam pertenceram ao Weichan Auca Mapu. Eles deixaram uma mensagem pixada na igreja: Cristianismo, cúmplice da repressão do povo mapucheâ.\n<br />\nLuis Torres, o promotor no caso dos quatro detidos, diz: além dos ataques, há os panfletos que eles deixam com suas exigências e justificativas do comportamento. O governo chileno decidiu que os homens seriam acusados de incêndio criminoso e não por terrorismo.  Curiosamente, quando os mapuches incendiaram caminhões florestais do governo, foram acusados de praticar um atentado.\nO conselho de pastores de Araucanã­a publicou uma nota, que foi divulgada pela Missão Portas Abertas: responsabilidade do Estado garantir que eventos como esses não aconteçam novamente, assegurando que justiça seja feita aos responsáveis, assim como protegendo as ví­timas e garantindo que a igreja seja reconstruída.  Com informações de Portas Abertas', 'https://noticias.gospelprime.com.br/perseguicao-no-chile-sete-igrejas-queimadas-este-ano/', 'igreja-chile-queimada.jpg', '2018-05-04 13:35:30'),
(5, 'Campanha 12 dias de clamor', '12 dias de clamor para 12 meses de bêncãos', 'O que já é tradição não pode faltar, a campanha que tem abalado o ano de muitos está de volta. <br />\nTodos os anos damos iní­cio com doze dias de oração em busca da benção de Deus sobre nossas vidas.<br />\nÀ partir do dia 15 daremos iní­cio as orações, serão 12 dias seguidos com orações e ações de graças, e assim acreditando na benção de Deus para mais 12 meses abençoados.\nVocê é nosso convidado, esteja conosco em uma das igrejas O Brasil para Cristo, campo Cotia, e seja uma benção.', 'Diácono Thiago de Jesus', 'se-o-meu-povo-orar-e-clamar-eu-ouvirei-o-seu-clamor-e-sararei-a-sua-terra.jpg', '2018-05-04 13:37:04'),
(6, 'Inauguração do sistema de busca Busquei', 'Sistema de busca Busquei', 'O que é Lorem Ipsum?\r\nLorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.', 'Lorem ipsum', 'busquei-logo.png', '2018-08-30 11:56:35'),
(7, 'Palavra do Presidente', 'A Oração Incessante da Igreja', '“Pedro, pois, estava guardado no cárcere; mas havia oração incessante a Deus por parte da igreja a favor dele” (Atos 12.5).\r\n\r\nÀ estas alturas dos acontecimentos a Igreja de Cristo sofria grande perseguição, que havia começado lá no capítulo 8 (At 8.1-3). Aqui no capítulo 12, por exemplo, observamos que o rei Herodes já tinha matado um dos apóstolos (Tiago – v. 2), e aproveitou a oportunidade para prender Pedro, com o mesmo intento, a fim de agradar os líderes religiosos dos judeus (At 12.3).\r\n\r\nSe analisarmos atentamente, aos olhos humanos, Pedro estava preso num cadeia de “segurança máxima”, se é que podemos assim dizer, porque além das 16 sentinelas, ele ainda estava algemado. Portanto, não havia chance alguma de escapar. Apesar disso tudo, Lucas escreveu que a Igreja se reuniu para fazer a única coisa que podia e devia fazer: clamar pelo socorro de Deus.\r\n\r\nO lugar onde a igreja se reunia é descrito no verso 12 nos seguintes termos: “casa de Maria, mãe de João, cognominado Marcos, onde muitas pessoas estavam congregadas e oravam”. Como vimos, era uma casa de família, lugar pequeno, que comportava provavelmente cerca de 40 pessoas. Assim, não foi o número de pessoas, mas o empenho no clamor, o fervor dos irmãos que tocou o coração de Deus, que respondeu rapidamente enviando um anjo (At 12.7).\r\n\r\nLucas escreveu que o anjo de Deus fez a obra de soltura de Pedro sem que ninguém percebesse, é assim mesmo que Deus trabalha, nem Pedro viu nada, só quando o anjo o despertou. À semelhança do apóstolo Pedro, Deus não quer nos ver algemados, sejam as “algemas” que for (ex: doenças, opressões, perseguições etc.). É maravilhoso notarmos o cuidado de Deus com cada um de nós, pois o anjo de Deus lembrou Pedro de pegar sua capa, era de madrugada e deveria estar frio.\r\n\r\nOutro fato que nos faz pensar, tem relação com o comportamento de Pedro, que estava sob pressão naquela prisão e ele sabia que se não houvesse uma ação divina, seria executado, como foi Tiago. No entanto, o anjo precisou despertá-lo, porque ele dormia profundamente. Este estado de espírito ocorre somente com quem mantem uma vida limpa, cuja consciência está em paz, porque vive em plena comunhão com Deus.\r\n\r\nDe fato, nem correntes, algemas, ferrolhos ou cadeias de segurança máxima, conseguem resistir à presença de Deus. A Bíblia diz: “Agindo Eu (Deus), quem impedirá?” (Is 43.13), então quando Deus age os seus servos são libertos e salvos (At 12.7-9). Lucas escreveu que Pedro, depois de liberto, não foi para sua casa, para estar com sua família, mas seguiu direto para o lugar onde a Igreja estava reunida em oração. Sua chegada ali produziu muita alegria no coração dos irmãos, que glorificaram a Deus por sua graça e poder.\r\n\r\nPortanto, meus amados irmãos obreiros, pastores e líderes da obra de Deus, vale a pena cultivarmos este estilo de vida limpa com Deus, que nos leva a dormir, mesmo sob ameaça de morte, mesmo estando num momento difícil, num deserto, porque a presença de Deus conosco realmente faz toda a diferença.\r\n\r\nQue Deus vos abençoe e guarde a todos;\r\n\r\nPr. Luiz Fernandes Bergamin;\r\n\r\nPresidente do Conselho Nacional OBPC', 'http://conselhonacional.org.br/site/oracao-incessante-da-igreja/', 'biblia.png', '2018-08-30 17:37:32'),
(8, 'Inauguração do Sistema BUSQUEI', 'Inauguração do Sistema BUSQUEI', 'Ponsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nPonsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nPonsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nPonsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Thiago de Jesus', 'busquei.jpg', '2018-09-25 20:45:31'),
(9, 'Criador do Sistema Busquei', 'Conheça o autor', 'Thiago de Jesus desenvolvedor web é o criador do Sistema de busca Busquei.\r\nSua visão é de uma maneira simples, trazer o que há de mais completo quando o assunto é sistema web.\r\n', 'Thiago de Jesus', 'busquei.jpg', '2018-09-26 18:51:39'),
(10, 'Ateus impedem estudantes de orarem por criança doente em escola, mas efeito é contrário', 'Um grupo de estudantes de uma escola do Ensino Médio decidiu se mobilizar, em oração, por uma colega que adoeceu...', 'Um grupo de estudantes de uma escola do Ensino Médio decidiu se mobilizar, em oração, por uma colega que adoeceu. No entanto, eles foram proibidos de organizarem uma reunião de fé devido à ação de um grupo de ativistas ateus.\r\n\r\nO caso foi registrado na cidade de Lake City, estado de Michigan (EUA), e gerou enorme repercussão. Tudo começou quando os alunos, voluntariamente, passaram a organizar encontros no campo de futebol americano da escola para orar por Harper, de 4 anos, que é filha do treinador da equipe local e foi diagnosticada com infecção intestinal.\r\n\r\nO movimento de oração se fortaleceu na escola e também nas redes sociais, e chegou ao conhecimento da organização ateísta Freedom From Religion Foundation (FFRF). Repetindo o modus operandi adotado em diversas outras circunstâncias, os ativistas ateus ameaçaram processar a escola caso a direção não proibisse o uso das instalações pelos alunos para orarem.\r\n\r\n“O distrito escolar pode se envolver de várias maneiras [para mobilizar as pessoas em solidariedade à menina], mas não pode se envolver com a religião patrocinadora”, disse Colin McNamara, integrante do grupo ateísta, em entrevista ao portal UpNorthLive. “A Primeira Emenda da Constituição dos EUA proíbe atores do governo de endossar a religião. Eles são obrigados a serem neutros em relação à religião. Eles não podem endossá-la ou promovê-la”, acrescentou o ativista.\r\n\r\nSegundo informações do portal Faithwire, a ação dos ativistas ateus foi recebida com desprezo por muitos moradores: “Os fatores externos devem ficar fora da nossa comunidade. Naquele momento, isso aconteceu para ajudar uma garotinha que todos apoiam”, disse o empresário Burce DeBoer.\r\n\r\nA Associação de Ativistas pelos Direitos Civis de Michigan também analisou a situação e declarou apoio às queixas da FFRF. “A escola tem a responsabilidade de tratar como qualquer outra propriedade, e isso significa que ela deve permanecer livre da religião”, disse o co-fundador Mitch Kahle.\r\n\r\nCom a enorme repercussão da história, a escola produziu um vídeo do encontro de oração e o publicou em sua página no Facebook, mas posteriormente terminou obrigada a deletá-lo, e esclareceu que fez esta escolha por questões legais.\r\n\r\n“Nossos advogados nos aconselharam que nesta situação não podemos agir de acordo com nossas preferências pessoais, então nós relutantemente escolhemos remover a postagem”, anunciou a Lake City High School.\r\n\r\nEmbora os encontros dos estudantes tenham sido barrados na escola, milhares de pessoas estão sendo incentivadas a orar pela garotinha através do movimento #HarperStrong (“Harper forte” em tradução livre). “Conforme você passa pelas ruas, vê muitos #harperstrong”, disse a residente local Elizabeth Kramer, acrescentando que a controvérsia “só vai nos fazer avançar e lutar mais pelo apoio que a família merece”.\r\n\r\n', 'https://noticias.gospelmais.com.br/ateus-estudantes-orarem-crianca-doente-escola-102881.html', 'estudantes-oracao-770x410.jpg', '2018-09-27 12:49:58'),
(11, 'Criador do Sistema Busquei', 'Conheça o autor', 'Thiago de Jesus desenvolvedor web é o criador do Sistema de busca Busquei.\r\nSua visão é de uma maneira simples, trazer o que há de mais completo quando o assunto é sistema web.\r\n', 'Thiago de Jesus', 'reverendo-olavo-nunes.jpg', '2018-09-28 18:07:08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `preferencias`
--

CREATE TABLE `preferencias` (
  `id` int(11) NOT NULL,
  `background` varchar(30) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `noneCor` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `preferencias`
--

INSERT INTO `preferencias` (`id`, `background`, `color`, `noneCor`) VALUES
(1, 'rgb(86,149,180)', 'rgb(255, 255, 255)', 'azul'),
(2, 'rgb(207,70,71)', 'rgb(255, 255, 255)', 'vermelho'),
(3, 'rgb(41, 170, 138)', 'rgb (255, 255, 255)', 'verde');

-- --------------------------------------------------------

--
-- Estrutura da tabela `publicacoes`
--

CREATE TABLE `publicacoes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `conteudo` text NOT NULL,
  `creditos` varchar(150) NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `publicacoes`
--

INSERT INTO `publicacoes` (`id`, `titulo`, `subtitulo`, `conteudo`, `creditos`, `data`) VALUES
(1, 'Viagem Missionária para o Ribeirinho do Amazonas', 'Missão está no coração de Deus', '', 'http://conselhonacional.org.br/site/viagem-missionaria-para-o-ribeirinho-do-amazonas/', '2018-08-30 16:34:02'),
(2, 'Viagem Missionária para o Ribeirinho do Amazonas', 'Missão está no coração de Deus', '&lt;p&gt;&lt;img src=&quot;blob:http://localhost/437b2ade-b3c8-49f3-b0d6-754185bf2335&quot; style=&quot;width: 730px;&quot; class=&quot;fr-fic fr-dib fr-fil&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Nos dias 21 e 22 de Abril tive a honra e alegria de acompanhar o Pastor S&amp;eacute;rgio Cruz, Presidente da Conven&amp;ccedil;&amp;atilde;o AM/AP/RR em viagem Mission&amp;aacute;ria para o Ribeirinho do Amazonas. A viagem come&amp;ccedil;ou dia 20, sexta-feira. Saindo de Cumbica/Guarulhos &amp;agrave;s 9hs e chegando &amp;agrave; Manaus &amp;agrave;s 16horas. De l&amp;aacute;, fomos de carro para o Porto de Manaus onde pegamos a lancha e atravessamos os rios Negro e Solim&amp;otilde;es. Num percurso de um pouco mais de 40 minutos chegamos &amp;agrave; um povoado onde um amado obreiro nos aguardava para nos levar at&amp;eacute; o munic&amp;iacute;pio de Careiro Castanho. Aproximadamente 120 km. Chegamos em Castanho &amp;agrave;s 19.30 horas. Nesse dia participamos do culto de louvor a Deus nesta linda igreja presidida pelo Pastor Valdiney, tamb&amp;Eacute;m membro do Conselho Apost&amp;oacute;lico da OBPC e o PR S&amp;eacute;rgio Cruz ministrou a Palavra e uma alma se reconciliou com Jesus. Gl&amp;oacute;ria a Deus. No s&amp;aacute;bado pela manh&amp;atilde; participamos da inaugura&amp;ccedil;&amp;atilde;o da congrega&amp;ccedil;&amp;atilde;o no Bairro Joel Lobo no Castanho.. Uma linda igreja com capacidade para aproximadamente 70 pessoas confortavelmente sentadas. Pr. S&amp;eacute;rgio Cruz e Pr. Valdiney descerraram a fita inaugural e eu ministrei a Palavra nessa manh&amp;atilde;. No s&amp;aacute;bado &amp;agrave; tarde fomos para a Comunidade do Perp&amp;eacute;tuo Socorro onde inauguramos outra congrega&amp;ccedil;&amp;atilde;o do Pr. Valdiney. No meio da mata eles ergueram uma bela igreja de madeira, mas muito bem feita e arrumada. Um primor!!! Tive a honra de, junto do Pr. Valdiney descerrar a fita inaugural e o Pr. S&amp;eacute;rgio ministrou a Palavra de Deus. A noite de s&amp;aacute;bado tivemos um culto de confraterniza&amp;ccedil;&amp;atilde;o com toda a regional (15 congrega&amp;ccedil;&amp;otilde;es), com a presen&amp;ccedil;a de todos os dirigentes. Destaco o testemunho do Pr. Valdemar, que ap&amp;oacute;s ficar internado entre a vida e a morte, recebeu a cura e esteve conosco louvando a Deus; tamb&amp;eacute;m destaco o Presb&amp;iacute;tero Neudes, dirigente da nossa Igreja na tribo ind&amp;iacute;gena de Sater&amp;ecirc;-Mau&amp;eacute;s; o mesmo louvou a Deus na l&amp;iacute;ngua dos sater&amp;ecirc;s; foi uma ben&amp;ccedil;&amp;atilde;o! Ministrei a Palavra nessa noite e foi um grande mover de Deus.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;No domingo pela manh&amp;atilde; tivemos outros culto marcante com a separa&amp;ccedil;&amp;atilde;o de obreiros ao minist&amp;eacute;rio pastoral, oficiais e ao diaconato. Tamb&amp;eacute;m ungimos v&amp;aacute;rios obreiros ao minist&amp;eacute;rio de diaconato. Ministrei a Palavra de Deus e encerramos assim nossa passagem por Careiro Castanho. Louvo a Deus pela vida do Pr. Valdiney, irm&amp;atilde; Solange &amp;ndash; sua esposa e toda sua fam&amp;iacute;lia, obreiros, irm&amp;atilde;os e irm&amp;atilde;s pelo carinho da acolhida. Ap&amp;oacute;s o almo&amp;ccedil;o o Pr Valdiney nos levou para o munic&amp;iacute;pio de Manaquiri, distante de Castanho cerca de 60 km. L&amp;aacute; fomos recepcionados pelo Pastor Nelson Cascaes. A noite participamos do culto numa igreja bel&amp;iacute;ssima, uma verdadeira Catedral bem no centro da cidade, ao lado da Prefeitura, C&amp;acirc;mara Municipal, num local privilegiado. A Igreja em Manaquiri foi re-inaugurada no ano passado com a presen&amp;ccedil;a do PR Ronaldo Rampaso e pude ver uma edifica&amp;ccedil;&amp;atilde;o muito bem cuidada, sem falar no povo, muito bem pastoreados. Ministrei a Palavra nessa noite.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;J&amp;aacute; na segunda-feira logo cedo pegamos a lancha que nos levaria at&amp;eacute; o Porto de Manaus, cerca de uma hora e quarenta minutos. J&amp;aacute; em Manaus me separei do meu amigo e companheiro, Pr Sergio Cruz que retornou para Roraima e embarquei para a capital paulista onde cheguei por volta das 22 horas.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Trouxe comigo um sentimento maravilhoso em ver aqueles irm&amp;atilde;os simples e com pouco ou quase nenhum recurso, mas muito empolgados e trabalhadores. Um exemplo &amp;agrave; ser seguido, com certeza.&lt;/p&gt;&lt;p&gt;Parab&amp;eacute;ns ao Pr. S&amp;eacute;rgio Cruz que n&amp;atilde;o tem medido esfor&amp;ccedil;os para conduzir nossa conven&amp;ccedil;&amp;atilde;o no Amazonas, Amap&amp;aacute; e Roraima; aos Pastores Valdiney e Nelson pelo belo trabalho quem tem executado em suas regionais.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'http://conselhonacional.org.br/site/viagem-missionaria-para-o-ribeirinho-do-amazonas/', '2018-08-30 16:35:37'),
(3, 'Nova Publicação de teste', 'Teste 2', '&lt;p&gt;&lt;span class=&quot;fr-img-caption fr-fic fr-dib fr-draggable&quot; contenteditable=&quot;false&quot; draggable=&quot;false&quot; style=&quot;width: 301px; width: 301px; width: 301px;&quot;&gt;&lt;span class=&quot;fr-img-wrap&quot;&gt;&lt;a href=&quot;http://index.php&quot;&gt;&lt;img src=&quot;blob:http://localhost/75d91b1b-106c-48fa-a46f-85c873ab6aa8&quot;&gt;&lt;/a&gt;&lt;span class=&quot;fr-inner&quot; contenteditable=&quot;true&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Sistema de busca Busquei, mas uma novidade para o mundo da tecnologia.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Com funcionalidade bem distintas, o sistema conta com as mais novas ferramentas de desenvolvimento web, itera&amp;ccedil;&amp;atilde;o com usu&amp;aacute;rio e muito mais...&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;blockquote&gt;&lt;p style=&quot;margin-left: 20px;&quot;&gt;&lt;span style=&quot;font-size: 14px; font-family: Tahoma, Geneva, sans-serif;&quot;&gt;Ponsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-left: 20px;&quot;&gt;&lt;span style=&quot;font-family: Tahoma,Geneva,sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-left: 20px;&quot;&gt;&lt;span style=&quot;font-family: Tahoma,Geneva,sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-left: 20px;&quot;&gt;&lt;span style=&quot;font-family: Tahoma,Geneva,sans-serif;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;/blockquote&gt;&lt;p style=&quot;margin-left: 20px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Ponsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;img src=&quot;blob:http://localhost/bc2e3af2-425c-456f-9e15-7ece9cd9c832&quot; style=&quot;width: 98px;&quot; class=&quot;fr-fic fr-fil fr-dii&quot;&gt;Ponsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Ponsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Thiago de Jesus', '2018-08-30 17:01:04'),
(4, 'Teste 2', 'Novo teste', '&lt;p&gt;&lt;img src=&quot;blob:http://localhost/54332cf0-55e2-4747-88e4-4ddb18507db4&quot; style=&quot;width: 730px;&quot; class=&quot;fr-fic fr-dib fr-fil&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Ponsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Ponsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Ponsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Ponsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Ponsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Editor de texto padrão', '2018-08-30 17:30:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_users`
--

CREATE TABLE `telefone_users` (
  `id_tel` int(11) NOT NULL,
  `tel_1` varchar(15) NOT NULL,
  `tel_2` varchar(15) DEFAULT NULL,
  `tel_3` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `telefone_users`
--

INSERT INTO `telefone_users` (`id_tel`, `tel_1`, `tel_2`, `tel_3`) VALUES
(1, '(11)4551-8227', '(11)98766-2910', ''),
(2, '(11)4551-8227', '(11)98766-2910', '(11)3255-2226'),
(3, '(11)4551-8227', '(11)98766-2910', '(11)3255-2226'),
(4, '(11)4551-8227', '(11)94852-7489', ''),
(5, '(11)1234-5678', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `id_end` int(11) DEFAULT NULL,
  `id_tel` int(11) DEFAULT NULL,
  `cargo` varchar(30) NOT NULL DEFAULT 'Membro',
  `ativo` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `user`, `nome`, `password`, `email`, `cpf`, `id_end`, `id_tel`, `cargo`, `ativo`) VALUES
(1, 'thiago.jesus', 'Thiago de Jesus', 'thiago123', 'thiagodejesus86@gmail.com', '337.286.398-42', NULL, NULL, 'DiÃ¡cono', 1),
(2, 'jenifer.silva', 'Jenifer Regina Alves Silva de Jesus', 'jenifer123', 'jeniferergina.silva@gmail.com', '399.310.018-28', NULL, NULL, 'Diaconisa', 1),
(3, 'valmir.silva', 'Valmir Alves da Silva', 'valmir123', 'valmir@gmail.com', '123.456.789-00', NULL, NULL, 'PresbÃ­tero', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nivel` int(1) NOT NULL DEFAULT '0',
  `ativo` int(1) NOT NULL DEFAULT '1',
  `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user_login`
--

INSERT INTO `user_login` (`id`, `email`, `user`, `password`, `nivel`, `ativo`, `data`) VALUES
(1, 'admin@email.com', 'admin', '200806', 2, 1, '2018-01-04 00:45:49'),
(2, 'thiago@email.com', 'thiago.jesus', 'thiago123', 1, 1, '2018-01-04 00:46:50'),
(3, 'marcos@email.com', 'marcos.rodrigues', 'marcos123', 0, 1, '2018-01-04 00:47:21'),
(4, 'pr.josue@email.com', 'josue.estevam', 'josue123', 0, 1, '2018-01-04 00:47:57'),
(5, 'joao@email.com', 'joao.silva', 'joao123', 0, 0, '2018-08-24 12:23:41'),
(6, 'maria@email.com', 'maria.souza', 'maria123', 0, 0, '2018-08-24 16:35:47'),
(7, 'herick.souza@gmail.com', 'herick.souza', 'herick123', 0, 0, '2018-08-27 13:02:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `fk_comentarios_user_login` 
	FOREIGN KEY (`id_user_login`)
	REFERENCES user_login (id);
	
	ALTER TABLE `comentarios`
	ADD CONSTRAINT `fk_comentarios_news` 
	FOREIGN KEY (`id_news`)
	REFERENCES news (id);

--
-- Indexes for table `conteudo`
--
ALTER TABLE `conteudo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `endereco_users`
--
ALTER TABLE `endereco_users`
  ADD PRIMARY KEY (`id_end`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foto_perfil`
--
ALTER TABLE `foto_perfil`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `igrejas`
--
ALTER TABLE `igrejas`
  ADD PRIMARY KEY (`id_igrejas`);

--
-- Indexes for table `membros`
--
ALTER TABLE `membros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preferencias`
--
ALTER TABLE `preferencias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publicacoes`
--
ALTER TABLE `publicacoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telefone_users`
--
ALTER TABLE `telefone_users`
  ADD PRIMARY KEY (`id_tel`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `conteudo`
--
ALTER TABLE `conteudo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `endereco_users`
--
ALTER TABLE `endereco_users`
  MODIFY `id_end` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `foto_perfil`
--
ALTER TABLE `foto_perfil`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `igrejas`
--
ALTER TABLE `igrejas`
  MODIFY `id_igrejas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `membros`
--
ALTER TABLE `membros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `preferencias`
--
ALTER TABLE `preferencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `publicacoes`
--
ALTER TABLE `publicacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `telefone_users`
--
ALTER TABLE `telefone_users`
  MODIFY `id_tel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
