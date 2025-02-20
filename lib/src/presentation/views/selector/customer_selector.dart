import 'package:flutter/material.dart';
import 'package:sulinda_sales/src/data/models/response/customer/response_daftar_customer.dart';

class CustomerSearchDelegate extends SearchDelegate<DataCustomer?> {
  final List<DataCustomer> customerData; // Data pelanggan yang akan dicari

  CustomerSearchDelegate(this.customerData);

  @override
  List<Widget> buildActions(BuildContext context) {
    // Menambahkan ikon 'clear' untuk menghapus teks pencarian
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Menambahkan ikon 'back' untuk kembali ke halaman sebelumnya
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(
          context,
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Menampilkan hasil pencarian
    final searchResults = customerData
        .where((customer) =>
            customer.mCustName!.toLowerCase().contains(query.toLowerCase()) ||
            customer.mCustNameAlias!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return Container(
          decoration:
              BoxDecoration(color: index.isOdd ? Colors.black12 : Colors.white),
          child: ListTile(
            title: Text(searchResults[index].mCustName ?? '-'),
            subtitle: Text(searchResults[index].mCustNameAlias ?? '-'),
            onTap: () {
              // Mengirim data pelanggan yang dipilih kembali ke halaman sebelumnya
              Navigator.pop(context, searchResults[index]);
            },
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Menampilkan saran saat pengguna mulai mengetik
    final suggestionList = customerData
        .where((customer) =>
            customer.mCustName!.toLowerCase().contains(query.toLowerCase()) ||
            customer.mCustNameAlias!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return Container(
          decoration:
              BoxDecoration(color: index.isOdd ? Colors.black12 : Colors.white),
          child: ListTile(
            title: Text(suggestionList[index].mCustName ?? '-'),
            subtitle: Text(suggestionList[index].mCustNameAlias ?? '-'),
            onTap: () {
              // Mengisi teks pencarian dengan saran yang dipilih
              Navigator.pop(context, suggestionList[index]);
            },
          ),
        );
      },
    );
  }
}
