class District {
  final String name;
  final List<String> thanas;

  District(this.name, this.thanas);
}

class DataBase {
  //
  static final List<String> genders = [
    'Male',
    'Female',
  ];

  //
  static final List<String> bloodGroups = [
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-',
  ];
  //
  static List<District> districts = [
    District('Dhaka',
        ['Dhamrai', 'Dohar', 'Keraniganj', 'Nawabganj', 'Savar', 'Tejgaon']),
    District('Chittagong', [
      'Anwara',
      'Banshkhali',
      'Boalkhali',
      'Chandanaish',
      'Fatikchhari',
      'Hathazari',
      'Lohagara',
      'Mirsharai',
      'Patiya',
      'Rangunia',
      'Raozan',
      'Sandwip',
      'Satkania'
    ]),
    District('Barisal', [
      'Agailjhara',
      'Babuganj',
      'Bakerganj',
      'Banaripara',
      'Barisal Sadar',
      'Gournadi',
      'Hizla',
      'Mehendiganj',
      'Muladi'
    ]),
    District('Sylhet', [
      'Balaganj',
      'Beanibazar',
      'Bishwanath',
      'Companiganj',
      'Fenchuganj',
      'Golapganj',
      'Jaintiapur',
      'Kanaighat',
      'Sylhet Sadar'
    ]),
    District('Khulna', [
      'Batiaghata',
      'Dacope',
      'Dumuria',
      'Dighalia',
      'Koyra',
      'Paikgacha',
      'Phultala',
      'Rupsha',
      'Terokhada'
    ]),
    District('Rajshahi', [
      'Bagha',
      'Bagmara',
      'Charghat',
      'Durgapur',
      'Godagari',
      'Mohanpur',
      'Paba',
      'Puthia',
      'Tanore'
    ]),
    District('Mymensingh', [
      'Bhaluka',
      'Dhobaura',
      'Fulbaria',
      'Gaffargaon',
      'Gauripur',
      'Haluaghat',
      'Ishwarganj',
      'Mymensingh Sadar',
      'Muktagacha',
      'Nandail',
      'Phulpur',
      'Trishal'
    ]),
    District('Rangpur', [
      'Badarganj',
      'Gangachara',
      'Kaunia',
      'Mithapukur',
      'Pirgachha',
      'Pirganj',
      'Rangpur Sadar',
      'Taraganj'
    ]),
    District('Comilla', [
      'Barura',
      'Brahmanpara',
      'Burichang',
      'Chandina',
      'Chauddagram',
      'Daudkandi',
      'Debidwar',
      'Homna',
      'Laksam',
      'Meghna',
      'Muradnagar',
      'Nangalkot',
      'Titas'
    ]),
    District('Gazipur',
        ['Gazipur Sadar', 'Kaliakair', 'Kaliganj', 'Kapasia', 'Sreepur']),
    District('Narayanganj',
        ['Araihazar', 'Bandar', 'Narayanganj Sadar', 'Rupganj', 'Sonargaon']),
    District('Tangail', [
      'Basail',
      'Bhuapur',
      'Delduar',
      'Dhanbari',
      'Ghatail',
      'Gopalpur',
      'Kalihati',
      'Madhupur',
      'Mirzapur',
      'Nagarpur',
      'Sakhipur',
      'Tangail Sadar'
    ]),
    District('Kishoreganj', [
      'Austagram',
      'Bajitpur',
      'Bhairab',
      'Hossainpur',
      'Itna',
      'Karimganj',
      'Katiadi',
      'Kishoreganj Sadar',
      'Kuliarchar',
      'Mithamain',
      'Nikli',
      'Pakundia',
      'Tarail'
    ]),
    District('Faridpur', [
      'Alfadanga',
      'Bhanga',
      'Boalmari',
      'Charbhadrasan',
      'Faridpur Sadar',
      'Madhukhali',
      'Nagarkanda',
      'Sadarpur',
      'Saltha'
    ]),
    District('Madaripur', ['Kalkini', 'Madaripur Sadar', 'Rajoir', 'Shibchar']),
    District('Manikganj', [
      'Daulatpur',
      'Ghior',
      'Harirampur',
      'Manikganj Sadar',
      'Saturia',
      'Shibalaya',
      'Singair'
    ]),
    District('Munshiganj', [
      'Gazaria',
      'Lohajang',
      'Munshiganj Sadar',
      'Sirajdikhan',
      'Sreenagar',
      'Tongibari'
    ]),
    District('Gopalganj', [
      'Gopalganj Sadar',
      'Kashiani',
      'Kotalipara',
      'Muksudpur',
      'Tungipara'
    ]),
    District('Magura', ['Magura Sadar', 'Mohammadpur', 'Shalikha', 'Sreepur']),
    District('Jessore', [
      'Abhaynagar',
      'Bagherpara',
      'Chaugachha',
      'Jhikargachha',
      'Keshabpur',
      'Manirampur',
      'Jessore Sadar',
      'Sharsha'
    ]),
    District('Narail', ['Kalia', 'Lohagara', 'Narail Sadar']),
    District('Jhenaidah', [
      'Harinakunda',
      'Jhenaidah Sadar',
      'Kaliganj',
      'Kotchandpur',
      'Maheshpur',
      'Shailkupa'
    ]),
    District('Chuadanga',
        ['Alamdanga', 'Chuadanga Sadar', 'Damurhuda', 'Jibannagar']),
    District('Meherpur', ['Gangni', 'Meherpur Sadar', 'Mujibnagar']),
    District('Bagerhat', [
      'Bagerhat Sadar',
      'Chitalmari',
      'Fakirhat',
      'Kachua',
      'Mollahat',
      'Mongla',
      'Morrelganj',
      'Rampal',
      'Sarankhola'
    ]),
    District('Pirojpur', [
      'Bhandaria',
      'Kawkhali',
      'Mathbaria',
      'Nazirpur',
      'Nesarabad (Swarupkathi)',
      'Pirojpur Sadar',
      'Zianagar'
    ]),
    District('Patuakhali', [
      'Bauphal',
      'Dashmina',
      'Dumki',
      'Galachipa',
      'Kalapara',
      'Mirzaganj',
      'Patuakhali Sadar',
      'Rangabali'
    ]),
    District('Bhola', [
      'Bhola Sadar',
      'Borhanuddin',
      'Char Fasson',
      'Daulatkhan',
      'Lalmohan',
      'Manpura',
      'Tazumuddin'
    ]),
    District(
        'Jhalokathi', ['Jhalokathi Sadar', 'Kathalia', 'Nalchity', 'Rajapur']),
    District('Lakshmipur',
        ['Lakshmipur Sadar', 'Raipur', 'Ramganj', 'Ramgati', 'Kamalnagar']),
    District('Chandpur', [
      'Chandpur Sadar',
      'Faridganj',
      'Haimchar',
      'Haziganj',
      'Kachua',
      'Matlab Dakkhin',
      'Matlab Uttar',
      'Shahrasti'
    ]),
    District('Feni', [
      'Chhagalnaiya',
      'Daganbhuiyan',
      'Feni Sadar',
      'Fulgazi',
      'Parshuram',
      'Sonagazi'
    ]),
    District('Noakhali', [
      'Begumganj',
      'Chatkhil',
      'Companiganj',
      'Hatia',
      'Kabirhat',
      'Noakhali Sadar',
      'Senbagh',
      'Subarnachar'
    ]),
    District('Brahmanbaria', [
      'Akhaura',
      'Bancharampur',
      'Brahmanbaria Sadar',
      'Kasba',
      'Nabinagar',
      'Nasirnagar',
      'Sarail',
      'Ashuganj'
    ]),
    District('Moulvibazar', [
      'Barlekha',
      'Juri',
      'Kamalganj',
      'Kulaura',
      'Moulvibazar Sadar',
      'Rajnagar',
      'Sreemangal'
    ]),
    District('Habiganj', [
      'Ajmiriganj',
      'Bahubal',
      'Baniachang',
      'Chunarughat',
      'Habiganj Sadar',
      'Lakhai',
      'Madhabpur',
      'Nabiganj',
      'Shayestaganj'
    ]),
    District('Sunamganj', [
      'Bishwamvarpur',
      'Chhatak',
      'Dharampasha',
      'Dirai',
      'Dowarabazar',
      'Jagannathpur',
      'Jamalganj',
      'Sulla',
      'Sunamganj Sadar',
      'Tahirpur'
    ]),
    District('Netrokona', [
      'Atpara',
      'Barhatta',
      'Durgapur',
      'Kalmakanda',
      'Kendua',
      'Madan',
      'Mohanganj',
      'Netrokona Sadar',
      'Purbadhala'
    ]),
    District('Sherpur',
        ['Jhenaigati', 'Nakla', 'Nalitabari', 'Sherpur Sadar', 'Sreebardi']),
    District('Jamalpur', [
      'Bakshiganj',
      'Dewanganj',
      'Islampur',
      'Jamalpur Sadar',
      'Madarganj',
      'Melandaha',
      'Sarishabari'
    ]),
    District('Kurigram', [
      'Bhurungamari',
      'Char Rajibpur',
      'Chilmari',
      'Kurigram Sadar',
      'Nageshwari',
      'Phulbari',
      'Rajarhat',
      'Raomari',
      'Ulipur'
    ]),
    District('Lalmonirhat',
        ['Aditmari', 'Hatibandha', 'Kaliganj', 'Lalmonirhat Sadar', 'Patgram']),
    District('Gaibandha', [
      'Fulchhari',
      'Gaibandha Sadar',
      'Gobindaganj',
      'Palashbari',
      'Sadullapur',
      'Saghata',
      'Sundarganj'
    ]),
    District('Nilphamari', [
      'Dimla',
      'Domar',
      'Jaldhaka',
      'Kishoreganj',
      'Nilphamari Sadar',
      'Saidpur'
    ]),
    District('Panchagarh',
        ['Atwari', 'Boda', 'Debiganj', 'Panchagarh Sadar', 'Tetulia']),
    District('Thakurgaon', [
      'Baliadangi',
      'Haripur',
      'Pirganj',
      'Ranisankail',
      'Thakurgaon Sadar'
    ]),
    District('Dinajpur', [
      'Birampur',
      'Birganj',
      'Biral',
      'Bochaganj',
      'Chirirbandar',
      'Dinajpur Sadar',
      'Ghoraghat',
      'Hakimpur',
      'Kaharole',
      'Khansama',
      'Nawabganj',
      'Parbatipur'
    ]),
    District('Bogura', [
      'Adamdighi',
      'Bogra Sadar',
      'Dhunat',
      'Dupchanchia',
      'Gabtali',
      'Kahaloo',
      'Nandigram',
      'Sariakandi',
      'Shajahanpur',
      'Sherpur',
      'Shibganj',
      'Sonatala'
    ]),
    District('Pabna', [
      'Atgharia',
      'Bera',
      'Bhangura',
      'Chatmohar',
      'Faridpur',
      'Ishwardi',
      'Pabna Sadar',
      'Santhia',
      'Sujanagar'
    ]),
    District('Sirajganj', [
      'Belkuchi',
      'Chauhali',
      'Kamarkhanda',
      'Kazipur',
      'Raiganj',
      'Shahjadpur',
      'Sirajganj Sadar',
      'Tarash',
      'Ullapara'
    ]),
    District('Natore', [
      'Bagatipara',
      'Baraigram',
      'Gurudaspur',
      'Lalpur',
      'Natore Sadar',
      'Singra'
    ]),
    District('Naogaon', [
      'Atrai',
      'Badalgachhi',
      'Dhamoirhat',
      'Manda',
      'Mahadebpur',
      'Naogaon Sadar',
      'Niamatpur',
      'Patnitala',
      'Porsha',
      'Raninagar',
      'Sapahar'
    ]),
    District('Joypurhat',
        ['Akkelpur', 'Joypurhat Sadar', 'Kalai', 'Khetlal', 'Panchbibi']),
    District('Kushtia', [
      'Bheramara',
      'Daulatpur',
      'Khoksa',
      'Kumarkhali',
      'Kushtia Sadar',
      'Mirpur'
    ]),
    District('Tangail', [
      'Basail',
      'Bhuapur',
      'Delduar',
      'Dhanbari',
      'Ghatail',
      'Gopalpur',
      'Kalihati',
      'Madhupur',
      'Mirzapur',
      'Nagarpur',
      'Sakhipur',
      'Tangail Sadar'
    ])
  ];
}
