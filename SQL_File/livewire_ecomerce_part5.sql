-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2021 at 07:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livewire_ecomerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'quis in', 'quis-in', '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(2, 'impedit vitae', 'impedit-vitae', '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(3, 'sed exercitationem', 'sed-exercitationem', '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(4, 'assumenda id', 'assumenda-id', '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(5, 'voluptatum et', 'voluptatum-et', '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(6, 'voluptas non', 'voluptas-non', '2021-01-27 05:55:50', '2021-01-27 05:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2021_01_26_163917_create_sessions_table', 1),
(21, '2021_01_27_061049_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` decimal(8,2) DEFAULT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_stauts` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `quantity` int(10) UNSIGNED DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_stauts`, `featured`, `quantity`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'veritatis quos nihil provident', 'veritatis-quos-nihil-provident', 'Porro omnis aliquam iusto atque eveniet provident. Incidunt magnam qui nihil nam. Maiores impedit illum aliquid necessitatibus vel. Rerum minima est excepturi vero. Aut eum sit facilis molestiae ut.', 'Molestias possimus quia vel. Perferendis et sint expedita iste doloremque eius. Sequi quam id repellat quia aliquam ut modi. Illo esse aut minus nemo. Dolorum reprehenderit eligendi labore sapiente sit. Sapiente voluptatem quod qui libero temporibus praesentium. Quo voluptatibus et qui fuga ducimus culpa. Dolores fuga in nobis aut dignissimos dolorem adipisci. Aut quidem aut et. Repudiandae quidem nulla quae temporibus modi repellat et.', '122.00', NULL, 'DIGI475', NULL, 0, 10, 'digital_16.jpg', 5, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(2, 'perspiciatis quia vero iste', 'perspiciatis-quia-vero-iste', 'Laudantium doloribus iusto voluptate nihil. Quod odio ipsam temporibus id ea soluta quasi. Voluptas enim odio voluptas illum expedita.', 'Consequatur quis reiciendis sit aspernatur a porro. Cumque ullam sit eos. Voluptatibus ut modi aut ipsum dignissimos eos ut. Ipsa eligendi hic nobis saepe. Explicabo est quibusdam culpa dolorem occaecati qui. Praesentium ea dolorem nemo perferendis consequatur. Quae omnis ea est eaque et autem praesentium quisquam. Ut cum optio optio earum maxime rerum atque.', '123.00', NULL, 'DIGI362', NULL, 0, 10, 'digital_21.jpg', 2, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(3, 'ea impedit ut repudiandae', 'ea-impedit-ut-repudiandae', 'Officia incidunt aspernatur esse sint sit. Quod dolores ad officiis.', 'Aliquid possimus aperiam reprehenderit ut non ipsum. Occaecati est adipisci est amet ut accusamus iure pariatur. Atque ducimus repellat autem provident ut. Saepe deleniti et reiciendis in. Facilis laborum ipsa asperiores provident impedit explicabo fugit. At voluptatibus libero porro soluta. Accusamus excepturi ut recusandae rerum.', '123.00', NULL, 'DIGI485', NULL, 0, 10, 'digital_18.jpg', 4, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(4, 'libero delectus tempora tempore', 'libero-delectus-tempora-tempore', 'Amet reiciendis alias vel accusantium cupiditate rem. Labore dolore accusantium facere. Dolorum et est odio vero illum iste et repellendus.', 'Laudantium maiores ratione eos natus autem provident enim. Ut quibusdam aut et neque sit dignissimos similique. Aut velit nesciunt culpa et autem. Corrupti incidunt natus dicta consequatur quod. Sit pariatur tempore consequatur voluptatem esse odit. Fugiat magnam et id optio esse rem voluptate. Accusantium voluptate nulla totam. Officiis nobis consequatur ab tenetur porro nihil.', '321.00', NULL, 'DIGI273', NULL, 0, 10, 'digital_09.jpg', 5, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(5, 'ea laborum laborum tempora', 'ea-laborum-laborum-tempora', 'Qui blanditiis officia accusantium temporibus similique perferendis quia minima. Enim ducimus rerum perferendis sequi. Sequi non ad eos in. Facilis est a quis est hic dignissimos dolore.', 'Rem dolores quia numquam distinctio exercitationem mollitia. Quia consequatur quia dolor quia explicabo explicabo voluptate. Hic fugit est dicta. Esse labore et inventore aut. Ratione reiciendis vel rerum rerum dolores eos qui iusto. Quia voluptate ut est qui dignissimos inventore et. Quam molestias saepe recusandae recusandae quasi quas ducimus distinctio.', '321.00', NULL, 'DIGI372', NULL, 0, 10, 'digital_03.jpg', 1, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(6, 'saepe pariatur dicta dolor', 'saepe-pariatur-dicta-dolor', 'Iste itaque velit quis. A necessitatibus autem earum distinctio delectus. Eius repudiandae odio sed ipsam aut maiores accusantium.', 'Perferendis sapiente tenetur optio aspernatur et sunt ratione in. Et aut pariatur quam sit. Velit et enim dolor qui magnam. Non quasi non ipsa possimus. Sit ratione velit tenetur unde rem voluptatem qui. Fugit qui exercitationem expedita. Tempore quisquam enim autem sit porro consequuntur vitae neque. Earum in repellendus iusto ut explicabo. Voluptas quia voluptas fugit ducimus quibusdam quis. Et cupiditate placeat eaque accusantium distinctio mollitia voluptatem sit. Omnis ad id similique.', '322.00', NULL, 'DIGI105', NULL, 0, 10, 'digital_22.jpg', 3, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(7, 'iusto fugiat adipisci nesciunt', 'iusto-fugiat-adipisci-nesciunt', 'Voluptate voluptatum molestias voluptatem amet et magnam. Repudiandae nesciunt qui et sit aut sequi quo. Nam nobis qui et vel aut dolor. Veniam ratione ut deserunt ut.', 'Ea velit sunt rerum incidunt omnis. Ut qui autem consequuntur non mollitia et sit. Quisquam qui porro sint non at dolor. Quis consequatur perspiciatis sit. Omnis tempore et distinctio qui nesciunt. Qui enim quis quo rerum possimus. Fugit nemo sit dolore fuga ad doloremque animi. Deleniti debitis sit quam. Autem saepe dolor vel totam sed et beatae hic. Est voluptate eos suscipit. Commodi fugiat hic dolores.', '212.00', NULL, 'DIGI352', NULL, 0, 10, 'digital_15.jpg', 4, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(8, 'non debitis temporibus maxime', 'non-debitis-temporibus-maxime', 'Tenetur ex qui ab quo quia quo quam debitis. Quae necessitatibus consequatur quam est libero. Fuga eos repudiandae nobis aperiam. Voluptatum aut nihil voluptatem similique.', 'Voluptas occaecati laboriosam error delectus molestiae consequatur. Sequi blanditiis iste vel libero ad perspiciatis. Dolor eum voluptas deleniti maxime soluta aliquid quod sit. Voluptatem vel distinctio corrupti. Distinctio et id inventore fugiat eaque debitis. Sint et ut temporibus voluptas dicta. Quas minima aut laudantium est. Magnam ipsa est quia id asperiores quibusdam natus. Sed alias voluptatem earum consequatur fugiat. Eligendi aperiam nihil ex minus.', '121.00', NULL, 'DIGI339', NULL, 0, 10, 'digital_11.jpg', 5, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(9, 'aperiam ut quas sit', 'aperiam-ut-quas-sit', 'Ullam magnam molestias quia officia eos. Est exercitationem consequatur quo magnam similique rerum et. Laudantium quod fugiat quae praesentium ipsum recusandae molestiae.', 'Et vel necessitatibus qui saepe aut reprehenderit sit. Enim illo cum eligendi ea. Perspiciatis voluptates consequatur impedit voluptate id et earum excepturi. Nam sed molestiae tenetur consequatur tenetur deleniti. Qui veniam ipsam non dolores sit dolor voluptatem quo. Fugiat sed accusantium ut voluptatibus qui. Ipsa eveniet excepturi consequatur odit. Molestiae assumenda dolor id totam repellendus. Id nisi dolor vero doloribus. Et repudiandae unde aut aut aut.', '32.00', NULL, 'DIGI217', NULL, 0, 10, 'digital_19.jpg', 1, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(10, 'corporis libero maiores sunt', 'corporis-libero-maiores-sunt', 'Consequatur dolore ad delectus voluptatum explicabo quam porro. Id fugiat voluptatum quia et vero ut qui. Veniam qui ratione est aut dolor eaque.', 'Est enim officiis saepe id fuga vero exercitationem voluptatem. Omnis quam et doloribus fugiat. Iste quod rerum voluptatum numquam sunt beatae similique. Unde sunt quam aut eligendi et. Iusto eos nostrum et eveniet accusamus veniam. Voluptatibus voluptas nulla eius sunt odio. Minima aspernatur et ducimus aut aut natus incidunt. Rerum sunt tenetur qui pariatur distinctio. Iure omnis tenetur non fugiat blanditiis quia quo. Maxime accusantium fugiat ratione eos voluptates eum.', '2321.00', NULL, 'DIGI284', NULL, 0, 10, 'digital_07.jpg', 3, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(11, 'praesentium omnis dolor blanditiis', 'praesentium-omnis-dolor-blanditiis', 'Quas excepturi similique molestiae ut est dicta. Iste tempora nihil fuga sed est ut qui. Minus dolorem enim corporis ut quasi quia. Provident fugit eligendi ut neque omnis delectus in iure.', 'Et est maiores cum ex sunt repudiandae alias illo. Ullam ullam et sapiente odio numquam. Molestias nobis est dicta consequatur doloribus animi sed. Et accusantium quia quos accusantium possimus molestiae. Officia doloremque eum praesentium quaerat accusamus. Qui eius autem totam eum possimus voluptatem sed. Rem eos nostrum magni ipsam amet quia. Reprehenderit quis quasi laudantium voluptatem accusamus dolores.', '232.00', NULL, 'DIGI223', NULL, 0, 10, 'digital_13.jpg', 2, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(12, 'temporibus nulla quia vel', 'temporibus-nulla-quia-vel', 'Corporis et recusandae ea quia consequuntur. Repellat eum ipsum autem sunt. Ut impedit velit quo dolorum accusamus qui.', 'Unde et voluptatibus dicta aut magni. Aut occaecati id totam. Aut enim et ullam asperiores eligendi commodi praesentium. Dolores cupiditate velit nihil deleniti vel velit. Sunt itaque excepturi impedit autem. Vel nostrum rem sit nisi neque voluptate. Blanditiis dolorum iste natus eveniet nesciunt quia officia. Et perferendis dolorum eligendi et et. Sunt dolore doloribus ea quos eveniet quos laudantium. Velit dolor officia adipisci. Et aut culpa doloribus soluta ducimus aut officia.', '231.00', NULL, 'DIGI382', NULL, 0, 10, 'digital_08.jpg', 1, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(13, 'repellendus laudantium veniam expedita', 'repellendus-laudantium-veniam-expedita', 'Debitis ab ea expedita accusantium sed velit. Unde in et quos neque et unde quia. Non dolorem est vero cum qui. Aperiam nesciunt sed ut rem.', 'Sed facere aut suscipit magni porro omnis. Doloribus eaque deleniti corporis sunt pariatur beatae inventore. Amet officiis praesentium molestiae sapiente nesciunt. Quia et odio est amet autem et placeat. Tenetur ab explicabo tempora repellat. Possimus impedit sed hic eum est eum ad impedit. In porro numquam eum ratione fuga itaque.', '563.00', NULL, 'DIGI272', NULL, 0, 10, 'digital_02.jpg', 2, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(14, 'facilis voluptatibus autem provident', 'facilis-voluptatibus-autem-provident', 'Dicta eveniet accusantium iure dolorem exercitationem a. Vel alias illum veritatis eius. Ut vel nemo neque totam quibusdam omnis.', 'Dolorem aut expedita quo ea vitae aspernatur. Enim aliquam sint aperiam reprehenderit non dolor. Ea et molestiae accusamus sit voluptas dolorem quibusdam rem. Consequuntur eos debitis et ut rerum quisquam quasi. Voluptas perferendis dolore ut asperiores. Delectus odit magni velit beatae necessitatibus. Beatae est blanditiis esse eius illo non rerum.', '864.00', NULL, 'DIGI361', NULL, 0, 10, 'digital_20.jpg', 2, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(15, 'error odio dolor voluptas', 'error-odio-dolor-voluptas', 'Laudantium sint ut id quia quia eum quae. Est et commodi quia placeat. Illo fugiat id ut distinctio natus soluta.', 'Eos harum vero quas voluptatum voluptate autem et. Repellendus consequuntur iure debitis tempora et. Voluptas voluptas vero cupiditate pariatur qui unde. Officia porro ut distinctio. Rem tempore magni occaecati consectetur est. Ea consequatur aut dolorum alias. Commodi rerum ipsum nisi ad totam et qui est. Aut et aspernatur praesentium ea ducimus.', '342.00', NULL, 'DIGI371', NULL, 0, 10, 'digital_10.jpg', 2, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(16, 'porro adipisci cum sit', 'porro-adipisci-cum-sit', 'Minima id aspernatur cum autem necessitatibus est. Illo iusto consequuntur possimus quibusdam porro debitis. Est eum ullam cum aliquid similique voluptas. Natus nisi facilis sint eos.', 'Modi et neque aliquam atque magni. Optio natus nostrum ducimus quo dolor error suscipit. Labore illum et et vel itaque. Quo rem dolorem rem et laboriosam labore. Dolore dolorum aspernatur vel quas quaerat voluptas corrupti et. Illum expedita architecto rerum dolorem. Esse tempora dolorum dicta accusamus exercitationem ut. Ut id suscipit unde deleniti pariatur dolor.', '332.00', NULL, 'DIGI169', NULL, 0, 10, 'digital_17.jpg', 5, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(17, 'natus eos in ratione', 'natus-eos-in-ratione', 'Et sit nemo tempore laborum delectus dicta rerum. Voluptas incidunt ipsam repellat consequatur est voluptate ipsam. Impedit sed accusamus dolor omnis ipsam maxime consequuntur.', 'Excepturi voluptate impedit aliquid maxime sunt praesentium. Nihil expedita fugiat voluptatem voluptas aut. Voluptas dolores qui itaque molestiae impedit consequuntur cupiditate. Facere incidunt aspernatur saepe qui. Porro sit quam enim aut aut enim. Quis ipsa dolores assumenda veniam. Incidunt dignissimos voluptate similique ipsum.', '763.00', NULL, 'DIGI332', NULL, 0, 10, 'digital_05.jpg', 1, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(18, 'aspernatur sunt eius quia', 'aspernatur-sunt-eius-quia', 'Odio aut vero facilis consequatur. Eum totam in doloribus sit maiores. Perferendis cumque perspiciatis aut quo in enim ut.', 'Quo reprehenderit et et omnis nobis consequuntur sequi et. Praesentium praesentium illum reprehenderit consequuntur asperiores et voluptatem. Alias modi consequatur suscipit fugit vel nisi ullam amet. Omnis quia cupiditate voluptatem nobis qui aut. Et doloremque enim omnis quia. Sed qui architecto voluptatem. Architecto harum blanditiis voluptas odio fugit. Molestiae laudantium aliquam laboriosam.', '112.00', NULL, 'DIGI419', NULL, 0, 10, 'digital_12.jpg', 2, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(19, 'tempora quisquam repellat nam', 'tempora-quisquam-repellat-nam', 'Rem non in pariatur reprehenderit saepe quia. Dolores et totam vitae veniam dolore veniam omnis. Asperiores alias molestiae laudantium odit. Harum laboriosam culpa voluptate vel voluptates voluptate.', 'Quae sapiente nihil earum et aut. Eos sint adipisci esse nobis et quasi excepturi officia. Alias voluptatem quos enim. Accusantium totam veniam sequi odio ut sed. Consequatur corrupti ut totam. Autem consequuntur fugiat eveniet hic. Quo quibusdam quia ut voluptatem provident repellendus explicabo. Assumenda doloribus sunt quo quia.', '331.00', NULL, 'DIGI408', NULL, 0, 10, 'digital_06.jpg', 5, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(20, 'error maxime quaerat voluptatem', 'error-maxime-quaerat-voluptatem', 'Nemo inventore est maiores voluptatem. Dolorem labore modi qui. A atque veritatis omnis repellendus et quas quibusdam voluptatem.', 'Unde repudiandae qui culpa voluptas. Et numquam voluptatem maxime aut odio. Aut sint ex modi voluptas molestias eum perspiciatis. Reiciendis esse ab vitae tenetur ut rerum dolorem. Cupiditate in sit sapiente qui architecto ex qui. Illum voluptas aut qui laboriosam repellendus nam occaecati molestiae. Ea ex hic unde. Eaque culpa recusandae quo non. Laboriosam et itaque quis sed dolor eos. Commodi dolor itaque corporis autem. Excepturi libero saepe autem veritatis molestiae.', '664.00', NULL, 'DIGI269', NULL, 0, 10, 'digital_14.jpg', 4, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(21, 'debitis deleniti ab nam', 'debitis-deleniti-ab-nam', 'Impedit labore mollitia aut doloremque. Eos maiores quisquam voluptates. Consequatur consequatur sit consequuntur labore ab.', 'Aut voluptate alias quia vel veritatis. Unde quo quod sunt maxime impedit quos sequi incidunt. Ex ut et exercitationem non aut. Necessitatibus vel quis veniam ut. Qui aliquid eveniet voluptatem consequuntur odit esse qui. Est facere quia totam. Ut consequatur et vel. Quae veniam voluptates et voluptatem sit in. Incidunt officia corporis aut quis non dolore earum quam. Asperiores rem repellat enim enim.', '5533.00', NULL, 'DIGI214', NULL, 0, 10, 'digital_01.jpg', 1, '2021-01-27 05:55:50', '2021-01-27 05:55:50'),
(22, 'quis reprehenderit a quisquam', 'quis-reprehenderit-a-quisquam', 'Aut quae incidunt sit quasi consequatur at. Aspernatur amet mollitia maxime odio. Dolorem enim architecto vel qui.', 'Aut autem rerum aut eum architecto. Eius at voluptatum ut consequatur. Et hic iusto quod voluptas nihil et. Aut et deleniti vero natus. Exercitationem mollitia placeat suscipit unde debitis veniam sint eum. Quia voluptas commodi sunt. Laudantium sint dicta sed quia et voluptatem. Excepturi vitae laudantium ut similique minima molestias non. Sit sit voluptatem magni id expedita repellendus magni. Odio et sequi saepe quibusdam dignissimos.', '1231.00', NULL, 'DIGI393', NULL, 0, 10, 'digital_04.jpg', 1, '2021-01-27 05:55:50', '2021-01-27 05:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('xdztDpAowyEMc2s1To1dpskjiQDqb2RlvqTHxKHp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT09tdU5lZlNncThmSWNwbTFqVnByZ3NpZGxqZUpPanF5ZkpRUGJFRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zaG9wP3BhZ2U9MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1611752405);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
