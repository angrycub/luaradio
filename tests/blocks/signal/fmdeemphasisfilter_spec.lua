local radio = require('radio')
local jigs = require('tests.jigs')

jigs.TestBlock(radio.FMDeemphasisFilterBlock, {
    {
        desc = "75e-6 tau, 256 Float32 input, 256 Float32 output",
        args = {7.5e-05},
        inputs = {radio.Float32Type.vector_from_array({-0.73127151, 0.69486749, 0.52754927, -0.48986191, -0.00912983, -0.10101787, 0.30318594, 0.57744670, -0.81228077, -0.94330502, 0.67153019, -0.13446586, 0.52456015, -0.99578792, -0.10922561, 0.44308007, -0.54247558, 0.89054137, 0.80285490, -0.93882000, -0.94910830, 0.08282494, 0.87829834, -0.23759152, -0.56680119, -0.15576684, -0.94191837, -0.55661666, -0.12422481, -0.00837552, -0.53383112, -0.53826690, -0.56243795, -0.08079307, -0.42043677, -0.95702058, 0.67515594, 0.11290865, 0.28458872, -0.62818748, 0.98508680, 0.71989304, -0.75822008, -0.33460963, 0.44296879, 0.42238355, 0.87288117, -0.15578599, 0.66007137, 0.34061113, -0.39326301, 0.17516121, 0.76495802, 0.69239485, 0.01056764, 0.17800452, -0.93094832, -0.51452005, 0.59480852, -0.17137200, -0.65398520, 0.09759752, 0.40608153, 0.34897169, -0.25059396, -0.12207674, 0.01685298, 0.55688524, 0.04187684, -0.21348982, -0.02061296, -0.94085008, -0.91302544, 0.40676415, 0.96637541, 0.18636747, -0.21280062, -0.65930158, 0.00447712, 0.96415329, 0.54104626, 0.07923490, 0.72057962, -0.53564775, 0.02754333, 0.90493482, 0.15558961, -0.08173654, -0.46144104, 0.09599262, 0.91423255, -0.98858166, 0.56731045, 0.64097184, 0.77235913, 0.48100683, 0.61827981, 0.03735657, 0.12271573, -0.14781864, -0.88775343, 0.74002033, 0.13999867, -0.60032117, 0.00944094, -0.03014978, -0.28642008, -0.30784416, 0.07695759, 0.24697889, 0.22490492, -0.08370640, -0.94405001, -0.54078996, -0.64557749, 0.16892174, 0.72201771, 0.59687787, 0.59419513, 0.63287473, -0.48941192, 0.68348968, 0.34622705, -0.83353174, -0.96661872, -0.97087997, 0.51117355, -0.50088155, -0.78102273, 0.24960417, -0.31115428, -0.86096931, -0.68074894, 0.05476080, -0.66371012, -0.45417112, 0.42317989, -0.09059674, -0.35599643, -0.05245798, -0.95273077, -0.22688580, -0.15816264, -0.62392139, -0.78247666, 0.79963702, 0.02023196, -0.58181804, 0.21129727, 0.63407934, -0.95836377, -0.96427095, -0.70707649, 0.43767095, -0.67954481, 0.40921125, 0.35635161, 0.08940433, -0.55880052, 0.95118904, 0.59562171, 0.03319904, -0.55360842, 0.29701284, -0.21020398, 0.15169193, -0.35750839, 0.26189572, -0.88242978, -0.40278813, 0.93580663, 0.75106847, -0.38722676, 0.71702880, -0.37927276, 0.87857687, 0.48768425, -0.16765547, -0.49528381, -0.98303950, 0.75743574, -0.92416686, 0.63882822, 0.92440224, 0.14056113, -0.65696579, 0.73556215, 0.94755048, 0.40804628, 0.01774749, -0.24406233, -0.30613822, -0.58847648, 0.34830603, -0.13409975, -0.61176270, -0.79115158, 0.33191505, -0.40785465, -0.00040016, -0.34930867, 0.74324304, 0.79935658, -0.96381402, -0.59829396, -0.34451860, 0.97409946, 0.56540078, -0.32180870, -0.57394040, 0.34891015, 0.67540216, 0.86437494, -0.31230038, 0.76478642, 0.37422037, -0.03100256, 0.97101647, -0.53071910, 0.45093039, -0.83063954, -0.66061169, 0.82197559, -0.57406360, 0.51823235, 0.20041765, 0.68226439, -0.26378399, -0.31942952, -0.41756943, 0.73483962, 0.20796506, 0.90861493, 0.77453023, -0.72930807, 0.10234095, -0.79145002, -0.92172438, -0.85361314, 0.73233670, 0.57623291, 0.65701193, -0.31820506, 0.23037209, 0.56380719, -0.24392074, 0.14156306, -0.55257183, -0.83651346, -0.46655273, 0.78153634, 0.12889367, 0.85013437, -0.08446148, -0.44563445, 0.57402933})},
        outputs = {radio.Float32Type.vector_from_array({-0.73105216, 0.69422060, 0.52824599, -0.49025303, -0.00888310, -0.10123689, 0.30328360, 0.57726681, -0.81168425, -0.94386190, 0.67160243, -0.13429634, 0.52419311, -0.99496514, -0.11031381, 0.44400197, -0.54310137, 0.89073700, 0.80268568, -0.93812853, -0.94979626, 0.08320300, 0.87768197, -0.23664083, -0.56765258, -0.15503924, -0.94240975, -0.55624110, -0.12472981, -0.00790557, -0.53414321, -0.53795367, -0.56274372, -0.08063191, -0.42049596, -0.95680052, 0.67444646, 0.11378630, 0.28366011, -0.62698567, 0.98340189, 0.72165650, -0.75953919, -0.33341837, 0.44154504, 0.42381263, 0.87131786, -0.15391511, 0.65795690, 0.34282011, -0.39525059, 0.17697711, 0.76296633, 0.69440711, 0.00876107, 0.17975979, -0.93236995, -0.51322418, 0.59318072, -0.16951537, -0.65569597, 0.09908185, 0.40450558, 0.35056382, -0.25200534, -0.12070476, 0.01544015, 0.55813527, 0.04078203, -0.21231908, -0.02184085, -0.93934697, -0.91453600, 0.40787801, 0.96509439, 0.18788165, -0.21419418, -0.65777493, 0.00275232, 0.96558923, 0.53973806, 0.08068080, 0.71894222, -0.53363460, 0.02536247, 0.90685123, 0.15389909, -0.07997586, -0.46308678, 0.09747020, 0.91251045, -0.98628992, 0.56455344, 0.64370507, 0.76958811, 0.48386356, 0.61538363, 0.04042524, 0.11962330, -0.14464693, -0.89070129, 0.74247825, 0.13772216, -0.59782398, 0.00676238, -0.02746096, -0.28903043, -0.30522895, 0.07422854, 0.24965532, 0.22223672, -0.08094725, -0.94654948, -0.53841293, -0.64792168, 0.17102022, 0.71975458, 0.59917718, 0.59189802, 0.63515884, -0.49135810, 0.68508291, 0.34473592, -0.83168769, -0.96842176, -0.96907675, 0.50892693, -0.49833274, -0.78348601, 0.25175688, -0.31313750, -0.85882235, -0.68294865, 0.05673859, -0.66547126, -0.45247388, 0.42122057, -0.08848450, -0.35802782, -0.05051885, -0.95439875, -0.22543652, -0.15963165, -0.62231356, -0.78403598, 0.80072093, 0.01938248, -0.58078849, 0.21003050, 0.63521856, -0.95902473, -0.96360862, -0.70781553, 0.43806624, -0.67960483, 0.40894467, 0.35663387, 0.08920229, -0.55840421, 0.95034009, 0.59657675, 0.03241322, -0.55264705, 0.29579696, -0.20883672, 0.15021695, -0.35588157, 0.26008412, -0.88027608, -0.40508440, 0.93770003, 0.74923158, -0.38504958, 0.71452177, -0.37643844, 0.87536699, 0.49100941, -0.17078210, -0.49206078, -0.98611432, 0.75998670, -0.92621195, 0.64040333, 0.92274243, 0.14245506, -0.65861940, 0.73679709, 0.94625264, 0.40950510, 0.01640658, -0.24264371, -0.30753738, -0.58699352, 0.34654298, -0.13219307, -0.61352497, -0.78933656, 0.32976431, -0.40548334, -0.00289226, -0.34671342, 0.74032170, 0.80225933, -0.96618629, -0.59603274, -0.34685454, 0.97603852, 0.56358546, -0.31972834, -0.57594389, 0.35063565, 0.67357981, 0.86613953, -0.31371105, 0.76587319, 0.37325138, -0.02991262, 0.96962667, -0.52887976, 0.44879773, -0.82812381, -0.66317689, 0.82409465, -0.57576269, 0.51960284, 0.19914332, 0.68339348, -0.26462865, -0.31856868, -0.41840032, 0.73532438, 0.20763859, 0.90873104, 0.77445436, -0.72878122, 0.10156503, -0.79040653, -0.92272818, -0.85263032, 0.73087883, 0.57773668, 0.65548480, -0.31638637, 0.22838998, 0.56568813, -0.24555829, 0.14308400, -0.55388367, -0.83511722, -0.46805909, 0.78266746, 0.12795895, 0.85085225, -0.08489861, -0.44508928, 0.57317865})}
    },
    {
        desc = "50e-6 tau, 256 Float32 input, 256 Float32 output",
        args = {5e-05},
        inputs = {radio.Float32Type.vector_from_array({-0.73127151, 0.69486749, 0.52754927, -0.48986191, -0.00912983, -0.10101787, 0.30318594, 0.57744670, -0.81228077, -0.94330502, 0.67153019, -0.13446586, 0.52456015, -0.99578792, -0.10922561, 0.44308007, -0.54247558, 0.89054137, 0.80285490, -0.93882000, -0.94910830, 0.08282494, 0.87829834, -0.23759152, -0.56680119, -0.15576684, -0.94191837, -0.55661666, -0.12422481, -0.00837552, -0.53383112, -0.53826690, -0.56243795, -0.08079307, -0.42043677, -0.95702058, 0.67515594, 0.11290865, 0.28458872, -0.62818748, 0.98508680, 0.71989304, -0.75822008, -0.33460963, 0.44296879, 0.42238355, 0.87288117, -0.15578599, 0.66007137, 0.34061113, -0.39326301, 0.17516121, 0.76495802, 0.69239485, 0.01056764, 0.17800452, -0.93094832, -0.51452005, 0.59480852, -0.17137200, -0.65398520, 0.09759752, 0.40608153, 0.34897169, -0.25059396, -0.12207674, 0.01685298, 0.55688524, 0.04187684, -0.21348982, -0.02061296, -0.94085008, -0.91302544, 0.40676415, 0.96637541, 0.18636747, -0.21280062, -0.65930158, 0.00447712, 0.96415329, 0.54104626, 0.07923490, 0.72057962, -0.53564775, 0.02754333, 0.90493482, 0.15558961, -0.08173654, -0.46144104, 0.09599262, 0.91423255, -0.98858166, 0.56731045, 0.64097184, 0.77235913, 0.48100683, 0.61827981, 0.03735657, 0.12271573, -0.14781864, -0.88775343, 0.74002033, 0.13999867, -0.60032117, 0.00944094, -0.03014978, -0.28642008, -0.30784416, 0.07695759, 0.24697889, 0.22490492, -0.08370640, -0.94405001, -0.54078996, -0.64557749, 0.16892174, 0.72201771, 0.59687787, 0.59419513, 0.63287473, -0.48941192, 0.68348968, 0.34622705, -0.83353174, -0.96661872, -0.97087997, 0.51117355, -0.50088155, -0.78102273, 0.24960417, -0.31115428, -0.86096931, -0.68074894, 0.05476080, -0.66371012, -0.45417112, 0.42317989, -0.09059674, -0.35599643, -0.05245798, -0.95273077, -0.22688580, -0.15816264, -0.62392139, -0.78247666, 0.79963702, 0.02023196, -0.58181804, 0.21129727, 0.63407934, -0.95836377, -0.96427095, -0.70707649, 0.43767095, -0.67954481, 0.40921125, 0.35635161, 0.08940433, -0.55880052, 0.95118904, 0.59562171, 0.03319904, -0.55360842, 0.29701284, -0.21020398, 0.15169193, -0.35750839, 0.26189572, -0.88242978, -0.40278813, 0.93580663, 0.75106847, -0.38722676, 0.71702880, -0.37927276, 0.87857687, 0.48768425, -0.16765547, -0.49528381, -0.98303950, 0.75743574, -0.92416686, 0.63882822, 0.92440224, 0.14056113, -0.65696579, 0.73556215, 0.94755048, 0.40804628, 0.01774749, -0.24406233, -0.30613822, -0.58847648, 0.34830603, -0.13409975, -0.61176270, -0.79115158, 0.33191505, -0.40785465, -0.00040016, -0.34930867, 0.74324304, 0.79935658, -0.96381402, -0.59829396, -0.34451860, 0.97409946, 0.56540078, -0.32180870, -0.57394040, 0.34891015, 0.67540216, 0.86437494, -0.31230038, 0.76478642, 0.37422037, -0.03100256, 0.97101647, -0.53071910, 0.45093039, -0.83063954, -0.66061169, 0.82197559, -0.57406360, 0.51823235, 0.20041765, 0.68226439, -0.26378399, -0.31942952, -0.41756943, 0.73483962, 0.20796506, 0.90861493, 0.77453023, -0.72930807, 0.10234095, -0.79145002, -0.92172438, -0.85361314, 0.73233670, 0.57623291, 0.65701193, -0.31820506, 0.23037209, 0.56380719, -0.24392074, 0.14156306, -0.55257183, -0.83651346, -0.46655273, 0.78153634, 0.12889367, 0.85013437, -0.08446148, -0.44563445, 0.57402933})},
        outputs = {radio.Float32Type.vector_from_array({-0.73112530, 0.69443613, 0.52801389, -0.49012291, -0.00896507, -0.10116419, 0.30325139, 0.57732642, -0.81188267, -0.94367677, 0.67157888, -0.13435335, 0.52431589, -0.99523979, -0.10995081, 0.44369453, -0.54289275, 0.89067179, 0.80274206, -0.93835890, -0.94956714, 0.08307724, 0.87788707, -0.23695728, -0.56736934, -0.15528111, -0.94224674, -0.55636549, -0.12456234, -0.00806129, -0.53404015, -0.53805709, -0.56264287, -0.08068454, -0.42047733, -0.95687276, 0.67468178, 0.11349504, 0.28396824, -0.62738472, 0.98396176, 0.72107065, -0.75910163, -0.33381310, 0.44201711, 0.42333898, 0.87183607, -0.15453561, 0.65865833, 0.34208748, -0.39459202, 0.17637603, 0.76362574, 0.69374108, 0.00935827, 0.17917992, -0.93190151, -0.51365054, 0.59371752, -0.17012821, -0.65513200, 0.09859355, 0.40502420, 0.35004002, -0.25154197, -0.12115482, 0.01590365, 0.55772620, 0.04113919, -0.21270140, -0.02143963, -0.93983972, -0.91404092, 0.40751535, 0.96551263, 0.18738589, -0.21373883, -0.65827447, 0.00331769, 0.96512038, 0.54016417, 0.08020896, 0.71947771, -0.53429508, 0.02607858, 0.90622354, 0.15445125, -0.08055118, -0.46255001, 0.09698968, 0.91307229, -0.98704135, 0.56545967, 0.64280719, 0.77049828, 0.48292521, 0.61633474, 0.03941702, 0.12063903, -0.14568868, -0.88973457, 0.74167520, 0.13846445, -0.59863955, 0.00763804, -0.02833969, -0.28817821, -0.30608246, 0.07511964, 0.24878211, 0.22310685, -0.08184733, -0.94573629, -0.53918499, -0.64716089, 0.17034163, 0.72048777, 0.59843218, 0.59264195, 0.63441956, -0.49073172, 0.68457443, 0.34521019, -0.83227938, -0.96784395, -0.96965438, 0.50965208, -0.49915832, -0.78268921, 0.25106394, -0.31250131, -0.85951287, -0.68224084, 0.05610504, -0.66491014, -0.45301348, 0.42184725, -0.08916192, -0.35737762, -0.05113804, -0.95387018, -0.22589199, -0.15916978, -0.62282151, -0.78354436, 0.80038798, 0.01963717, -0.58110309, 0.21042404, 0.63486767, -0.95883340, -0.96380037, -0.70759833, 0.43796369, -0.67961401, 0.40906274, 0.35651064, 0.08929875, -0.55856538, 0.95065206, 0.59622961, 0.03270386, -0.55299610, 0.29623067, -0.20932069, 0.15073664, -0.35645166, 0.26071554, -0.88102126, -0.40429199, 0.93704224, 0.74987030, -0.38580146, 0.71538329, -0.37740868, 0.87646204, 0.48987642, -0.16971572, -0.49315888, -0.98506606, 0.75911349, -0.92550766, 0.63985592, 0.92331779, 0.14180185, -0.65804654, 0.73636401, 0.94670653, 0.40899774, 0.01687443, -0.24313727, -0.30705050, -0.58750814, 0.34715074, -0.13284846, -0.61291796, -0.78996086, 0.33050027, -0.40629250, -0.00204315, -0.34759656, 0.74131316, 0.80127448, -0.96537858, -0.59680313, -0.34605959, 0.97537619, 0.56420630, -0.32043728, -0.57526082, 0.35004553, 0.67420197, 0.86553687, -0.31322658, 0.76549685, 0.37358829, -0.03028972, 0.97010356, -0.52950627, 0.44952175, -0.82897520, -0.66230935, 0.82337612, -0.57518440, 0.51913428, 0.19957960, 0.68300575, -0.26433590, -0.31886670, -0.41811240, 0.73515195, 0.20775823, 0.90868157, 0.77449042, -0.72896755, 0.10183430, -0.79076487, -0.92238325, -0.85296816, 0.73137486, 0.57722557, 0.65600348, -0.31700203, 0.22905985, 0.56505221, -0.24500377, 0.14256857, -0.55343813, -0.83559072, -0.46754909, 0.78228271, 0.12827809, 0.85060549, -0.08474553, -0.44527829, 0.57346940})}
    },
}, {epsilon = 1.0e-06})
