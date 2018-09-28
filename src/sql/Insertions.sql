
--Insertion TABLE specialite
INSERT INTO specialite VALUES('S001','Psychiatrie','La psychiatrie est la spécialité de la médecine qui s''intéresse à l''étude biopsychosociale de l''étiologie, de l''évaluation, du diagnostic, du traitement et de la prévention des troubles mentaux, émotionnels et comportementaux, qu''ils se manifestent seuls ou conjugués à d''autres troubles d''origine médicale ou chirurgicale, à toutes les étapes de la vie.');
INSERT INTO specialite VALUES('S002','Chirurgie générale','La chirurgie générale englobe les principes et les techniques chirurgicales sûres et efficaces qui s''appliquent à n''importe quelle partie du corps d''un opéré quel que soit son âge. La chirurgie générale est, en définitive, la discipline mère de toutes les spécialités chirurgicales. Le spécialiste en chirurgie générale est un spécialiste de la chirurgie qui s''intéresse principalement au tube digestif, aux traumatismes et aux soins intensifs, aux maladies du système endocrinien et du sein, à la chirurgie oncologique et à l''endoscopie. Selon la formation qu''il a suivie, le spécialiste en chirurgie générale peut, par intérêt personnel ou selon les circonstances, restreindre ou étendre sa pratique à des maladies ou à des blessures qui affectent pratiquement n''importe quel système du corps humain.');
INSERT INTO specialite VALUES('S003','Ophtalmologie','L''ophtalmologie est la spécialité qui traite du dépistage, du diagnostic et du traitement des désordres optiques, des maladies et des troubles médicaux et chirurgicaux de l''oeil, de ses structures adjacentes, ainsi que du système visuel et de ses voies.');

--Insertion TABLE docteur
INSERT INTO docteur VALUES('D00001','Peter Pann','S001','Montreal','1515 bd des Anciens Combatants', 01, 357);
INSERT INTO docteur VALUES('D00002','Robin Hood','S002','Laval','2626 rue des Cerisiers', 02, 682);
INSERT INTO docteur VALUES('D00003','Carla Roberts','S003','Quebec','3737 bd Place Independence', 03, 548);

--Insertion TABLE dossierpatient
INSERT INTO dossierpatient VALUES('DP0001','Timm','Colonev','M','TC0000001',to_date('31-08-1980','dd-mm-yyyy'),to_date('01-01-2017','dd-mm-yyyy'),'D00001');
INSERT INTO dossierpatient VALUES('DP0002','Phill','Desjadin','M','PD0000001',to_date('29-03-1962','dd-mm-yyyy'),to_date('02-01-2017','dd-mm-yyyy'),'D00002');
INSERT INTO dossierpatient VALUES('DP0003','Annie','Locar','F','AL0000001',to_date('15-03-1965','dd-mm-yyyy'),to_date('03-01-2017','dd-mm-yyyy'),'D00003');

-- INSERTION TABLE CATÉGORIE
INSERT INTO categories VALUES('C01', 'Allergologie','L''allergologie est une spécialité médicale de fonction prenant en charge les maladies provoquées par une réponse spécifique anormale de l''organisme à son environnement normalement bien toléré.');
INSERT INTO categories VALUES('C02', 'Antalgiques','Antalgique, ou analgésique, est un médicament utilisé en médecine dans le traitement de la douleur (antalgie ou analgésie) d''un patient. En théorie, on différencie les antalgiques, qui ont pour rôle de diminuer la douleur, et les analgésiques, qui suppriment la sensibilité à la douleur. Ainsi, le terme antalgique serait à réserver au paracétamol et à l’aspirine, alors que le terme analgésique évoque plutôt les morphiniques. Toutefois, en pratique, les deux termes sont employés comme synonymes');
INSERT INTO categories VALUES('C03', 'Ophtalmologie','L’ophtalmologie est la branche de la médecine chargée du traitement des maladies de l’œil et de ses annexes. C’est une spécialité médico-chirurgicale. Le médecin spécialisé pratiquant l''ophtalmologie est appelé « ophtalmologiste » ou « ophtalmologue ».');

-- INSERTION TABLE MÉDICAMENT
INSERT INTO medicament VALUES('M0001', 'Actifedduo Rhinite allergique',22,'C01');
INSERT INTO medicament VALUES('M0002', 'Aerius',18.25,'C01');
INSERT INTO medicament VALUES('M0003', 'Apaisyl',6.99,'C01');
INSERT INTO medicament VALUES('M0004', 'ANAFRANIL',8.75,'C02');

-- INSERTION TABLE ordonnance
INSERT INTO ordonnance VALUES('O0001', 'Vous dormirez (pour une sieste ou la nuit) engardant la coquille protectrice durant 2 semaines ou selon les recommandations de votre médecin.','Chirurgie',to_date('02-11-2017','dd-mm-yyyy'));
INSERT INTO ordonnance VALUES('O0002', 'Vous éviterez les activités physiques violentes (ex. : course, natation, ski, golf, quilles, etc.) durant les 3 à 4 semaines qui suivent.','Chirurgie',to_date('08-11-2017','dd-mm-yyyy'));
INSERT INTO ordonnance VALUES('O0003', 'Soyez attentif au risque de sommnolence de certains médicaments et à la contre-indication à la conduite automobile.','Médicaments',to_date('28-11-2017','dd-mm-yyyy'));

--Insertion TABLE ordonnancemedicaments
INSERT INTO ordonnancemedicaments VALUES('O0001','M0001',1);
INSERT INTO ordonnancemedicaments VALUES('O0001','M0002',3);
INSERT INTO ordonnancemedicaments VALUES('O0001','M0003',4);
INSERT INTO ordonnancemedicaments VALUES('O0001','M0004',6);
INSERT INTO ordonnancemedicaments VALUES('O0002','M0002',2);
INSERT INTO ordonnancemedicaments VALUES('O0002','M0003',3);
INSERT INTO ordonnancemedicaments VALUES('O0003','M0003',1);
INSERT INTO ordonnancemedicaments VALUES('O0003','M0001',3);
INSERT INTO ordonnancemedicaments VALUES('O0003','M0002',5);
INSERT INTO ordonnancemedicaments VALUES('O0003','M0004',2);

--Insertion TABLE consultation
INSERT INTO consultation VALUES('D00002','DP0002',to_date('02-01-2017','dd-mm-yyyy'), 'diagnostic 1', 'O0002');
INSERT INTO consultation VALUES('D00002','DP0002',to_date('15-01-2017','dd-mm-yyyy'), 'diagnostic 2', 'O0002');
INSERT INTO consultation VALUES('D00002','DP0002',to_date('15-02-2017','dd-mm-yyyy'), 'diagnostic 3', 'O0002');
INSERT INTO consultation VALUES('D00002','DP0002',to_date('15-03-2017','dd-mm-yyyy'), 'diagnostic 4 ', 'O0002');
INSERT INTO consultation VALUES('D00002','DP0002',to_date('25-03-2017','dd-mm-yyyy'), 'diagnostic 5', 'O0002');
INSERT INTO consultation VALUES('D00002','DP0002',to_date('15-04-2017','dd-mm-yyyy'), 'diagnostic 6', 'O0002');
INSERT INTO consultation VALUES('D00002','DP0002',to_date('15-05-2017','dd-mm-yyyy'), 'diagnostic 7', 'O0002');
INSERT INTO consultation VALUES('D00002','DP0002',to_date('15-06-2017','dd-mm-yyyy'), 'diagnostic 8', 'O0002');
INSERT INTO consultation VALUES('D00002','DP0002',to_date('29-06-2017','dd-mm-yyyy'), 'diagnostic 9', 'O0002');
INSERT INTO consultation VALUES('D00002','DP0002',to_date('15-08-2017','dd-mm-yyyy'), 'diagnostic 10', 'O0002');
INSERT INTO consultation VALUES('D00002','DP0002',to_date('15-09-2017','dd-mm-yyyy'), 'diagnostic 11', 'O0002');
INSERT INTO consultation VALUES('D00002','DP0002',to_date('15-10-2017','dd-mm-yyyy'), 'diagnostic 12', 'O0002');
INSERT INTO consultation VALUES('D00002','DP0002',to_date('05-11-2017','dd-mm-yyyy'), 'diagnostic 13', 'O0002');
INSERT INTO consultation VALUES('D00002','DP0002',to_date('15-11-2017','dd-mm-yyyy'), 'diagnostic 14', 'O0002');
INSERT INTO consultation VALUES('D00002','DP0002',to_date('25-11-2017','dd-mm-yyyy'), 'diagnostic 15', 'O0002');
INSERT INTO consultation VALUES('D00002','DP0002',to_date('15-12-2017','dd-mm-yyyy'), 'diagnostic 16', 'O0002');
--Insertion TABLE consultation
INSERT INTO consultation VALUES('D00001','DP0001',to_date('01-06-2017','dd-mm-yyyy'),'cause qui peut être liée à environnement de la chambre, par exemple bruit, lumière, température ou télévision','O0003');
INSERT INTO consultation VALUES('D00001','DP0001',to_date('01-03-2017','dd-mm-yyyy'),'cause qui se rapporte apparition de insomnie à la suite un évènement stressant Par exemple, tous les caractéristiques un deuil disparaissent, mais la perturbation du sommeil persiste','O0003');
INSERT INTO consultation VALUES('D00001','DP0001',to_date('01-04-2017','dd-mm-yyyy'),'la cause initiale de insomnie est alors classiquement anxiété. insomnie de maintien (sommeil perturbé) survient dans de nombreux troubles psychiatriques, parmi lesquels les troubles des conduites alimentaires, la démence et la schizophrénie,insomnie terminale (réveils très matinaux) est plus caractéristique de la dépression.','O0003');
INSERT INTO consultation VALUES('D00001','DP0001',to_date('30-01-2017','dd-mm-yyyy'),'la cause initiale de insomnie est alors classiquement anxiété. insomnie de maintien (sommeil perturbé) survient dans de nombreux troubles psychiatriques, parmi lesquels les troubles des conduites alimentaires, la démence et la schizophrénie,insomnie terminale (réveils très matinaux) est plus caractéristique de la dépression.','O0003');
INSERT INTO consultation VALUES('D00001','DP0001',to_date('23-08-2017','dd-mm-yyyy'),'cette cause de insomnie correspond aux affections médicales associées à insomnie. Ces affections vont des états douloureux, incluant la fibromyalgie et arthrite, à hyperthyroïdie et aux troubles respiratoires ou cardiaques, incluant emphysème ou insuffisance cardiaque congestive','O0003');
INSERT INTO consultation VALUES('D00001','DP0001',to_date('13-09-2017','dd-mm-yyyy'),'ces causes sont liées à l utilisation de médicaments comme les antidépresseurs, les stimulants, les antihypertenseurs, y compris les bêtabloquants, ainsi que les décongestionnants et les corticostéroïdes','O0003');
INSERT INTO consultation VALUES('D00001','DP0001',to_date('03-10-2017','dd-mm-yyyy'),'une fatigue persistante et inexpliquée qui dure malgré les efforts de la personne atteinte. Considérée comme une maladie neurologique','O0003');
INSERT INTO consultation VALUES('D00001','DP0001',to_date('08-12-2017','dd-mm-yyyy'),'les symptômes de fatigue chronique, de fatigue après l effort, de troubles du sommeil et de douleurs significatives soient présents. Le patient doit aussi présenter au moins 2 symptômes neurologiques ou cognitifs','O0003');
INSERT INTO consultation VALUES('D00001','DP0001',to_date('18-02-2017','dd-mm-yyyy'),'Fatigue depuis au moins 6 mois, intense, nouvelle ou d un début défini, ne résultant pas d un effort excessif continu et non améliorée par le repos','O0003');
INSERT INTO consultation VALUES('D00001','DP0001',to_date('17-05-2017','dd-mm-yyyy'),'Persistance d un épuisement continu sévère, inexpliqué ou rechutes depuis plus de 6 mois, entraînant la réduction, voire l abandon de toutes les activités, augmenté par les exercices physiques modérés (à la différence des états dépressifs).','O0003');
-- INSERTION TABLE consultation
INSERT INTO consultation VALUES('D00003','DP0003',to_date('15-01-2017','dd-mm-yyyy'),'Chirurgie Réussite, nécéssite un changement de bandage dans 4 jours','O0001');
INSERT INTO consultation VALUES('D00003','DP0003',to_date('19-01-2017','dd-mm-yyyy'),'Cicatrisation partielle, nettoyage de la plaie et nouveau bandage ','O0001');
INSERT INTO consultation VALUES('D00003','DP0003',to_date('15-02-2017','dd-mm-yyyy'),'Cicatrisation complète, vue trés basse, niveau de stress élevé','O0001');
INSERT INTO consultation VALUES('D00003','DP0003',to_date('30-03-2017','dd-mm-yyyy'),'Une amélioration faible de la vue, probabilité de chirurgie occulaire supplémentaire','O0001');
INSERT INTO consultation VALUES('D00003','DP0003',to_date('30-04-2017','dd-mm-yyyy'),'Aucune amélioration, nouvelle chirurgie programmée pour le 30 mai','O0001');
INSERT INTO consultation VALUES('D00003','DP0003',to_date('30-05-2017','dd-mm-yyyy'),'Chirurgie réussite','O0001');
INSERT INTO consultation VALUES('D00003','DP0003',to_date('30-06-2017','dd-mm-yyyy'),'le patient répond parfaitement à la nouvelle chirurgie','O0001');
INSERT INTO consultation VALUES('D00003','DP0003',to_date('01-08-2017','dd-mm-yyyy'),'Amélioration flagrande de la vue','O0001');
INSERT INTO consultation VALUES('D00003','DP0003',to_date('30-08-2017','dd-mm-yyyy'),'Vue du client rétablie à hauteur de 95%','O0001');
INSERT INTO consultation VALUES('D00003','DP0003',to_date('30-09-2017','dd-mm-yyyy'),'Consultation close, traitement réussit, client satisfait','O0001');;

--Insertion TABLE ordonnanceChirurgie
INSERT INTO ordonnanceChirurgie VALUES('O0001',1,'maxillo-faciale');
INSERT INTO ordonnanceChirurgie VALUES('O0002',2,'digestive');
INSERT INTO ordonnanceChirurgie VALUES('O0003',3,'vasculaire');
INSERT INTO ordonnanceChirurgie VALUES('O0001',4,'thoracique');
INSERT INTO ordonnanceChirurgie VALUES('O0002',5,'pédiatrique ');
INSERT INTO ordonnanceChirurgie VALUES('O0003',6,'neurochirurgie');
INSERT INTO ordonnanceChirurgie VALUES('O0001',7,'dentaire');
INSERT INTO ordonnanceChirurgie VALUES('O0002',8,'orthopédique');
INSERT INTO ordonnanceChirurgie VALUES('O0003',9,'glandes endocrines');
INSERT INTO ordonnanceChirurgie VALUES('O0001',10,'urologie');







