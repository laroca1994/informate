// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'filter_model.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveNewsFilterModelFormConsumer extends StatelessWidget {
  const ReactiveNewsFilterModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, NewsFilterModelForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNewsFilterModelForm.of(context);

    if (formModel is! NewsFilterModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class NewsFilterModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const NewsFilterModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final NewsFilterModelForm form;
}

class ReactiveNewsFilterModelForm extends StatelessWidget {
  const ReactiveNewsFilterModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final NewsFilterModelForm form;

  final WillPopCallback? onWillPop;

  static NewsFilterModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              NewsFilterModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        NewsFilterModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as NewsFilterModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return NewsFilterModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class NewsFilterModelFormBuilder extends StatefulWidget {
  const NewsFilterModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final NewsFilterModel? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
          BuildContext context, NewsFilterModelForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, NewsFilterModelForm formModel)?
      initState;

  @override
  _NewsFilterModelFormBuilderState createState() =>
      _NewsFilterModelFormBuilderState();
}

class _NewsFilterModelFormBuilderState
    extends State<NewsFilterModelFormBuilder> {
  late NewsFilterModelForm _formModel;

  @override
  void initState() {
    _formModel = NewsFilterModelForm(
        NewsFilterModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant NewsFilterModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = NewsFilterModelForm(
          NewsFilterModelForm.formElements(widget.model), null);

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
    return ReactiveNewsFilterModelForm(
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

class NewsFilterModelForm implements FormModel<NewsFilterModel> {
  NewsFilterModelForm(
    this.form,
    this.path,
  );

  static const String keywordsControlName = "keywords";

  static const String dateControlName = "date";

  static const String sortControlName = "sort";

  static const String countriesControlName = "countries";

  static const String sourcesControlName = "sources";

  static const String languagesControlName = "languages";

  static const String categoriesControlName = "categories";

  static const String limitControlName = "limit";

  static const String offsetControlName = "offset";

  final FormGroup form;

  final String? path;

  String keywordsControlPath() => pathBuilder(keywordsControlName);
  String sortControlPath() => pathBuilder(sortControlName);
  String limitControlPath() => pathBuilder(limitControlName);
  String offsetControlPath() => pathBuilder(offsetControlName);
  String dateControlPath() => pathBuilder(dateControlName);
  String countriesControlPath() => pathBuilder(countriesControlName);
  String sourcesControlPath() => pathBuilder(sourcesControlName);
  String languagesControlPath() => pathBuilder(languagesControlName);
  String categoriesControlPath() => pathBuilder(categoriesControlName);
  String get _keywordsValue => keywordsControl.value as String;
  SortEnum get _sortValue => sortControl.value as SortEnum;
  int get _limitValue => limitControl.value as int;
  int get _offsetValue => offsetControl.value as int;
  List<DateTime> get _dateValue =>
      dateControl.value?.whereType<DateTime>().toList() ?? [];
  List<String> get _countriesValue =>
      countriesControl.value?.whereType<String>().toList() ?? [];
  List<Source> get _sourcesValue =>
      sourcesControl.value?.whereType<Source>().toList() ?? [];
  List<LanguagesEnum> get _languagesValue =>
      languagesControl.value?.whereType<LanguagesEnum>().toList() ?? [];
  List<CategoriesEnum> get _categoriesValue =>
      categoriesControl.value?.whereType<CategoriesEnum>().toList() ?? [];
  bool get containsKeywords {
    try {
      form.control(keywordsControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

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

  Object? get keywordsErrors => keywordsControl.errors;
  Object? get sortErrors => sortControl.errors;
  Object? get limitErrors => limitControl.errors;
  Object? get offsetErrors => offsetControl.errors;
  Object? get dateErrors => dateControl.errors;
  Object? get countriesErrors => countriesControl.errors;
  Object? get sourcesErrors => sourcesControl.errors;
  Object? get languagesErrors => languagesControl.errors;
  Object? get categoriesErrors => categoriesControl.errors;
  void get keywordsFocus => form.focus(keywordsControlPath());
  void get sortFocus => form.focus(sortControlPath());
  void get limitFocus => form.focus(limitControlPath());
  void get offsetFocus => form.focus(offsetControlPath());
  void get dateFocus => form.focus(dateControlPath());
  void get countriesFocus => form.focus(countriesControlPath());
  void get sourcesFocus => form.focus(sourcesControlPath());
  void get languagesFocus => form.focus(languagesControlPath());
  void get categoriesFocus => form.focus(categoriesControlPath());
  void keywordsValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    keywordsControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
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
    List<DateTime> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateControl.updateValue(value,
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

  void sourcesValueUpdate(
    List<Source> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    sourcesControl.updateValue(value,
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

  void keywordsValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    keywordsControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
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
    List<DateTime> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dateControl.patchValue(value,
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

  void sourcesValuePatch(
    List<Source> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    sourcesControl.patchValue(value,
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

  void keywordsValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      keywordsControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
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
    List<DateTime> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      dateControl.reset(
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
  void sourcesValueReset(
    List<Source> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      sourcesControl.reset(
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
  FormControl<String> get keywordsControl =>
      form.control(keywordsControlPath()) as FormControl<String>;
  FormControl<SortEnum> get sortControl =>
      form.control(sortControlPath()) as FormControl<SortEnum>;
  FormControl<int> get limitControl =>
      form.control(limitControlPath()) as FormControl<int>;
  FormControl<int> get offsetControl =>
      form.control(offsetControlPath()) as FormControl<int>;
  FormArray<DateTime> get dateControl =>
      form.control(dateControlPath()) as FormArray<DateTime>;
  FormArray<String> get countriesControl =>
      form.control(countriesControlPath()) as FormArray<String>;
  FormArray<Source> get sourcesControl =>
      form.control(sourcesControlPath()) as FormArray<Source>;
  FormArray<LanguagesEnum> get languagesControl =>
      form.control(languagesControlPath()) as FormArray<LanguagesEnum>;
  FormArray<CategoriesEnum> get categoriesControl =>
      form.control(categoriesControlPath()) as FormArray<CategoriesEnum>;
  void keywordsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      keywordsControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      keywordsControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

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
      dateControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      dateControl.markAsEnabled(
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

  void sourcesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      sourcesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      sourcesControl.markAsEnabled(
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

  void addDateItem(
    DateTime value, {
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

    dateControl.add(FormControl<DateTime>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
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

  void addSourcesItem(
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

    sourcesControl.add(FormControl<Source>(
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
  NewsFilterModel get model {
    final currentForm = path == null ? form : form.control(path!);

    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'NewsFilterModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return NewsFilterModel(
        keywords: _keywordsValue,
        date: _dateValue,
        sort: _sortValue,
        countries: _countriesValue,
        sources: _sourcesValue,
        languages: _languagesValue,
        categories: _categoriesValue,
        limit: _limitValue,
        offset: _offsetValue);
  }

  void submit({
    required void Function(NewsFilterModel model) onValid,
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
    NewsFilterModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(NewsFilterModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    NewsFilterModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(NewsFilterModel? newsFilterModel) => FormGroup({
        keywordsControlName: FormControl<String>(
            value: newsFilterModel?.keywords,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        dateControlName: FormArray<DateTime>(
            (newsFilterModel?.date ?? [])
                .map((e) => FormControl<DateTime>(
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
        sortControlName: FormControl<SortEnum>(
            value: newsFilterModel?.sort,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        countriesControlName: FormArray<String>(
            (newsFilterModel?.countries ?? [])
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
        sourcesControlName: FormArray<Source>(
            (newsFilterModel?.sources ?? [])
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
        languagesControlName: FormArray<LanguagesEnum>(
            (newsFilterModel?.languages ?? [])
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
            (newsFilterModel?.categories ?? [])
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
            value: newsFilterModel?.limit,
            validators: [max100Validator, min1Validator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        offsetControlName: FormControl<int>(
            value: newsFilterModel?.offset,
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

class ReactiveNewsFilterModelFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveNewsFilterModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(NewsFilterModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      NewsFilterModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, NewsFilterModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNewsFilterModelForm.of(context);

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

class ReactiveNewsFilterModelFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveNewsFilterModelFormFormGroupArrayBuilder({
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
      NewsFilterModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      NewsFilterModelForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, NewsFilterModelForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNewsFilterModelForm.of(context);

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
