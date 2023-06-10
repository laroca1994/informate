// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'filter_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveNewsFilterReactiveModelFormConsumer extends StatelessWidget {
  const ReactiveNewsFilterReactiveModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      NewsFilterReactiveModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNewsFilterReactiveModelForm.of(context);

    if (formModel is! NewsFilterReactiveModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class NewsFilterReactiveModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const NewsFilterReactiveModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final NewsFilterReactiveModelForm form;
}

class ReactiveNewsFilterReactiveModelForm extends StatelessWidget {
  const ReactiveNewsFilterReactiveModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final NewsFilterReactiveModelForm form;

  final WillPopCallback? onWillPop;

  static NewsFilterReactiveModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              NewsFilterReactiveModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        NewsFilterReactiveModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as NewsFilterReactiveModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return NewsFilterReactiveModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class NewsFilterReactiveModelFormBuilder extends StatefulWidget {
  const NewsFilterReactiveModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final NewsFilterReactiveModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context,
      NewsFilterReactiveModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, NewsFilterReactiveModelForm formModel)? initState;

  @override
  _NewsFilterReactiveModelFormBuilderState createState() =>
      _NewsFilterReactiveModelFormBuilderState();
}

class _NewsFilterReactiveModelFormBuilderState
    extends State<NewsFilterReactiveModelFormBuilder> {
  late NewsFilterReactiveModelForm _formModel;

  @override
  void initState() {
    _formModel = NewsFilterReactiveModelForm(
        NewsFilterReactiveModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant NewsFilterReactiveModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = NewsFilterReactiveModelForm(
          NewsFilterReactiveModelForm.formElements(widget.model), null);

      if (_formModel.form.disabled) {
        _formModel.form.markAsDisabled();
      }

      widget.initState?.call(context, _formModel);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveNewsFilterReactiveModelForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class NewsFilterReactiveModelForm
    implements FormModel<NewsFilterReactiveModel> {
  NewsFilterReactiveModelForm(
    this.form,
    this.path,
  );

  static const String dateControlName = "date";

  static const String countriesControlName = "countries";

  static const String sourcesControlName = "sources";

  static const String languagesControlName = "languages";

  static const String categoriesControlName = "categories";

  static const String sortControlName = "sort";

  static const String limitControlName = "limit";

  static const String offsetControlName = "offset";

  final FormGroup form;

  final String? path;

  String sortControlPath() => pathBuilder(sortControlName);
  String limitControlPath() => pathBuilder(limitControlName);
  String offsetControlPath() => pathBuilder(offsetControlName);
  String dateControlPath() => pathBuilder(dateControlName);
  String countriesControlPath() => pathBuilder(countriesControlName);
  String sourcesControlPath() => pathBuilder(sourcesControlName);
  String languagesControlPath() => pathBuilder(languagesControlName);
  String categoriesControlPath() => pathBuilder(categoriesControlName);
  SortEnum get _sortValue => sortControl.value as SortEnum;
  int get _limitValue => limitControl.value as int;
  int get _offsetValue => offsetControl.value as int;
  DateGroup? get _dateValue => dateForm.model;
  CountriesGroup? get _countriesValue => countriesForm.model;
  SourcesGroup? get _sourcesValue => sourcesForm.model;
  LanguagesGroup? get _languagesValue => languagesForm.model;
  CategoriesGroup? get _categoriesValue => categoriesForm.model;
  bool get containsSort {
    try {
      form.control(sortControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLimit {
    try {
      form.control(limitControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsOffset {
    try {
      form.control(offsetControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDate {
    try {
      form.control(dateControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCountries {
    try {
      form.control(countriesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSources {
    try {
      form.control(sourcesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLanguages {
    try {
      form.control(languagesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCategories {
    try {
      form.control(categoriesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get sortErrors => sortControl.errors;
  Object? get limitErrors => limitControl.errors;
  Object? get offsetErrors => offsetControl.errors;
  Object? get dateErrors => dateControl?.errors;
  Object? get countriesErrors => countriesControl?.errors;
  Object? get sourcesErrors => sourcesControl?.errors;
  Object? get languagesErrors => languagesControl?.errors;
  Object? get categoriesErrors => categoriesControl?.errors;
  void get sortFocus => form.focus(sortControlPath());
  void get limitFocus => form.focus(limitControlPath());
  void get offsetFocus => form.focus(offsetControlPath());
  void get dateFocus => form.focus(dateControlPath());
  void get countriesFocus => form.focus(countriesControlPath());
  void get sourcesFocus => form.focus(sourcesControlPath());
  void get languagesFocus => form.focus(languagesControlPath());
  void get categoriesFocus => form.focus(categoriesControlPath());
  void dateRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsDate) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          dateControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            dateControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void countriesRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsCountries) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          countriesControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            countriesControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void sourcesRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsSources) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          sourcesControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            sourcesControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void languagesRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsLanguages) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          languagesControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            languagesControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void categoriesRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsCategories) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          categoriesControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            categoriesControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void sortValueUpdate(
    SortEnum value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    sortControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void limitValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    limitControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void offsetValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    offsetControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dateValueUpdate(
    DateGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateControl?.updateValue(DateGroupForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void countriesValueUpdate(
    CountriesGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    countriesControl?.updateValue(
        CountriesGroupForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void sourcesValueUpdate(
    SourcesGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    sourcesControl?.updateValue(SourcesGroupForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void languagesValueUpdate(
    LanguagesGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    languagesControl?.updateValue(
        LanguagesGroupForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void categoriesValueUpdate(
    CategoriesGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    categoriesControl?.updateValue(
        CategoriesGroupForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void sortValuePatch(
    SortEnum value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    sortControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void limitValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    limitControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void offsetValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    offsetControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dateValuePatch(
    DateGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateControl?.updateValue(DateGroupForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void countriesValuePatch(
    CountriesGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    countriesControl?.updateValue(
        CountriesGroupForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void sourcesValuePatch(
    SourcesGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    sourcesControl?.updateValue(SourcesGroupForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void languagesValuePatch(
    LanguagesGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    languagesControl?.updateValue(
        LanguagesGroupForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void categoriesValuePatch(
    CategoriesGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    categoriesControl?.updateValue(
        CategoriesGroupForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void sortValueReset(
    SortEnum value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      sortControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void limitValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      limitControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void offsetValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      offsetControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void dateValueReset(
    DateGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      dateControl?.reset(
          value: DateGroupForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void countriesValueReset(
    CountriesGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      countriesControl?.reset(
          value: CountriesGroupForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void sourcesValueReset(
    SourcesGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      sourcesControl?.reset(
          value: SourcesGroupForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void languagesValueReset(
    LanguagesGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      languagesControl?.reset(
          value: LanguagesGroupForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void categoriesValueReset(
    CategoriesGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      categoriesControl?.reset(
          value: CategoriesGroupForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormControl<SortEnum> get sortControl =>
      form.control(sortControlPath()) as FormControl<SortEnum>;
  FormControl<int> get limitControl =>
      form.control(limitControlPath()) as FormControl<int>;
  FormControl<int> get offsetControl =>
      form.control(offsetControlPath()) as FormControl<int>;
  FormGroup? get dateControl =>
      containsDate ? form.control(dateControlPath()) as FormGroup? : null;
  FormGroup? get countriesControl => containsCountries
      ? form.control(countriesControlPath()) as FormGroup?
      : null;
  FormGroup? get sourcesControl =>
      containsSources ? form.control(sourcesControlPath()) as FormGroup? : null;
  FormGroup? get languagesControl => containsLanguages
      ? form.control(languagesControlPath()) as FormGroup?
      : null;
  FormGroup? get categoriesControl => containsCategories
      ? form.control(categoriesControlPath()) as FormGroup?
      : null;
  DateGroupForm get dateForm => DateGroupForm(form, pathBuilder('date'));
  CountriesGroupForm get countriesForm =>
      CountriesGroupForm(form, pathBuilder('countries'));
  SourcesGroupForm get sourcesForm =>
      SourcesGroupForm(form, pathBuilder('sources'));
  LanguagesGroupForm get languagesForm =>
      LanguagesGroupForm(form, pathBuilder('languages'));
  CategoriesGroupForm get categoriesForm =>
      CategoriesGroupForm(form, pathBuilder('categories'));
  void sortSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      sortControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      sortControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void limitSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      limitControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      limitControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void offsetSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      offsetControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      offsetControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void dateSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      dateControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      dateControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void countriesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      countriesControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      countriesControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void sourcesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      sourcesControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      sourcesControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void languagesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      languagesControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      languagesControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void categoriesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      categoriesControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      categoriesControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  NewsFilterReactiveModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'NewsFilterReactiveModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return NewsFilterReactiveModel(
        date: _dateValue,
        countries: _countriesValue,
        sources: _sourcesValue,
        languages: _languagesValue,
        categories: _categoriesValue,
        sort: _sortValue,
        limit: _limitValue,
        offset: _offsetValue);
  }

  void submit({
    required void Function(NewsFilterReactiveModel model) onValid,
    void Function()? onNotValid,
  }) {
    form.markAllAsTouched();
    if (form.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  @override
  void updateValue(
    NewsFilterReactiveModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(NewsFilterReactiveModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    NewsFilterReactiveModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(
          NewsFilterReactiveModel? newsFilterReactiveModel) =>
      FormGroup({
        sortControlName: FormControl<SortEnum>(
            value: newsFilterReactiveModel?.sort,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        limitControlName: FormControl<int>(
            value: newsFilterReactiveModel?.limit,
            validators: [max100Validator, min1Validator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        offsetControlName: FormControl<int>(
            value: newsFilterReactiveModel?.offset,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        dateControlName:
            DateGroupForm.formElements(newsFilterReactiveModel?.date),
        countriesControlName:
            CountriesGroupForm.formElements(newsFilterReactiveModel?.countries),
        sourcesControlName:
            SourcesGroupForm.formElements(newsFilterReactiveModel?.sources),
        languagesControlName:
            LanguagesGroupForm.formElements(newsFilterReactiveModel?.languages),
        categoriesControlName: CategoriesGroupForm.formElements(
            newsFilterReactiveModel?.categories)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class DateGroupForm implements FormModel<DateGroup> {
  DateGroupForm(
    this.form,
    this.path,
  );

  static const String dateInControlName = "dateIn";

  static const String dateOutControlName = "dateOut";

  final FormGroup form;

  final String? path;

  String dateInControlPath() => pathBuilder(dateInControlName);
  String dateOutControlPath() => pathBuilder(dateOutControlName);
  DateTime? get _dateInValue => dateInControl?.value;
  DateTime? get _dateOutValue => dateOutControl?.value;
  bool get containsDateIn {
    try {
      form.control(dateInControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDateOut {
    try {
      form.control(dateOutControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get dateInErrors => dateInControl?.errors;
  Object? get dateOutErrors => dateOutControl?.errors;
  void get dateInFocus => form.focus(dateInControlPath());
  void get dateOutFocus => form.focus(dateOutControlPath());
  void dateInRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsDateIn) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          dateInControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            dateInControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void dateOutRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsDateOut) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          dateOutControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            dateOutControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void dateInValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateInControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dateOutValueUpdate(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateOutControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dateInValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateInControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dateOutValuePatch(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateOutControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dateInValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      dateInControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void dateOutValueReset(
    DateTime? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      dateOutControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<DateTime>? get dateInControl => containsDateIn
      ? form.control(dateInControlPath()) as FormControl<DateTime>?
      : null;
  FormControl<DateTime>? get dateOutControl => containsDateOut
      ? form.control(dateOutControlPath()) as FormControl<DateTime>?
      : null;
  void dateInSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      dateInControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      dateInControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void dateOutSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      dateOutControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      dateOutControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  DateGroup get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'DateGroupForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return DateGroup(dateIn: _dateInValue, dateOut: _dateOutValue);
  }

  void submit({
    required void Function(DateGroup model) onValid,
    void Function()? onNotValid,
  }) {
    form.markAllAsTouched();
    if (form.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  @override
  void updateValue(
    DateGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(DateGroupForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    DateGroup? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(DateGroup? dateGroup) => FormGroup({
        dateInControlName: FormControl<DateTime>(
            value: dateGroup?.dateIn,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        dateOutControlName: FormControl<DateTime>(
            value: dateGroup?.dateOut,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [
            correctDateValidator
          ],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class CountriesGroupForm implements FormModel<CountriesGroup> {
  CountriesGroupForm(
    this.form,
    this.path,
  );

  static const String countryInControlName = "countryIn";

  static const String countryOutControlName = "countryOut";

  final FormGroup form;

  final String? path;

  String countryInControlPath() => pathBuilder(countryInControlName);
  String countryOutControlPath() => pathBuilder(countryOutControlName);
  List<Country> get _countryInValue =>
      countryInControl.value?.whereType<Country>().toList() ?? [];
  List<Country> get _countryOutValue =>
      countryOutControl.value?.whereType<Country>().toList() ?? [];
  bool get containsCountryIn {
    try {
      form.control(countryInControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCountryOut {
    try {
      form.control(countryOutControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get countryInErrors => countryInControl.errors;
  Object? get countryOutErrors => countryOutControl.errors;
  void get countryInFocus => form.focus(countryInControlPath());
  void get countryOutFocus => form.focus(countryOutControlPath());
  void countryInValueUpdate(
    List<Country> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    countryInControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void countryOutValueUpdate(
    List<Country> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    countryOutControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void countryInValuePatch(
    List<Country> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    countryInControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void countryOutValuePatch(
    List<Country> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    countryOutControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void countryInValueReset(
    List<Country> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      countryInControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void countryOutValueReset(
    List<Country> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      countryOutControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormArray<Country> get countryInControl =>
      form.control(countryInControlPath()) as FormArray<Country>;
  FormArray<Country> get countryOutControl =>
      form.control(countryOutControlPath()) as FormArray<Country>;
  void countryInSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      countryInControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      countryInControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void countryOutSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      countryOutControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      countryOutControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addCountryInItem(
    Country value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    countryInControl.add(FormControl<Country>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  void addCountryOutItem(
    Country value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    countryOutControl.add(FormControl<Country>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  @override
  CountriesGroup get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'CountriesGroupForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return CountriesGroup(
        countryIn: _countryInValue, countryOut: _countryOutValue);
  }

  void submit({
    required void Function(CountriesGroup model) onValid,
    void Function()? onNotValid,
  }) {
    form.markAllAsTouched();
    if (form.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  @override
  void updateValue(
    CountriesGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(CountriesGroupForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    CountriesGroup? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(CountriesGroup? countriesGroup) => FormGroup({
        countryInControlName: FormArray<Country>(
            (countriesGroup?.countryIn ?? [])
                .map((e) => FormControl<Country>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        countryOutControlName: FormArray<Country>(
            (countriesGroup?.countryOut ?? [])
                .map((e) => FormControl<Country>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [
            correctListValidator
          ],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class SourcesGroupForm implements FormModel<SourcesGroup> {
  SourcesGroupForm(
    this.form,
    this.path,
  );

  static const String dateInControlName = "dateIn";

  static const String dateOutControlName = "dateOut";

  final FormGroup form;

  final String? path;

  String dateInControlPath() => pathBuilder(dateInControlName);
  String dateOutControlPath() => pathBuilder(dateOutControlName);
  List<Source> get _dateInValue =>
      dateInControl.value?.whereType<Source>().toList() ?? [];
  List<Source> get _dateOutValue =>
      dateOutControl.value?.whereType<Source>().toList() ?? [];
  bool get containsDateIn {
    try {
      form.control(dateInControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDateOut {
    try {
      form.control(dateOutControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get dateInErrors => dateInControl.errors;
  Object? get dateOutErrors => dateOutControl.errors;
  void get dateInFocus => form.focus(dateInControlPath());
  void get dateOutFocus => form.focus(dateOutControlPath());
  void dateInValueUpdate(
    List<Source> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateInControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dateOutValueUpdate(
    List<Source> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateOutControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dateInValuePatch(
    List<Source> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateInControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dateOutValuePatch(
    List<Source> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateOutControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void dateInValueReset(
    List<Source> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      dateInControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void dateOutValueReset(
    List<Source> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      dateOutControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormArray<Source> get dateInControl =>
      form.control(dateInControlPath()) as FormArray<Source>;
  FormArray<Source> get dateOutControl =>
      form.control(dateOutControlPath()) as FormArray<Source>;
  void dateInSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      dateInControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      dateInControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void dateOutSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      dateOutControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      dateOutControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addDateInItem(
    Source value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    dateInControl.add(FormControl<Source>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  void addDateOutItem(
    Source value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    dateOutControl.add(FormControl<Source>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  @override
  SourcesGroup get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'SourcesGroupForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return SourcesGroup(dateIn: _dateInValue, dateOut: _dateOutValue);
  }

  void submit({
    required void Function(SourcesGroup model) onValid,
    void Function()? onNotValid,
  }) {
    form.markAllAsTouched();
    if (form.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  @override
  void updateValue(
    SourcesGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(SourcesGroupForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    SourcesGroup? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(SourcesGroup? sourcesGroup) => FormGroup({
        dateInControlName: FormArray<Source>(
            (sourcesGroup?.dateIn ?? [])
                .map((e) => FormControl<Source>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        dateOutControlName: FormArray<Source>(
            (sourcesGroup?.dateOut ?? [])
                .map((e) => FormControl<Source>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [
            correctListValidator
          ],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class LanguagesGroupForm implements FormModel<LanguagesGroup> {
  LanguagesGroupForm(
    this.form,
    this.path,
  );

  static const String languagesInControlName = "languagesIn";

  static const String languagesOutControlName = "languagesOut";

  final FormGroup form;

  final String? path;

  String languagesInControlPath() => pathBuilder(languagesInControlName);
  String languagesOutControlPath() => pathBuilder(languagesOutControlName);
  List<LanguagesEnum> get _languagesInValue =>
      languagesInControl.value?.whereType<LanguagesEnum>().toList() ?? [];
  List<LanguagesEnum> get _languagesOutValue =>
      languagesOutControl.value?.whereType<LanguagesEnum>().toList() ?? [];
  bool get containsLanguagesIn {
    try {
      form.control(languagesInControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLanguagesOut {
    try {
      form.control(languagesOutControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get languagesInErrors => languagesInControl.errors;
  Object? get languagesOutErrors => languagesOutControl.errors;
  void get languagesInFocus => form.focus(languagesInControlPath());
  void get languagesOutFocus => form.focus(languagesOutControlPath());
  void languagesInValueUpdate(
    List<LanguagesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    languagesInControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void languagesOutValueUpdate(
    List<LanguagesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    languagesOutControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void languagesInValuePatch(
    List<LanguagesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    languagesInControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void languagesOutValuePatch(
    List<LanguagesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    languagesOutControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void languagesInValueReset(
    List<LanguagesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      languagesInControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void languagesOutValueReset(
    List<LanguagesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      languagesOutControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormArray<LanguagesEnum> get languagesInControl =>
      form.control(languagesInControlPath()) as FormArray<LanguagesEnum>;
  FormArray<LanguagesEnum> get languagesOutControl =>
      form.control(languagesOutControlPath()) as FormArray<LanguagesEnum>;
  void languagesInSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      languagesInControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      languagesInControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void languagesOutSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      languagesOutControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      languagesOutControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addLanguagesInItem(
    LanguagesEnum value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    languagesInControl.add(FormControl<LanguagesEnum>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  void addLanguagesOutItem(
    LanguagesEnum value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    languagesOutControl.add(FormControl<LanguagesEnum>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  @override
  LanguagesGroup get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'LanguagesGroupForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return LanguagesGroup(
        languagesIn: _languagesInValue, languagesOut: _languagesOutValue);
  }

  void submit({
    required void Function(LanguagesGroup model) onValid,
    void Function()? onNotValid,
  }) {
    form.markAllAsTouched();
    if (form.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  @override
  void updateValue(
    LanguagesGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(LanguagesGroupForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    LanguagesGroup? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(LanguagesGroup? languagesGroup) => FormGroup({
        languagesInControlName: FormArray<LanguagesEnum>(
            (languagesGroup?.languagesIn ?? [])
                .map((e) => FormControl<LanguagesEnum>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        languagesOutControlName: FormArray<LanguagesEnum>(
            (languagesGroup?.languagesOut ?? [])
                .map((e) => FormControl<LanguagesEnum>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [
            correctListValidator
          ],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class CategoriesGroupForm implements FormModel<CategoriesGroup> {
  CategoriesGroupForm(
    this.form,
    this.path,
  );

  static const String categoriesInControlName = "categoriesIn";

  static const String categoriesOutControlName = "categoriesOut";

  final FormGroup form;

  final String? path;

  String categoriesInControlPath() => pathBuilder(categoriesInControlName);
  String categoriesOutControlPath() => pathBuilder(categoriesOutControlName);
  List<CategoriesEnum> get _categoriesInValue =>
      categoriesInControl.value?.whereType<CategoriesEnum>().toList() ?? [];
  List<CategoriesEnum> get _categoriesOutValue =>
      categoriesOutControl.value?.whereType<CategoriesEnum>().toList() ?? [];
  bool get containsCategoriesIn {
    try {
      form.control(categoriesInControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCategoriesOut {
    try {
      form.control(categoriesOutControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get categoriesInErrors => categoriesInControl.errors;
  Object? get categoriesOutErrors => categoriesOutControl.errors;
  void get categoriesInFocus => form.focus(categoriesInControlPath());
  void get categoriesOutFocus => form.focus(categoriesOutControlPath());
  void categoriesInValueUpdate(
    List<CategoriesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    categoriesInControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void categoriesOutValueUpdate(
    List<CategoriesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    categoriesOutControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void categoriesInValuePatch(
    List<CategoriesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    categoriesInControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void categoriesOutValuePatch(
    List<CategoriesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    categoriesOutControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void categoriesInValueReset(
    List<CategoriesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      categoriesInControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void categoriesOutValueReset(
    List<CategoriesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      categoriesOutControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormArray<CategoriesEnum> get categoriesInControl =>
      form.control(categoriesInControlPath()) as FormArray<CategoriesEnum>;
  FormArray<CategoriesEnum> get categoriesOutControl =>
      form.control(categoriesOutControlPath()) as FormArray<CategoriesEnum>;
  void categoriesInSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      categoriesInControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      categoriesInControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void categoriesOutSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      categoriesOutControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      categoriesOutControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addCategoriesInItem(
    CategoriesEnum value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    categoriesInControl.add(FormControl<CategoriesEnum>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  void addCategoriesOutItem(
    CategoriesEnum value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    categoriesOutControl.add(FormControl<CategoriesEnum>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  @override
  CategoriesGroup get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'CategoriesGroupForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return CategoriesGroup(
        categoriesIn: _categoriesInValue, categoriesOut: _categoriesOutValue);
  }

  void submit({
    required void Function(CategoriesGroup model) onValid,
    void Function()? onNotValid,
  }) {
    form.markAllAsTouched();
    if (form.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  @override
  void updateValue(
    CategoriesGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(CategoriesGroupForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    CategoriesGroup? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(CategoriesGroup? categoriesGroup) => FormGroup({
        categoriesInControlName: FormArray<CategoriesEnum>(
            (categoriesGroup?.categoriesIn ?? [])
                .map((e) => FormControl<CategoriesEnum>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        categoriesOutControlName: FormArray<CategoriesEnum>(
            (categoriesGroup?.categoriesOut ?? [])
                .map((e) => FormControl<CategoriesEnum>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [
            correctListValidator
          ],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveNewsFilterReactiveModelFormArrayBuilder<T>
    extends StatelessWidget {
  const ReactiveNewsFilterReactiveModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(NewsFilterReactiveModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      NewsFilterReactiveModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      NewsFilterReactiveModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNewsFilterReactiveModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final itemList = (formArray.value ?? [])
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveNewsFilterReactiveModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveNewsFilterReactiveModelFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<V>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<V>> Function(
      NewsFilterReactiveModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      NewsFilterReactiveModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      NewsFilterReactiveModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNewsFilterReactiveModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <V>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveSourcesFilterModelFormConsumer extends StatelessWidget {
  const ReactiveSourcesFilterModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, SourcesFilterModelForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSourcesFilterModelForm.of(context);

    if (formModel is! SourcesFilterModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class SourcesFilterModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const SourcesFilterModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final SourcesFilterModelForm form;
}

class ReactiveSourcesFilterModelForm extends StatelessWidget {
  const ReactiveSourcesFilterModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final SourcesFilterModelForm form;

  final WillPopCallback? onWillPop;

  static SourcesFilterModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              SourcesFilterModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        SourcesFilterModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as SourcesFilterModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return SourcesFilterModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class SourcesFilterModelFormBuilder extends StatefulWidget {
  const SourcesFilterModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final SourcesFilterModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, SourcesFilterModelForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, SourcesFilterModelForm formModel)?
      initState;

  @override
  _SourcesFilterModelFormBuilderState createState() =>
      _SourcesFilterModelFormBuilderState();
}

class _SourcesFilterModelFormBuilderState
    extends State<SourcesFilterModelFormBuilder> {
  late SourcesFilterModelForm _formModel;

  @override
  void initState() {
    _formModel = SourcesFilterModelForm(
        SourcesFilterModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant SourcesFilterModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = SourcesFilterModelForm(
          SourcesFilterModelForm.formElements(widget.model), null);

      if (_formModel.form.disabled) {
        _formModel.form.markAsDisabled();
      }

      widget.initState?.call(context, _formModel);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveSourcesFilterModelForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class SourcesFilterModelForm implements FormModel<SourcesFilterModel> {
  SourcesFilterModelForm(
    this.form,
    this.path,
  );

  static const String searchControlName = "search";

  static const String countriesControlName = "countries";

  static const String languagesControlName = "languages";

  static const String categoriesControlName = "categories";

  static const String limitControlName = "limit";

  static const String offsetControlName = "offset";

  final FormGroup form;

  final String? path;

  String searchControlPath() => pathBuilder(searchControlName);
  String limitControlPath() => pathBuilder(limitControlName);
  String offsetControlPath() => pathBuilder(offsetControlName);
  String countriesControlPath() => pathBuilder(countriesControlName);
  String languagesControlPath() => pathBuilder(languagesControlName);
  String categoriesControlPath() => pathBuilder(categoriesControlName);
  String get _searchValue => searchControl.value as String;
  int get _limitValue => limitControl.value as int;
  int get _offsetValue => offsetControl.value as int;
  List<String> get _countriesValue =>
      countriesControl.value?.whereType<String>().toList() ?? [];
  List<LanguagesEnum> get _languagesValue =>
      languagesControl.value?.whereType<LanguagesEnum>().toList() ?? [];
  List<CategoriesEnum> get _categoriesValue =>
      categoriesControl.value?.whereType<CategoriesEnum>().toList() ?? [];
  bool get containsSearch {
    try {
      form.control(searchControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLimit {
    try {
      form.control(limitControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsOffset {
    try {
      form.control(offsetControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCountries {
    try {
      form.control(countriesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLanguages {
    try {
      form.control(languagesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCategories {
    try {
      form.control(categoriesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get searchErrors => searchControl.errors;
  Object? get limitErrors => limitControl.errors;
  Object? get offsetErrors => offsetControl.errors;
  Object? get countriesErrors => countriesControl.errors;
  Object? get languagesErrors => languagesControl.errors;
  Object? get categoriesErrors => categoriesControl.errors;
  void get searchFocus => form.focus(searchControlPath());
  void get limitFocus => form.focus(limitControlPath());
  void get offsetFocus => form.focus(offsetControlPath());
  void get countriesFocus => form.focus(countriesControlPath());
  void get languagesFocus => form.focus(languagesControlPath());
  void get categoriesFocus => form.focus(categoriesControlPath());
  void searchValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    searchControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void limitValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    limitControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void offsetValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    offsetControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void countriesValueUpdate(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    countriesControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void languagesValueUpdate(
    List<LanguagesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    languagesControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void categoriesValueUpdate(
    List<CategoriesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    categoriesControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void searchValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    searchControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void limitValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    limitControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void offsetValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    offsetControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void countriesValuePatch(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    countriesControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void languagesValuePatch(
    List<LanguagesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    languagesControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void categoriesValuePatch(
    List<CategoriesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    categoriesControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void searchValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      searchControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void limitValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      limitControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void offsetValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      offsetControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void countriesValueReset(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      countriesControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void languagesValueReset(
    List<LanguagesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      languagesControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void categoriesValueReset(
    List<CategoriesEnum> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      categoriesControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get searchControl =>
      form.control(searchControlPath()) as FormControl<String>;
  FormControl<int> get limitControl =>
      form.control(limitControlPath()) as FormControl<int>;
  FormControl<int> get offsetControl =>
      form.control(offsetControlPath()) as FormControl<int>;
  FormArray<String> get countriesControl =>
      form.control(countriesControlPath()) as FormArray<String>;
  FormArray<LanguagesEnum> get languagesControl =>
      form.control(languagesControlPath()) as FormArray<LanguagesEnum>;
  FormArray<CategoriesEnum> get categoriesControl =>
      form.control(categoriesControlPath()) as FormArray<CategoriesEnum>;
  void searchSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      searchControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      searchControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void limitSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      limitControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      limitControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void offsetSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      offsetControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      offsetControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void countriesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      countriesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      countriesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void languagesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      languagesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      languagesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void categoriesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      categoriesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      categoriesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addCountriesItem(
    String value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    countriesControl.add(FormControl<String>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  void addLanguagesItem(
    LanguagesEnum value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    languagesControl.add(FormControl<LanguagesEnum>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  void addCategoriesItem(
    CategoriesEnum value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    categoriesControl.add(FormControl<CategoriesEnum>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  @override
  SourcesFilterModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'SourcesFilterModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return SourcesFilterModel(
        search: _searchValue,
        countries: _countriesValue,
        languages: _languagesValue,
        categories: _categoriesValue,
        limit: _limitValue,
        offset: _offsetValue);
  }

  void submit({
    required void Function(SourcesFilterModel model) onValid,
    void Function()? onNotValid,
  }) {
    form.markAllAsTouched();
    if (form.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  @override
  void updateValue(
    SourcesFilterModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(SourcesFilterModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    SourcesFilterModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(SourcesFilterModel? sourcesFilterModel) =>
      FormGroup({
        searchControlName: FormControl<String>(
            value: sourcesFilterModel?.search,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        countriesControlName: FormArray<String>(
            (sourcesFilterModel?.countries ?? [])
                .map((e) => FormControl<String>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        languagesControlName: FormArray<LanguagesEnum>(
            (sourcesFilterModel?.languages ?? [])
                .map((e) => FormControl<LanguagesEnum>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        categoriesControlName: FormArray<CategoriesEnum>(
            (sourcesFilterModel?.categories ?? [])
                .map((e) => FormControl<CategoriesEnum>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        limitControlName: FormControl<int>(
            value: sourcesFilterModel?.limit,
            validators: [max100Validator, min1Validator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        offsetControlName: FormControl<int>(
            value: sourcesFilterModel?.offset,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveSourcesFilterModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveSourcesFilterModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(SourcesFilterModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      SourcesFilterModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item,
      SourcesFilterModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSourcesFilterModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final itemList = (formArray.value ?? [])
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveSourcesFilterModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveSourcesFilterModelFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<V>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<V>> Function(
      SourcesFilterModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      SourcesFilterModelForm formModel)? builder;

  final Widget Function(BuildContext context, int i, V? item,
      SourcesFilterModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSourcesFilterModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <V>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
