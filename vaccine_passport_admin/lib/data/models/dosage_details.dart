class DosageDetails {
  final String agent;
  final String productName;
  final String diluentProduct;
  final String lot;
  final String dosage;
  final String route;
  final String site;
  final DateTime date;
  final String country;
  final String vaccineAdministeredBy;
  final String authorizedOrganization;

  DosageDetails({
    required this.agent,
    required this.productName,
    required this.diluentProduct,
    required this.lot,
    required this.dosage,
    required this.route,
    required this.site,
    required this.date,
    required this.country,
    required this.vaccineAdministeredBy,
    required this.authorizedOrganization,
  });
}
