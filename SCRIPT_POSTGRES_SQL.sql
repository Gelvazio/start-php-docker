
/*CREATE or alter PROCEDURE selFilhosMenu (IN idmenu_pai INT)  READS SQL DATA
BEGIN
  SELECT am.idmenu,
      am.nom_menu,
      am.idmenu_pai,
      am.url,
      am.tooltip,
      am.img_menu,
      am.imgdisabled,
      am.disabled,
      am.hotkey,
      am.boolSeparator,
      am.jsonParams,
      am.sit_ativo,
      am.dat_inclusao,
      am.dat_update
  FROM acesso_menu as am
  where am.idmenu_pai = idmenu_pai;
END$$

CREATE DEFINER=root@localhost PROCEDURE selFilhosMenuQtd (IN idmenu_pai INT)  BEGIN
  SELECT idmenu_pai
        ,count(*) as qtd
  FROM acesso_menu as am
  where am.idmenu_pai = idmenu_pai;
END$$

CREATE DEFINER=root@localhost PROCEDURE selMenuQtd ()  READS SQL DATA
BEGIN
  SELECT count(*) as qtd FROM acesso_menu as am;
END$$

DELIMITER ;
*/

-- --------------------------------------------------------

--drop table acesso_menu

--
-- Estrutura da tabela acesso_menu
--


CREATE TABLE acesso_menu (
  idmenu int NOT NULL,
  nom_menu varchar(45) NOT null,
  idmenu_pai int DEFAULT null,
  url varchar(300)  DEFAULT null,
  tooltip varchar(300)  DEFAULT null,
  img_menu varchar(45)  DEFAULT null,
  imgdisabled varchar(45)  DEFAULT null,
  disabled varchar(1)  DEFAULT 'N',
  hotkey varchar(45)  DEFAULT null,
  boolSeparator INT DEFAULT NULL,
  jsonParams varchar(300)  DEFAULT NULL,
  sit_ativo varchar(1)  NOT NULL DEFAULT 'S',
  dat_inclusao date NOT NULL DEFAULT current_timestamp,
  dat_update date DEFAULT current_timestamp
);

--
-- Extraindo dados da tabela acesso_menu
--

INSERT INTO acesso_menu (idmenu, nom_menu, idmenu_pai, url, tooltip, img_menu, imgdisabled, disabled, hotkey, boolSeparator, jsonParams, sit_ativo, dat_inclusao, dat_update) VALUES
(1, 'Menu', NULL, NULL, NULL, 'menu-alt-512.png', NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(2, 'Pessoas', NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(3, 'Autoridades', NULL, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(7, 'Tabelas de Apoio', NULL, NULL, NULL, 'table16.gif', NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(8, 'Acesso', NULL, NULL, NULL, 'icon-key-yellow.png', NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(9, 'Sobre', NULL, 'modulos/sys_about.php', NULL, 'information-circle.jpg', NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(10, 'Config Ambiente', NULL, NULL, NULL, 'setting-gear-512.png', NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(11, 'Pedido', 1, 'modulos/pedido.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(12, 'Item do Pedido', 1, 'modulos/pedido_item.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(13, 'Produto', 1, 'modulos/produto.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(14, 'Marca', 1, 'modulos/marca.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(21, 'pessoa', 2, 'modulos/pessoa.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(22, 'pessoa_fisica', 2, 'modulos/pessoa_fisica.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(23, 'pessoa_juridica', 2, 'modulos/pessoa_juridica.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(24, 'Endereço', 2, 'modulos/endereco.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(25, 'Telefone', 2, 'modulos/telefone.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(31, 'Cadastro Autoridades', 3, 'modulos/autoridade.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(71, 'Região', 7, 'modulos/regiao.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(72, 'UF', 7, 'modulos/uf.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(73, 'Município', 7, 'modulos/municipio.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(74, 'Meta Tipo', 7, 'modulos/meta_tipo.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(75, 'Tipo', 7, 'modulos/tipo.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(76, 'Natureza Jurídica', 7, 'modulos/natureza_juridica.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(81, 'Usuários', 8, 'modulos/acesso_user.php', NULL, 'user916.gif', NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(82, 'Pefil de Acesso', 8, 'modulos/acesso_perfil.php', NULL, 'icon_mask.png', NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(83, 'Menu', 8, 'modulos/acesso_menu.php', NULL, 'icon-menu.png', NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(84, 'Relacionar Perfil com Menu', 8, 'modulos/acesso_perfil_menu.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(85, 'Relacionar Perfil com Usuário', 8, 'modulos/acesso_perfil_user.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(86, 'Alterar a minha senha', 8, 'modulos/acesso_senha.php', NULL, 'lock16.gif', NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(101, 'Ambiente Resumido', 10, 'modulos/sys_environment_summary.php', NULL, 'information-circle.jpg', NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(102, 'PHPInfo', 10, 'modulos/sys_environment.php', NULL, 'php_logo.png', NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(104, 'Gerador VO/DAO', 10, '../base/includes/gerador_vo_dao.php', NULL, NULL, NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(105, 'Gerador Form VO/DAO', 10, '../base/includes/gerador_form_vo_dao.php', NULL, 'smiley-1-512.png', NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(111, 'Banco', NULL, NULL, NULL, 'data_base.png', NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(1111, 'Commit', 111, 'modulos/database_commit.php', NULL, 'database_commit.png', NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(1112, 'Commit', 111, 'modulos/database_rollback.php', NULL, 'database_rollback.png', NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(1113, 'Commit', 111, 'modulos/database_rollback.php', NULL, 'database_balance.png', NULL, 'N', NULL, NULL, NULL, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela acesso_perfil
--

CREATE TABLE acesso_perfil (
  idperfil int NOT NULL,
  nom_perfil varchar(45)  NOT NULL,
  sit_ativo varchar(1)  NOT NULL DEFAULT 'S',
  dat_inclusao date NOT NULL DEFAULT current_timestamp,
  dat_update date DEFAULT current_timestamp
) ;

--
-- Extraindo dados da tabela acesso_perfil
--

INSERT INTO acesso_perfil (idperfil, nom_perfil, sit_ativo, dat_inclusao, dat_update) VALUES
(1, 'Root', 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(2, 'Admin', 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(3, 'User', 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(4, 'trainee', 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela acesso_perfil_menu
--

CREATE TABLE acesso_perfil_menu (
  idperfilmenu int NOT NULL,
  idperfil int NOT NULL,
  idmenu int NOT NULL,
  sit_ativo varchar(1)  NOT NULL DEFAULT 'S',
  dat_inclusao date NOT NULL DEFAULT current_timestamp,
  dat_update date DEFAULT current_timestamp
) ;

--
-- Extraindo dados da tabela acesso_perfil_menu
--

INSERT INTO acesso_perfil_menu (idperfilmenu, idperfil, idmenu, sit_ativo, dat_inclusao, dat_update) VALUES
(1, 1, 1, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(2, 1, 2, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(3, 1, 3, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(4, 1, 7, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(5, 1, 8, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(6, 1, 9, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(7, 1, 10, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(8, 1, 11, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(9, 1, 12, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(10, 1, 13, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(11, 1, 14, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(12, 1, 21, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(13, 1, 22, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(14, 1, 23, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(15, 1, 24, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(16, 1, 25, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(17, 1, 31, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(18, 1, 71, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(19, 1, 72, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(20, 1, 73, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(21, 1, 74, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(22, 1, 75, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(23, 1, 76, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(24, 1, 81, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(25, 1, 82, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(26, 1, 83, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(27, 1, 84, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(28, 1, 85, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(29, 1, 86, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(30, 1, 101, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(31, 1, 102, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(32, 1, 104, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(33, 1, 105, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(34, 1, 111, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(35, 1, 1111, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(36, 1, 1112, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(37, 1, 1113, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(38, 2, 1, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(39, 2, 2, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(40, 2, 3, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(41, 2, 7, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(42, 2, 8, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(43, 2, 9, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(44, 2, 11, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(45, 2, 12, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(46, 2, 13, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(47, 2, 14, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(48, 2, 21, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(49, 2, 22, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(50, 2, 23, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(51, 2, 24, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(52, 2, 25, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(53, 2, 31, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(54, 2, 71, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(55, 2, 72, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(56, 2, 73, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(57, 2, 74, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(58, 2, 75, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(59, 2, 76, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(60, 2, 81, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(61, 2, 82, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(62, 2, 83, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(63, 2, 84, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(64, 2, 85, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(65, 2, 86, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(66, 3, 1, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(67, 3, 2, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(68, 3, 3, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(69, 3, 8, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(70, 3, 9, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(71, 3, 11, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(72, 3, 12, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(73, 3, 13, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(74, 3, 14, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(75, 3, 21, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(76, 3, 22, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(77, 3, 23, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(78, 3, 24, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(79, 3, 25, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(80, 3, 31, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(81, 3, 86, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(82, 4, 2, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(83, 4, 22, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(84, 4, 23, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(85, 4, 8, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(86, 4, 86, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(87, 4, 9, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela acesso_perfil_user
--

CREATE TABLE acesso_perfil_user (
  idperfiluser int NOT NULL,
  idperfil int NOT NULL,
  iduser int NOT NULL,
  sit_ativo varchar(1)  NOT NULL DEFAULT 'S',
  dat_inclusao date NOT NULL DEFAULT current_timestamp,
  dat_update date DEFAULT current_timestamp
) ;

--
-- Extraindo dados da tabela acesso_perfil_user
--

INSERT INTO acesso_perfil_user (idperfiluser, idperfil, iduser, sit_ativo, dat_inclusao, dat_update) VALUES
(1, 1, 1, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(2, 2, 2, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(3, 3, 3, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07'),
(4, 4, 4, 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela acesso_user
--

CREATE TABLE acesso_user (
  iduser int NOT NULL,
  login_user varchar(50)  NOT NULL,
  pwd_user varchar(200)  DEFAULT null,
  sit_ativo varchar(1)  NOT NULL DEFAULT 'S',
  dat_inclusao date NOT NULL DEFAULT current_timestamp,
  dat_update date DEFAULT current_timestamp,
  idpessoa int DEFAULT NULL
) ;

--
-- Extraindo dados da tabela acesso_user
--

INSERT INTO acesso_user (iduser, login_user, pwd_user, sit_ativo, dat_inclusao, dat_update, idpessoa) VALUES
(1, 'root', '$2y$10$rZRlCy2AV9414eAj8CeOv.l4dmPjdcTMnB4yV1VgnOAOdLSJJOPlW', 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07', NULL),
(2, 'admin', '$2y$10$xInu90xW0jOAIWU7p6Oyne2bE9w.qw71g7VptJ31c4W/p43c/sQI.', 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07', NULL),
(3, 'user', '$2y$10$INcEJxjWQ8leDesYxjDqIOv8ivBqlySlG41c2v/pYC..C/Cj2Dffe', 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07', NULL),
(4, 'trainee', '$2y$10$T6s14LOdMknFkGl8enAVo.0DVAQmrxawEuIzGy8dlwR/Q02M.9ZeC', 'S', '2021-02-22 15:23:07', '2021-02-22 15:23:07', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela autoridade
--

CREATE TABLE autoridade (
  idautoridade int NOT NULL,
  dat_inclusao date NOT NULL DEFAULT current_timestamp,
  dat_evento date NOT NULL ,--COMMENT 'Data do evento',
  ordem int NOT NULL ,--COMMENT 'ordem daa autoridades',
  cargo varchar(100)  NOT null,-- COMMENT 'nome do cargo da autoridade',
  nome_pessoa varchar(100)  NOT null-- COMMENT 'nome da pessoa'
);

-- --------------------------------------------------------

--
-- Estrutura da tabela endereco
--

CREATE TABLE endereco (
  idendereco int NOT NULL,
  endereco varchar(300)  NOT NULL,
  idpessoa int NOT NULL,
  idtipo_endereco int NOT NULL,
  cod_municipio int NOT null,-- COMMENT 'código do municipio',
  cep varchar(8)  DEFAULT NULL,
  numero varchar(5)  DEFAULT NULL,
  complemento varchar(300)  DEFAULT NULL,
  bairro varchar(300)  DEFAULT NULL,
  cidade varchar(300)  DEFAULT NULL,
  dat_inclusao date NOT NULL DEFAULT current_timestamp,
  dat_alteracao date DEFAULT current_timestamp
) ;

-- --------------------------------------------------------

--
-- Estrutura da tabela marca
--

CREATE TABLE marca (
  idmarca int NOT NULL,
  nom_marca varchar(45)  DEFAULT NULL,
  idpessoa int NOT NULL
) ;

--
-- Extraindo dados da tabela marca
--

INSERT INTO marca (idmarca, nom_marca, idpessoa) VALUES
(1, 'XPS', 4),
(2, 'Alienware', 4),
(3, 'Precision', 4),
(4, 'EMC', 4),
(5, 'PowerEdge', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela meta_tipo
--

CREATE TABLE meta_tipo (
  idMetaTipo int NOT NULL,
  descricao varchar(100)  NOT NULL,
  sit_ativo char(1)  DEFAULT 'S'
) ;

--
-- Extraindo dados da tabela meta_tipo
--

INSERT INTO meta_tipo (idMetaTipo, descricao, sit_ativo) VALUES
(1, 'Telefone', 'S'),
(2, 'Endereço', 'S'),
(3, 'Produto', 'S'),
(4, 'Pagamento', 'S');

-- --------------------------------------------------------

--
-- Estrutura da tabela municipio
--

CREATE TABLE municipio (
  cod_municipio int NOT NULL,
  cod_uf int NOT NULL,
  nom_municipio varchar(200)  NOT NULL,
  sit_ativo varchar(1)  NOT NULL DEFAULT 'S'
) ;

--
-- Extraindo dados da tabela municipio
--

-- --------------------------------------------------------

--
-- Estrutura da tabela natureza_juridica
--

CREATE TABLE natureza_juridica (
  idnatureza_juridica int NOT NULL,
  nom_natureza_juridicac varchar(300)  NOT null,-- COMMENT 'Natureza Jurídica ',
  administradores varchar(1000)  DEFAULT null -- COMMENT 'Integrantes do Quadro de Sócios e Administradores '
) ;

-- --------------------------------------------------------

--
-- Estrutura da tabela pedido
--

CREATE TABLE pedido (
  idpedido int NOT NULL,
  idpessoa int NOT NULL ,--COMMENT 'Pessoa que irá receber o pagamento',
  dat_pedido date NOT NULL,
  idtipo_pagamento int NOT NULL
) ;

--
-- Extraindo dados da tabela pedido
--

INSERT INTO pedido (idpedido, idpessoa, dat_pedido, idtipo_pagamento) VALUES
(1, 1, '2014-09-10 14:00:00', 12),
(2, 2, '2014-09-10 14:00:00', 12),
(3, 3, '2014-09-10 14:00:00', 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela pedido_item
--

CREATE TABLE pedido_item (
  idpedido_item int NOT NULL,
  idpedido int NOT NULL,
  idproduto int NOT NULL,
  qtd_unidade int NOT NULL,
  preco float NOT NULL
) ;

--
-- Extraindo dados da tabela pedido_item
--

INSERT INTO pedido_item (idpedido_item, idpedido, idproduto, qtd_unidade, preco) VALUES
(1, 1, 3, 1, 24560),
(2, 1, 4, 4, 10),
(3, 3, 5, 1, 50687),
(4, 3, 6, 4, 15445);

-- --------------------------------------------------------

--
-- Estrutura da tabela pessoa
--

CREATE TABLE pessoa (
  idpessoa int NOT NULL,
  nome varchar(200)  NOT NULL,
  tipo char(2)  NOT null,-- COMMENT '''Valor permitidos PF ou PJ''',
  sit_ativo varchar(1)  NOT NULL DEFAULT 'S',
  dat_inclusao date NOT NULL DEFAULT current_timestamp,-- COMMENT 'Data da inclusão de uma pessoa',
  dat_alteracao date DEFAULT current_timestamp --COMMENT 'Data da alteração do registro da pessoa'
) ;

--
-- Extraindo dados da tabela pessoa
--

INSERT INTO pessoa (idpessoa, nome, tipo, sit_ativo, dat_inclusao, dat_alteracao) VALUES
(1, 'João Tavares', 'PF', 'S', '2021-02-22 15:22:30', '2021-02-22 15:22:30'),
(2, 'Francisco X', 'PF', 'S', '2021-02-22 15:22:30', '2021-02-22 15:22:30'),
(3, 'Joceli', 'PF', 'S', '2021-02-22 15:22:30', '2021-02-22 15:22:30'),
(4, 'Dell', 'PJ', 'S', '1994-02-01 23:59:59', '2021-02-22 15:22:30'),
(5, 'Google', 'PJ', 'S', '1998-09-04 23:59:59', '2021-02-22 15:22:30'),
(6, 'Ágata Açaí Pará', 'PF', 'S', '1098-09-04 23:59:59', '2021-02-22 15:22:30'),
(7, 'Microsoft', 'PJ', 'S', '1975-04-04 23:59:59', '2021-02-22 15:22:30'),
(8, 'Márcio', 'PF', 'S', '2021-02-22 15:22:30', '2021-02-22 15:22:30'),
(9, 'Ítalo', 'PF', 'S', '2021-02-22 15:22:30', '2021-02-22 15:22:30'),
(10, 'Áurea', 'PF', 'S', '2021-02-22 15:22:30', '2021-02-22 15:22:30'),
(11, 'Emília Javé', 'PF', 'S', '2021-02-22 15:22:30', '2021-02-22 15:22:30'),
(12, 'Ângela Estefânia Cainã', 'PF', 'S', '2021-02-22 15:22:30', '2021-02-22 15:22:30'),
(13, 'Ana Clara Reis', 'PF', 'S', '2021-02-22 15:22:30', '2021-02-22 15:22:30'),
(14, 'Ana Carolina Mota', 'PF', 'S', '2021-02-22 15:22:30', '2021-02-22 15:22:30'),
(15, 'Ana Caroline Medeiros', 'PF', 'N', '2021-02-22 15:22:30', '2021-02-22 15:22:30'),
(16, 'Carlos Dias Medeiros', 'PF', 'S', '2021-02-22 15:22:30', '2021-02-22 15:22:30'),
(17, 'Mario Medeiros Andrade', 'PF', 'S', '2021-02-22 15:22:30', '2021-02-22 15:22:30'),
(18, 'Pesso com Percente % no meio do nome', 'PF', 'S', '2021-02-22 15:22:30', '2021-02-22 15:22:30'),
(19, 'Pesso com aspas simples \ no meio do nome', 'PF', 'S', '2021-02-22 15:22:30', '2021-02-22 15:22:30'),
(20, 'Pesso com aspas duplas \ no meio do nome', 'PF', 'S', '2021-02-22 15:22:30', '2021-02-22 15:22:30'),
(21, 'Apple', 'PJ', 'S', '1976-04-01 00:00:00', '2021-02-22 15:22:30'),
(22, 'Amazon', 'PJ', 'S', '1994-01-01 00:00:00', '2021-02-22 15:22:30'),
(23, 'Facebook', 'PJ', 'S', '2004-02-01 00:00:00', '2021-02-22 15:22:30'),
(24, 'Tencent', 'PJ', 'S', '2004-02-01 00:00:00', '2021-02-22 15:22:30'),
(25, 'Samsung', 'PJ', 'S', '1969-02-01 00:00:00', '2021-02-22 15:22:30'),
(26, 'Intel', 'PJ', 'S', '1969-02-01 00:00:00', '2021-02-22 15:22:30'),
(27, 'Cisco', 'PJ', 'S', '1984-02-01 00:00:00', '2021-02-22 15:22:30'),
(28, 'Twitter', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:30'),
(29, 'Instagram', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:30'),
(30, 'Vivo', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(31, 'Oracle', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(32, 'Logicalis', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(33, 'Intelbras', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(34, 'Mercado Livre', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(35, 'Getnet', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(36, 'Algar Telecom', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(37, 'IBM Brasil', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(38, 'Clear Sale', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(39, 'Cielo', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(40, 'Cognizant Brasil', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(41, 'Atento Brasil', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(42, 'VMware', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(43, 'Locaweb', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(44, 'Itaúsa', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(45, 'Eletrobrás', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(46, 'Vale', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(47, 'JBS', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(48, 'Banco do Brasil', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(49, 'Banco Bradesco', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(50, 'Petrobras', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(51, 'BRASKEM', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(52, 'BUNGE ALIMENTOS', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(53, 'SHELL BRASIL', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(54, 'CORREIOS', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31'),
(55, 'Nextel', 'PJ', 'S', '2004-01-01 00:00:00', '2021-02-22 15:22:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela pessoa_fisica
--

CREATE TABLE pessoa_fisica (
  idpessoa_fisica int NOT NULL,
  idpessoa int NOT NULL,
  cpf varchar(11)  NOT NULL,
  rg varchar(45)  DEFAULT null,-- COMMENT 'Registro Geral, muda de estado para estado. Uma pessoa pode ter mais de um porém geralmente tem apenas um',
  dat_nascimento date DEFAULT NULL,
  cod_municipio_nascimento int DEFAULT NULL,
  dat_inclusao date NOT NULL DEFAULT current_timestamp,
  dat_alteracao date DEFAULT current_timestamp
) ;

--
-- Extraindo dados da tabela pessoa_fisica
--

INSERT INTO pessoa_fisica (idpessoa_fisica, idpessoa, cpf, rg, dat_nascimento, cod_municipio_nascimento, dat_inclusao, dat_alteracao) VALUES
(1, 15, '34261847027', NULL, '1990-02-20', NULL, '2021-02-22 15:22:31', NULL),
(2, 17, '82204504017', NULL, '2000-08-12', NULL, '2021-02-22 15:22:31', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela pessoa_juridica
--

CREATE TABLE pessoa_juridica (
  idpessoa_juridica int NOT NULL,
  cnpj varchar(14)  NOT NULL,
  idpessoa int NOT NULL,
  cnae int DEFAULT null,-- COMMENT 'códigos de atividades econômicas em todo o país',
  idnatureza_juridica int DEFAULT NULL,
  dat_inclusao date NOT NULL DEFAULT current_timestamp,
  dat_alteracao date DEFAULT current_timestamp
) ;

-- --------------------------------------------------------

--
-- Estrutura da tabela produto
--

CREATE TABLE produto (
  idproduto int NOT NULL,
  nom_produto varchar(45)  NOT NULL,
  modelo varchar(45)  NOT NULL,
  versao varchar(45)  NOT NULL,
  idmarca int NOT NULL,
  idtipo_produto int NOT NULL
) ;

--
-- Extraindo dados da tabela produto
--

INSERT INTO produto (idproduto, nom_produto, modelo, versao, idmarca, idtipo_produto) VALUES
(1, 'Alienware 17 R5', 'cuaw17r5i7bf2', 'V1.0', 2, 7),
(2, 'Alienware 17 R5', 'cuaw17r5i9bf3', 'V1.0', 2, 7),
(3, 'Alienware 17 R5', 'cuaw17r5i7br1wps', 'V1.0', 2, 7),
(4, 'XPS 13', 'xps-13-9370', 'V2.0', 2, 7),
(5, 'PowerEdge R6415', 'R6415', 'V1.0', 5, 7),
(6, 'PowerEdge R240', 'R240', 'V1.0', 5, 7),
(7, 'PowerEdge R240', 'R240', 'V2.0', 5, 7),
(8, 'PowerEdge R740', 'R740', 'V1.0', 5, 7),
(9, 'PowerEdge R740xd', 'R740xd', 'V1.0', 5, 7),
(10, 'PowerEdge R740xd2', 'R740xd', 'V2.0', 5, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela regiao
--

CREATE TABLE regiao (
  cod_regiao int NOT NULL,
  nom_regiao varchar(45)  NOT NULL
) ;

--
-- Extraindo dados da tabela regiao
--

INSERT INTO regiao (cod_regiao, nom_regiao) VALUES
(1, 'Norte'),
(2, 'Nordeste'),
(3, 'Sudeste'),
(4, 'Sul'),
(5, 'Centro-Oeste'),
(9, 'Brasil Todos');

-- --------------------------------------------------------

--
-- Estrutura da tabela telefone
--

CREATE TABLE telefone (
  idtelefone int NOT NULL,
  numero varchar(45)  NOT NULL,
  idpessoa int NOT null,-- COMMENT 'dono do telefone',
  idtipo_telefone int NOT null,-- COMMENT 'tipo de telefon',
  idendereco int DEFAULT NULL,
  sit_fixo char(1)  DEFAULT NULL,
  whastapp char(1)  DEFAULT null,-- COMMENT 'informa se o numero tem whastapp',
  telegram char(1)  DEFAULT null,-- COMMENT 'informa se o numero tem telegram',
  dat_inclusao date NOT NULL DEFAULT current_timestamp,
  dat_alteracao date DEFAULT current_timestamp
) ;

-- --------------------------------------------------------

--
-- Estrutura da tabela tipo
--

CREATE TABLE tipo (
  idtipo int NOT NULL,
  descricao varchar(100)  NOT NULL,
  idmeta_tipo int NOT NULL,
  sit_ativo char(1)  DEFAULT NULL
) ;

--
-- Extraindo dados da tabela tipo
--

INSERT INTO tipo (idtipo, descricao, idmeta_tipo, sit_ativo) VALUES
(1, 'Residencial', 1, 'S'),
(2, 'Comercial', 1, 'S'),
(3, 'Comercial - Atendimento', 1, 'S'),
(4, 'Comercial - Gerente', 1, 'S'),
(5, 'Residencial', 2, 'S'),
(6, 'Comercial', 2, 'S'),
(7, 'Informatica', 3, 'S'),
(8, 'Livro', 3, 'S'),
(9, 'Eletronico', 3, 'S'),
(10, 'Dinheiro', 4, 'S'),
(11, 'Debito', 4, 'S'),
(12, 'Credito', 4, 'S'),
(13, 'BitCoin', 4, 'S'),
(14, 'Ingresso', 3, 'S');

-- --------------------------------------------------------

--
-- Estrutura da tabela uf
--

CREATE TABLE uf (
  cod_uf int NOT NULL,
  nom_uf varchar(45)  NOT NULL,
  sig_uf varchar(45)  NOT null,-- COMMENT 'sigla da uf',
  cod_regiao int NOT NULL
) ;

--
-- Extraindo dados da tabela uf
--

INSERT INTO uf (cod_uf, nom_uf, sig_uf, cod_regiao) VALUES
(11, 'RONDONIA', 'RO', 1),
(12, 'ACRE', 'AC', 1),
(13, 'AMAZONAS', 'AM', 1),
(14, 'RORAIMA', 'RR', 1),
(15, 'PARA', 'PA', 1),
(16, 'AMAPA', 'AP', 1),
(17, 'TOCANTINS', 'TO', 1),
(21, 'MARANHAO', 'MA', 2),
(22, 'PIAUI', 'PI', 2),
(23, 'CEARA', 'CE', 2),
(24, 'RIO GRANDE DO NORTE', 'RN', 2),
(25, 'PARAIBA', 'PB', 2),
(26, 'PERNAMBUCO', 'PE', 2),
(27, 'ALAGOAS', 'AL', 2),
(28, 'SERGIPE', 'SE', 2),
(29, 'BAHIA', 'BA', 2),
(31, 'MINAS GERAIS', 'MG', 3),
(32, 'ESPIRITO SANTO', 'ES', 3),
(33, 'RIO DE JANEIRO', 'RJ', 3),
(35, 'SAO PAULO', 'SP', 3),
(41, 'PARANA', 'PR', 4),
(42, 'SANTA CATARINA', 'SC', 4),
(43, 'RIO GRANDE DO SUL', 'RS', 4),
(50, 'MATO GROSSO DO SUL', 'MS', 5),
(51, 'MATO GROSSO', 'MT', 5),
(52, 'GOIÁS', 'GO', 5),
(53, 'DISTRITO FEDERAL', 'DF', 5),
(99, 'Unico', 'UC', 9);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista vw_acesso_user_menu
-- (Veja abaixo para a view atual)
--
CREATE TABLE vw_acesso_user_menu (
iduser int
,login_user varchar(50)
,idperfil int
,nom_perfil varchar(45)
,idmenu int
,nom_menu varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista vw_pessoa
-- (Veja abaixo para a view atual)
--
CREATE TABLE vw_pessoa (
idpessoa int
,cpfcnpj varchar(14)
,nome varchar(200)
,tipo char(2)
,sit_ativo varchar(1)
,dat_inclusao date
,dat_inclusao_format varchar(10)
,dat_alteracao date
,dat_alteracao_format varchar(10)
,cpf varchar(11)
,idpessoa_fisica int
,cod_municipio_nascimento int
,dat_nascimento date
,dat_nascimento_format varchar(10)
,idnatureza_juridica int
,cnpj varchar(14)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista vw_pessoa_fisica
-- (Veja abaixo para a view atual)
--
CREATE TABLE vw_pessoa_fisica (
idpessoa int
,nome varchar(200)
,tipo char(2)
,sit_ativo varchar(1)
,cpf varchar(11)
,rg varchar(45)
,cod_uf int
,nom_uf varchar(45)
,sig_uf varchar(45)
,cod_municipio_nascimento int
,nom_municipio varchar(200)
,dat_nascimento date
,dat_nascimento_format varchar(10)
,idpessoa_fisica int
,dat_inclusao date
,dat_alteracao date
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista vw_pessoa_marca_produto
-- (Veja abaixo para a view atual)
--
CREATE TABLE vw_pessoa_marca_produto (
idpessoa int
,nome varchar(200)
,idmarca int
,nom_marca varchar(45)
,idproduto int
,nom_produto varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista vw_regiao_municipio
-- (Veja abaixo para a view atual)
--
CREATE TABLE vw_regiao_municipio (
cod_regiao int
,nom_regiao varchar(45)
,cod_uf int
,nom_uf varchar(45)
,sig_uf varchar(45)
,cod_municipio int
,nom_municipio varchar(200)
,sit_ativo varchar(1)
);

-- --------------------------------------------------------

--
-- Estrutura para vista vw_acesso_user_menu
--
DROP TABLE IF EXISTS vw_acesso_user_menu;

CREATE ALGORITHM=UNDEFINED DEFINER=root@localhost SQL SECURITY DEFINER VIEW vw_acesso_user_menu  AS SELECT u.iduser AS iduser, u.login_user AS login_user, p.idperfil AS idperfil, p.nom_perfil AS nom_perfil, m.idmenu AS idmenu, m.nom_menu AS nom_menu FROM ((((acesso_menu m join acesso_perfil_menu pm) join acesso_perfil p) join acesso_perfil_user pu) join acesso_user u) WHERE m.idmenu = pm.idmenu AND pm.idperfil = p.idperfil AND pm.idperfil = pu.idperfiluser AND pu.iduser = u.iduser ;

-- --------------------------------------------------------

--
-- Estrutura para vista vw_pessoa
--
DROP TABLE IF EXISTS vw_pessoa;

CREATE ALGORITHM=UNDEFINED DEFINER=root@localhost SQL SECURITY DEFINER VIEW vw_pessoa  AS SELECT p.idpessoa AS idpessoa, ifnull(pf.cpf,pj.cnpj) AS cpfcnpj, p.nome AS nome, p.tipo AS tipo, p.sit_ativo AS sit_ativo, p.dat_inclusao AS dat_inclusao, date_format(p.dat_inclusao,'%d/%m/%Y') AS dat_inclusao_format, p.dat_alteracao AS dat_alteracao, date_format(p.dat_alteracao,'%d/%m/%Y') AS dat_alteracao_format, pf.cpf AS cpf, pf.idpessoa_fisica AS idpessoa_fisica, pf.cod_municipio_nascimento AS cod_municipio_nascimento, pf.dat_nascimento AS dat_nascimento, date_format(pf.dat_nascimento,'%d/%m/%Y') AS dat_nascimento_format, pj.idnatureza_juridica AS idnatureza_juridica, pj.cnpj AS cnpj FROM ((pessoa p left join pessoa_fisica pf on(p.idpessoa = pf.idpessoa)) left join pessoa_juridica pj on(p.idpessoa = pj.idpessoa)) ;

-- --------------------------------------------------------

--
-- Estrutura para vista vw_pessoa_fisica
--
DROP TABLE IF EXISTS vw_pessoa_fisica;

CREATE ALGORITHM=UNDEFINED DEFINER=root@localhost SQL SECURITY DEFINER VIEW vw_pessoa_fisica  AS SELECT p.idpessoa AS idpessoa, p.nome AS nome, p.tipo AS tipo, p.sit_ativo AS sit_ativo, pf.cpf AS cpf, pf.rg AS rg, m.cod_uf AS cod_uf, m.nom_uf AS nom_uf, m.sig_uf AS sig_uf, pf.cod_municipio_nascimento AS cod_municipio_nascimento, m.nom_municipio AS nom_municipio, pf.dat_nascimento AS dat_nascimento, date_format(pf.dat_nascimento,'%d/%m/%Y') AS dat_nascimento_format, pf.idpessoa_fisica AS idpessoa_fisica, p.dat_inclusao AS dat_inclusao, p.dat_alteracao AS dat_alteracao FROM ((pessoa p left join pessoa_fisica pf on(p.idpessoa = pf.idpessoa)) left join vw_regiao_municipio m on(pf.cod_municipio_nascimento = m.cod_municipio)) WHERE p.tipo = 'PF' ;

-- --------------------------------------------------------

--
-- Estrutura para vista vw_pessoa_marca_produto
--
DROP TABLE IF EXISTS vw_pessoa_marca_produto;

CREATE ALGORITHM=UNDEFINED DEFINER=root@localhost SQL SECURITY DEFINER VIEW vw_pessoa_marca_produto  AS SELECT pe.idpessoa AS idpessoa, pe.nome AS nome, m.idmarca AS idmarca, m.nom_marca AS nom_marca, pr.idproduto AS idproduto, pr.nom_produto AS nom_produto FROM ((pessoa pe join marca m on(pe.idpessoa = m.idpessoa)) left join produto pr on(m.idmarca = pr.idmarca)) ;

-- --------------------------------------------------------

--
-- Estrutura para vista vw_regiao_municipio
--
DROP TABLE IF EXISTS vw_regiao_municipio;

CREATE ALGORITHM=UNDEFINED DEFINER=root@localhost SQL SECURITY DEFINER VIEW vw_regiao_municipio  AS SELECT r.cod_regiao AS cod_regiao, r.nom_regiao AS nom_regiao, u.cod_uf AS cod_uf, u.nom_uf AS nom_uf, u.sig_uf AS sig_uf, m.cod_municipio AS cod_municipio, m.nom_municipio AS nom_municipio, m.sit_ativo AS sit_ativo FROM ((regiao r join uf u) join municipio m) WHERE u.cod_regiao = r.cod_regiao AND m.cod_uf = u.cod_uf ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela acesso_menu
--
ALTER TABLE acesso_menu
  ADD PRIMARY KEY (idmenu),
  ADD KEY fk_acesso_menu_pai_idx (idmenu_pai);

--
-- Índices para tabela acesso_perfil
--
ALTER TABLE acesso_perfil
  ADD PRIMARY KEY (idperfil),
  ADD UNIQUE KEY nom_perfil_UNIQUE (nom_perfil);

--
-- Índices para tabela acesso_perfil_menu
--
ALTER TABLE acesso_perfil_menu
  ADD PRIMARY KEY (idperfilmenu),
  ADD KEY fk_acesso_perfil_menu_acesso_perfil1_idx (idperfil),
  ADD KEY fk_acesso_perfil_menu_acesso_menu1_idx (idmenu);

--
-- Índices para tabela acesso_perfil_user
--
ALTER TABLE acesso_perfil_user
  ADD PRIMARY KEY (idperfiluser),
  ADD KEY fk_acesso_perfil_user_acesso_user1_idx (iduser),
  ADD KEY fk_acesso_perfil_user_acesso_perfil1_idx (idperfil);

--
-- Índices para tabela acesso_user
--
ALTER TABLE acesso_user
  ADD PRIMARY KEY (iduser),
  ADD UNIQUE KEY nom_usuario_UNIQUE (login_user),
  ADD KEY fk_acesso_user_pessoa1_idx (idpessoa);

--
-- Índices para tabela autoridade
--
ALTER TABLE autoridade
  ADD PRIMARY KEY (idautoridade);

--
-- Índices para tabela endereco
--
ALTER TABLE endereco
  ADD PRIMARY KEY (idendereco),
  ADD KEY fk_endereco_pessoa1_idx (idpessoa),
  ADD KEY fk_endereco_tipo1_idx (idtipo_endereco),
  ADD KEY fk_endereco_municipio1_idx (cod_municipio);

--
-- Índices para tabela marca
--
ALTER TABLE marca
  ADD PRIMARY KEY (idmarca),
  ADD KEY fk_marca_pessoa_idx (idpessoa);

--
-- Índices para tabela meta_tipo
--
ALTER TABLE meta_tipo
  ADD PRIMARY KEY (idMetaTipo),
  ADD UNIQUE KEY descricao_UNIQUE (descricao);

--
-- Índices para tabela municipio
--
ALTER TABLE municipio
  ADD PRIMARY KEY (cod_municipio),
  ADD KEY fk_municipio_uf1_idx (cod_uf);

--
-- Índices para tabela natureza_juridica
--
ALTER TABLE natureza_juridica
  ADD PRIMARY KEY (idnatureza_juridica);

--
-- Índices para tabela pedido
--
ALTER TABLE pedido
  ADD PRIMARY KEY (idpedido),
  ADD KEY fk_pedido_tipo1_idx (idtipo_pagamento),
  ADD KEY fk_pedido_pessoa1_idx (idpessoa);

--
-- Índices para tabela pedido_item
--
ALTER TABLE pedido_item
  ADD PRIMARY KEY (idpedido_item),
  ADD KEY fk_pedido_item_pedido1_idx (idpedido),
  ADD KEY fk_pedido_item_produto1_idx (idproduto);

--
-- Índices para tabela pessoa
--
ALTER TABLE pessoa
  ADD PRIMARY KEY (idpessoa);

--
-- Índices para tabela pessoa_fisica
--
ALTER TABLE pessoa_fisica
  ADD PRIMARY KEY (idpessoa_fisica),
  ADD UNIQUE KEY cpf_UNIQUE (cpf),
  ADD KEY fk_pessoa_fisica_pessoa1_idx (idpessoa),
  ADD KEY fk_pessoa_fisica_municipio1_idx (cod_municipio_nascimento);

--
-- Índices para tabela pessoa_juridica
--
ALTER TABLE pessoa_juridica
  ADD PRIMARY KEY (idpessoa_juridica),
  ADD KEY fk_pessoa_juridica_pessoa1_idx (idpessoa),
  ADD KEY fk_pessoa_juridica_natureza_juridica1_idx (idnatureza_juridica);

--
-- Índices para tabela produto
--
ALTER TABLE produto
  ADD PRIMARY KEY (idproduto),
  ADD KEY fk_produto_marca1_idx (idmarca),
  ADD KEY fk_produto_tipo1_idx (idtipo_produto);

--
-- Índices para tabela regiao
--
ALTER TABLE regiao
  ADD PRIMARY KEY (cod_regiao);

--
-- Índices para tabela telefone
--
ALTER TABLE telefone
  ADD PRIMARY KEY (idtelefone),
  ADD KEY fk_telefone_pessoa1_idx (idpessoa),
  ADD KEY fk_telefone_tipo1_idx (idtipo_telefone),
  ADD KEY fk_telefone_endereco1_idx (idendereco);

--
-- Índices para tabela tipo
--
ALTER TABLE tipo
  ADD PRIMARY KEY (idtipo),
  ADD KEY fk_tipo_tipo_de_tipos_idx (idmeta_tipo);

--
-- Índices para tabela uf
--
ALTER TABLE uf
  ADD PRIMARY KEY (cod_uf),
  ADD KEY fk_uf_regiao1_idx (cod_regiao);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela acesso_perfil
--
ALTER TABLE acesso_perfil
  MODIFY idperfil int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela acesso_perfil_menu
--
ALTER TABLE acesso_perfil_menu
  MODIFY idperfilmenu int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de tabela acesso_perfil_user
--
ALTER TABLE acesso_perfil_user
  MODIFY idperfiluser int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela acesso_user
--
ALTER TABLE acesso_user
  MODIFY iduser int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela autoridade
--
ALTER TABLE autoridade
  MODIFY idautoridade int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela endereco
--
ALTER TABLE endereco
  MODIFY idendereco int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela marca
--
ALTER TABLE marca
  MODIFY idmarca int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela meta_tipo
--
ALTER TABLE meta_tipo
  MODIFY idMetaTipo int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela natureza_juridica
--
ALTER TABLE natureza_juridica
  MODIFY idnatureza_juridica int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela pedido
--
ALTER TABLE pedido
  MODIFY idpedido int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela pedido_item
--
ALTER TABLE pedido_item
  MODIFY idpedido_item int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela pessoa
--
ALTER TABLE pessoa
  MODIFY idpessoa int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de tabela pessoa_fisica
--
ALTER TABLE pessoa_fisica
  MODIFY idpessoa_fisica int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela pessoa_juridica
--
ALTER TABLE pessoa_juridica
  MODIFY idpessoa_juridica int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela produto
--
ALTER TABLE produto
  MODIFY idproduto int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela telefone
--
ALTER TABLE telefone
  MODIFY idtelefone int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela tipo
--
ALTER TABLE tipo
  MODIFY idtipo int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela acesso_menu
--
ALTER TABLE acesso_menu
  ADD CONSTRAINT fk_acesso_menu_pai FOREIGN KEY (idmenu_pai) REFERENCES acesso_menu (idmenu) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela acesso_perfil_menu
--
ALTER TABLE acesso_perfil_menu
  ADD CONSTRAINT fk_acesso_perfil_menu_acesso_menu1 FOREIGN KEY (idmenu) REFERENCES acesso_menu (idmenu) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fk_acesso_perfil_menu_acesso_perfil1 FOREIGN KEY (idperfil) REFERENCES acesso_perfil (idperfil) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela acesso_perfil_user
--
ALTER TABLE acesso_perfil_user
  ADD CONSTRAINT fk_acesso_perfil_user_acesso_perfil1 FOREIGN KEY (idperfil) REFERENCES acesso_perfil (idperfil) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fk_acesso_perfil_user_acesso_user1 FOREIGN KEY (iduser) REFERENCES acesso_user (iduser) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela acesso_user
--
ALTER TABLE acesso_user
  ADD CONSTRAINT fk_acesso_user_pessoa1 FOREIGN KEY (idpessoa) REFERENCES pessoa (idpessoa) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela endereco
--
ALTER TABLE endereco
  ADD CONSTRAINT fk_endereco_municipio1 FOREIGN KEY (cod_municipio) REFERENCES municipio (cod_municipio) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fk_endereco_pessoa1 FOREIGN KEY (idpessoa) REFERENCES pessoa (idpessoa) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fk_endereco_tipo1 FOREIGN KEY (idtipo_endereco) REFERENCES tipo (idtipo) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela marca
--
ALTER TABLE marca
  ADD CONSTRAINT fk_marca_pessoa1 FOREIGN KEY (idpessoa) REFERENCES pessoa (idpessoa) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela municipio
--
ALTER TABLE municipio
  ADD CONSTRAINT fk_municipio_uf1 FOREIGN KEY (cod_uf) REFERENCES uf (cod_uf) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela pedido
--
ALTER TABLE pedido
  ADD CONSTRAINT fk_pedido_pessoa1 FOREIGN KEY (idpessoa) REFERENCES pessoa (idpessoa) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fk_pedido_tipo1 FOREIGN KEY (idtipo_pagamento) REFERENCES tipo (idtipo) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela pedido_item
--
ALTER TABLE pedido_item
  ADD CONSTRAINT fk_pedido_item_pedido1 FOREIGN KEY (idpedido) REFERENCES pedido (idpedido) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fk_pedido_item_produto1 FOREIGN KEY (idproduto) REFERENCES produto (idproduto) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela pessoa_fisica
--
ALTER TABLE pessoa_fisica
  ADD CONSTRAINT fk_pessoa_fisica_municipio1 FOREIGN KEY (cod_municipio_nascimento) REFERENCES municipio (cod_municipio) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fk_pessoa_fisica_pessoa1 FOREIGN KEY (idpessoa) REFERENCES pessoa (idpessoa) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela pessoa_juridica
--
ALTER TABLE pessoa_juridica
  ADD CONSTRAINT fk_pessoa_juridica_natureza_juridica1 FOREIGN KEY (idnatureza_juridica) REFERENCES natureza_juridica (idnatureza_juridica) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fk_pessoa_juridica_pessoa1 FOREIGN KEY (idpessoa) REFERENCES pessoa (idpessoa) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela produto
--
ALTER TABLE produto
  ADD CONSTRAINT fk_produto_marca1 FOREIGN KEY (idmarca) REFERENCES marca (idmarca) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fk_produto_tipo1 FOREIGN KEY (idtipo_produto) REFERENCES tipo (idtipo) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela telefone
--
ALTER TABLE telefone
  ADD CONSTRAINT fk_telefone_endereco1 FOREIGN KEY (idendereco) REFERENCES endereco (idendereco) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fk_telefone_pessoa1 FOREIGN KEY (idpessoa) REFERENCES pessoa (idpessoa) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT fk_telefone_tipo1 FOREIGN KEY (idtipo_telefone) REFERENCES tipo (idtipo) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela tipo
--
ALTER TABLE tipo
  ADD CONSTRAINT fk_tipo_tipo_de_tipos FOREIGN KEY (idmeta_tipo) REFERENCES meta_tipo (idMetaTipo) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela uf
--
ALTER TABLE uf
  ADD CONSTRAINT fk_uf_regiao1 FOREIGN KEY (cod_regiao) REFERENCES regiao (cod_regiao) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;




