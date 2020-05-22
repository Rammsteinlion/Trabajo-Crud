-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2020 a las 01:40:24
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(60, '2014_10_12_000000_create_users_table', 1),
(61, '2015_01_20_084450_create_roles_table', 1),
(62, '2015_01_20_084525_create_role_user_table', 1),
(63, '2015_01_24_080208_create_permissions_table', 1),
(64, '2015_01_24_080433_create_permission_role_table', 1),
(65, '2015_12_04_003040_add_special_role_column', 1),
(66, '2017_10_17_170735_create_permission_user_table', 1),
(67, '2019_08_19_000000_create_failed_jobs_table', 1),
(68, '2020_05_20_223719_create_products_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Navegar usuarios', 'users.index', 'Lista y navega todos los usuarios del sistema', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(2, 'Ver detalle de usuario', 'users.show', 'Ve en detalle cada usuario del sistema', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(3, 'Edición de usuarios', 'users.edit', 'Podría editar cualquier dato de un usuario del sistema', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(4, 'Eliminar usuario', 'users.destroy', 'Podría eliminar cualquier usuario del sistema', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(5, 'Navegar roles', 'roles.index', 'Lista y navega todos los roles del sistema', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(6, 'Ver detalle de un rol', 'roles.show', 'Ver el detalle cada rol del sistema', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(7, 'Creación de roles', 'roles.create', 'Podría crear nuevos roles en el sistema', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(8, 'Edición de roles', 'roles.edit', 'Podría editar cualquier dato de un rol del sistema', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(9, 'Eliminar roles', 'roles.destroy', 'Podría eliminar cualquier rol del sistema', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(10, 'Navegar productos', 'products.index', 'Lista y navega todos los productos del sistema', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(11, 'Ver detalle de un producto', 'products.show', 'Ve en detalle cada producto del sistema', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(12, 'Creación de productos', 'products.create', 'Podría crear nuevos productos en el sistema', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(13, 'Edición de productos', 'products.edit', 'Podría editar cualquier dato de un producto del sistema', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(14, 'Eliminar productos', 'products.destroy', 'Podría eliminar cualquier producto del sistema', '2020-05-21 04:11:48', '2020-05-21 04:11:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2020-05-21 22:29:00', '2020-05-21 22:29:00'),
(3, 5, 3, '2020-05-21 22:29:00', '2020-05-21 22:29:00'),
(5, 10, 3, '2020-05-21 22:29:00', '2020-05-21 22:29:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_user`
--

CREATE TABLE `permission_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(4, 'jabon rey', 'jabon para lavar ropa', '2020-05-21 04:11:48', '2020-05-21 19:27:38'),
(6, 'Adipisci aperiam odit et.', 'Quis suscipit distinctio provident.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(7, 'Consequatur libero ratione omnis ullam mollitia maiores praesentium.', 'Voluptas harum et ut labore.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(8, 'Et omnis ab laborum eos perspiciatis et.', 'Hic iusto omnis blanditiis pariatur.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(9, 'Sit consequatur id placeat.', 'Nihil fugit eveniet quibusdam molestiae ut deserunt.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(10, 'Rerum maiores cupiditate ad soluta.', 'Sapiente est totam tenetur inventore delectus dolores veritatis.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(11, 'Sit nihil fuga quo aut.', 'Nostrum et veritatis quis.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(12, 'Dolorum quia inventore omnis adipisci deserunt.', 'Voluptatibus aut labore reiciendis qui numquam recusandae nisi.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(13, 'Rem vero tenetur temporibus.', 'Numquam nam nobis et adipisci beatae.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(14, 'Optio vel reiciendis et voluptate aut quo.', 'Est quibusdam reiciendis adipisci ducimus eveniet sunt ipsam.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(15, 'Qui et quis ut aut ex.', 'Quam molestiae facilis est et et architecto.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(16, 'A dicta ea nulla omnis.', 'Cumque in placeat earum nulla est doloremque laboriosam.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(17, 'Ut eum cupiditate et nihil ut qui iure.', 'Qui distinctio inventore quia dolorem unde fuga.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(18, 'Itaque officiis autem totam iure.', 'Vel odit consequatur accusantium magni.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(19, 'Ut occaecati ut culpa.', 'Error est harum vitae dicta.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(20, 'Quas dolorum voluptatem sed explicabo voluptatem aperiam mollitia nihil.', 'Aut similique labore sit pariatur impedit et earum.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(21, 'Ex ad repellendus ullam dolor alias.', 'Amet qui qui ut veniam possimus molestiae qui fuga.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(22, 'Nisi aperiam sit quidem quia totam doloremque.', 'Nemo qui tempore pariatur nisi eos impedit nihil.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(23, 'Rerum fugiat commodi ea ipsa.', 'Assumenda facere earum enim nam voluptatem.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(24, 'Ut atque aut quis sit provident amet.', 'Mollitia ducimus eos facilis maxime aut.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(25, 'Possimus culpa ut inventore omnis.', 'Perspiciatis nulla est deleniti est et ad molestias.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(26, 'Eaque voluptas quo atque dolorem numquam.', 'Cupiditate sapiente iste et sit perspiciatis velit.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(27, 'Iste minus molestiae pariatur quod.', 'Aut veritatis quisquam ut a facilis non.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(28, 'Provident tempore aperiam qui optio officia non ipsa.', 'Sunt suscipit eos consequatur consequuntur reprehenderit voluptatem.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(29, 'Voluptas est sunt dolore et.', 'Aliquid qui officia explicabo placeat.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(30, 'Quia eaque id corrupti ad rerum explicabo tenetur labore.', 'Quis aliquid doloribus aut voluptatem aut non consequatur.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(31, 'Cum excepturi quisquam quia voluptas.', 'Autem quaerat quae ullam magni dolor ut.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(32, 'Quisquam dolore architecto quis voluptatem.', 'Quia dolorem et impedit provident.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(33, 'Sed distinctio ipsum praesentium debitis ratione voluptatem.', 'Sit dolores nemo explicabo deserunt nihil quis amet.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(34, 'Omnis saepe nostrum facere temporibus eveniet facilis.', 'Impedit voluptas aut quo vitae aut sit.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(35, 'Cum dolorem exercitationem ipsum harum nihil et voluptas.', 'Laboriosam quia corporis iure dolor nulla adipisci quo.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(36, 'Cum laborum sint et dolores nam aut tempore.', 'Magnam reprehenderit inventore facilis quia aut ea corporis.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(37, 'Debitis doloribus veritatis aperiam qui fugiat dolorem.', 'Molestias quisquam consequatur accusantium perspiciatis.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(38, 'Labore exercitationem dolores deleniti assumenda quam.', 'Perspiciatis rerum quos itaque molestias eaque corrupti.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(39, 'Praesentium aliquid dolorem maiores est id quia.', 'Quis et nulla repellendus doloribus.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(40, 'Rem incidunt harum doloremque assumenda unde.', 'Voluptatum commodi dolores aspernatur maxime odio quam.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(41, 'Pariatur id voluptatem ratione at ipsum est.', 'Maiores nihil expedita vel velit reprehenderit at molestias dolor.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(42, 'Ex ipsa saepe eveniet autem nesciunt laborum.', 'Corporis eos et voluptas animi illo eligendi.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(43, 'Quam quae dolores vel ipsum modi aut.', 'Eveniet fugit et quia quae perspiciatis asperiores et.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(44, 'Cumque et ipsum animi delectus.', 'Deleniti modi necessitatibus quis est alias omnis nemo quaerat.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(45, 'Non ea quis molestias velit quia.', 'Itaque in dignissimos distinctio.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(46, 'Perferendis molestiae aut recusandae et excepturi veritatis.', 'Consectetur similique consequatur quod.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(47, 'Rerum quos nesciunt eveniet dolorem sint.', 'Itaque maxime maiores quis commodi rerum.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(48, 'Est eos aut aut autem.', 'Suscipit nihil omnis aspernatur quibusdam vel ea neque.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(49, 'Dicta nemo rem porro rem et suscipit.', 'Eius qui quia aut.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(50, 'Voluptatem ipsam ipsum harum veniam totam quo.', 'Maiores dolorem et aut explicabo expedita.', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(51, 'felpa', 'para pintura', '2020-05-21 19:21:43', '2020-05-21 19:21:43'),
(52, 'espatula', 'para pintura en paredes', '2020-05-21 19:31:22', '2020-05-21 19:31:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `special` enum('all-access','no-access') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `special`) VALUES
(1, 'Admin', 'admin', 'Rol Administrador', '2020-05-21 04:11:48', '2020-05-21 04:11:48', 'all-access'),
(2, 'Suspendido', 'Suspendido', 'Usuario de Vacaciones', NULL, NULL, 'no-access'),
(3, 'Supervisor', 'supervisor.sistem', 'supervisor del area de sistemas', '2020-05-21 22:11:26', '2020-05-21 22:46:57', 'no-access');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 16, NULL, NULL),
(2, 2, 1, '2020-05-21 20:33:23', '2020-05-21 20:33:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Euna Goyette', 'nikita.reinger@example.net', '2020-05-21 04:11:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qhnTwQLM6v', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(3, 'Orland Trantow', 'nyah73@example.org', '2020-05-21 04:11:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DWLRwCQ3PR', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(4, 'Maynard Kuhn', 'fmiller@example.net', '2020-05-21 04:11:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WVBxXv8ZLN', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(5, 'Dr. Alexandrine Ledner Sr.', 'braden.hegmann@example.org', '2020-05-21 04:11:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ATHM4zmTlP', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(6, 'Ms. Zoie Bogisich', 'bode.alda@example.com', '2020-05-21 04:11:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TIxXLW9LpD', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(7, 'Joel Harris', 'waters.crystel@example.com', '2020-05-21 04:11:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BYyupK7eOm', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(8, 'Dr. Kaleigh Muller', 'caroline68@example.org', '2020-05-21 04:11:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8fsrl7XE3e', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(9, 'Marcus Bergstrom DVM', 'farrell.river@example.com', '2020-05-21 04:11:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ap1dSh1550', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(10, 'Darwin Jakubowski', 'ydurgan@example.org', '2020-05-21 04:11:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0ImExqQpS1', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(11, 'Miss Wava Metz PhD', 'tyree88@example.com', '2020-05-21 04:11:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yzzFgWwFjv', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(12, 'Gisselle Fadel V', 'rogelio.hodkiewicz@example.net', '2020-05-21 04:11:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4Dfi2b3YYh', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(13, 'Prof. Demetrius Altenwerth PhD', 'hauck.tina@example.net', '2020-05-21 04:11:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jDM3tU4Pv2', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(14, 'Prof. Erica Kilback IV', 'imcdermott@example.com', '2020-05-21 04:11:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EHi5Tv7e56', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(15, 'Dock Tillman DVM', 'sydnie.jacobi@example.net', '2020-05-21 04:11:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6D3ZY011bF', '2020-05-21 04:11:48', '2020-05-21 04:11:48'),
(16, 'elkin', 'elkin@gmail.com', NULL, '$2y$10$BC.tpTQBAK1I6c91s0KVnONmBDiIOa2d1ODSHjeb6VlM3a12IkVam', NULL, '2020-05-21 05:45:05', '2020-05-21 05:45:05'),
(17, 'danilo', 'danilo@gmail.com', NULL, '$2y$10$FBzBMhw6baPkJfZ2BqX/vO5ZESdLr7Hd414nHv/N2bA9/QjvO4B66', NULL, '2020-05-21 22:24:32', '2020-05-21 22:24:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
