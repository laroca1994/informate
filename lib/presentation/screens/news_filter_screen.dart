import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:informate/data/enums/categories_enum.dart';
import 'package:informate/data/models/filter_model.dart';
import 'package:informate/data/provider/commons_providers/commons_providers.dart';
import 'package:informate/data/utils/methods.dart';
import 'package:informate/presentation/extensions/widget_extensions.dart';
import 'package:informate/presentation/widgets/chip_widget.dart';
import 'package:informate/presentation/widgets/commons_fetchers/select_element_from_api.dart';
import 'package:informate/presentation/widgets/images/primary_network_image.dart';
import 'package:informate/presentation/widgets/input/primary_multiple_dropdown.dart';
import 'package:informate/presentation/widgets/input/primary_reactive_chip.dart';
import 'package:informate/presentation/widgets/input/primary_reactive_dropdown.dart';
import 'package:informate/presentation/widgets/input/primary_reactive_multiple_dropdown.dart';
import 'package:informate/presentation/widgets/text/primary_title.dart';

@RoutePage()
class NewsFilterScreen extends StatelessWidget {
  const NewsFilterScreen({
    super.key,
    required this.category,
  });
  final CategoriesEnum category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const PrimaryTitle('Filtrar'),
      ),
      body: NewsFilterReactiveModelFormBuilder(
        // model: ref.watch(newsFilterProvider(category)),
        builder: (context, formModel, child) => SingleChildScrollView(
          child: Column(
            children: [
              // TextFormField(
              //   decoration: const InputDecoration(
              //     labelText: 'Sources',
              //   ),
              //   onChanged: (value) => formModel.sources = value.split(','),
              // ),
              // const SizedBox(height: 10),
              // PrimaryReactiveDropdown(
              //   formControl: formModel.categoriesControl,
              // ),
              ReactiveNewsFilterReactiveModelFormConsumer(
                builder: (_, __, ___) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrimaryMultipleDropdown(
                      key: Key(DateTime.now().toString()),
                      labelText: 'Categorías a incluir',
                      leading: (p0) => Icon(p0.iconData,color: Theme.of(context).primaryColor,),
                      onChanged: (p0) => addElement(
                          formModel.categoriesForm.categoriesInControl, p0),
                      exceptions: [
                        ...convertToList(
                          formModel.categoriesForm.categoriesOutControl,
                        ),
                        ...convertToList(
                          formModel.categoriesForm.categoriesInControl,
                        )
                      ],
                      items: CategoriesEnum.list(),
                    ),
                    PrimaryReactiveChip(
                      key: Key(DateTime.now().toString()),
                      avatar: (p0) => Icon(p0.iconData),
                      formArray: formModel.categoriesForm.categoriesInControl,
                      onDeleted: (p0) => deleteFromFormArray(
                          formModel.categoriesForm.categoriesInControl, p0),
                    ),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(height: 10),
              ReactiveNewsFilterReactiveModelFormConsumer(
                builder: (_, __, ___) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrimaryReactiveMultipleDropdown(
                      labelText: 'Países a incluir',
                      key: Key(DateTime.now().toString()),
                      provider: countriesProvider,
                      formArray: formModel.countriesForm.countryInControl,
                      leading: (p0) => PrimaryNetworkImage(
                        imageUrl: p0.url,
                        isSvg: true,
                        width: 20,
                        height: 20,
                        borderRadius: 5,
                      ),
                      exceptions: convertToList(
                          formModel.countriesForm.countryOutControl),
                    ),
                    PrimaryReactiveChip(
                      key: Key(DateTime.now().toString()),
                      formArray: formModel.countriesForm.countryInControl,
                      avatar: (p0) => PrimaryNetworkImage(
                        imageUrl: p0.url,
                        isSvg: true,
                      ),
                      onDeleted: (p0) => deleteFromFormArray(
                          formModel.countriesForm.countryInControl, p0),
                    ),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(height: 10),
              ReactiveNewsFilterReactiveModelFormConsumer(
                builder: (_, __, ___) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrimaryReactiveMultipleDropdown(
                      labelText: 'Países a excluir',
                      key: Key(DateTime.now().toString()),
                      provider: countriesProvider,
                      formArray: formModel.countriesForm.countryOutControl,
                      leading: (p0) => PrimaryNetworkImage(
                        imageUrl: p0.url,
                        isSvg: true,
                        width: 20,
                        height: 20,
                        borderRadius: 5,
                      ),
                      exceptions: convertToList(
                          formModel.countriesForm.countryInControl),
                    ),
                    PrimaryReactiveChip(
                      key: Key(DateTime.now().toString()),
                      formArray: formModel.countriesForm.countryOutControl,
                      avatar: (p0) => PrimaryNetworkImage(
                        imageUrl: p0.url,
                        isSvg: true,
                      ),
                      onDeleted: (p0) => deleteFromFormArray(
                          formModel.countriesForm.countryOutControl, p0),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              // TextFormField(
              //   decoration: const InputDecoration(
              //     labelText: 'Languages',
              //   ),
              //   onChanged: (value) => formModel.languages = value.split(','),
              // ),
              // const SizedBox(height: 10),
              // TextFormField(
              //   decoration: const InputDecoration(
              //     labelText: 'Date',
              //   ),
              //   onChanged: (value) => formModel.languages = value.split(','),
              // ),
              // const SizedBox(height: 10),
              // TextFormField(
              //   decoration: const InputDecoration(
              //     labelText: 'Sort',
              //   ),
              //   onChanged: (value) => formModel.languages = value.split(','),
              // ),
              // const SizedBox(height: 10),
              // TextFormField(
              //   decoration: const InputDecoration(
              //     labelText: 'Limit',
              //   ),
              //   onChanged: (value) => formModel.limit = int.parse(value),
              // ),
              // const SizedBox(height: 10),
              // TextFormField(
              //   decoration: const InputDecoration(
              //     labelText: 'Offset',
              //   ),
              //   onChanged: (value) => formModel.offset = int.parse(value),
              // ),
              // const SizedBox(height: 20),
              // ReactiveNewsFilterModelFormConsumer(
              //   builder: (_, formModel, __) {
              //     return ElevatedButton(
              //       onPressed: formModel.form.valid
              //           ? () => ref
              //               .read(newsFilterProvider(category).notifier)
              //               .filter(formModel.model)
              //           : null,
              //       child: const Text('Filter'),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ).symmetricPadding(10, 20),
    );
  }
}
