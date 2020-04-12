<?php return array (
  'app' => 
  array (
    'name' => 'COVID_19',
    'env' => 'local',
    'debug' => true,
    'url' => 'http://localhost',
    'asset_url' => NULL,
    'timezone' => 'UTC',
    'locale' => 'en',
    'fallback_locale' => 'en',
    'faker_locale' => 'en_US',
    'key' => 'base64:UAm31BTzVnpHJNeB1rV1nQPI9R4H0u2RXcOcQgIlNlA=',
    'cipher' => 'AES-256-CBC',
    'providers' => 
    array (
      0 => 'Illuminate\\Auth\\AuthServiceProvider',
      1 => 'Illuminate\\Broadcasting\\BroadcastServiceProvider',
      2 => 'Illuminate\\Bus\\BusServiceProvider',
      3 => 'Illuminate\\Cache\\CacheServiceProvider',
      4 => 'Illuminate\\Foundation\\Providers\\ConsoleSupportServiceProvider',
      5 => 'Illuminate\\Cookie\\CookieServiceProvider',
      6 => 'Illuminate\\Database\\DatabaseServiceProvider',
      7 => 'Illuminate\\Encryption\\EncryptionServiceProvider',
      8 => 'Illuminate\\Filesystem\\FilesystemServiceProvider',
      9 => 'Illuminate\\Foundation\\Providers\\FoundationServiceProvider',
      10 => 'Illuminate\\Hashing\\HashServiceProvider',
      11 => 'Illuminate\\Mail\\MailServiceProvider',
      12 => 'Illuminate\\Notifications\\NotificationServiceProvider',
      13 => 'Illuminate\\Pagination\\PaginationServiceProvider',
      14 => 'Illuminate\\Pipeline\\PipelineServiceProvider',
      15 => 'Illuminate\\Queue\\QueueServiceProvider',
      16 => 'Illuminate\\Redis\\RedisServiceProvider',
      17 => 'Illuminate\\Auth\\Passwords\\PasswordResetServiceProvider',
      18 => 'Illuminate\\Session\\SessionServiceProvider',
      19 => 'Illuminate\\Translation\\TranslationServiceProvider',
      20 => 'Illuminate\\Validation\\ValidationServiceProvider',
      21 => 'Illuminate\\View\\ViewServiceProvider',
      22 => 'Maatwebsite\\Excel\\ExcelServiceProvider',
      23 => 'App\\Providers\\AppServiceProvider',
      24 => 'App\\Providers\\AuthServiceProvider',
      25 => 'App\\Providers\\EventServiceProvider',
      26 => 'App\\Providers\\RouteServiceProvider',
    ),
    'aliases' => 
    array (
      'App' => 'Illuminate\\Support\\Facades\\App',
      'Arr' => 'Illuminate\\Support\\Arr',
      'Artisan' => 'Illuminate\\Support\\Facades\\Artisan',
      'Auth' => 'Illuminate\\Support\\Facades\\Auth',
      'Blade' => 'Illuminate\\Support\\Facades\\Blade',
      'Broadcast' => 'Illuminate\\Support\\Facades\\Broadcast',
      'Bus' => 'Illuminate\\Support\\Facades\\Bus',
      'Cache' => 'Illuminate\\Support\\Facades\\Cache',
      'Config' => 'Illuminate\\Support\\Facades\\Config',
      'Cookie' => 'Illuminate\\Support\\Facades\\Cookie',
      'Crypt' => 'Illuminate\\Support\\Facades\\Crypt',
      'DB' => 'Illuminate\\Support\\Facades\\DB',
      'Eloquent' => 'Illuminate\\Database\\Eloquent\\Model',
      'Event' => 'Illuminate\\Support\\Facades\\Event',
      'File' => 'Illuminate\\Support\\Facades\\File',
      'Gate' => 'Illuminate\\Support\\Facades\\Gate',
      'Hash' => 'Illuminate\\Support\\Facades\\Hash',
      'Lang' => 'Illuminate\\Support\\Facades\\Lang',
      'Log' => 'Illuminate\\Support\\Facades\\Log',
      'Mail' => 'Illuminate\\Support\\Facades\\Mail',
      'Notification' => 'Illuminate\\Support\\Facades\\Notification',
      'Password' => 'Illuminate\\Support\\Facades\\Password',
      'Queue' => 'Illuminate\\Support\\Facades\\Queue',
      'Redirect' => 'Illuminate\\Support\\Facades\\Redirect',
      'Redis' => 'Illuminate\\Support\\Facades\\Redis',
      'Request' => 'Illuminate\\Support\\Facades\\Request',
      'Response' => 'Illuminate\\Support\\Facades\\Response',
      'Route' => 'Illuminate\\Support\\Facades\\Route',
      'Schema' => 'Illuminate\\Support\\Facades\\Schema',
      'Session' => 'Illuminate\\Support\\Facades\\Session',
      'Storage' => 'Illuminate\\Support\\Facades\\Storage',
      'Str' => 'Illuminate\\Support\\Str',
      'URL' => 'Illuminate\\Support\\Facades\\URL',
      'Validator' => 'Illuminate\\Support\\Facades\\Validator',
      'View' => 'Illuminate\\Support\\Facades\\View',
      'Excel' => 'Maatwebsite\\Excel\\Facades\\Excel',
    ),
  ),
  'auth' => 
  array (
    'defaults' => 
    array (
      'guard' => 'web',
      'passwords' => 'users',
    ),
    'guards' => 
    array (
      'web' => 
      array (
        'driver' => 'session',
        'provider' => 'users',
      ),
      'api' => 
      array (
        'driver' => 'token',
        'provider' => 'users',
        'hash' => false,
      ),
    ),
    'providers' => 
    array (
      'users' => 
      array (
        'driver' => 'eloquent',
        'model' => 'App\\User',
      ),
    ),
    'passwords' => 
    array (
      'users' => 
      array (
        'provider' => 'users',
        'table' => 'password_resets',
        'expire' => 60,
      ),
    ),
  ),
  'brgy' => 
  array (
    'LAPUYAN' => 
    array (
      'brgy' => 
      array (
        0 => 'Aludas',
        1 => 'Angga an',
        2 => 'Tangkulan',
        3 => 'Kinapat',
        4 => 'Kiraon',
        5 => 'Kitingting',
        6 => 'Lagandang',
        7 => 'Macapari',
        8 => 'Maican',
        9 => 'Migcawayan',
        10 => 'New Compostela',
        11 => 'Old Damulog',
        12 => 'Omonay',
        13 => 'Poblacion',
        14 => 'Pocopoco',
        15 => 'Sampagar',
        16 => 'San Isidro',
      ),
    ),
    'MARGOSATUBIG' => 
    array (
      'brgy' => 
      array (
        0 => 'Balintawak',
        1 => 'Bularong',
        2 => 'Digon',
        3 => 'Guinimanan',
        4 => 'Igat Island',
        5 => 'Josefina',
        6 => 'Kalian',
        7 => 'San Roque',
        8 => 'Limamawan',
        9 => 'Limbatong',
        10 => 'Lumbog',
        11 => 'Magahis',
        12 => 'Poblacion',
        13 => 'Sagua',
        14 => 'Talanusa',
        15 => 'Tiguian',
        16 => 'Tulapok',
      ),
    ),
    'BAYOG' => 
    array (
      'brgy' => 
      array (
        0 => 'Baking',
        1 => 'Balukbahan',
        2 => 'Balumbunan',
        3 => 'Bantal',
        4 => 'Bobuan',
        5 => 'Camp Blessing',
        6 => 'Canoayan',
        7 => 'Conacon',
        8 => 'Dagum',
        9 => 'Damit',
        10 => 'Datagan',
        11 => 'Depase',
        12 => 'Dipili',
        13 => 'Depore',
        14 => 'Deporehan',
        15 => 'Dimalinao',
        16 => 'Kahayagan',
        17 => 'Kanipaan',
        18 => 'Lamare',
        19 => 'Liba',
        20 => 'Matin ao',
        21 => 'Matun og',
        22 => 'San Isidro',
        23 => 'Poblacion',
        24 => 'Pulang Bato',
        25 => 'Salawagan',
        26 => 'Sigacad',
        27 => 'Supon',
      ),
    ),
    'TUKURAN' => 
    array (
      'brgy' => 
      array (
        0 => 'Alindahaw',
        1 => 'Baclay',
        2 => 'Balimbingan',
        3 => 'Buenasuerte',
        4 => 'Camanga',
        5 => 'Curvada',
        6 => 'Laperian',
        7 => 'Libertad',
        8 => 'Lower Bayao',
        9 => 'Luy a',
        10 => 'Manilan',
        11 => 'Manlayag',
        12 => 'Militar',
        13 => 'Navalan',
        14 => 'Panduma Senior',
        15 => 'Sambulawan',
        16 => 'San Antonio',
        17 => 'San Carlos',
        18 => 'Santo Niño',
        19 => 'Santo Rosario',
        20 => 'Sugod',
        21 => 'Tabuan',
        22 => 'Tagulo',
        23 => 'Tinotungan',
        24 => 'Upper Bayao',
      ),
    ),
    'AURORA' => 
    array (
      'brgy' => 
      array (
        0 => 'Acad',
        1 => 'Alang-alang',
        2 => 'Alegria',
        3 => 'Anonang',
        4 => 'Bagong Mandaue',
        5 => 'Bagong Maslog',
        6 => 'Bagong Oslob',
        7 => 'Bagong Pitogo',
        8 => 'Baki',
        9 => 'Balas',
        10 => 'Balide',
        11 => 'Balintawak',
        12 => 'Bayabas',
        13 => 'Bemposa',
        14 => 'Cabilinan',
        15 => 'Campo Uno',
        16 => 'Ceboneg',
        17 => 'Commonwealth',
        18 => 'Gubaan',
        19 => 'Inasagan',
        20 => 'Inroad',
        21 => 'Kahayagan East',
        22 => 'Kahayagan West',
        23 => 'Kauswagan',
        24 => 'La Paz',
        25 => 'La Victoria',
        26 => 'Lantungan',
        27 => 'Libertad',
        28 => 'Lintugop',
        29 => 'Lubid',
        30 => 'Maguikay',
        31 => 'Mahayahay',
        32 => 'Monte Alegre',
        33 => 'Montela',
        34 => 'Napo',
        35 => 'Panaghiusa',
        36 => 'Poblacion',
        37 => 'Resthouse',
        38 => 'Romarate',
        39 => 'San Jose',
        40 => 'San Juan',
        41 => 'Sapa Loboc',
        42 => 'Tagulalo',
        43 => 'Waterfall',
      ),
    ),
    'DIMATALING' => 
    array (
      'brgy' => 
      array (
        0 => 'Bacayawan',
        1 => 'Baha',
        2 => 'Balanagan',
        3 => 'Baluno',
        4 => 'Binuay',
        5 => 'Buburay',
        6 => 'Grap',
        7 => 'Josefina',
        8 => 'Kagawasan',
        9 => 'Lalab',
        10 => 'Libertad',
        11 => 'Magahis',
        12 => 'Mahayag',
        13 => 'Mercedes',
        14 => 'Poblacion',
        15 => 'Saloagan',
        16 => 'San Roque',
        17 => 'Sugbay Uno',
        18 => 'Sumbato',
        19 => 'Sumpot',
        20 => 'Tinggabulong',
        21 => 'Tiniguangan',
        22 => 'Tipangi',
        23 => 'Upper Ludiong',
      ),
    ),
    'DINAS' => 
    array (
      'brgy' => 
      array (
        0 => 'Bacawan',
        1 => 'Benuatan',
        2 => 'Beray',
        3 => 'Don Jose',
        4 => 'Dongos',
        5 => 'East Migpulao',
        6 => 'Guinicolalay',
        7 => 'Ignacio Garrata',
        8 => 'Kinakap',
        9 => 'Legarda 1',
        10 => 'Legarda 2',
        11 => 'Legarda 3',
        12 => 'Lower Dimaya',
        13 => 'Locuban',
        14 => 'Ludiong',
        15 => 'Nangka',
        16 => 'Nian',
        17 => 'Old Mirapao',
        18 => 'Pisa an',
        19 => 'Poblacion',
        20 => 'Proper Dimaya',
        21 => 'Sagacad',
        22 => 'Sambulawan',
        23 => 'San Isidro',
        24 => 'Sungayan',
        25 => 'Sumpotan',
        26 => 'Tarakan',
        27 => 'Upper Dimaya',
        28 => 'Upper Sibul',
        29 => 'West Migpulao',
      ),
    ),
    'DUMALINAO' => 
    array (
      'brgy' => 
      array (
        0 => 'Anonang',
        1 => 'Bagong Misamis',
        2 => 'Bag ong Silao',
        3 => 'Baga',
        4 => 'Baloboan',
        5 => 'Banta ao',
        6 => 'Bibilik',
        7 => 'Calingayan',
        8 => 'Camalig',
        9 => 'Camanga',
        10 => 'Cuatro cuatro',
        11 => 'Locuban',
        12 => 'Malasik',
        13 => 'Mama',
        14 => 'Matab ang',
        15 => 'Mecolong',
        16 => 'Metokong',
        17 => 'Motosawa',
        18 => 'Pag asa',
        19 => 'Paglaum',
        20 => 'Pantad',
        21 => 'Piniglibano',
        22 => 'Rebokon',
        23 => 'San Agustin',
        24 => 'Sebucao',
        25 => 'Sumadat',
        26 => 'Tikwas',
        27 => 'Tina',
        28 => 'Tubo Pait',
        29 => 'Upper Dumalinao',
      ),
    ),
    'DUMINGAG' => 
    array (
      'brgy' => 
      array (
        0 => 'Bagong Valencia',
        1 => 'Bagong Kauswagan',
        2 => 'Bagong Silangan',
        3 => 'Bucayan',
        4 => 'Calumanggi',
        5 => 'Canibongan',
        6 => 'Caridad',
        7 => 'Danlugan',
        8 => 'Dapiwak',
        9 => 'Datu Totoca',
        10 => 'Dilud',
        11 => 'Ditulan',
        12 => 'Dulian',
        13 => 'Dulop',
        14 => 'Guintananan',
        15 => 'Guitran',
        16 => 'Gumpingan',
        17 => 'La Fortuna',
        18 => 'Labangon',
        19 => 'Libertad',
        20 => 'Licabang',
        21 => 'Lipawan',
        22 => 'Lower Landing',
        23 => 'Lower Timonan',
        24 => 'Macasing',
        25 => 'Mahayahay',
        26 => 'Malagalad',
        27 => 'Maralag',
        28 => 'Marangan',
        29 => 'New Basak',
        30 => 'Saad',
        31 => 'Salvador',
        32 => 'San Juan',
        33 => 'San Pablo',
        34 => 'San Pedro',
        35 => 'San Vicente',
        36 => 'Senote',
        37 => 'Sinonok',
        38 => 'Sunop',
        39 => 'Tagun',
        40 => 'Tamurayan',
        41 => 'Upper Landing',
        42 => 'Upper Timonan',
      ),
    ),
    'GUIPOS' => 
    array (
      'brgy' => 
      array (
        0 => 'Bagong Oroquieta',
        1 => 'Baguitan',
        2 => 'Balongating',
        3 => 'Canunan',
        4 => 'Dacsol',
        5 => 'Dagohoy',
        6 => 'Dalapang',
        7 => 'Datagan',
        8 => 'Guling',
        9 => 'Katipunan',
        10 => 'Lintum',
        11 => 'Litan',
        12 => 'Magting',
        13 => 'Poblacion',
        14 => 'Regla',
        15 => 'Sikatuna',
        16 => 'Singclot',
      ),
    ),
    'JOSEFINA' => 
    array (
      'brgy' => 
      array (
        0 => 'Bogo Calabat',
        1 => 'Dawa',
        2 => 'Ebarle',
        3 => 'Gumahan',
        4 => 'Leonardo',
        5 => 'Litapan',
        6 => 'Lower Bagong Tudela',
        7 => 'Mansanas',
        8 => 'Moradji',
        9 => 'Nemeño',
        10 => 'Nopulan',
        11 => 'Sebukang',
        12 => 'Tagaytay Hill',
        13 => 'Upper Bagong Tudela',
      ),
    ),
    'KUMALARANG' => 
    array (
      'brgy' => 
      array (
        0 => 'Bogayo',
        1 => 'Bolisong',
        2 => 'Boyugan East',
        3 => 'Boyugan West',
        4 => 'Bualan',
        5 => 'Diplo',
        6 => 'Gawil',
        7 => 'Gusom',
        8 => 'Kitaan Dagat',
        9 => 'Lantawan',
        10 => 'Limamawand',
        11 => 'Mahayahay',
        12 => 'Pangi',
        13 => 'Picanan',
        14 => 'Poblacion',
        15 => 'Salagmanok',
        16 => 'Secade',
        17 => 'Suminalum',
      ),
    ),
    'LABANGAN' => 
    array (
      'brgy' => 
      array (
        0 => 'Bagalupa',
        1 => 'Balimbingan',
        2 => 'Binayan',
        3 => 'Bokong',
        4 => 'Bulanit',
        5 => 'Cogonan',
        6 => 'Combo',
        7 => 'Dalapang',
        8 => 'Dimasangca',
        9 => 'Dipaya',
        10 => 'Langapod',
        11 => 'Lantian',
        12 => 'Lower Campo Islam',
        13 => 'Lower Pulacan',
        14 => 'Lower Sang-an',
        15 => 'New Labangan',
        16 => 'Noboran',
        17 => 'Old Labangan',
        18 => 'San Isidro',
        19 => 'Santa Cruz',
        20 => 'Tapodoc',
        21 => 'Tawagan Norte',
        22 => 'Upper Campo Islam',
        23 => 'Upper Pulacan',
        24 => 'Upper Sang-an',
      ),
    ),
    'LAKEWOOD' => 
    array (
      'brgy' => 
      array (
        0 => 'Bagong Kahayag',
        1 => 'Baking',
        2 => 'Biswangan',
        3 => 'Bululawan',
        4 => 'Dagum',
        5 => 'Gasa',
        6 => 'Gatub',
        7 => 'Lukuan',
        8 => 'Matalang',
        9 => 'Poblacion',
        10 => 'Sapang Pinoles',
        11 => 'Sebuguey',
        12 => 'Tiwales',
        13 => 'Tubod',
      ),
    ),
    'MAHAYAG' => 
    array (
      'brgy' => 
      array (
        0 => 'Bagong Balamban',
        1 => 'Bagong Dalaguete',
        2 => 'Boniao',
        3 => 'Delusom',
        4 => 'Diwan',
        5 => 'Guripan',
        6 => 'Kaangayan',
        7 => 'Kabuhi',
        8 => 'Lourmah',
        9 => 'Lower Salug Daku',
        10 => 'Lower Santo Nino',
        11 => 'Malubo',
        12 => 'Manguiles',
        13 => 'Marabanan',
        14 => 'Panagaan',
        15 => 'Paraiso',
        16 => 'Pedagan',
        17 => 'Pugwan',
        18 => 'Poblacion',
        19 => 'San Isidro',
        20 => 'San Jose',
        21 => 'San Vicente',
        22 => 'Santa Cruz',
        23 => 'Sicpao',
        24 => 'Tuboran',
        25 => 'Tulan',
        26 => 'Tumapic',
        27 => 'Upper Salug Daku',
        28 => 'Upper Santo Nino',
      ),
    ),
    'MIDSALIP' => 
    array (
      'brgy' => 
      array (
        0 => 'Bacahan',
        1 => 'Balonai',
        2 => 'Bibilop',
        3 => 'Buloron',
        4 => 'Cabaloran',
        5 => 'Canipay Norte',
        6 => 'Canipay Sur',
        7 => 'Cumarom',
        8 => 'Dakayakan',
        9 => 'Duelic',
        10 => 'Dumalinao',
        11 => 'Ecuan',
        12 => 'Golictop',
        13 => 'Guinabot',
        14 => 'Guitalos',
        15 => 'Guma',
        16 => 'Kahayagan',
        17 => 'Licuro-an',
        18 => 'Lumpunid',
        19 => 'Matalang',
        20 => 'New Katipunan',
        21 => 'New Unidos',
        22 => 'Palili',
        23 => 'Pawan',
        24 => 'Pili',
        25 => 'Pisompongan',
        26 => 'Piwan',
        27 => 'Poblacion A',
        28 => 'Poblacion B',
        29 => 'Sigapod',
        30 => 'Timbaboy',
        31 => 'Tulbong',
        32 => 'Tuluan',
      ),
    ),
    'MOLAVE' => 
    array (
      'brgy' => 
      array (
        0 => 'Alicia',
        1 => 'Ariosa',
        2 => 'Bagong Argao',
        3 => 'Bagong Gutlang',
        4 => 'Blancia',
        5 => 'Bogo Capalaran',
        6 => 'Culo',
        7 => 'Dalaon',
        8 => 'Dipolo',
        9 => 'Dontulan',
        10 => 'Gonosan',
        11 => 'Lower Dimalinao',
        12 => 'Pablo Bahinting Sr',
        13 => 'Mabuhay',
        14 => 'Madasigon',
        15 => 'Makuguihon',
        16 => 'Maloloy on',
        17 => 'Miligan',
        18 => 'Parasan',
        19 => 'Rizal',
        20 => 'Santo Rosario',
        21 => 'Silangit',
        22 => 'Simata',
        23 => 'Sudlon',
        24 => 'Upper Dimorok',
      ),
    ),
    'PITOGO' => 
    array (
      'brgy' => 
      array (
        0 => 'Balabawan',
        1 => 'Balong balong',
        2 => 'Colojo',
        3 => 'Liasan',
        4 => 'Liguac',
        5 => 'Limbayan',
        6 => 'Lower Paniki an',
        7 => 'Matin-ao',
        8 => 'Panubigan',
        9 => 'Poblacion',
        10 => 'Punta Flecha',
        11 => 'Sugbay Dos',
        12 => 'Tongao',
        13 => 'Upper Paniki an',
        14 => 'San Isidro',
      ),
    ),
    'RAMONMAGSAYSAY' => 
    array (
      'brgy' => 
      array (
        0 => 'Bagong Opon',
        1 => 'Bambong Daku',
        2 => 'Bambong Diut',
        3 => 'Bobongan',
        4 => 'Campo IV',
        5 => 'Campo V',
        6 => 'Caniangan',
        7 => 'Dipalusan',
        8 => 'Eastern Bobongan',
        9 => 'Esperanza',
        10 => 'Gapasan',
        11 => 'Katipunan',
        12 => 'Kauswagan',
        13 => 'Lower Sambulawan',
        14 => 'Mabini',
        15 => 'Magsaysay',
        16 => 'Malating',
        17 => 'Paradise',
        18 => 'Pasingkalan',
        19 => 'Poblacion',
        20 => 'San Fernando',
        21 => 'Santo Rosario',
        22 => 'Sapa Anding',
        23 => 'Sinaguing',
        24 => 'Switch',
        25 => 'Upper Laperian',
        26 => 'Wakat',
      ),
    ),
    'SANMIGUEL' => 
    array (
      'brgy' => 
      array (
        0 => 'Betinan',
        1 => 'Bulawan',
        2 => 'Calube',
        3 => 'Concepcion',
        4 => 'Dao an',
        5 => 'Dumalian',
        6 => 'Fatima',
        7 => 'Langilan',
        8 => 'Lantawan',
        9 => 'Laperian',
        10 => 'Libuganan',
        11 => 'Limonan',
        12 => 'Mati',
        13 => 'Ocapan',
        14 => 'Poblacion',
        15 => 'San Isidro',
        16 => 'Sayog',
        17 => 'Tapian',
      ),
    ),
    'SANPABLO' => 
    array (
      'brgy' => 
      array (
        0 => 'Bagong Misamis',
        1 => 'Bubual',
        2 => 'Buton',
        3 => 'Culasian',
        4 => 'Daplayan',
        5 => 'Kalilangan',
        6 => 'Kapamanok',
        7 => 'Kondum',
        8 => 'Lumbayao',
        9 => 'Mabuhay',
        10 => 'Marcos Village',
        11 => 'Miasin',
        12 => 'Molansong',
        13 => 'Pantad',
        14 => 'Pao',
        15 => 'Payag',
        16 => 'Poblacion',
        17 => 'Pongapong',
        18 => 'Sacbulan',
        19 => 'Sagasan',
        20 => 'San Juan',
        21 => 'Senior',
        22 => 'Songgoy',
        23 => 'Tandubuay',
        24 => 'Taniapan',
        25 => 'Ticala Island',
        26 => 'Tubo pait',
        27 => 'Villakapa',
      ),
    ),
    'SOMINOT' => 
    array (
      'brgy' => 
      array (
        0 => 'Bag ong Baroy',
        1 => 'New Oroquieta',
        2 => 'Barubuhan',
        3 => 'Bulanay',
        4 => 'Datagan',
        5 => 'Eastern Poblacion',
        6 => 'Lantawan',
        7 => 'Libertad',
        8 => 'Lumangoy',
        9 => 'New Carmen',
        10 => 'Picturan',
        11 => 'Poblacion',
        12 => 'Rizal',
        13 => 'San Miguel',
        14 => 'Santo Niño',
        15 => 'Sawa',
        16 => 'Tungawan',
        17 => 'Upper Sicpao',
      ),
    ),
    'TABINA' => 
    array (
      'brgy' => 
      array (
        0 => 'Abong abong',
        1 => 'Baganian',
        2 => 'Baya-baya',
        3 => 'Capisan',
        4 => 'Concepcion',
        5 => 'Culabay',
        6 => 'Doña Josefina',
        7 => 'Lumbia',
        8 => 'Mabuhay',
        9 => 'Malim',
        10 => 'Manicaan',
        11 => 'New Oroquieta',
        12 => 'Poblacion',
        13 => 'San Francisco',
        14 => 'Tultolan',
      ),
    ),
    'TAMBULIG' => 
    array (
      'brgy' => 
      array (
        0 => 'Alang alang',
        1 => 'Angeles',
        2 => 'Bagong Kauswagan',
        3 => 'Bagong Tabogon',
        4 => 'Balugo',
        5 => 'Cabgan',
        6 => 'Calolot',
        7 => 'Dimalinao',
        8 => 'Fabian',
        9 => 'Gabunon',
        10 => 'Happy Valley',
        11 => 'Kapalaran',
        12 => 'Libato',
        13 => 'Limamaan',
        14 => 'Lower Liasan',
        15 => 'Lower Lodiong',
        16 => 'Lower Tiparak',
        17 => 'Lower Usogan',
        18 => 'Maya maya',
        19 => 'New Village,',
        20 => 'Pelocuban',
        21 => 'Riverside',
        22 => 'Sagrada Familia',
        23 => 'San Jose',
        24 => 'San Vicente',
        25 => 'Sumalig',
        26 => 'Tuluan',
        27 => 'Tungawan',
        28 => 'Upper Liaison',
        29 => 'Upper Lodiong',
        30 => 'Upper Tiparak',
      ),
    ),
    'TIGBAO' => 
    array (
      'brgy' => 
      array (
        0 => 'Begong',
        1 => 'Busol',
        2 => 'Caluma',
        3 => 'Diana Countryside',
        4 => 'Guinlin',
        5 => 'Lacarayan',
        6 => 'Lacupayan',
        7 => 'Libayoy',
        8 => 'Limas',
        9 => 'Longmot',
        10 => 'Maragang',
        11 => 'Mati',
        12 => 'Nangan nangan',
        13 => 'New Tuburan',
        14 => 'Nilo',
        15 => 'Tigbao',
        16 => 'Timolan',
        17 => 'Upper Nilo',
      ),
    ),
    'VINCENZOSAGUN' => 
    array (
      'brgy' => 
      array (
        0 => 'Ambulon',
        1 => 'Biu os',
        2 => 'Cogon',
        3 => 'Danan',
        4 => 'Kabatan',
        5 => 'Kapatagan',
        6 => 'Limason',
        7 => 'Linoguayan',
        8 => 'Lumbal',
        9 => 'Lunib',
        10 => 'Maculay',
        11 => 'Maraya',
        12 => 'Sagucan',
        13 => 'Waling waling',
      ),
    ),
  ),
  'broadcasting' => 
  array (
    'default' => 'log',
    'connections' => 
    array (
      'pusher' => 
      array (
        'driver' => 'pusher',
        'key' => '',
        'secret' => '',
        'app_id' => '',
        'options' => 
        array (
          'cluster' => 'mt1',
          'useTLS' => true,
        ),
      ),
      'redis' => 
      array (
        'driver' => 'redis',
        'connection' => 'default',
      ),
      'log' => 
      array (
        'driver' => 'log',
      ),
      'null' => 
      array (
        'driver' => 'null',
      ),
    ),
  ),
  'cache' => 
  array (
    'default' => 'file',
    'stores' => 
    array (
      'apc' => 
      array (
        'driver' => 'apc',
      ),
      'array' => 
      array (
        'driver' => 'array',
      ),
      'database' => 
      array (
        'driver' => 'database',
        'table' => 'cache',
        'connection' => NULL,
      ),
      'file' => 
      array (
        'driver' => 'file',
        'path' => '/Users/easyway/Documents/easywayprojects/covid/storage/framework/cache/data',
      ),
      'memcached' => 
      array (
        'driver' => 'memcached',
        'persistent_id' => NULL,
        'sasl' => 
        array (
          0 => NULL,
          1 => NULL,
        ),
        'options' => 
        array (
        ),
        'servers' => 
        array (
          0 => 
          array (
            'host' => '127.0.0.1',
            'port' => 11211,
            'weight' => 100,
          ),
        ),
      ),
      'redis' => 
      array (
        'driver' => 'redis',
        'connection' => 'cache',
      ),
      'dynamodb' => 
      array (
        'driver' => 'dynamodb',
        'key' => '',
        'secret' => '',
        'region' => 'us-east-1',
        'table' => 'cache',
        'endpoint' => NULL,
      ),
    ),
    'prefix' => 'covid_19_cache',
  ),
  'database' => 
  array (
    'default' => 'mysql',
    'connections' => 
    array (
      'sqlite' => 
      array (
        'driver' => 'sqlite',
        'url' => NULL,
        'database' => 'covid_db',
        'prefix' => '',
        'foreign_key_constraints' => true,
      ),
      'mysql' => 
      array (
        'driver' => 'mysql',
        'url' => NULL,
        'host' => '127.0.0.1',
        'port' => '3306',
        'database' => 'covid_db',
        'username' => 'root',
        'password' => '',
        'unix_socket' => '',
        'charset' => 'utf8mb4',
        'collation' => 'utf8mb4_unicode_ci',
        'prefix' => '',
        'prefix_indexes' => true,
        'strict' => true,
        'engine' => NULL,
        'options' => 
        array (
        ),
      ),
      'pgsql' => 
      array (
        'driver' => 'pgsql',
        'url' => NULL,
        'host' => '127.0.0.1',
        'port' => '3306',
        'database' => 'covid_db',
        'username' => 'root',
        'password' => '',
        'charset' => 'utf8',
        'prefix' => '',
        'prefix_indexes' => true,
        'schema' => 'public',
        'sslmode' => 'prefer',
      ),
      'sqlsrv' => 
      array (
        'driver' => 'sqlsrv',
        'url' => NULL,
        'host' => '127.0.0.1',
        'port' => '3306',
        'database' => 'covid_db',
        'username' => 'root',
        'password' => '',
        'charset' => 'utf8',
        'prefix' => '',
        'prefix_indexes' => true,
      ),
    ),
    'migrations' => 'migrations',
    'redis' => 
    array (
      'client' => 'predis',
      'options' => 
      array (
        'cluster' => 'predis',
        'prefix' => 'covid_19_database_',
      ),
      'default' => 
      array (
        'url' => NULL,
        'host' => '127.0.0.1',
        'password' => NULL,
        'port' => '6379',
        'database' => 0,
      ),
      'cache' => 
      array (
        'url' => NULL,
        'host' => '127.0.0.1',
        'password' => NULL,
        'port' => '6379',
        'database' => 1,
      ),
    ),
  ),
  'excel' => 
  array (
    'exports' => 
    array (
      'chunk_size' => 1000,
      'pre_calculate_formulas' => false,
      'csv' => 
      array (
        'delimiter' => ',',
        'enclosure' => '"',
        'line_ending' => '
',
        'use_bom' => false,
        'include_separator_line' => false,
        'excel_compatibility' => false,
      ),
    ),
    'imports' => 
    array (
      'read_only' => true,
      'heading_row' => 
      array (
        'formatter' => 'slug',
      ),
      'csv' => 
      array (
        'delimiter' => ',',
        'enclosure' => '"',
        'escape_character' => '\\',
        'contiguous' => false,
        'input_encoding' => 'UTF-8',
      ),
    ),
    'extension_detector' => 
    array (
      'xlsx' => 'Xlsx',
      'xlsm' => 'Xlsx',
      'xltx' => 'Xlsx',
      'xltm' => 'Xlsx',
      'xls' => 'Xls',
      'xlt' => 'Xls',
      'ods' => 'Ods',
      'ots' => 'Ods',
      'slk' => 'Slk',
      'xml' => 'Xml',
      'gnumeric' => 'Gnumeric',
      'htm' => 'Html',
      'html' => 'Html',
      'csv' => 'Csv',
      'tsv' => 'Csv',
      'pdf' => 'Dompdf',
    ),
    'value_binder' => 
    array (
      'default' => 'Maatwebsite\\Excel\\DefaultValueBinder',
    ),
    'transactions' => 
    array (
      'handler' => 'db',
    ),
    'temporary_files' => 
    array (
      'local_path' => '/var/folders/_f/kg4n8p8x4zsd1ywy7_xvy1nc0000gp/T',
      'remote_disk' => NULL,
      'remote_prefix' => NULL,
    ),
  ),
  'filesystems' => 
  array (
    'default' => 'local',
    'cloud' => 's3',
    'disks' => 
    array (
      'local' => 
      array (
        'driver' => 'local',
        'root' => '/Users/easyway/Documents/easywayprojects/covid/storage/app',
      ),
      'public' => 
      array (
        'driver' => 'local',
        'root' => '/Users/easyway/Documents/easywayprojects/covid/storage/app/public',
        'url' => 'http://localhost/storage',
        'visibility' => 'public',
      ),
      's3' => 
      array (
        'driver' => 's3',
        'key' => '',
        'secret' => '',
        'region' => 'us-east-1',
        'bucket' => '',
        'url' => NULL,
      ),
    ),
  ),
  'hashing' => 
  array (
    'driver' => 'bcrypt',
    'bcrypt' => 
    array (
      'rounds' => 10,
    ),
    'argon' => 
    array (
      'memory' => 1024,
      'threads' => 2,
      'time' => 2,
    ),
  ),
  'logging' => 
  array (
    'default' => 'stack',
    'channels' => 
    array (
      'stack' => 
      array (
        'driver' => 'stack',
        'channels' => 
        array (
          0 => 'daily',
        ),
        'ignore_exceptions' => false,
      ),
      'single' => 
      array (
        'driver' => 'single',
        'path' => '/Users/easyway/Documents/easywayprojects/covid/storage/logs/laravel.log',
        'level' => 'debug',
      ),
      'daily' => 
      array (
        'driver' => 'daily',
        'path' => '/Users/easyway/Documents/easywayprojects/covid/storage/logs/laravel.log',
        'level' => 'debug',
        'days' => 14,
      ),
      'slack' => 
      array (
        'driver' => 'slack',
        'url' => NULL,
        'username' => 'Laravel Log',
        'emoji' => ':boom:',
        'level' => 'critical',
      ),
      'papertrail' => 
      array (
        'driver' => 'monolog',
        'level' => 'debug',
        'handler' => 'Monolog\\Handler\\SyslogUdpHandler',
        'handler_with' => 
        array (
          'host' => NULL,
          'port' => NULL,
        ),
      ),
      'stderr' => 
      array (
        'driver' => 'monolog',
        'handler' => 'Monolog\\Handler\\StreamHandler',
        'formatter' => NULL,
        'with' => 
        array (
          'stream' => 'php://stderr',
        ),
      ),
      'syslog' => 
      array (
        'driver' => 'syslog',
        'level' => 'debug',
      ),
      'errorlog' => 
      array (
        'driver' => 'errorlog',
        'level' => 'debug',
      ),
    ),
  ),
  'mail' => 
  array (
    'driver' => 'smtp',
    'host' => 'smtp.mailtrap.io',
    'port' => '2525',
    'from' => 
    array (
      'address' => 'hello@example.com',
      'name' => 'Example',
    ),
    'encryption' => NULL,
    'username' => NULL,
    'password' => NULL,
    'sendmail' => '/usr/sbin/sendmail -bs',
    'markdown' => 
    array (
      'theme' => 'default',
      'paths' => 
      array (
        0 => '/Users/easyway/Documents/easywayprojects/covid/resources/views/vendor/mail',
      ),
    ),
    'log_channel' => NULL,
  ),
  'municipality' => 
  array (
    'municipality' => 
    array (
      0 => 'AURORA',
      1 => 'BAYOG',
      2 => 'DIMATALING',
      3 => 'DINAS',
      4 => 'DUMALINAO',
      5 => 'DUMINGAG',
      6 => 'GUIPOS',
      7 => 'JOSEFINA',
      8 => 'KUMALARANG',
      9 => 'LABANGAN',
      10 => 'LAKEWOOD',
      11 => 'LAPUYAN',
      12 => 'MAHAYAG',
      13 => 'MARGOSATUBIG',
      14 => 'MIDSALIP',
      15 => 'MOLAVE',
      16 => 'PITOGO',
      17 => 'RAMONMAGSAYSAY',
      18 => 'SANMIGUEL',
      19 => 'SANPABLO',
      20 => 'SOMINOT',
      21 => 'TABINA',
      22 => 'TAMBULIG',
      23 => 'TIGBAO',
      24 => 'TUKURAN',
      25 => 'VINCENZOSAGUN',
    ),
  ),
  'queue' => 
  array (
    'default' => 'sync',
    'connections' => 
    array (
      'sync' => 
      array (
        'driver' => 'sync',
      ),
      'database' => 
      array (
        'driver' => 'database',
        'table' => 'jobs',
        'queue' => 'default',
        'retry_after' => 90,
      ),
      'beanstalkd' => 
      array (
        'driver' => 'beanstalkd',
        'host' => 'localhost',
        'queue' => 'default',
        'retry_after' => 90,
        'block_for' => 0,
      ),
      'sqs' => 
      array (
        'driver' => 'sqs',
        'key' => '',
        'secret' => '',
        'prefix' => 'https://sqs.us-east-1.amazonaws.com/your-account-id',
        'queue' => 'your-queue-name',
        'region' => 'us-east-1',
      ),
      'redis' => 
      array (
        'driver' => 'redis',
        'connection' => 'default',
        'queue' => 'default',
        'retry_after' => 90,
        'block_for' => NULL,
      ),
    ),
    'failed' => 
    array (
      'database' => 'mysql',
      'table' => 'failed_jobs',
    ),
  ),
  'services' => 
  array (
    'mailgun' => 
    array (
      'domain' => NULL,
      'secret' => NULL,
      'endpoint' => 'api.mailgun.net',
    ),
    'postmark' => 
    array (
      'token' => NULL,
    ),
    'ses' => 
    array (
      'key' => '',
      'secret' => '',
      'region' => 'us-east-1',
    ),
    'sparkpost' => 
    array (
      'secret' => NULL,
    ),
  ),
  'session' => 
  array (
    'driver' => 'file',
    'lifetime' => '120',
    'expire_on_close' => false,
    'encrypt' => false,
    'files' => '/Users/easyway/Documents/easywayprojects/covid/storage/framework/sessions',
    'connection' => NULL,
    'table' => 'sessions',
    'store' => NULL,
    'lottery' => 
    array (
      0 => 2,
      1 => 100,
    ),
    'cookie' => 'covid_19_session',
    'path' => '/',
    'domain' => NULL,
    'secure' => false,
    'http_only' => true,
    'same_site' => NULL,
  ),
  'view' => 
  array (
    'paths' => 
    array (
      0 => '/Users/easyway/Documents/easywayprojects/covid/resources/views',
    ),
    'compiled' => '/Users/easyway/Documents/easywayprojects/covid/storage/framework/views',
  ),
  'debug-server' => 
  array (
    'host' => 'tcp://127.0.0.1:9912',
  ),
  'trustedproxy' => 
  array (
    'proxies' => NULL,
    'headers' => 30,
  ),
  'tinker' => 
  array (
    'commands' => 
    array (
    ),
    'dont_alias' => 
    array (
      0 => 'App\\Nova',
    ),
  ),
);
