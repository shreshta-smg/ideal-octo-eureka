-- --------------------------------------------------------
-- Host:                         D:\junkspace\stsws\sh-websites\sgsstore\shubha\db\shubhadb.sqlite
-- Server version:               3.45.3
-- Server OS:                    
-- HeidiSQL Version:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table shubhadb.event_bookings: -1 rows
/*!40000 ALTER TABLE "event_bookings" DISABLE KEYS */;
INSERT INTO "event_bookings" ("id", "created_at", "updated_at", "deleted_at", "event_customer_id", "user_id", "invoice_number", "name_of_the_event", "type_of_event", "start_date", "end_date", "total_amount", "amount_paid", "no_of_people_expected") VALUES
	(1, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 22, 1, '2024-0001', 'Veritatis explicabo.', 'Marriage', '2024-07-05 05:50:36', '2024-07-06 15:12:40', 68134.14, 5681.74, 45),
	(2, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 9, 1, '2024-0002', 'Quidem harum aut magni.', 'Marriage', '2024-06-30 22:32:58', '2024-07-04 22:08:41', 20746.51, 13658.55, 72),
	(3, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 10, 1, '2024-0003', 'Quisquam voluptatum dolor.', 'Marriage', '2024-06-29 18:08:24', '2024-07-05 13:04:55', 66653.74, 11504.49, 339),
	(4, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 24, 1, '2024-0004', 'Tenetur animi voluptas.', 'Marriage', '2024-07-02 09:11:03', '2024-07-07 21:35:09', 18902.24, 5601.28, 187),
	(5, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 24, 1, '2024-0005', 'Consequatur dolores debitis eum.', 'Birthday', '2024-06-30 13:10:37', '2024-07-02 03:11:51', 67261.29, 12025.59, 62),
	(6, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 18, 1, '2024-0006', 'Possimus corrupti sapiente et.', 'Marriage', '2024-06-27 14:22:53', '2024-07-04 13:14:15', 70832.53, 12420.31, 462),
	(7, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 12, 1, '2024-0007', 'Sed ratione saepe.', 'Marriage', '2024-06-26 18:20:51', '2024-07-01 12:01:16', 64646.33, 12130.88, 226),
	(8, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 19, 1, '2024-0008', 'Soluta eum commodi.', 'Others', '2024-06-27 11:21:43', '2024-06-29 18:33:40', 54666.28, 9840.51, 72),
	(9, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 24, 1, '2024-0009', 'Dicta quo sint.', 'Marriage', '2024-06-28 09:04:03', '2024-07-03 04:25:08', 26963.81, 12720.83, 169),
	(10, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 17, 1, '2024-0010', 'Sapiente recusandae.', 'Birthday', '2024-06-30 09:12:19', '2024-07-03 09:26:18', 43083.08, 13613.62, 243),
	(11, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 7, 1, '2024-0011', 'Doloribus quod architecto.', 'Birthday', '2024-07-04 23:28:26', '2024-07-09 02:46:21', 33999.92, 10607.96, 194),
	(12, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 16, 1, '2024-0012', 'Officiis ipsam et.', 'Marriage', '2024-07-05 10:03:04', '2024-07-08 02:54:18', 67066.73, 5048.43, 123),
	(13, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 5, 1, '2024-0013', 'Qui eaque maiores.', 'Marriage', '2024-06-29 07:17:10', '2024-06-30 23:21:43', 70179.45, 9244.36, 150),
	(14, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 21, 1, '2024-0014', 'Ut commodi.', 'Marriage', '2024-07-01 07:32:44', '2024-07-02 14:41:23', 16244.94, 12090.75, 340),
	(15, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 9, 1, '2024-0015', 'Non nulla ducimus.', 'Birthday', '2024-06-27 05:44:16', '2024-07-01 05:06:00', 60626.41, 7526.25, 372),
	(16, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 5, 1, '2024-0016', 'Corporis quibusdam aut.', 'Marriage', '2024-06-29 19:55:04', '2024-07-02 13:43:10', 57364.82, 11977.36, 425),
	(17, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 2, 1, '2024-0017', 'Vel non.', 'Others', '2024-06-24 19:52:20', '2024-07-01 01:41:42', 20307.39, 12078.37, 224),
	(18, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 8, 1, '2024-0018', 'Id magnam sit mollitia.', 'Birthday', '2024-07-03 06:22:52', '2024-07-09 04:04:11', 16676.75, 14182.18, 353),
	(19, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 25, 1, '2024-0019', 'Quis aspernatur et quae iure.', 'Others', '2024-07-03 20:13:52', '2024-07-10 04:22:58', 27898.81, 11867.39, 252),
	(20, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 5, 1, '2024-0020', 'Est ipsa.', 'Others', '2024-07-02 09:42:07', '2024-07-08 09:16:27', 21597.45, 8979.71, 346),
	(21, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 17, 1, '2024-0021', 'Nihil fugiat recusandae officiis.', 'Marriage', '2024-07-02 10:38:15', '2024-07-06 11:38:50', 64421.3, 10587.89, 62),
	(22, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 4, 1, '2024-0022', 'Libero cumque voluptatem.', 'Marriage', '2024-06-30 07:31:29', '2024-07-07 01:07:32', 19049.52, 5998.12, 146),
	(23, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 16, 1, '2024-0023', 'Voluptas saepe commodi quidem.', 'Marriage', '2024-06-30 17:22:04', '2024-07-05 11:18:44', 46099.33, 6734.1, 317),
	(24, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 3, 1, '2024-0024', 'Architecto voluptas commodi tempora qui.', 'Birthday', '2024-07-05 13:01:10', '2024-07-07 22:22:17', 54739.06, 13687.32, 408),
	(25, '2024-06-21 19:37:19', '2024-06-21 19:37:19', NULL, 1, 1, '2024-0025', 'Est architecto reiciendis earum.', 'Marriage', '2024-06-29 09:26:32', '2024-06-29 14:01:06', 65044.11, 8603.93, 87);
/*!40000 ALTER TABLE "event_bookings" ENABLE KEYS */;

-- Dumping data for table shubhadb.event_customers: -1 rows
/*!40000 ALTER TABLE "event_customers" DISABLE KEYS */;
INSERT INTO "event_customers" ("id", "created_at", "updated_at", "deleted_at", "full_name", "address", "email_id", "contact_number", "alternate_number") VALUES
	(1, '2024-06-21 17:36:48', '2024-06-21 17:36:48', NULL, 'Roslyn Oberbrunner', '8904 Hills Locks Suite 822
East Winfieldstad, IA 09735-3992', 'fharvey@example.com', '+16626235086', '(562) 956-7633'),
	(2, '2024-06-21 17:36:48', '2024-06-21 17:36:48', NULL, 'Leann Bernier', '9391 Lowe Overpass
North Yessenia, MO 47018', 'newton98@example.net', '+19067387747', '760.335.0259'),
	(3, '2024-06-21 17:36:48', '2024-06-21 17:36:48', NULL, 'Julian Marvin', '1393 Mosciski Cliffs Apt. 590
South Rogersbury, KY 24093-5459', 'jonatan77@example.com', '+19598498519', '1-445-498-5822'),
	(4, '2024-06-21 17:36:48', '2024-06-21 17:36:48', NULL, 'Garret Rosenbaum', '4634 Lindsay Station
West Annabel, GA 12115-5520', 'elda54@example.com', '+17659783447', '725.289.5637'),
	(5, '2024-06-21 17:36:48', '2024-06-21 17:36:48', NULL, 'Lane Satterfield', '62276 Lemke Prairie Apt. 141
West Mekhi, TX 54409-5602', 'marcus32@example.com', '+18789515665', '(660) 439-6917'),
	(6, '2024-06-21 17:36:48', '2024-06-21 17:36:48', NULL, 'Antwan Cartwright', '6647 Bashirian Meadow
Kelliport, ID 35544-7591', 'tyrel.kreiger@example.org', '+15859602711', '458-954-1894'),
	(7, '2024-06-21 17:36:48', '2024-06-21 17:36:48', NULL, 'Domenic Erdman', '507 Cassin Walks
West Maritza, PA 33417', 'yundt.michaela@example.com', '+16803407318', '1-984-624-3089'),
	(8, '2024-06-21 17:36:48', '2024-06-21 17:36:48', NULL, 'Elsa Hand', '5494 Ziemann Prairie
Port Judge, KY 25334-4444', 'wbahringer@example.org', '+12288404284', '+1-762-779-0692'),
	(9, '2024-06-21 17:36:48', '2024-06-21 17:36:48', NULL, 'Chyna Feeney', '9215 Trantow Drives
New Linnieberg, CA 33155', 'shany.dibbert@example.net', '+15514628631', '283-444-6153'),
	(10, '2024-06-21 17:36:48', '2024-06-21 17:36:48', NULL, 'Sophia Grimes', '703 Stehr Row Suite 045
East Alexandriamouth, CO 56580', 'kling.bettie@example.org', '+14073418321', '+19714440779'),
	(11, '2024-06-21 17:36:48', '2024-06-21 17:36:48', NULL, 'Eldridge Marvin', '9295 Collins Lodge
Guststad, RI 46298-6592', 'xroberts@example.org', '+13524559928', '(626) 574-2987'),
	(12, '2024-06-21 17:36:49', '2024-06-21 17:36:49', NULL, 'Aisha Wuckert', '471 Schulist Points Apt. 942
Lake Millieburgh, KS 50275-3533', 'stoltenberg.roslyn@example.com', '+19012304493', '+1-573-702-4802'),
	(13, '2024-06-21 17:36:49', '2024-06-21 17:36:49', NULL, 'Madge Williamson', '369 McDermott Mountain Suite 396
Quitzonton, WY 33690', 'laury63@example.net', '+16787482048', '(239) 287-5788'),
	(14, '2024-06-21 17:36:49', '2024-06-21 17:36:49', NULL, 'Eliseo Franecki', '5231 Dahlia Oval Apt. 463
North Fletcherberg, TN 92140', 'nils25@example.org', '+16192742908', '+19305897876'),
	(15, '2024-06-21 17:36:49', '2024-06-21 17:36:49', NULL, 'Wilfredo Wolff', '3203 Price Canyon
Tremouth, TN 71521', 'maida.kling@example.com', '+13613188324', '+1-385-598-6788'),
	(16, '2024-06-21 17:36:49', '2024-06-21 17:36:49', NULL, 'Kailee Hoeger', '8620 Cade Walks
Boyleborough, MT 78102', 'qhills@example.net', '+14588491858', '281.714.0280'),
	(17, '2024-06-21 17:36:49', '2024-06-21 17:36:49', NULL, 'Casimer Greenfelder', '531 Walker Union
North Estell, MS 77549-0291', 'kathryn89@example.net', '+18125988960', '+1-551-992-2978'),
	(18, '2024-06-21 17:36:49', '2024-06-21 17:36:49', NULL, 'Hardy Haley', '3218 Klein Roads
Buddyport, ME 57487-1670', 'kdaugherty@example.com', '+18473598916', '(267) 695-2992'),
	(19, '2024-06-21 17:36:49', '2024-06-21 17:36:49', NULL, 'Mariano Hoppe', '594 Ratke Coves Apt. 809
South Johnathanburgh, AL 69756-1062', 'hrosenbaum@example.org', '+12815120819', '(828) 953-6762'),
	(20, '2024-06-21 17:36:49', '2024-06-21 17:36:49', NULL, 'Ransom Veum', '11864 Wuckert Ville
Saigeburgh, NC 23485-4965', 'genoveva.hansen@example.com', '+14232032665', '586-391-7654'),
	(21, '2024-06-21 17:36:49', '2024-06-21 17:36:49', NULL, 'Merle Konopelski', '248 Alyce Courts Suite 606
McClurestad, FL 17428-1076', 'thomas.crooks@example.org', '+19126092849', '609.366.7768'),
	(22, '2024-06-21 17:36:49', '2024-06-21 17:36:49', NULL, 'Vivienne Glover', '34664 Stehr Harbors
Homenickshire, MO 30816-0199', 'blakin@example.com', '+13019865911', '+1-573-935-1820'),
	(23, '2024-06-21 17:36:49', '2024-06-21 17:36:49', NULL, 'Oran Roob', '510 Lonie Ramp
Chaddton, SD 62782-7491', 'wjohns@example.org', '+13616236343', '+1 (734) 523-0306'),
	(24, '2024-06-21 17:36:49', '2024-06-21 17:36:49', NULL, 'Herminio Schmitt', '66806 Torphy View
Stewartland, FL 10892', 'westley.ritchie@example.org', '+13415475847', '832-719-2987'),
	(25, '2024-06-21 17:36:49', '2024-06-21 17:36:49', NULL, 'Hannah Kreiger', '522 Ford Passage
Padbergport, KY 67120-7093', 'kreiger.marielle@example.net', '+18505208101', '+16572056222');
/*!40000 ALTER TABLE "event_customers" ENABLE KEYS */;

-- Dumping data for table shubhadb.event_details: -1 rows
/*!40000 ALTER TABLE "event_details" DISABLE KEYS */;
INSERT INTO "event_details" ("id", "created_at", "updated_at", "deleted_at", "detail_type", "details_value", "other_requirements", "amount", "event_booking_id") VALUES
	(1, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Est voluptatem sit et provident.', 'Et at quia doloribus doloremque libero id in. Cupiditate excepturi ea unde ut qui. Quia exercitationem eum dolor est.', 2944.48, 9),
	(2, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Nostrum quis alias aut beatae ea.', 'Natus dicta officiis harum. Doloremque eius voluptatem sequi magnam omnis. Repellat in ipsam inventore molestiae sint molestias voluptate.', 1655.99, 2),
	(3, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Menu', 'Voluptas similique quo et.', 'Quia rem ut ipsa omnis velit minima voluptatum. Qui perferendis voluptatum necessitatibus magni magni excepturi ullam. Asperiores quibusdam beatae eveniet quia harum sint est.', NULL, 19),
	(4, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Provident sapiente officia quasi id esse.', 'Dolores vel nulla occaecati iure quia facilis est. Mollitia excepturi laborum et delectus. Omnis iste veritatis aperiam et laboriosam impedit sit.', 2638.22, 13),
	(5, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Menu', 'Quisquam qui vitae similique quo iste quam eaque.', 'Consequatur sint fugiat expedita nesciunt reprehenderit nam aut. Iusto molestiae sapiente quod eum ut. Repudiandae asperiores error error sapiente nostrum at sed.', NULL, 11),
	(6, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Et esse consequatur rerum beatae.', 'Nulla voluptatem qui quis ut ea quam consequuntur. Consequatur voluptas est accusamus vitae. Excepturi ex sunt tempora est perspiciatis nemo rerum.', 1044.93, 1),
	(7, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Menu', 'Nostrum repellat atque excepturi pariatur.', 'Tenetur architecto nemo culpa aliquid ut. Voluptas sunt voluptas porro explicabo. Aut ipsa impedit perspiciatis omnis saepe.', NULL, 16),
	(8, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Odio vel mollitia commodi debitis nisi delectus.', 'Qui quae laboriosam voluptas. Voluptate quia odio est hic quia culpa. Nesciunt enim voluptatibus hic.', 1411.31, 19),
	(9, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Distinctio voluptatem itaque hic.', 'Voluptatem perspiciatis tempora repellat libero reiciendis. Laborum quo quis aliquam aut et. Itaque error est id occaecati enim et.', 2583.48, 6),
	(10, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Blanditiis atque doloremque tenetur enim culpa.', 'Dolorum dicta et eaque voluptatum dolore accusamus veritatis voluptate. Porro provident exercitationem laborum vero omnis iure omnis. Deserunt impedit eum ullam labore laboriosam ut.', 877.41, 20),
	(11, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Illum dolor laudantium consequatur qui sint amet dolor.', 'Ipsam provident dolorem quod alias ipsum. Voluptatem ab magni quo fuga veniam autem. Rerum nisi ipsam sunt asperiores ad enim.', 1967.56, 20),
	(12, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Ipsa maiores magnam quia praesentium quas omnis aut.', 'Numquam reiciendis aut at. Magnam ipsa sit enim voluptas ut expedita quis quo. Eius voluptatum saepe beatae quibusdam.', 1551.01, 10),
	(13, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Menu', 'Quia consequatur magni porro facilis minus tempore.', 'Vero voluptatem nostrum velit perferendis. Modi commodi aliquid minima quidem. Adipisci natus non reiciendis tenetur ut debitis rerum.', NULL, 8),
	(14, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'At asperiores fugit nihil.', 'Ipsum nemo voluptatem laborum labore quia magni fuga nihil. Voluptas et qui voluptas rem laboriosam. Amet fugiat laboriosam excepturi hic.', 538.31, 22),
	(15, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Voluptatem omnis quia et quisquam veniam harum rerum.', 'Quibusdam alias molestiae sit mollitia. Quae consequatur quis laboriosam et sint quod. Quisquam laborum soluta eveniet distinctio ea officiis suscipit.', 2038.7, 8),
	(16, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Doloremque tenetur eaque qui maxime dolores commodi.', 'Aperiam id nihil animi asperiores aperiam. Eaque ab libero culpa molestiae. Nemo ut ducimus temporibus quo in et.', 349, 22),
	(17, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Beatae consequatur saepe nihil eos.', 'Ut corporis ex praesentium consequatur cum soluta neque et. Voluptatem recusandae corporis alias voluptate modi quam. Vel perspiciatis dolores earum vel odio laborum quia.', 2716.29, 9),
	(18, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Sit optio corporis hic odit quia.', 'Harum sint velit ex sit. Aperiam quo nesciunt nemo dolores. Sit ut et consequatur quas repudiandae et dolorum.', 1543.88, 15),
	(19, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Menu', 'Enim quo voluptatem est cupiditate aut.', 'Voluptatem quo voluptatem sapiente. Nam dignissimos qui optio impedit voluptatem. Aut corrupti error dolor deleniti vel.', NULL, 4),
	(20, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Pariatur ut commodi explicabo quod molestias repellat omnis.', 'Quod tempore perspiciatis velit qui eum ut. Voluptate in incidunt deserunt sed quae ducimus tempore molestiae. Quo fugit voluptatibus vitae aut quam.', 358.17, 9),
	(21, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Earum quas dolorem nostrum voluptatem architecto.', 'Voluptas quidem quod ullam quibusdam. Ut modi reprehenderit aspernatur sequi laboriosam nostrum. Placeat iste facere et ut blanditiis quod iure.', 498.47, 8),
	(22, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Quas impedit minima sit ipsum vel odio.', 'Repellendus laboriosam suscipit nisi numquam deleniti reprehenderit est. Et eum id aperiam itaque quod officiis. Quis expedita exercitationem veritatis debitis cum quia.', 857.58, 23),
	(23, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Qui dignissimos ex sed.', 'Commodi et doloremque ut sunt aut assumenda. Sint nesciunt accusamus velit ullam nemo et. Sit incidunt veritatis magni mollitia.', 1679.68, 6),
	(24, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Menu', 'Deleniti aut ut rerum adipisci magni itaque enim repellat.', 'Non soluta sit magni voluptatum. Facere maxime est veritatis architecto accusantium. Nemo et asperiores non sit.', NULL, 1),
	(25, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Material', 'Voluptatum accusantium excepturi magnam nam quibusdam expedita.', 'Debitis dolorem occaecati possimus et velit culpa accusamus. Assumenda sed et itaque. Vel voluptatem explicabo distinctio rerum est similique.', 1715.42, 22),
	(26, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Menu', 'Modi ipsum nam officia autem reprehenderit dolorum omnis aut.', 'Laboriosam provident voluptatibus voluptatibus. Aut a maiores omnis sed exercitationem labore a dolor. Similique corporis rerum et perspiciatis.', NULL, 4),
	(27, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Menu', 'Et alias rerum praesentium quia.', 'Eligendi quia modi fugit. Consequatur nostrum dolorum voluptate quos dignissimos in qui. Earum omnis ratione sint sit modi assumenda iste.', NULL, 20),
	(28, '2024-06-21 19:52:07', '2024-06-21 19:52:07', NULL, 'Menu', 'Dolore deleniti velit eum aut est sed velit.', 'Maxime nostrum nihil et quos sit omnis quaerat occaecati. Nobis voluptatem laboriosam ut cupiditate id. Delectus ipsa dolores quis vel qui qui.', NULL, 13),
	(29, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Non adipisci molestiae fugiat tenetur minus est in eos.', 'Quia in et illo asperiores ut rerum. Illo placeat architecto quidem explicabo. Dignissimos fugit quos dolorum modi quos harum.', 1481.25, 9),
	(30, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Id et saepe laborum.', 'Et dolor iure dolor totam nostrum dignissimos eligendi ex. Dolorem recusandae ab aut veniam numquam. Exercitationem perspiciatis deserunt consequuntur sapiente.', NULL, 12),
	(31, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Adipisci libero perspiciatis qui et recusandae qui eum.', 'Ut alias laborum et molestiae dolores. Qui reiciendis quibusdam qui aut rerum cupiditate. Quia non non esse consequuntur deserunt quaerat quo.', NULL, 21),
	(32, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Temporibus perferendis non vitae reiciendis autem.', 'In minus consequatur aspernatur commodi dicta est dolorem tenetur. Excepturi autem architecto voluptas. Recusandae doloribus ut aut reiciendis eos.', NULL, 16),
	(33, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Qui veritatis et tempore dolorem.', 'Corporis ab saepe similique pariatur consequatur quo animi. Ea velit exercitationem autem dolorum et. Veniam necessitatibus labore eaque qui omnis quis debitis.', 1449.88, 8),
	(34, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Corrupti quisquam delectus sint sint id rem rerum magni.', 'Quo minima dolorum ut suscipit consequatur in molestias. Et molestiae nihil alias voluptatem maxime. Cumque qui magni repellendus assumenda rerum quaerat.', NULL, 4),
	(35, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Ut sed rerum velit maiores enim.', 'Corporis quo eum qui eaque. Nihil assumenda quaerat quaerat aliquam odio ea. Atque culpa consequatur quia ex minus est.', NULL, 3),
	(36, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Omnis doloribus maxime at est qui ad.', 'Soluta perferendis placeat voluptatum ut eos nulla assumenda. Reiciendis dolores molestiae explicabo quos nemo. Voluptatum nulla corporis eius voluptas.', 771.56, 21),
	(37, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Molestias molestias illo optio inventore aut.', 'Quos aspernatur ea a numquam. Qui quo iste nihil id est. Porro dolorem cum ut neque aliquid et.', 1688.14, 10),
	(38, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Veniam veritatis sed veritatis dolorem porro cumque voluptatem.', 'Ab quo deleniti aspernatur enim ut harum et. Aut aperiam in nihil sed est magni. Reprehenderit natus ullam cum reprehenderit.', NULL, 13),
	(39, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Perferendis molestiae ex deserunt amet quo in.', 'Necessitatibus fugiat dolor quis. At ratione aut sit. Quae quisquam eum quis minima.', 1684.61, 19),
	(40, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Aut perferendis repellendus accusamus ipsum voluptatem unde suscipit sit.', 'Suscipit iste odit est ullam ut molestiae soluta vel. Sunt magni dolores optio. Earum magni sequi et inventore.', 2436.65, 16),
	(41, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Iure dolor excepturi rerum in rerum nemo.', 'Consequatur ea ipsa animi esse et vitae animi. Similique sunt deserunt inventore. Beatae nihil odio mollitia.', 2103.91, 8),
	(42, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Neque est error eius culpa minus at eligendi.', 'Voluptatem illum totam molestiae. Quo rem ad alias consequatur repudiandae. Et unde id nihil.', 2031.45, 23),
	(43, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Sit sunt quia blanditiis quidem qui architecto quia.', 'Natus debitis corrupti eaque impedit architecto quia. Quo animi omnis consequuntur ut reprehenderit quod. Necessitatibus et cupiditate quos impedit.', NULL, 21),
	(44, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Quis aut et fuga.', 'Voluptas eum id fuga laudantium ut quidem sequi. Magni neque ab possimus error in. Quia dolorem ipsam dicta et rerum accusamus commodi.', 1823.14, 16),
	(45, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Suscipit veniam numquam fugiat nisi.', 'Omnis pariatur expedita dolorem. At tempora harum tenetur ut. Accusamus sint veritatis adipisci quod sed beatae.', NULL, 1),
	(46, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Eaque aspernatur est aut veritatis.', 'Nulla excepturi illo cumque illo distinctio. Et delectus itaque sunt. Ut in similique atque aut.', 2833.18, 13),
	(47, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Voluptatem et est reprehenderit sunt et.', 'Tempora velit quas ut fuga. Porro vel nemo sapiente. Deserunt odit quidem autem dolorem.', NULL, 24),
	(48, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Voluptas officiis dolore error voluptas et.', 'Autem illo non corrupti nam nihil perspiciatis sint repudiandae. Sunt perspiciatis facilis quo suscipit. Aut asperiores laboriosam dignissimos ea.', NULL, 3),
	(49, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Minus dolore est ut eos quia.', 'Sequi exercitationem vitae non illum porro. Voluptates omnis et laboriosam ipsa et rerum enim. At dolores deleniti dolorem aut accusamus adipisci minus.', 1631.67, 1),
	(50, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Est et qui provident pariatur dolore.', 'Eum atque mollitia sint porro animi et. Nulla facere sed numquam nihil est aliquid. In unde libero quia distinctio.', NULL, 23),
	(51, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Doloremque asperiores qui voluptas modi qui et quos nihil.', 'Deleniti deleniti voluptatem et amet. Consequatur aspernatur aut asperiores dicta sed aspernatur aperiam. Repudiandae sunt distinctio assumenda dolorem ut eaque.', 934.77, 3),
	(52, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Error explicabo neque eum illo omnis porro quas.', 'Optio incidunt voluptatibus corporis eum odit impedit. Alias dolor consequatur numquam fuga voluptates quas et. Porro dolor odio at porro tenetur.', NULL, 7),
	(53, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Dolorem doloremque rem consequatur cumque quisquam.', 'Cum odit totam quae atque. Aliquid dicta cupiditate aut doloremque. Dolorum reiciendis numquam nam qui enim nesciunt sed.', 1674.02, 17),
	(54, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Ipsam aut et ea sed sed minima.', 'Facere aut quia ducimus maiores culpa. Suscipit sed quis eveniet at illum ut. Voluptatem corporis dicta molestiae.', 1216.48, 2),
	(55, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Tenetur vero sint quis minus blanditiis voluptas distinctio neque.', 'Dolores incidunt beatae provident hic consequuntur corporis. Est eum quo molestiae error doloribus. Ipsa est natus praesentium.', NULL, 7),
	(56, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Facere accusamus et ullam.', 'Aliquam dolores recusandae rerum sunt quidem velit. Aspernatur delectus sit nemo nam corporis. Ab ipsa qui odit totam error.', 1883.32, 13),
	(57, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Ut rem reprehenderit ex expedita asperiores et reiciendis.', 'Odio sint tenetur quia rerum quaerat ipsum amet. Maxime labore adipisci necessitatibus ducimus rem. Et animi consequuntur labore voluptatibus odio vel.', 2935.44, 14),
	(58, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Reiciendis voluptas ut eaque asperiores molestiae numquam quibusdam.', 'Eaque explicabo sunt sapiente et nemo. Inventore vel sed cumque. Cum amet adipisci voluptatem amet dolor.', NULL, 22),
	(59, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Eveniet reiciendis aut alias eos.', 'Minus laboriosam autem illo rem quia recusandae. Delectus modi et ad. Quidem dolorem architecto recusandae ut quas.', NULL, 10),
	(60, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Voluptas et consequatur maiores dolorem quos et.', 'Repellendus porro quis ut explicabo vero iure. Suscipit at quo in. Odio iure sed assumenda est dolore minus neque veniam.', 1713.08, 8),
	(61, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Saepe sequi sit quos cum illum nihil velit et.', 'Porro reprehenderit dignissimos fugiat quo aut quia fuga. Eaque deserunt quas ab debitis. Adipisci at accusamus qui sunt quae molestiae.', NULL, 17),
	(62, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Nostrum nisi rem soluta aperiam.', 'Excepturi ipsa fuga libero non. Voluptatibus dolor nulla inventore quos vitae eum. Eum quidem enim neque ipsa.', 218.22, 17),
	(63, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Quis et aut ex quia aspernatur odio magni.', 'Rem veritatis itaque expedita amet labore omnis. Accusamus qui id iure qui omnis. Aut ratione ab voluptas quibusdam nisi eveniet.', NULL, 8),
	(64, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'A velit est ut neque officiis.', 'Accusamus sunt non magnam soluta suscipit. Molestias ipsum consequatur molestiae quia fuga. Beatae harum iure architecto non voluptate quia.', 579.72, 14),
	(65, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Mollitia nisi debitis doloribus quis recusandae voluptatem atque.', 'Cupiditate quod odit earum fugit qui cum. Fugit saepe ipsa sit iste ex. Nihil debitis est aspernatur ad tempore.', NULL, 7),
	(66, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Animi est aliquid enim qui facilis.', 'Molestiae possimus maiores qui cum incidunt et. Ab placeat accusamus id ea ducimus magni occaecati eius. Sit ea corrupti rem ad a.', NULL, 7),
	(67, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Placeat tempore consequuntur aspernatur fugiat eaque esse fugiat laudantium.', 'Cupiditate necessitatibus non repudiandae natus est cumque nobis. Et ut itaque cupiditate consectetur. Quo et qui placeat cupiditate voluptas.', NULL, 3),
	(68, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Possimus esse occaecati eos quo accusantium.', 'Laborum numquam debitis sapiente sit aliquam excepturi. Accusamus deserunt totam minima rerum impedit. Libero et accusamus ut ipsum omnis aliquam.', NULL, 8),
	(69, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Doloremque illum perspiciatis nobis quae fuga.', 'Illum ut asperiores velit commodi rerum. Qui rerum nulla nihil laudantium doloribus fugit ab. Ipsum non et tenetur mollitia.', 2175.13, 8),
	(70, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Dignissimos rerum dolorem tempore possimus aperiam harum reiciendis impedit.', 'Vitae sunt et adipisci minima deserunt. Fuga exercitationem amet fugiat eaque minus. Qui ut autem quod dolorem.', NULL, 8),
	(71, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Non at ut est itaque beatae perspiciatis aut.', 'Ut ut quia eum a commodi et error. Et maiores aspernatur architecto tenetur ratione consequatur debitis. Voluptatem id praesentium nobis qui.', NULL, 21),
	(72, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Facere odio est autem quam omnis ut minus.', 'Asperiores molestias maxime rerum eveniet nostrum soluta quidem. Iusto eligendi autem est commodi aut. Quis aliquid doloremque quasi ex voluptatem vel voluptatem.', 759.35, 25),
	(73, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Magnam earum cum et voluptate vel quidem odit.', 'Non qui corporis aut quia ea quo. Ipsam est quo sed recusandae expedita velit odit dolore. Amet voluptatem veritatis pariatur accusamus labore qui.', NULL, 6),
	(74, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Et ut sunt omnis labore illo nihil.', 'Sapiente ipsam placeat deleniti id aut sint. Architecto sint voluptatem ullam voluptatem consectetur nemo ea magni. Voluptatum nihil rerum rem ipsa quia quisquam enim.', 534.6, 8),
	(75, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Quia ea incidunt ut voluptatem dolores.', 'Reprehenderit nostrum expedita reprehenderit aut maxime cupiditate. Quidem voluptas asperiores quam. Ut aut incidunt nulla nam explicabo repudiandae.', NULL, 11),
	(76, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Id quia vitae assumenda dolorum ullam iste consequuntur doloremque.', 'Qui et laboriosam asperiores dolor. Veniam incidunt soluta quidem. Accusantium fuga rem est voluptatem ad quidem exercitationem perspiciatis.', 1588.72, 10),
	(77, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Dolores id sit rem aliquid.', 'Quis ipsam voluptatem ea ea rerum omnis ipsum. Cumque non velit autem rerum. Est blanditiis in voluptatibus.', 2759.54, 7),
	(78, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Et rerum nam dolores est tenetur harum.', 'Enim laborum tenetur voluptatem sunt. Eos qui excepturi ut sed qui voluptatibus. Maxime adipisci odit est ad nesciunt cum.', 669.93, 21),
	(79, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Magnam cumque amet deleniti animi cumque sit.', 'Et ratione qui et nihil. Ut iure et omnis qui et vero. Perspiciatis dolore aspernatur et praesentium quis eveniet.', NULL, 19),
	(80, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Accusamus voluptas excepturi consequatur praesentium voluptatem voluptatibus et.', 'Minus eaque ut qui quae. Sunt ut ducimus neque temporibus ut omnis. Molestiae et commodi deserunt explicabo id.', NULL, 7),
	(81, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Cupiditate aliquid quisquam numquam sunt.', 'Corporis sit ipsum quasi tempora rem nesciunt sequi. Sequi nam tempora omnis doloribus. Eos tempora quo delectus distinctio.', NULL, 15),
	(82, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Labore saepe enim aliquid qui quam.', 'Provident dignissimos accusantium quisquam distinctio laudantium. Deleniti dolorem sit quis voluptate qui voluptas. Perspiciatis necessitatibus harum quisquam voluptate velit animi dolor eaque.', 434.79, 25),
	(83, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Omnis cupiditate sapiente aperiam tenetur.', 'Et ut odit qui ratione. Dicta non illo fugit vel. Est id et dolorem minus.', 512.04, 25),
	(84, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Veniam voluptatem incidunt eaque nulla corporis.', 'Dolorem voluptas nihil tempore enim voluptate doloremque. Qui reprehenderit voluptas perferendis similique praesentium odit. Fuga amet deserunt aut maiores omnis voluptates.', NULL, 12),
	(85, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Sed id veritatis rerum eos deleniti aperiam.', 'Sed a debitis magni quas. Accusamus aperiam et commodi quibusdam corporis nihil. Quasi occaecati veritatis nobis dolor atque laudantium odit.', 2361.17, 7),
	(86, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Velit deserunt vel consequatur ratione mollitia blanditiis blanditiis.', 'Perspiciatis non repellendus ut hic. Molestiae quod at dolores quia neque. Perspiciatis repudiandae ullam iste eos laudantium dolorem atque.', NULL, 18),
	(87, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Quia ea eveniet maiores consequuntur alias et.', 'Fugiat exercitationem laborum sed adipisci quaerat odio qui. Necessitatibus sed optio aut nihil voluptas unde. Fugit quaerat quia in voluptatem harum maiores dolor tenetur.', 194.8, 17),
	(88, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Aperiam voluptatem animi officia voluptates expedita modi iste.', 'Autem nihil in quo velit vero rerum voluptatem. Et voluptas ut quibusdam consequatur. Et alias nihil est ut ducimus.', NULL, 6),
	(89, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Cum inventore autem et reiciendis.', 'Sunt eos vel velit nesciunt rem. Voluptatem illum qui numquam non et sit deleniti unde. Vitae voluptas ea aliquam voluptatem occaecati magni.', 972.24, 9),
	(90, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Voluptate dolor iste reprehenderit facere.', 'Modi aut possimus debitis quia. Autem earum saepe error eveniet voluptatem nihil. Sit nostrum sed iste sint non est ipsum.', NULL, 25),
	(91, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Et perferendis nisi optio quo voluptas.', 'Nesciunt sit voluptas consequatur aut voluptate nulla excepturi. Inventore provident laudantium est. Eveniet exercitationem nulla ut provident officia fuga at.', 2845.08, 18),
	(92, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Aut perferendis tenetur temporibus a at et.', 'Autem ipsum et illo adipisci et voluptatem corporis. Quidem necessitatibus quo nulla. Eaque totam aliquam beatae illum veniam quasi.', 1456.47, 20),
	(93, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Ut quis dolorum illum voluptatem delectus qui numquam.', 'Nulla qui dolorum voluptate quisquam laborum quam nihil et. Ea reiciendis officia dolores molestias. In quo ut illum reprehenderit a eveniet dolores saepe.', NULL, 5),
	(94, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Culpa autem voluptatem nemo exercitationem debitis voluptate.', 'Rerum sequi tenetur beatae dolorum commodi. Necessitatibus nulla unde pariatur molestias deleniti repudiandae. Expedita laboriosam deserunt est nemo sit a eos sed.', NULL, 16),
	(95, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Nisi necessitatibus et molestiae odio.', 'Iste similique nam fugit dolorum. Ut dolor similique qui. Aut aliquam rerum quos iure beatae nam.', 798.1, 11),
	(96, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Optio ut eos non ab non tempora dignissimos.', 'Sit laborum nam facere reprehenderit unde vitae rerum. Consectetur deleniti labore nobis tempora aliquam. Nemo sunt eum voluptatibus ducimus et eos sit.', NULL, 16),
	(97, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Repudiandae consequatur facilis id.', 'Sit quisquam sequi unde exercitationem. Occaecati odio voluptatibus et accusamus. Accusantium deleniti enim quas ut quia.', NULL, 13),
	(98, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Accusamus ipsa architecto praesentium perspiciatis minima mollitia laborum fuga.', 'Rem cum corporis sint. Ab et perferendis consequatur incidunt ut maiores recusandae. Quae sapiente impedit molestiae quis dolorem autem nam.', 508.72, 2),
	(99, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Enim iste eos nulla aperiam.', 'Aut qui sit est. Ut est perspiciatis omnis voluptas placeat in. Voluptatem quos beatae explicabo.', NULL, 15),
	(100, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Et vel cupiditate error libero sit.', 'Eos dolores tempore nam. Dolores voluptatem delectus reiciendis natus. Similique aut nihil omnis unde dolores ut.', 2400.77, 12),
	(101, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Qui quo quibusdam at velit soluta.', 'Ut voluptas aliquid quas quisquam sed. Molestias eveniet et expedita. Necessitatibus sit quo consequatur nihil voluptas.', NULL, 23),
	(102, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Quos molestias fuga necessitatibus dicta aut sit velit laborum.', 'Saepe eum velit voluptatem. Aut vel eum tenetur fugiat. Non accusamus aliquam quaerat cumque.', 1527.23, 1),
	(103, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Sed dolorem aut quaerat aspernatur totam ratione animi.', 'Libero alias sed eum officiis corrupti aut nam. Nihil id quia ipsam magnam sed repellat. In occaecati animi ea id minima et aut natus.', NULL, 15),
	(104, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Quia dolorum voluptatum aut id harum provident exercitationem.', 'Voluptatem est qui ut voluptas explicabo ut. Dignissimos et harum vel mollitia molestiae omnis vel. Hic doloremque ad ut et qui recusandae similique quaerat.', 1018.5, 17),
	(105, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Dignissimos et voluptates consequuntur corrupti.', 'Est quasi fuga dolorem. Amet ducimus distinctio perspiciatis sint reiciendis. Ea et nostrum dolore nobis.', NULL, 20),
	(106, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Autem aspernatur voluptatibus quia non dolorum repudiandae.', 'Rerum beatae modi laboriosam ducimus tempore est deleniti et. Expedita in eius ex itaque. Cupiditate quam eligendi maxime est.', NULL, 9),
	(107, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Totam nesciunt expedita qui eos omnis.', 'Excepturi voluptatem animi voluptas eligendi. Ut incidunt minus rerum temporibus. Est delectus rerum est eos animi.', 415, 16),
	(108, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Mollitia repellat voluptatem corporis consequatur numquam impedit.', 'Cum dolorum explicabo quaerat id aut omnis. Dolorem velit minus cumque sapiente dolore. Sed quam distinctio vel porro voluptatum ea.', 1225.88, 17),
	(109, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Sunt vel libero quae voluptatem fugit.', 'Quisquam est ut aut fugiat. Rerum et quo recusandae sint architecto rerum. Quo quia aut vitae molestias officia asperiores autem.', NULL, 12),
	(110, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Dolorem deserunt fugit animi nesciunt laborum.', 'Quia hic odit voluptatem eius fuga minus ullam. Quia est in hic illo deleniti corrupti sunt. Eum saepe exercitationem velit omnis doloremque assumenda non.', NULL, 10),
	(111, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Et ut quas quis.', 'Vel autem beatae porro qui. Ab cumque repellendus est eligendi perferendis quia blanditiis. Eaque et facilis est sed.', 2196.99, 13),
	(112, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Consectetur ipsum velit beatae facere doloribus laboriosam.', 'Est iusto earum praesentium et similique. Soluta numquam et accusantium magnam nulla provident amet. Voluptatum tempore quae qui tempora rem ipsum.', 1830.81, 13),
	(113, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Necessitatibus praesentium autem nisi velit.', 'Eius ut veniam qui. Tenetur aut neque est consequatur corrupti. Tempora quis sunt autem eius illo unde cupiditate.', 2417.06, 4),
	(114, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Menu', 'Harum doloribus ea eum nisi inventore temporibus officiis.', 'Natus consequatur ut eaque. Inventore sed magni odio. Corporis hic dicta quo exercitationem cumque qui.', NULL, 4),
	(115, '2024-06-21 19:52:08', '2024-06-21 19:52:08', NULL, 'Material', 'Debitis alias vitae distinctio ipsa possimus quisquam laudantium.', 'Porro itaque veritatis deserunt id dolor eum. Laudantium inventore fugit quis vel necessitatibus quas. Consectetur itaque assumenda dolorum sunt.', 2991.01, 13),
	(116, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Hic placeat ut vero laudantium corporis neque at.', 'Explicabo molestias non eveniet voluptatibus sint voluptatem ut sunt. Praesentium et autem unde. Omnis recusandae fugiat magni eum.', 1700.65, 19),
	(117, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Reprehenderit ad eius quaerat est qui alias at.', 'Facere laudantium tempore non pariatur illum fugiat laborum mollitia. Eos commodi eos ut et repudiandae aut. Officia ipsa eos deleniti voluptates eius est.', 942.92, 4),
	(118, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Menu', 'Maxime iusto doloremque pariatur saepe.', 'Sed doloribus sint aut sunt odit voluptatum tempora. Libero earum eos laboriosam error possimus repellendus. Eos illum et corrupti asperiores qui magni.', NULL, 9),
	(119, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Menu', 'Optio qui dignissimos et numquam.', 'Magni reiciendis voluptas dolorum vel. Atque nihil beatae dolor fuga qui. Facilis impedit molestiae quas consequatur aut aut odit.', NULL, 5),
	(120, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Consequuntur atque necessitatibus quasi est qui est.', 'Debitis modi officiis aperiam soluta itaque labore qui. Sapiente omnis eius officia perferendis aut recusandae. Fuga aut sit voluptas.', 1450.83, 22),
	(121, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Menu', 'Quo enim illo velit.', 'Aut dolores officia est voluptatum repudiandae. Ut tenetur non autem eius molestiae accusamus nulla. Ut consequatur ea ad nesciunt rerum.', NULL, 25),
	(122, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Menu', 'Fuga assumenda et et.', 'Facere magni eos quo ut enim. Vel quia neque officiis temporibus facilis nemo. Quas doloribus assumenda voluptates et quia ea.', NULL, 22),
	(123, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Repellat placeat inventore non in minus.', 'In reprehenderit rerum eos aspernatur ipsum sed non. Molestiae minima assumenda rerum enim. Maxime ducimus nesciunt laborum ipsa incidunt tempore porro.', 349.05, 16),
	(124, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Menu', 'Culpa in architecto repudiandae quo vel quia itaque.', 'Tenetur minima suscipit in aut omnis autem magni commodi. Soluta nemo perferendis harum eos cumque. Vitae repellat quia ratione natus blanditiis.', NULL, 24),
	(125, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Velit assumenda ut voluptatem veritatis adipisci quis corporis.', 'Voluptatibus velit sunt amet cumque autem eum sit. Sequi eos illo quas ipsum assumenda tempore. Esse expedita neque et necessitatibus.', 2408.12, 2),
	(126, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Eum iste sunt eum sit consequatur asperiores non.', 'Sed molestias quis et consectetur sunt. Ipsam et ut sit. Iure voluptatem doloremque est optio omnis aspernatur et rem.', 2554.77, 20),
	(127, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Voluptatem blanditiis labore consectetur hic amet et.', 'Aut expedita debitis voluptatibus magni. Nam velit veniam nam culpa natus perspiciatis. Sint similique cum ipsam occaecati necessitatibus.', 2517.81, 4),
	(128, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Menu', 'Quo exercitationem ullam dolorem.', 'Accusantium pariatur nostrum aliquam in eius aut consequuntur. Molestiae sunt asperiores ut animi voluptatem rem tempore magni. Mollitia et magnam debitis sint expedita laborum.', NULL, 20),
	(129, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Menu', 'Rerum quia velit molestiae molestiae mollitia.', 'Eos sequi ipsum earum voluptate necessitatibus magni aperiam. Sed ab dolor est aut mollitia doloremque eos. Ut ducimus earum est culpa sapiente.', NULL, 2),
	(130, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Possimus optio praesentium et doloremque.', 'Eos et sit aut est saepe et pariatur. Ratione vel nulla odit dolorem nesciunt nostrum vero. Et ut earum nostrum placeat repudiandae omnis magnam expedita.', 2812.35, 23),
	(131, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Menu', 'Perferendis quibusdam laudantium nulla asperiores qui ea.', 'Qui quis distinctio natus eligendi est. Corrupti quaerat fuga rerum veniam. Rem eaque sit ea voluptatem.', NULL, 1),
	(132, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Menu', 'Sed harum autem placeat.', 'Dicta minima natus ut tempore dolor modi modi occaecati. Omnis atque non ut earum consequatur iste. Autem tempora perferendis vitae quibusdam ex ea et.', NULL, 2),
	(133, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Ad libero quis assumenda nihil in dolores at.', 'Accusamus dolore deserunt voluptatem. Velit sit aut tenetur nihil odit nisi. Aspernatur totam quia modi earum.', 2376.46, 17),
	(134, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Minima iusto magnam iste voluptatibus provident odio alias.', 'Debitis cum vero voluptatum. Non officiis fuga sint aut quaerat natus consectetur sit. Quam ipsa iusto et veniam minima qui.', 2304.1, 18),
	(135, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Tempore quia molestias iste sit repellat dignissimos et.', 'Similique molestias porro et blanditiis provident doloremque suscipit. Optio et et et totam numquam aut incidunt. Quia beatae eius quis voluptatem et unde.', 2809.53, 10),
	(136, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Menu', 'Quidem ipsam quia assumenda est et.', 'Dolor iusto laborum sapiente sed numquam nam. Reprehenderit ea voluptatibus sint distinctio expedita. Facilis et nobis voluptas similique sit eaque magnam.', NULL, 3),
	(137, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Recusandae est fugit pariatur cupiditate eius est.', 'Nesciunt non eaque doloribus ut dolorem error nobis. Rerum debitis omnis cum consequatur aut dolores autem. Nostrum maxime aut atque.', 1999.74, 21),
	(138, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Menu', 'Dolorum voluptatem dolores aliquid.', 'Voluptatem autem autem et. Quis temporibus est adipisci quos. Ad quia inventore maiores quidem laudantium.', NULL, 1),
	(139, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Menu', 'Reiciendis sint omnis distinctio rerum placeat excepturi.', 'Qui eos quaerat corporis sint mollitia. Alias explicabo voluptatem facere cupiditate vero aut. Voluptatem aut eos minus nulla voluptate.', NULL, 6),
	(140, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Est harum sint unde quos.', 'Omnis magni et laborum velit esse minima perspiciatis. Reprehenderit numquam qui optio. Est assumenda tempore ab voluptas quos.', 423.98, 11),
	(141, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Et mollitia reiciendis laborum sint.', 'Soluta corporis nemo laboriosam autem. Qui porro dicta deserunt ut. Dolor reprehenderit quis quas placeat est.', 2770.93, 5),
	(142, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Eum eos ipsa error soluta doloremque provident.', 'Impedit aut vero occaecati eveniet quod repellat reiciendis. Modi qui qui et ratione vitae. Ad maiores ipsa magni qui facilis.', 639.64, 20),
	(143, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Menu', 'Fugiat labore enim consequuntur illum recusandae soluta magnam.', 'Rerum quidem eius autem eum. Tenetur dolores porro voluptas minus. Maiores autem ut perferendis.', NULL, 6),
	(144, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Veritatis accusamus vero et repellat illum neque sit.', 'Debitis vero ducimus accusamus ipsa aperiam voluptatibus. Et eligendi blanditiis omnis voluptates consequuntur. In nulla quibusdam et qui minima reprehenderit eaque repudiandae.', 2917.65, 16),
	(145, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Ut consequuntur quo aliquid dolorem suscipit corporis in.', 'Rem harum modi odio saepe sit vel mollitia. Veniam cupiditate aliquam harum labore et vitae et. Consequuntur accusamus et minus voluptate.', 1660.44, 9),
	(146, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Menu', 'Consequuntur ducimus quo aut saepe ut.', 'Fugiat nam itaque impedit amet iste quis. Consequatur voluptas veritatis qui fuga perferendis aspernatur. Non quis suscipit consequatur consequatur.', NULL, 17),
	(147, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Menu', 'Hic exercitationem et qui quas facilis.', 'Est laudantium repellat quae quas quos reiciendis velit. Eum soluta beatae aperiam quis sapiente qui perspiciatis. Quibusdam facere est porro necessitatibus cumque.', NULL, 2),
	(148, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Aut aperiam ratione nostrum.', 'Quo omnis repellendus non quasi non voluptas ut. Et reprehenderit iure perspiciatis recusandae et. Dolores tenetur officiis at dolore voluptatem totam reprehenderit.', 444.1, 12),
	(149, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Eaque omnis voluptatem ex atque quam.', 'Rerum laudantium ipsam laudantium aperiam repellat. Temporibus ipsa esse et qui necessitatibus expedita. Voluptas minima quae expedita recusandae.', 952.59, 15),
	(150, '2024-06-21 19:52:09', '2024-06-21 19:52:09', NULL, 'Material', 'Voluptas maxime aliquid autem.', 'Tempore deleniti sed quisquam voluptatem hic et corporis. Officiis laudantium pariatur ipsum aut error aut. Consequatur dolores qui eos.', 2256.4, 17),
	(151, '2024-06-22 10:19:31', '2024-06-22 10:19:31', NULL, 'UpdatedTotalAmount', 'Updated TotalAmount', NULL, 24780.03, 4),
	(152, '2024-06-22 10:19:31', '2024-06-22 10:19:31', NULL, 'UpdatedBalance', 'Updated Balance', NULL, 19178.75, 4),
	(153, '2024-06-23 06:32:19', '2024-06-23 06:32:19', NULL, 'Tax', 'Tax for event', NULL, 12, 6),
	(155, '2024-06-23 06:37:19', '2024-06-23 06:37:19', NULL, 'UpdatedTotalAmount', 'Updated TotalAmount', NULL, 84107.1728, 6),
	(156, '2024-06-23 06:37:19', '2024-06-23 06:37:19', NULL, 'UpdatedBalance', 'Updated Balance', NULL, 71686.8628, 6);
/*!40000 ALTER TABLE "event_details" ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
