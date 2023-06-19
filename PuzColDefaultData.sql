DELETE FROM `collection`;
DELETE FROM `wishlist`;
DELETE FROM `user`;
ALTER TABLE `user` AUTO_INCREMENT = 1;
DELETE FROM `puzzle`;
ALTER TABLE `puzzle` AUTO_INCREMENT = 1;
use puzzcollectordb;

INSERT INTO `user`(username, `password`, icon, `admin`) VALUES
("TG19", "-Kf`.6-.-/3Kf`.6-.-/3Kf`.6-.-/3", "User_1.jpg", true);

SELECT * FROM `user`;

INSERT INTO `puzzle`(`name`, price, image, `type`, brand, links_path) VALUES
("Clementoni Puzzle La Casa de Papel 1000 piezas", 10.95, "clementoni-puzzle-la-casa-de-papel.jpg", 1, "Clementoni", "clementoni-puzzle-la-casa-de-papel.txt"),
("Clementoni Puzzle Stranger Things Panorama 1000 piezas", 10.95, "clementoni-puzzle-stranger-things-panorama.jpg", 1, "Clementoni", "clementoni-puzzle-stranger-things-panorama.txt"),
("Trefl Puzzle Big Ben y Palacio Westminster Panorama 500 piezas", 8.95, "trefl-puzzle-big-ben-y-palacio-de-westminster-panorama.jpg", 1, "Trefl", "trefl-puzzle-big-ben-y-palacio-de-westminster-panorama.txt"),
("Trefl Puzzle Acrópolis de Atenas Panorama 500 piezas", 8.95, "trefl-puzzle-acropolis-de-atenas-panorama.jpg", 1, "Trefl", "trefl-puzzle-acropolis-de-atenas-panorama.txt"),
("Clementoni Puzzle Harry Potter 1000 piezas", 10.95, "clementoni-puzzle-harry-potter.jpg", 1, "Clementoni", "clementoni-puzzle-harry-potter.txt"),
("Ravensburger Puzzle Tarde en Santorini 1000 piezas", 14.94, "ravensburger-puzzle-tarde-en-santorini.jpg", 1, "Ravensburger", "ravensburger-puzzle-tarde-en-santorini.txt"),
("Educa Puzzle Pagoda Yasaka, Kyoto 1000 piezas", 10.95, "educa-puzzle-pagoda-yasaka-kyoto.jpg", 1, "Educa", "educa-puzzle-pagoda-yasaka-kyoto.txt"),
("Clementoni Puzzle Milán 1000 piezas", 10.95, "clementoni-puzzle-milan.jpg", 1, "Clementoni", "clementoni-puzzle-milan.txt"),
("Constantin Liberar a Willy", 29.85, "constantin-liberar-a-willy.jpg", 2, "Constantin", "constantin-liberar-a-willy.txt"),
("Hanayama Cast Tube", 15.95, "hanayama-cast-tube.jpg", 2, "Hanayama", "hanayama-cast-tube.txt"),
("Puzzle Bambú Bolas de Cañón", 5.50, "puzzle-bambu-bolas-de-canon.jpg", 2, "3D Bamboo Puzzles", "puzzle-bambu-bolas-de-canon.txt"),
("QiYi Small Nine Links", 4.99, "qiyi-small-nine-links.jpg", 2, "QiYi", "qiyi-small-nine-links.txt"),
("Hanayama Cast Puzzle Ajedrez Rey", 36.97, "hanayama-puzzle-ajedrez-rey.jpg", 2, "Hanayama", "hanayama-puzzle-ajedrez-rey.txt"),
("Puzzle Bambú Pirámide", 5.50, "puzzle-bambu-piramide.jpg", 2, "3D Bamboo Puzzles", "puzzle-bambu-piramide.txt"),
("Kubekings Puzzle Calendar", 10.90, "kubekings-puzzle-calendar.jpg", 2, "KubeKings", "kubekings-puzzle-calendar.txt"),
("Hanayama Cast NEWS", 15.95, "hanayama-cast-news.jpg", 2, "Hanayama", "hanayama-cast-news.txt"),
("GAN 356 RS 3x3", 15.90, "gan-356-rs.jpg", 3, "GAN", "gan-356-rs.txt"),
("QiYi Mastermorphix", 5.59, "qiyi-mastermorphix.jpg", 3, "QiYi", "qiyi-mastermorphix.txt"),
("GAN Megaminx", 49.99, "gan-megaminx.jpg", 3, "GAN", "gan-megaminx.txt"),
("MoYu RS2 M Evolution 2x2", 7.99, "moyu-rs2-m-evolution.jpg", 3, "MoYu", "moyu-rs2-m-evolution.txt"),
("QiYi Gear Cube 3x3", 7.99, "qiyi-gearcube-3x3.jpg", 3, "QiYi", "qiyi-gearcube-3x3.txt"),
("MoYu RS Skewb M", 14.99, "moyu-rs-skewb-m.jpg", 3, "MoYu", "moyu-rs-skewb-m.txt"),
("QiYi Fisher 3x3", 4.99, "qiyi-fisher-3x3.jpg", 3, "QiYi", "qiyi-fisher-3x3.txt"),
("ShengShou Mirror 3x3", 6.40, "shengshou-mirror-3x3.jpg", 3, "ShengShou", "shengshou-mirror-3x3.txt"),
("ClueBox Capitán Nemo Nautilus", 34.95, "cluebox-capitan-nemo-nautilus.jpg", 4, "iDventure", "cluebox-capitan-nemo-nautilus.txt"),
("ClueBox Cambridge Labyrinth", 44.47, "cluebox-cambridge-labyrinth.jpg", 4, "iDventure", "cluebox-cambridge-labyrinth.txt"),
("ClueBox Caja Secreta", 40.69, "cluebox-caja-secreta.jpg", 4, "iDventure", "cluebox-caja-secreta.txt"),
("ClueBox Caja Secreta 2", 15.50, "cluebox-caja-secreta-2.jpg", 4, "iDventure", "cluebox-caja-secreta-2.txt"),
("Escape Welt Orbital Box", 34.95, "escape-welt-orbital-box.jpg", 4, "Escape Welt", "escape-welt-orbital-box.txt"),
("Escape Welt Space Box", 34.99, "escape-welt-space-box.jpg", 4, "Escape Welt", "escape-welt-space-box.txt"),
("Devir Exit 1 La Cabaña Abandonada Juego de Escape", 14.50, "devir-exit-1-la-cabana-abandonada.jpg", 4, "Devir", "devir-exit-1-la-cabana-abandonada.txt"),
("Devir Exit 3 El Laboratorio Juego de Escape", 14.50, "devir-exit-3-el-laboratorio-secreto.jpg", 4, "Devir", "devir-exit-3-el-laboratorio-secreto.txt");

SELECT * FROM `puzzle`;

INSERT INTO `wishlist` VALUES (1, 30),(1, 27),(1, 31);

INSERT INTO `collection` VALUES (1, 1, ""),(1, 10, ""),(1, 17, "Mi Tiempo Récord: 00:05:23"),(1, 32, "");

#INSERT INTO mainEvents

#INSERT INTO comunityEvents