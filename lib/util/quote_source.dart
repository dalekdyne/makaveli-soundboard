import 'quote_category.dart';

class QuoteSource {
  final String _name;
  final QuoteCategory _category;
  final String imageName;
  final String _searchTerms;

  const QuoteSource(this._name, this._category, this.imageName,
      [this._searchTerms]);

  bool containsSearchTerm(String searchTerm) {
    final lowerCased = searchTerm.toLowerCase();
    return _name.toLowerCase().contains(lowerCased) ||
        (_searchTerms != null &&
            _searchTerms.toLowerCase().contains(lowerCased)) ||
        QuoteCategoryDesc[_category].toLowerCase().contains(lowerCased);
  }
}

const QuoteSource SRC_APOPOIOUMAI =
    QuoteSource('Daskalos Makaveli', QuoteCategory.SKETCH, 'apopoioumai');

const QuoteSource SRC_PLOUSIOI =
    QuoteSource('Daskalos Makaveli', QuoteCategory.SKETCH, 'plousioi');

const QuoteSource SRC_WILSON =
    QuoteSource('Daskalos Makaveli', QuoteCategory.SKETCH, 'sorry_wilson');
  
const QuoteSource SRC_GYRISE_TO_STREAM =
    QuoteSource('Daskalos Makaveli', QuoteCategory.SKETCH, 'gyrise_to_stream');

const QuoteSource SRC_DASKALOS =
    QuoteSource('Daskalos Makaveli', QuoteCategory.SKETCH, 'daskalos');

const QuoteSource SRC_APOHI =
    QuoteSource('Daskalos Makaveli', QuoteCategory.SKETCH, 'apoxi');

const QuoteSource SRC_VIVA_LA_ROSA =
    QuoteSource('Daskalos Makaveli', QuoteCategory.SKETCH, 'viva_la_rosa');

const QuoteSource SRC_CONOR_MCGREGOR =
    QuoteSource('Daskalos Makaveli', QuoteCategory.SKETCH, 'conor_mcgregor');

const QuoteSource SRC_TOUS_XEBRAKOSAME =
    QuoteSource('Daskalos Makaveli', QuoteCategory.SKETCH, 'xevrakoma');

const QuoteSource SRC_MALICE_AT_THE_PALACE =
    QuoteSource('Daskalos Makaveli', QuoteCategory.SKETCH, 'malice_at_the_palace');
