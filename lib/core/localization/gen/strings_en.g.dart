///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsAppEn app = TranslationsAppEn._(_root);
	late final TranslationsIntroEn intro = TranslationsIntroEn._(_root);
	late final TranslationsErrorsEn errors = TranslationsErrorsEn._(_root);
}

// Path: app
class TranslationsAppEn {
	TranslationsAppEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Portfolio';
	String get description => 'A personal portfolio showcasing my projects and skills.';
}

// Path: intro
class TranslationsIntroEn {
	TranslationsIntroEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get subtitle => 'I\'m Kamal Ayman';
	String get title => 'Flutter Developer';
	String get description => 'I am a Flutter developer with a passion for creating beautiful and functional applications. I have experience in building mobile applications using Flutter and Dart, and I am always eager to learn new technologies and improve my skills.';
	String get hi => 'HI';
	String get downloadCV => 'Download CV';
}

// Path: errors
class TranslationsErrorsEn {
	TranslationsErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsErrorsNotFoundEn not_found = TranslationsErrorsNotFoundEn._(_root);
}

// Path: errors.not_found
class TranslationsErrorsNotFoundEn {
	TranslationsErrorsNotFoundEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Page Not Found';
	String get message => 'The page you are looking for does not exist.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.title': return 'Portfolio';
			case 'app.description': return 'A personal portfolio showcasing my projects and skills.';
			case 'intro.subtitle': return 'I\'m Kamal Ayman';
			case 'intro.title': return 'Flutter Developer';
			case 'intro.description': return 'I am a Flutter developer with a passion for creating beautiful and functional applications. I have experience in building mobile applications using Flutter and Dart, and I am always eager to learn new technologies and improve my skills.';
			case 'intro.hi': return 'HI';
			case 'intro.downloadCV': return 'Download CV';
			case 'errors.not_found.title': return 'Page Not Found';
			case 'errors.not_found.message': return 'The page you are looking for does not exist.';
			default: return null;
		}
	}
}

