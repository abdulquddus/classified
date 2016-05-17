-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2016 at 02:34 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `virtuald_classified`
--

-- --------------------------------------------------------

--
-- Table structure for table `commercial_search_ads`
--

CREATE TABLE `commercial_search_ads` (
  `id` int(12) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(12) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` longblob NOT NULL,
  `notes` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `image_type` varchar(35) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commercial_search_ads`
--

INSERT INTO `commercial_search_ads` (`id`, `title`, `category_id`, `url`, `image`, `notes`, `user_id`, `image_type`, `status`) VALUES
(1, 'This is it', 10, 'http://www.google.com', 0x89504e470d0a1a0a0000000d494844520000005a0000004608060000004cbc83e20000200049444154789c84bb59b0e5d779ddf7dbc37f3af3b96377df9e0034664e204109a41442b46c32962bb2625ba9a44a8e145552192a8f49552a55aae28b9ff398d84aaa9cc8e544a622d9a6a39244911485109c091040636c347abef319fff39ef2f0bf0d92f290fb72ee3df79c3bacfded6faf6fadb585f73e84101042f0d38f3ffdf1f0b9e57a4ed3e66c8c7758aee754ed092a1ef2c3f7fe9472dd609b8a716f9bc5c99c955962db86a8efd0a18fb30555056b738c7596611691648e75d122091495a1f615e5b2473fce30f18c2475600383b887148e281d70f720e7e870cd381b1074838e2dcbb5a517252002e361866f7b1c2d8ed99ac68ca28ca355c5649a725a16843266d2cff83b5ffc6dae7ff03dde7dfd3a7e20184c13825b134719de6af6361f67988e11f18227ae7e962b3b1f6732de0614107e069b871f7f15b79fc1d07bff6fffeed99b1f026d6dc3c9ea3e8db3accb398bfc0e753be368b6c0b5122d149e1ce51dc7b335fd38234d62da2a67301a319bb7a8b8c4d120d39238788e16062f242114045ad29e403b8f45924409090df7f72b1a17519682c589a23639593f3099c2b52724c73385291382d32c561545a1f1758b5486cd8d2ddae0699b3952492e5f7c0c1f1d112b4f53370cd4801fbf77cae624c30bcd78b0c1b50b9f61344879fcea73f47b7dfafd0dc6832952083a5cfff562fcff035aff3b4126606d8d5011ce59ee9f7cc069fe3602c972bd222f4b5679c1626db18d21d19e205a9c09182fd0c3161b6608623c069f34cc8f5bcab2a0959e7e56e19da0585bceef0e91bd9cfda32503a9c89229555cb2c81d650541a5ac9635836c48ee57547520b39efde33ec679c663c3bd5b0dab798dad331c2d7162385e1f10eb09d31d8dc0b2ac6f82912404e24c735aacb1417274d2d0eff54823c1d6ce36a91a5255357bbb57b8fede77f9c4b32fa28482f0937a0e217c5888defb7f1794e87ffb2a745b422a8db11eef1c79b16055b534654ba402b6f0c4ed80ed698ffb470ff041d37ac3f1ec94ed8d14eb2dc67b6ce37870700f132cf552311c09b468c8648fd186c49e6f7036600cc432e668d93019ccc9748f265468ad58d7258d5ca3db1e936407d49a7e4f7078b8440a0dd51e7b3bdb9c3c7885c6ad1122209c24b331242b8c0d1c1db5282dd898a634b242ae86d40d681138cd4b1a2fa9dc8a975ef90a9ffde88b6c6f66042a1e7fe429944c512210f837e3f510f0bfda7a1f3eafff6a8f79f8f5c3cf95883054acab39de3ba6d90eb9abd0ca92edc48c7b57b877ff030e9a07b4b2a62d1a5219813254b541a030de518786a65194a665aa636c29185f6c89079ebe4cf1ce305f6af21c66ab1a9d0db0e582fcc8736eeb1cc82577f65b8c5ff389a79ee7c1e207b83662b568984e270c26317973139180ca0571df2152c97251b27731c31a435d4854a2c9eb964b9b113986d5bc653bdb420c34c629341623e6bc77f05dd6f531afbcf143b4dae0fcf655ce6f5ee4d2de45b4968487b80510a2abf21002a2fbe4c39ee07dc007df55f44fafc2bf69359aa606a1b8b0f51887f3dbd4769f81d2cc8a7bdc3dbe8b701a2b4b308ab236f4c611934d497eaaa08dc8eb196d6319c40e3510786d196e1aa228e6783f50bb35a6161c1e5744fd04a5071cdda9d9dbc9180fc72ccb9c93e31655f5294ccea9fb017ab0e2e848d21bc6b461c1d1e18aaa4a70ad60f7b184c5a261304a51a245861a2b2417af3a8ad3c0fc10b6fa09c34d8317827befeea37a194dddd01fed206c6098ecb03bf908dfbaf115ca3ce2c76fbdc6289bf2ece3cff1c2a75e200888548473ae033a04aaaa26d21a29012465d120b5224e53b473ee6700feab151d42002119f7365122a055c2a2b8c1b23ca6ca255555921733e238d0da86c6956ca7038ad99a750eb66a7864ef125eb42cf27b88a865bc59515586776f42b17058e9e8c95d1a33a7bcef99ad5688d8331804b636fa6c6d0b44df50b94075ead8bf9d53d701ddab69ad44ab08dd57480757b7cfa3fa479810313bce194f7aa43dc9ecb4a53502a1255a594e571585355cd81db3fbd93e21ecb05ce49465c9a8dfa76d977cf0de034e0f24eb62cddec5094d932322cfe1f10312dd47478ac16048d3189c735807520a4200ef1d524a9490d8d6a09552ff5a0587b35d21ce8abb478ad61a1f1c657d445d43ecb75917ef625c492fab290b8f9219fdd873ff7ec5681c31c8622e3d7281621598af6fb1cac152b378a01151ccfed12934096569d1f22695753851b1a1375888131a3c5ead0841334907945b156d6d708d20728a44044a5b8155489571e7e088c1d0608f2d593a6077a7606bd7e0a4e2e2ae2608d83f00b10021245932c61b453ce9717c7444a4121a63288da5d7dc454ac7a38f059c53a017b876c0fce43ae73753b4dac49a84a9da201d6548a9102200028120f800b2ebe801f9b3ac4308f193561f7e02be52114dd37030bbc7697ec4c17c9fbacec9b23ee56a411c4fb07ece7c7d82c483305cd8f80c1b5b8aa699335fce99af2b564b816a3658358e78634d2fcdc89d25ee1bdac21344201d049a2a478440beaa99cb3e559372fbf62deacae305f85c130749b611a3ac43268aba0db495e3a03e21960a537ab6ce0d59150d79d5d0f78278a448534d1dc53cf8e084fa9ca3d9904479c1c6b08f6f6a1496811298754131de27b47dbc97481b706a45adeff2fd1b0f88549f27af7e9e34e9d31f8e88a31e4a0882f708290922e0acc51970a6e980fee961e5a7c978c0315f1da3554612274c871b780a86c900674b7082cde10eb70f6f12858ce79ff91c37efbe8ea2c7dd931f72581448a158af3cab85238a233636071c9ddea71586611651d4966ad5e06d8c51063f17c499410bd8deec9325810fde58b32e346dd3a2080c0603e8d714a664321a81ce2957016f03d64bb6461768ca35a7f72dd1d0b22c7396aec776b5c5747491c1a6a5356b6814c1394e4e6ae6479ecd210cb384c63510149b2266e54aea42a07484947067754024354a469c1c7f999dcd0b8ce25dbc031162b6a68f30194f316d4ef02d8b7c4694c4a8dff99ddff9d2435af2d3b4ce7b87b10d21487a5946ac63a49254f59a440f385dceb0ac98cdd7486198ade714eb438a5541de1e110d5bca55c37c59a0649fbac9b162c9717e847382a6b644fdc06c91636d200485af1559df319846544d606ba258342b149ed61bf2b547f808997afa5b8eb6b13869196ea494cd9ae063aaa5a56ed7643dc96023a66a4a621db33ddae3e69d5b54e69048195001d21a9578e64712a11dc642d00d521bb4541cde561034f355db51d526b02e2ca1f5b46dc3743261980dc8f303aa6686129a679ff914e3c936c78bf7d93fbac1d52b4f311e5d405bd712cb841004010fc8333e2889a31e49dcf51d3c9465cee9ec00834458c934bbc2bde2c7b4b621531b2ce72d6d288832cbc1fd15994c40054e9687a459c05887ad3c2e58b234667f7f89aea73466463f9d727bff01dbe787348b16b14e68ada45e421b72fa5b8a2851d445cbfc784d948e20021d02da2ab48ef1d2e1434729ab7acdc14149bf9740d6929bfb649124d49a225ad1eb4bd646e07d60b46918660352a1591525224df1c2a193409e5b9a00cdaa45590332106d0ce8f5625cdb72b87f074b8b9603f0735e7dfdab0cfb23eeefbf8e52296fbefb2a9ff8d82fa1feb3dffacd2f496909780e8fee9124095a2b0492b2ac5052764d3e044e57c71c2cee72ebfe5b2408445c32ea0dc8c479523d62301ce2a2234cdd50ad15e5da630a10ca800f98c2b2386cd12a6194f6e9eb146163fa63c9bc3a25e9795c21b976e569caa2a48d57180ceb95255fb40c7b9a68e0c99781f634a63f8d890681d255782fe9479a7259311944a4d3140f78d722d16829c94482948eddf3134619a848d01ac1609422454b3f6b49921ed2c608a5312e707a6c308dc73b8f45108423488740621a8b771e21244a41bfd7a3ad96e4cb07c8e0d1b2479a4df042a0fea3dff87b5fbafece2bb4b6e564becf7c3e6777fb3c22487ef0daeb2cf31c81e6c1e22d5e7df36b9c1e9fa0931527f323168b15c60aca72c6fce401972fee61bde1e46889f41952490c8628f6346d0b750fa515423ba2d8625a98d747547e8512016f0547b75b6ce1c8db395638d244727ad710ca94d196022339b7abb97fa7a62a1ac63b11ebb6824652978232afd063853b5b58ad40441e07b4a121edc744b1c40b41aa26a44253542bf6c603a2482023c3c628416a58cf12f23ca0bcc4fa8e2f8ffb2959344058686a83c3831764598af40a5f39daa6a6110123a058e6ccf303f43b6fbf830f8ef5fa75a4d4384e684d60bd5c1370dcbc7bc2c664c8babecb2c3f60d0ef7332ef58c1aa9cb3bbb5c17863877931e7c6ad0fc87a8a38ee11456374dc70e76481121ae324455512bb3e892c7118565585091eeb1cbd2446e6111115ab7c4db613f05816c79232f788d0e05dca6261199e1b93254baac6b0ff41ceb5a736b9f3c129bdfe9024ee019ed058c6bd313ad588c853ae2d562cf141524b43241de3812253318328224a1cf3d31ec13b8e8e055e26acaa1665244de31049a0df8bd156132bc5a26c48644c2f8988b5c2150d8d10843650044b1406f8a24436394919a15e78f1335f72a1a5692b6a57d1eb3b96c509b3c59cc604d68b82d3f58ca38335daa7548de0eecd9a621df052922f05d819e3de1ebb1b17d8180f682ac9c1f18c4c6e329b55946e892b2274c8e84f5bd082b4a7299b96b686c63ae224c679105e23ad4265926a29989d34b4ae254e15f3d38a2687b2a96985c19b40ec06e8083009556e198c7a94554d9e7b149aaa2ec8c490cde9109216250d9bbb7d7ab1c03629cbf59c74ac48f490a65118b389f5127c44a4522c2dd3c910613bc9368e525a6369ad65920e89907803aa97e1a5201302973a826d10da21128db5163d3fa8b9b0b7c7b31f7f82612fa11f6b9c4a489288c9604c92f6a916336e5dbfce70638b9d2b9738385df0eebbef73e7f43ab3f280a5356ca892417685a393130e1e1458a7d0c335c989c0fb01c920653e6bc9579247b612526f39cc2db110f447438aaa6271ea990c120eab35516ea9f300444422a238f4f854a1d30657496239403435956db9fdc19a484a4414f0bac6fb801481a2cc51bdc0786bccb52b4ff2e8e567f9d11b5fe660f580c9b4cfc776ff1af70e6ee3e54de6b38232f409614d3aca084e92e71599ee616a8b358224498948a99a9a49364688800d11e3f198a2cc69ab0ab9b349ec7a2867c9ed1211eb6e47bcfcadef84ab572fa39178295021105c8b0d0253d5cc0e6fa2db25c1d42c5bc57cbe24dbb8884e7b9c9687bcfcfa4bb8daf3c8a52d362617180fcfb1581f50db39bb1b3199da204d238c51bc79e34dbccab973e72e32686eddbfcd7c65897a01494c7592e093054a29ccbac16ba84d8bd611e4b02a1a7422194d3490e2d635512f62b00dbd2c669917f4fb195bc31dce9ddfe5fabbafd2cffafcfa7ff09ff3d6db7f864a7be8c471f3ce6dca7ccd783a80fa19eedcbbc1e6b9c0c191a7a91c837e4422351a8d0890e818e92549acd9dd1e837024bd84755ba188d1c4648301765eb076158d768c2584da824e89d218f59bbff6852fd5cb53eebdf55d74a439fae05d0eefbdcd703ce5fe6b7fc178d86772ed598e576bb2dd47685dc5683262324e78eae9679866439eb97a8dcf7ef217d9dbbb86d609c3be627b6bc26a798f54261c9ede66ddd6f47b1b1476c53c2ff9e28b7f931fbef3238474d826666fb4479c7a882a1adfd256012103512c31adc0d7312ad148dd478b31bde106c43d06c35dbc18809892c657e86797714c1061c4b9cda789a209d83ec14e39383ec0d686733b57385d9f328cce21cd846a0587872b7c2bf095c42e0dca47ac8f1b6ce57026a08442484ba4055248e64541b082348bc89773ecbaa18e3dd239540c320e58129c1554798e78e3bb7f1cb676f658dd7e8f734f3f4755e428ad904a90efdf45a53da6579e64b55cd21f6f7170e73ac139948fd97bf223d8b6a4cc6724f188c67b8c2910c1b3281e60ad2403a486376fbdceb5c77e813ffaf37f88332d97b6aef0c3b75ec55bcbaa743c72fe129ba30bfce1d7fe88d25a2824693c211e5e66637295e1f832321920b38848f7f0487c90782f4963503a2578898e23a43004015a6a94141dd391824809848e68ab1ce197c4aa25b2967c7ec0f7bffbc7983227f29a7e9a10494f7f9c219380ca047114d3139289eab1df2c114e31994ca85230ad23d8c02456a4590fef3d615da04609ac02c6d4e89e4e698a539c8e983d788fcdc79e4329c1e9dd9be85411920ca56336ce5d023c5b171ee3de8d57188e4628ad916a485db5d43610270991ce48071983a64f92ec70e7f62bdcf8e07b6422d0e4eff2c4a5984bbb9f80d6f1b1277e95e5ba64516f73f3e6ebfcf2e77e91fdd55d5e7de32d7ae34b6c5cfbbbe8de1e69e4e9c5b06a028488b89711a7194a4b648811c57d643a62315b32ecf750ed8a68bc8b9309ded418d7e90e8db104e7102181b0cdacf66c9e3fcff6958cfff4b3bfcafd1b3fe0cd6ffd09cdeaa013ab82673488287c89a9002dc84603d25a13477d56aea65a5a9ab261777393755dd36a85b1255ba32958834b2cb18a10f7de7c39b86010dea1e3115b8f3c8bc0e19d63797aca70730785c5eb04814278cf6c7ecc68b849a405c6d5d8b6c6d812e762469bbb086f097681f33ddeb9fd06c3acc7284d180d079ccc0e89a314190251dae7645172eec2e3fcfe1ffe43764703feafaffe29567d84f1ee2f80148c86238e67a7dcbdf51e663d270a154a7994b44819ba2a0d2dbe91f4476396cb198da991518c208210619d476a4d1011014d90112a4ad9dc9ed08b13185c62b2f70897b6fb8c534b75f41af35bdfe1e0de3be475c3f17ac974dca7efe163c939eea40e95094e960f7091844a30d998b2ae0ba412a810318ea0d015fd24236d1ac4f19dd7c37a718a42333977856cbc05389c87a0348280f00d881821342148acaf99cfefd25473da72890e35d9648fcddd8f22548cf48e604f414c286c45960c689b1cd91604d7d018f0d631989e8338c6d89aaf7fe36b7cedbbd711c34fb3ac3dd3d184fbefbdcee2f8c7ec6cf4b970f102d9b8df595478029a486aa224422ac1ad37dfa72e4a927ec660730382440868ea86b49775939d7538ebb0cee18ca5a96a9a6285730175fe0506173ece70d8677b92b03bd2f4dc030edefd4b6ebdf53dda72cd603022e0513dc17ab5a6adc166012cf4a3841683902089912a9017a74c2753221710f9ba08d8ba939274d4b9bc020202a162845004bfc279817511499a0082b65ee3ac41e91821245a2a441413444006f0768e943d3c11488903a40f4801018f77012be0e0ee6ddebd738fb7eec5bc7f68696b4b702d076f7f95f397fa0c06e33313d403022d054a6a94d6e828466b4d5b579cdcdbc7989638eb118f2628e1695a439265040fc1399c77b8d0edd6e03d048dab6b848c58cf8f09d34f307df4e749e3982c8dd89846ec0e32a6f19cf9adeff0fe9bdfc19882c146ca7cb1a4692dc62bf262414fc5acab9a244bc9fa7d826bc97444e425cbb242cc66f3509505b6aeb04d4bd2cb88b24ec856714ca4630225a669a96b4196c6a4599fd6d6803c73140202ce162660adc5d92549dc47c81e1e475595246976e6e404f2d58cb7df7f9f5b0bc3bb47538eeeaf8863c9d1ed57994473a65b3d6a1b70c61382c75afb3306e899800e3ee0db165fd4b46d8348225aa1bb228834de77b67508be33567df8d04d521e44b038112122895f97f8d1b34c1e7b91388e48a39838538c078a8d41c4f951c9fcd6f7f8e0bd6fd2da05a7a5a5ae6a14025f7baad6d1cf6222e518f61411922c1de16d403cb877af0bd0c880372dabd592b8d7238e3350925ed2a3aae6c860a95b897796e168429474443c8a156d5d118420d60901870f81ba3a22cb4684a0f1ce52e46b7494727272c26030e5d67ac51b375bee9e6694b312644e79fc2a97f7a658ef69db16673b8bc839df9de4a17b7c68edbbe009d6e3da069a9610028d35148d41c7c9d94e80101c8140f09d711a7cc01883168a7e3fc3788f40e09c471883987c8c8dc75f24d2314a0b94d6c4b1a2d7d76cf42497a735f5fe0f79ffbdefb3ac5714eb25ebc51a95246c6c6c304c12b6867d863aa14d34a3518af8da3fffdf83d682e03cc880b186284a9052134420af6a8ca9694dc9e9bc617b7bcacef6186703ad31a43ac236254105f011699691a43d9406a9628e4fd7eccf72befdf22b3cf5d4137cfa859fe3adbce5dd930d96b7977807f9f23d76fa0b26d309693fa65c15040fd65a5ad3e09ced003e03dcdaaec28d3158677145455316c471cc7c9dd3fa00be73871e2ecac30cc6438f5429850c30ecf7294dfb13ebce39a4d0a88d9f67f2e8f344914609491c2be248216345120b76c78abd41cb6cff07dc79f76dca6a456b5b6414e8f7122e4c47ac4e0fd00426ba8778f59bff4f105a4370282970ce82e848b9b10e4ba74d4b65695639499221748cd4292a8e996e6e912409b57524498f341b12271a2534a78b39fff33ffaa7548de1d1ab5b3cf2e815bef9e3bbb8e1f35c9c0a12bfe0dd5b473cf378cc746f8b203c2104def8c1db2c4e17586bf1de75adc87b827f58d11d80ce39bc75b8a2a4692ab4d6aceb96d607827567bb207cf828844076163500324096a654ce744f7887f092e01cd6d68caefc87a47b4f91205191248a24320a4452126b18f452c63dc5b9a1a71f374853d0362b6cb3c6b635cbd5115bb1c5340bf4feec1469218e62aabaa635358240a413d234a6319e74d84328c1d6ee15363677487b53fac32151a43fcc33acab9a1bb7ef61da05376e1df0f60787c4499ffb458fbffeef7d94c6c0fffb2e2ce34f71ffc7dfe2577eeb73bcfa5ecc9dd3c0e1fd97f9e2afbe483cea639d63b65a75cc20387cf02005120542a38423c880310e632d755d826d71b6c5398fb12dde0341810409c47142a4145a6aa48a400662a50952d18b63848a083a22123d9cd0581163ac422a45d934b469421c04d259821068051ec93a6f581782e319447144126f13a91d222d988c35e72e44486a86277f81f8f23ffe47210447aa358480f39ea26e7001149ead0b97188e36397ff932e7ce5d20493a661108344d8b9092e5bae6c6dd43deba3de774511154c6f1d250d596de70031dc5ac5b8929720e5fff0af5e226213ecf7a6590c272f1bc4527119f79f1b39c1c2d393d98e382c37a8f4022954248890c0a2d22840e08d169ce8d6969d605c609a27e9f7e3604a5e1cc2552522354425011426940814c412578a90932c6a3303ec23b4fe72749bc8e48b144344c467d64b0102cca3ba4964c37373e3c98b592041fb0ce635da06d0c756308384cb9e68a7e071dc70a6f3deb7cd94d7b52a0054449ca687387673ffe4936b7b73b8081d63bdad6e3bc20afe0745d723c37dc3fcd5885049b05f2a20115e86f64782128ac432b30a6e2f2332f60ddcff1a397ff92f9fc886b4f3c8dd87e94e9ee396e2f87882c267d54e3a1a3964882e84cfcd0f14ecabac2566b86932d0651c6503aaa55413ae88308dd7b42e85e2f3c52044410046ff14e6081e045c7443c786338bcfd36c5d11de274c2ded39f04e9295d407881c82dd57a46341c217d841096fbf3078cc763bc73b4c652371d3575d60092380ef45285f48659758278e94ffe5988a4a4692d0188e201d3dd3dd2f1265b3b1bf4e21827c0b68155d9b0581b66ab96796158d79eaa09ac4ac1ba6ac98dc25a8ff3e07dc04a49081225c1964bb2d10864d4b187aae0fa8f7ec8ad9bb7b9faf4c77191e6da938fa250d82070c19cf5e2ce97f7dea3bc45fa8afb6fbf46bd2a199fbbc87073171dc7d8d6227a3d82979dff195cd79f0338e77167bd5af800c11382c0078f72065f9cd0164b8c6de85655a07a637ad3cbf80069ac714d858f6222401268db06a525a9d6645a219444c582484b10012d0c4a4a5647f77876b48f78e5a53f089180a6ac295ccaf6e58f70fed205966bc3dde39afd99e164d992378ebc96b4c61384240849631d8d072702222834a0a42208819402240829c036601c712feb4e2021f1d6636d4b59d4acf29cc1b04714670402ce09081ee73dce069c0f581f688b39c5c93d4c5d239ca1750eaf22fac36dd2de06ad901f56a938ab58d735ecce78f612194c979b0b02e1cd1913f1241a26e301eb7549e502bd7e4a4090465d1baa8b12e2047db65b7a89e3cade26a91434bea56903de3bb494f8e069db9afd3bf7d88a0ff93bbf7805bd5e39f61fdce2d147f720dee0d5f74ef83fbf7e9b526c114702ad354ac518030d012524ad97b820f1219068d50d2d3f150911322065574d4104aa72c96834c5fb871359974e0d2190658a341de383c33bd3b9174db708d6199c3504e771d6d3b40e2706589d2231b8e01001168707087184b18e1004ce7b2ca6cb5a9c811f478a411ad34f14128d140a2f3ba08395e4ad219f6bbc9714b5c36e8e998e47c848605dd78eb433f4334d966ac6fd04616bf2d6d29cd1cfe03dcbd2b05ae75465812edee7852f3ecd30f16853dc6773aac90613ae5c7b96e2fb6f32d49ef9aaa4949a2c83580796ab3575dde2bc27ea0f188fc72459843b1b2244903819f0c6d3960d6ddbd0b486a6a929e7a72c06739c7580eb0e0ddb011bbcede89beb5a45e4da0e1c1110c181f7382199ad0a4e176d172126a065603c48184412e36a74dc8333ce6c1d34b547004a0b0892c62b9c2bb02e6690c64441a184ece403e111b1a7b516a4629245d475453d1cd3945d505e88847e22b972a9f315cbb2265f1b9c0d94eb350707c7ac566b8c691078527b9fffe4573ec1d58bdbf498a3b77612828eb1a1e1fb3f7a89dffb83d771836b5cbed2e3f8f08037dfff3187b7dea1298f70a645e191c9009d6d70eecab34c2f5c43e998aaaeb06d772a07e911c2232d381c4dbdc62eb28e27133eccf43d0caeca3340d55952ca8740c09d35e76ed41ea7d0c6862a5894eef494ed410402646148b5e56162b62410c7164f40284908e0bc42394f681d2658bc9068d56558a41044025414138420684d948da0cdf1d6818ed059c2b9ed5d82b398b61bb7abd59a1b371fb05ace1141a269d0c22143495ade66ffce98f7dfbcceafffcd2710affcf9ff125a325ebb71cc3ffb173fe420dfc1c523a603cff19d57c94fefe1a4e3b14b17b970ee02d920c15bcf62b9e4f0e884aa910c369fa1bfb94b080282e10b9fdde3d927b7f8dd7ffa7d8e5781a6aa502ac1058b770e84444a7906f419a80f7508bad452f73d830f20e892f6c678827288a0f12110451aa125d2b528d989fb5d0beb380a671938211584081102882e022703042c5268b4d2e848d37a85f08ea638a59cdfc5d50b5a5fe31d10f7d8d97d94cb4f3dc7b94b8fb15c2eb97efd26b62e49952596a14bdb7a4f2b0cb16f4109ce4f15fff1ca68c600001b9049444154fd6f3f87f8d1cbff2a8cb7aef27b7ff012fff26b6fe15a439248e6fb6fb05ced331d6ff2ec934fe0da82a228f122904609a38d09bd7e9fd53ce7fd0f3ec0e873a8de054488d0a246d2d084080f58d32254d401204207c6d975047146d938e3a43eb8b3d79d4560cf626a926e6184b008ba935d21504ae26c8dd0090281179dc025fdc3c49523088d171d1727740aa27401af002202e0f0b4d582f2f83a935431998e885437498ae059ad4adebf7d9b562ace5ffd3493dde728ab8a241408d1eddc4425a4fd3e516f44a463742fe5f1cbe7f8f8950471e3cd57c3effdcb57a8f436b31c5ef9d6372867d739397c9f9d8d6d2e5fdc61319b311c6d70edda35eab6c6d996c3837dd6ab153bbbbb0c8723de7cfb2d2abf89ec9debe851f078ba6d695b838c628c0b1d802220a5408aee869314feacc2031270dee2bdec009512ef034202b80e742110b21b48f0e06c83d4094186b36a5684603bc937083cf227a942a9b1d68114686189a4c47b41b1be05d5031ebd7899bc59932fd7a469ca60d023cf73dac6309a4cb97770c8c1d1032e5e7c8168fbc94e3311926c34a23f98800b046b316d816f4b8c59d38b5a7496f4f8f64bdfe238d7f82011aea458ee13ab889d8d11abf9925f7cf16f509994479fb8ca97ffc9ff467e7cc4b56b57b8fa914ff0c6f5d7298b86271f7f9257debc0e3646ea29492f231bef222514ab25d96048f8a9db4c0fa72a11c0bb8e82793aea071eef25beeb2c88878290efa8a50a67f719644009419d1f23bc201b8d0141f0aaa3913f811779962cf442321002bca7c867346d892b66608f78e2d14739b87f97bd471ee789a79f6575baa0c86bae3dfb0c17ce9fe7bbdffa3adbd311de3af6efbdc6d5e1189ded1084c39c56cc678788e091b4101c8480969ef39b7d74d91a7677faacf305d6399a26a7694ab6a753f272c5e73fff458e566baebff65d0a2b79e6a39fe0e5afff31e39319e974979fff855fe2db2f7d9d41bfc723172ff1feed43a261469537d4eb055274712abb3ec27a7f265b3ebcc6f1132c7ce8b6354a20822378813bab642120f880909d64296cb7233ce06520184314a5d893022102ce75fd59d271691f044a6902012904ed999eed9d07db52afeff2f453577970ff0ecf3dff59e2f116a9ab78efc18fb8f1c12d9ef69fe7e2a39fe0f35ff8db7cf79b7f821092d96ccef2f80e1be732e4d92923bae11def6d6754048fd4f0a98f3d858c95e40b7fed7922e5d01a9cab117846fd019bd32d2e5f7b9a375efd01c5ec0ef9ec90f1f83ccf7cf479f63ef939565b4fa0d488a79f7996a3a37b6c6d4e91944857e0cfa643e73a4661ab06ef2dced9338dd9e1bdc33973c6991b826da16dbb0077a8c11bbc31b46d8b755da0d0d60d8daf31b6eef407e7cec6e016635a5a63b0ce116c8bf0e6acb21cae6df06d8bb5673fcf1a5a5350ae3e60effc84c56cc6d52b9739b87f9bfc74c9bdb9e052b4c9f34f7d9a277ffe17b9f7febb7cfba5bfe4f32fbe4853954c2643caf218ef2abc6d096d4368736c5b604d8d7735849a272e8ff9f4c71e471f1f1e33ee0dc8d214d174a948458452f0c8a357d9dbdba63f1ca011d445ce8d9bef90f5b679fd70c65eaf207eed87f49eba4a6303b669d91c4d99ad7242a2ba8a3a2bd9c65aa43fbb1f73b675017c78d81fc0d0b5092f05b86ed2420a84eafab4770209583c2d0a68504242f0e820114ae28243fa402b044e0a9473180221744ca3631d0a2fc1fb86b69a331c3cc5c1bddbec3efd0c27fbb7b9f7836fd07fe633c8cb8f736e38e29def7c9ba74feef09ac911e92fb13d1d53d62debaac05b834320bc4709babf450682108c87199ffb85e7083242afd7258354331dc61cb62d49922265d7e08d09bcf5ce311f7fe15758cd2bf2c5031e1c1bdc5a726d6fc4c18fbf4feb0aec7ccd783466b55a319ef4395d1dd2efede17c675b85e011da631b7f26c03b10dd36160f013f031b7f26f484d05dbe7120da6e285252e14420784f081201675f070c5527da29894602925638f067172e43e806212452740924a1d68cb2188247c511650ddf7bf53a1fbdf008499c70bc86c3c592244b314a20da406960bcb98bdf3f46461aa5154a74b283089df4a0cfcaab0bdbb498f204dd1ff4689b927fff973fc397bff2128d49d1521110ac966b26938c9bef3dc05725bbe72e11e431c56245a237f9c46ffc7dfeef7ff2bb6cf55254dde29c234e22ac6da8aa92877eb50f1eef5a22a2b3115de3cefa1a081e5e935441e0a4e18cfd11798190ea8c5d846eca13e07148ba0af5feec60f4a2bb762644b75e229c0947a08444d201ddfd3e83ee8f886d43ac20088f4a125ef8ebbfcce4ca35721b931f1f5015730270fed214f1d8dfe20be3988f7cf2795efdce370801a228c29a0a1f245a5886a394d130e5fcf6946b97ce71e9e20e8440e362b49231492278e492e0b7fee3bfc1db376ef2f65b1107fb079c9cecf3b9cf7e146f66fcfeeffd1f6c2f0f49767f8ec974409de77ceffa3dfefe7ffd3fb0b5a9f99ffec13f607b678baa2c8885409835d65408df0216610d75e8689ce42737c01c3fb944ea43d752a5909ddb13c00a81f49d806f25083c519a52d50dc209a244d19af0e155b38787ab0c5de38a0220c185ce33543a224885a91ccecf4158322dd8af2a6ede3de2f0788d6f6a0ef7eff191a79fa33f76dc78e32daaaac1b92dae7ffffb1c3db8cfe630a667049b3dcfce4ec4959d5df6f62ea323419625e83826eba7444a53b72ddaf90a1f142a89d8dd9e90248f30e90baafc09fee2e56ff38f7ff77fe5bff86f7e1b2f04df7bf93504969baf7f9b6675801a9ee7fa20c1950fa8ab86f1b0cf9b776ee3db92e06ea3a5408b2e5f21e3409020ce38b40aa29bda94ec8642efa99b1a1d476763b843494d6b2d2aea861a47376c44a1218d044e58940c64d199b015fc1955ec3cc1c6b4dda2f98edcd9e0c0766640aa526a6b6883c786807016d5cea8673778e395ef6383e0da732f30bb7f9f0737dfe4dc638ff16b7ffbd779f91b5fc5d23248343b1b193d551379837119453903e949d34dc6c3095a401c2bd2c1149dc53d6c806655319b9d9c91f306ef0d572feef1bdef7c9be974c27ff9dffe573456335b5a12f90cd63dc1b31ffb14f57ac11ffdfecb8cc71907fb076796ce88348dcfcc02cfb03f224d53dab639e3c396388e69db1625243ad2186b69db96ba6a4104a248755ab4f71f5e7874cea3759737ee7a60777b4f9e5d3bf3e12717df8baa268e2738e750677a870f9e2449ba9c4710b820b0ce309f9d321e0d79e91b7fca7ff73f7e896ffec5235c7ffd6d26b167ddd3fcadbff71bfcdadffd156ebdfb16dff8f33f258d2571a4bb03dcd5f4f49848c5ac960b26e311b6aa695773e28d31759563962de2db5ffb66004751e6acd62beaa6a1c8738a754e5154dc3f38e4fa3b37d83e7781bdc73ec6f39ffe244f3df308fbf70ef9fa57ff8cbffcfa9f9128c5b9dd29b6754449c4b09f31ecf5e8f5529234214d539cb5981090b2bb405a55156ddbe2bd454a85730fa7434f9274af1752d1347577c0688d31862ccbd05137be277142d334c800cbe592a2ae180f06b4c6b0582f504a12c759f71ea9ba56e51c52288207171cc6584e4e4e31ad63b15a920c37f9cddffa4d9effec67f8ea375e6373abcfa79f7e843ffce77fc0bffa175f617314331df6505290f67bc8009b9b23b6479b144dcdf9dd5d948224915cb87c0d1f34691c21befb8daf85cec2b7ac8b922ccb3839390602d53a67be58b158ad78e58db798cd560434420bdaa62278cfcee6842b17ceb3b3bbc5743226ebf7d04ad1ef0f88e2182961b198a355441c27c45946591414e50a82a3df1bb058ad8863fde182a8207080f7026b5aa4ecee16fae0b1c160da16ad35499c9ef57cc1e2f4142941a7194d63887b31c17a4c63904a22e38424d134eb1c8243441175d5628de1e4644659d6cc170b3eb8fb80ba95c449cc70720e6372962733e258f0f8b50b7ceca96b445a639a9aa49722118c467d501aa5225c5bb2b7f7282885695ad2b487d211e29d575e09ce39b4d6346d4d59576469d66d4fefb0deb23c5db0ae6b9cb314754514470cfa3d141225554707b5228a34f26c12733ed0cb32ac35ac8b9c2ccd487a3db22c66753aa3d7ef53b70d6dd3107c204e62a4945867d04262ce069a10026ddbd23415a6ad081efaa38c34195055355276a0445a7fc82eacf128e10902eab661b95e32996c13c511f3f9117114d3ef8f59af4f38393e623cde623cda20e0105251568ee57ac9bddbef2375cc703864673a6130189246313a8ea8cb1ceb1d9bdbe770c112ecd9c4a02571d2234bfac820f0c2128240dc7efbadd0346d27bac70a63ba8c83d68af56a499224b4c6d0dacecdb0ce13eb2e831782a7284ba23806eb08c12223d5fda3eaac7f2a417b1650196fec203034754559d5d475f353598bee0f3d3abe4b3f1bd0eb8d90c1238420493256eb15014796c467e3bba4ae1a06c35ec7587c27797654dca184a3b50d47c7fb0c8713d278441469a238c619830c011f043a8af9ff7a38af5dd9b2b30a7f33af5461c7d3a7bbed76000be1e7e09e17e05d7830ee90c008c916920da251ab031d4ed8a1d24a337231abb92e6949554bf58731bef18730a1b52215b8fbe413b4d0c494f1614117434c01443d75b41d76e494097ea5ddf4906a56510231873a428a82518e9420668f360af1d59fff5c8c95d77558e0fd5ac1411f28b9362e2515b15412531b839f175ce3904a91a939bb1223d3f11dc3f61ed3b424047e5950b24a9fe365e4729ef8ed6f7fcdbcceccf382d6aa8e795a9162be2e3030cf67428a386b388f6784c8bcbc3cf1bbdffd1e4921848c945594aaae8da210afd7613239268c759414b88c27ac6b70b6f97f35420941cad4f34814b4d1c49869daa64e485920b5426949161a95abd42bb5a42441cabe8eee3963db8e12abccf07278a16b3bb4b34804c79727fafd7df5efbffbafff2ee7e989713ab3dfbc258b6a97a7109019e6e98cedb61455b0d69172fd41b43284182ad4981252c0e9f482ebf60c5d5f8dd1b0428e142aeba6b4bab2160a1f22469baa1dabab4014334215624c7cfcf02d4a3ab637b74804ae71c49028b9e2b06db34549c3f1f44c5c677cf0c4e451c6727ffb29d63914a094e0783ef2eefd37dcdfbd61bbb9e3e5e5039bed5d157d1048add9ecf6e4589f5fb444cb6b92382784d458d3f1eec37734aea36dbafa7da4402943a470faf8917eb7e1328d74aea5713d3e468428641f10fff9afff54faed03fef24a8886621ced6620ac17424c9ce667c2321352e1b3cf7e8352861c53ad3f79665dce08dd636c83569a699969aca5e480d18ab6751c4e27d49534fd794c73ce915324c588319654242906421819a70b3967f6bb47a4aa33f2ebe1196b356ddb72394db4ad633c1f59d603651d51baafaeb9814fdffe35ab5fd152e04c839212a5143106620a4cd385100aaee989eb4cdb3a521618e5408bca5c0b816b1a522e94b422a5e67cbeb0bfb9adbbe5151e52cdc0f9f84c675565582e238db63837e0fd859777ff8b6eb7e89685f1e357a8f606dd5bd6e942582b7e2544a18444ef06da6e8353b69ab34aa2a4e4e9c30b3a83d9689c6b505a61ac2193485180903cbf9ee8bab6bae2b98e75a9cc843432b45ba4d1c418304d8794012d0786aeafb695805c123eccc4b4b06dee01e87b4b2905db34b4ede7b504a85a9fb7c3801416a3ce7c7cfdc0f066f7f31d1ea45458a950433d8ba18c060cda36a85c28c12393a278492043aed8f09a56ac6bd9ed6e58d795922ad7b1dbdd10e633eb72a6730f9418283e91756659cf480a4518441168af06ecfd0e2b0ad33cd10fbbdac41a473c793e7bfc35455d39e89449258380758d6cf66fd1aa2e1be50a470aa908eb82948522057dd79372a214c97cb9d4512b498c06a31a66bfe0a723426494b2f83021658b92922212e3f940ca2b7ddb5072669947a679c4af2b9bcd0db251a492701984720865f0eb4a3fec91d22132bc1cdfa1916cf76faa6313024e28c23c9142216bf07122cf2b9bfd8e903c320b969450d2b08c53351f9c8510af346be0f5f595ae57b4c654b531c166b7ff99f8a1c4c4ede3237e9a105fffe5cb620dd702afc939e19aa602de5749526558d6b5269db4aac27c1148a5f06b406b8d5011210c7ef5bc7bf78ecb38d36d376cbb86beb7bcbc3cd1f55d05b373e595ad36d8b625fb99180252839f17b4b2c45c38bc3ea19464b37f20a74211b9260d7266b37f209130da553d7a1c69ba1e6d0cae690831f2f2f281b76fbfe0e5f523719eb8bd7b53f18894293e208c649d27b4312015ebb9661cad1b904a30cd13c3664b2e11592086aa3a66147ddf335ece15eb955716300994b3c410293ea0aea296d402f1f19baf4bc80b6919399e8e286dd9ec1e18c785526a93bb5c9e514ab2bf7d5b5f409c41e81a9750123f9f0931d1361b728957107d2189ccd058c6e9cc6ef380eb2d3164a492accb881286a6edaebc5aaa5655cc1c8ecfacebcc7eff488c2b6bf0ec6f6e50aaa16d1caf4f1f91aec50d3dadb3accb091f32c376cbe57c629ccef46e5b9bb6940812e3e5841496767353278618b16d73ed0b11292492ccbc2c0034b641b40d25ac68671145915364be1ad4d6689c5295bacaa00448a508315f452dc86b20109046a29769664d2bd3f9c0edfd5b7c54041f5122f0fcf107d675e2eefe0d85c2e1e927a4683056611b454ea93695ddc0f19b6f199a9642625d3d77f7f7f814d040db6cd0aad29f15304fe428706dcd9fd47342d5b3ca696599ce6405a669d041d2b50d71f524593dbfede3e7a430119791690948ad699d25fbccd3fbef58fdcaa5bc4769c3edfe13bacd164c537515ab104aa3544ff49e982196c232564ddd3807d792c56a6afebb6bb1aef699a66b98d799cbe985d5b4ec873dd26a48f532a41419a575d5c91d9428699a0de2ab3ffdb194ab03edacc618471192e06704d5bbcbb2f2693905baed8e4cc10849084b157d70185339bb791a6bfec534f810902520954649c9349d787afac0dddd2758e758d799f6ba46a30c2146c23c21b5a6e91ba669461069dc969433ce59b2903cbd7f4f632dc62812d0741d719931aea548d0daf0eefbafe9ba966177cbebeb0bc36683b32da40ab55bd7918b444a982f67e2b2a28d4519454c999212596bca78c1b61d31458a14346d8fd60e3f1d50b621cf91982f882c715d87d68e2ceb84a39400a9d14220befcf73f94beef51b65ec84a61659ccf48211986e12a964b524a1867115aa19d25cc0bda6852494c8767524c0c9b3bb4967c78ff3dc7d32b6f1e3fa7691aa452d7f9bb703e9f68bb0d4de3ea69cdb82044e1c7f71f20c3c3fd1eeb5a10829424ab5f38bebc306c7bace9b17dcfd3d37bb67dc36e7f8f8f81983d619c984262700d85887116d30ce4b060db8ee71fbee7eeed67ac29c09a2bbe5b26a4548471e470fac8b0b961186e91da20458de8fd6c265427591043c0b886e8579a7e434919d32aa24facf35c391555c17921415b475a57c4fffcf10fc539c7e447d610e965cb8797ef797cf3966ee820db8abda684710a29e53507225862228640f6238d7335325c324a2994d48c97034e39facd507dc0ab8c99538d3df865a1884c161abf2e280d5db7a91c5f4eccd34c588f8ca72712866ef7c0667b876d2db2c41a530e85f73f7ec9b21e78bcfb8c75f52034cb72a6df3e7277f7882f60aca2dfdc4008f875e672bed00d96654e5c2ecf150f43e2dc0e1f03d6181aeb70db8e12564acaf52ae55a9305824ccc0952c1f53d3116b432287d452ad2caf932b2ae89dd7e83f8ea4fff56924f3cbdfec0e327bfa2ed1a8a12c8a211421063a6148f314dd541acc2688b7196e5f84a5867c212d06d53b32ceb82941a29157e3d61a421fa3afa99b6416b89d29a357a72aa1cb3738e659aeb3412abd6723a1f5106a6c307760f9fa34d4bd36e59fd8a5496653ad334961c2314094a737cfe896ed8d0f47ba4aeae8db503d37ce2eefe81d7f73f71f3e6177cf91fffccb0bd637bfb0808a6f305dbb564bf62b421fa15a11dab3f305f266e6e1e31b60169c8c1a3ad242c1ea4a2a48091ba8a60b2a08da5b50e990bd3328314b5375ca613fbcd0dbfd8fc0daa165ae23c12f288321dae1d58c785d37a822cd80f772cd385793a2185c46e06741b31ca540314b0a60a45d6dc70be3cf3fafa13dbcd2dc2188c31f835d6cf6dbdf91c62c0a8ba59a10da514eeac655c176c1b888bc7357b528c744dcbec6736fb0d29264a06e70c11c5c3a75f70391d10a5a095426b472901bfcc04ef41489e7ef88e9802c7c33bac7128eb1886961412b66d28b9f072fc809092b76fbe20976764d3d0ed6e4118de7dfd35c3be655903a6b52801a97884d1e4d5832a5c8e27ac31686beba1c194115ffdf15f4a8c826ed82080e972649d5f312874dbc3557b284d4f5c12ca40f6137dd363ba9e14125a2b72a9e5a5dff5e498f08b0724e7f1842c85140a9b6d8f6eda7a5e3204b4b1c490508dc5aa722d174bad734896f9cc321d4829a0ad65bb7d83713fa77b2b072d8d659d2f2c970b45086eefee2009b4d54c9791c3cbbb2baf67b9bd7bcbe2234a445e0e4ff4db7bfa664b082bd66884aadcb436308f63cd4eba01670ce3f44a8c82cef5b8dd16bf782e87d3153ecfa414b14a5eff45867989086b31120eaf4f684aa1dbf5f87926ad23c98f74d6314f2f4c8733a6d9d30ddb9a2729134f3f7e835f16bef8cdef31a6d6e254220283758ee803d3349311f4c386360d2005d31ab824d8cbaad019adaa8ba280b412634d0b344a73194f1c0f152ceffa0d0f8f9f23948254083923514821504a9143c22f0b97d37be27cc6ca42b77da414f0fe4cc99e711af9e4ed6f40198c13347640ab962c0a5a786cabd05ab17a4f95e135ae192a1d2b0b6b88a4acf1fe0279a1e882129ab63594ac8971653a2f14d7e09c65bc4ce42cd114a2844677e869f514b1927d22144d280df3782061b97dbc274e17d6f347869b474481bb87cf695d8b1d76a85289faac0cb61d2a9de36b53f021308f33abf73446b3710d45444a8e350312023f7cf71d8fbff825ca18c23ad1f73de7e94c2172f7f809311594548c87675cab19c719d36ee8fb1d39664e97099d33edb0a7ffe50de20ab917295997c0341e0969c1594b4801957c0d1d298dea34795d385e4e74dd508f8a0881d612212b26218d259748bfdb228e99653a9193bc6eaffaca711794d6f4434f2c19d3982b072ed15a928bc0a882fa87bfffbb7fbc7d78c3f1e5094884585529ad343ffdf025d94fa4e4391c9f30da72f3f0294ddba194823512e38a695b74d75350ac6b204bc9cddd1d948406b49458a328ba665d620c48abe9fbae9aadeb5cc97b6dc949d1f50345489ab6452a4d2e91e7a71f5142d1f73bb4d6486dd1d631dcdc56f6a3e42ba620f1eb82693b8490f49b5bde7cf22ba469c9145e5f3ff2faee5b6c33f0f4fc2d1fbeff6f7c0a58d760db96a6dfa18c434a450c0bda589a6183320dc3fe0e50b46d0352d00e374851b5961822fd66474c1e2d25ded767b6c30dfd7e8beea4e0ebbffc81379ffe8e3904fa7e20c7991fdf7fc3ebf189d0df433ab0d93ca0fb0d7ef6e4c6a04a21c68c2f355f22a691943c252c386759c691653a41b6f56da785e532a35483328ae22b942e9421e782b6b0ae13ca08c6f5fa8294442885b20d778fbf441ac7e6e62dd3eb47c4d56d59e73346352c193ad7305f0ee494985e5fab319104e765c199964db721c5c239d730cfaf7efdb7ac6fff0ad70f18dd703a3d23fd84949ad3e9c27e7fc31257a6c313b61d10579300ad6b0849094208d8b665d8eef0cb4c0a82655ee8da96d3cb33e1dd4f6c6f36fc1f81377e8586ee0c060000000049454e44ae426082, 1, 1, 'image/jpeg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commercial_search_ads`
--
ALTER TABLE `commercial_search_ads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commercial_search_ads`
--
ALTER TABLE `commercial_search_ads`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
