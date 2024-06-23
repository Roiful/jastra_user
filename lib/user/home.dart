import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './cart.dart';
import './profil.dart';
import './pesan.dart';
import './katalog.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: home(),
  ));
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final TextEditingController _searchController = TextEditingController();

  List<Map<String, dynamic>> _allProducts = [
    {
      'name': 'gelang beangle',
      'category': 'Stylish',
      'image':
          'https://drive.google.com/uc?id=1OeFYuGFrBrYkHcUn_86Kdc11iClQqAfM',
      'price': 65000, // Contoh harga dalam satuan Rupiah
    },
    // {
    //   'name': 'baseball',
    //   'category': 'Stylish',
    //   'image':
    //       'https://drive.google.com/uc?id=1_Le9zEbaUGwJwv29vUXUHohxOehHkf8X',
    //   'price': 35000, // Contoh harga dalam satuan Rupiah
    // },
    // {
    //   'name': 'dompet fashion',
    //   'category': 'Stylish',
    //   'image':
    //       'https://drive.google.com/uc?id=16E_UgrNP7wp77Jpvuisyw15gaVdy_Cl9',
    //   'price': 67500, // Contoh harga dalam satuan Rupiah
    // },
    {
      'name': 'id card',
      'category': 'Office',
      'image':
          'https://drive.google.com/uc?id=1OsUGc1jVgp_BqmYduXYuZ0CiZDbYJ-J9',
      'price': 15000,
    },
    {
      'name': 'kalkulator pastel',
      'category': 'Office',
      'image':
          'https://drive.google.com/uc?id=1XWiTVL7Pr8ON9OHY-82GDeKMxXfVCMt-',
      'price': 52500,
    },
    {
      'name': 'tumler slim',
      'category': 'Office',
      'image':
          'https://drive.google.com/uc?id=1Iu4l9f4WPFcaLtKLQXaKxpsY9CScTt42',
      'price': 39500,
    },
    {
      'name': 'balon foils',
      'category': 'Games',
      'image':
          'https://drive.google.com/uc?id=1djF4p2i7tV2FCfc7cvqMDtLTDR7XdspP',
      'price': 4000,
    },
    {
      'name': 'manik viral ',
      'category': 'Games',
      'image':
          'https://drive.google.com/uc?id=18cnPGTBefncCZKVR5Cmx5V72olDmTkqT',
      'price': 850,
    },
    {
      'name': 'sticker aestetic',
      'category': 'Games',
      'image':
          'https://drive.google.com/uc?id=16SkVPKaAJqxRD-IK9OtsKl3UVRRWgMxg',
      'price': 7500,
    },
    {
      'name': 'backpack',
      'category': 'School',
      'image':
          'https://drive.google.com/uc?id=16SKZCoAUEEo6p6hXt6PYFIOS9_9UoA5B',
      'price': 113000,
    },
    {
      'name': 'rautan penghapus',
      'category': 'School',
      'image':
          'https://drive.google.com/uc?id=1ghO6vV6xHd54XxH5yUKeYFwmaIr6teaM',
      'price': 10000,
    },
    {
      'name': 'bricks',
      'category': 'School',
      'image':
          'https://drive.google.com/uc?id=1LOugGl4KFKwG9fagnTkeUlS-OXqQDzMB',
      'price': 8000,
    },
    {
      'name': 'Sendok Sultan',
      'category': 'Homiee',
      'image':
          'https://drive.google.com/uc?id=1LOugGl4KFKwG9fagnTkeUlS-OXqQDzMB',
      'price': 65000,
    },
    {
      'name': 'botol pump',
      'category': 'Homiee',
      'image':
          'https://drive.google.com/uc?id=1acL0TUKTJkqIyzHRvXsK2t9toUV_lrqu',
      'price': 25000,
    },
    {
      'name': 'piring kayu',
      'category': 'Homiee',
      'image':
          'https://drive.google.com/uc?id=1QQ4N0mztfN8Tq18ebC-roADhVi3NeW2e',
      'price': 67500,
    },
    // Tambahkan produk lain dengan harga dan informasi yang relevan
  ];

  List<Map<String, dynamic>> _filteredProducts = [];
  int _selectedIndex = 0; // Untuk melacak tab footer yang dipilih

  String _selectedCategory = 'All';
  String _previousCategory =
      'All'; // Add a variable to keep track of the previous category

  final Map<String, Color> _categoryColors = {
    'Aksesoris': Color.fromARGB(210, 226, 129, 10),
    'Bouqet': Color.fromARGB(210, 226, 129, 10),
  };

  @override
  void initState() {
    super.initState();
    _filteredProducts = _allProducts;
  }

  void _filterProducts(String query) {
    List<Map<String, dynamic>> _searchResult = [];
    if (query.isNotEmpty) {
      _allProducts.forEach((product) {
        if (product['name'].toLowerCase().contains(query.toLowerCase())) {
          _searchResult.add(product);
        }
      });
      setState(() {
        _filteredProducts = _searchResult;
      });
    } else {
      setState(() {
        _filteredProducts = _allProducts;
      });
    }
  }

  void _filterByCategory(String category) {
    List<Map<String, dynamic>> _categoryResult = [];
    if (category == 'All') {
      _categoryResult = _allProducts;
    } else {
      _allProducts.forEach((product) {
        if (product['category']
            .toLowerCase()
            .contains(category.toLowerCase())) {
          _categoryResult.add(product);
        }
      });
    }
    setState(() {
      _filteredProducts = _categoryResult;
      _selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: Column(
            children: [
              SizedBox(height: 25), // Spacing at the top for padding
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 10, 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Jastra', // Replace with your app name
                            style: GoogleFonts.getFont(
                              'DM Sans',
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              letterSpacing: 0.2,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Cart(), // Navigate to Cart page
                              ),
                            );
                          },
                          child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Icon(
                              Icons
                                  .shopping_cart, // Replace with your cart icon
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Text(
                        'Hi, Titippers',
                        style: GoogleFonts.getFont(
                          'DM Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          height: 1.3,
                          letterSpacing: 0.2,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    Text(
                      'Mau Titip Apa Hari Ini?',
                      style: GoogleFonts.getFont(
                        'DM Sans',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        height: 1.3,
                        letterSpacing: 0.2,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),

              // Pencarian
              Container(
                margin: EdgeInsets.fromLTRB(24, 0, 25, 25),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(210, 226, 129, 10)),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFFFFFF),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(14, 1, 0, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.search,
                          color: Color.fromARGB(210, 226, 129, 10)),
                      Expanded(
                        child: TextField(
                          controller: _searchController,
                          onChanged: _filterProducts,
                          decoration: InputDecoration(
                            hintText: 'Cari Barang',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10),
                          ),
                          style: GoogleFonts.getFont(
                            'DM Sans',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 1.4,
                            letterSpacing: 0.2,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Kategori
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(23, 32, 23, 32),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          child: Row(
                            children: [
                              _buildCategoryItem('Stylish'),
                              SizedBox(width: 20), // Spacer between categories
                              _buildCategoryItem('Office'),
                              SizedBox(width: 20),
                              _buildCategoryItem('Games'),
                              SizedBox(width: 20),
                              _buildCategoryItem('School'),
                              SizedBox(width: 20),
                              _buildCategoryItem(
                                  'Homiee'), // Adjust with your actual categories
                            ],
                          ),
                        ),
                      ),
                      // Filtered product list
                      for (var product in _filteredProducts)
                        _buildProductBox(product),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // Footer
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.storage_sharp),
            label: 'Katalog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Pesan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Color.fromARGB(210, 226, 129, 10),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            _selectedIndex =
                index; // Mengatur indeks terpilih sesuai dengan item yang ditekan
          });

          // Tambahkan logika tambahan berdasarkan indeks yang dipilih
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Katalog()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pesan()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profil()),
              );
              break;
            default:
              break;
          }
        },
      ),
    );
  }

  // Widget untuk item kategori
  Widget _buildCategoryItem(String category) {
    bool isSelected = _selectedCategory == category;
    Color backgroundColor = isSelected
        ? _categoryColors[category] ?? Color.fromARGB(210, 226, 129, 10)
        : Colors.transparent;
    Color textColor =
        isSelected ? Colors.white : Color.fromARGB(210, 226, 129, 10);

    return GestureDetector(
      onTap: () {
        if (_selectedCategory == category) {
          setState(() {
            // Jika kategori yang sama diklik lagi, kembalikan ke kategori sebelumnya
            _filterByCategory(_previousCategory);
            _selectedCategory = _previousCategory;
          });
        } else {
          // Jika tidak, perbarui kategori sebelumnya dan atur kategori yang dipilih baru
          setState(() {
            _previousCategory = _selectedCategory;
            _filterByCategory(category);
          });
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2.5),
        child: Text(
          category,
          style: GoogleFonts.getFont(
            'DM Sans',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            height: 1.4,
            letterSpacing: 0.2,
            color: textColor,
          ),
        ),
      ),
    );
  }

  // Widget untuk box produk
  Widget _buildProductBox(Map<String, dynamic> product) {
    return Container(
      margin: EdgeInsets.fromLTRB(3, 0, 0, 20),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(24, 20, 24, 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  product['image'],
                  width: 100,
                  height: 100,
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product['name'],
                        style: GoogleFonts.getFont(
                          'Montserrat',
                          fontSize: 22,
                          height: 1.4,
                          letterSpacing: 0.2,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rp ${product['price'].toString()}', // Tampilkan harga produk
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              width: 30, // Sesuaikan ukuran tombol
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: IconButton(
                padding: EdgeInsets.zero, // Menghilangkan padding default
                icon: Icon(Icons.add, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cart()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
