import 'package:flutter/material.dart';
import 'package:project/widgets/tag_widget.dart';
import '../models/tag.dart';

/// Represents a list containing [TagWidget].
class TagsList extends StatelessWidget {
  /// The [tags] in the [TagList].
  final List<dynamic> tags;
  final Size size;

  /// Creates an instance of tag list, where [tags] is the list of tags represented in the list.
  const TagsList({super.key, required this.tags, this.size = Size.small});

  @override
  Widget build(BuildContext context) {
    if (size == Size.large) {
      List<TagWidget> newTags = [];
      for (Tag tag in tags) {
        newTags.add(TagWidget(
          tagText: tag.text,
          size: Size.large,
          color: Color(tag.color),
        ));
      }
      tags.clear();
      tags.addAll(newTags);
    }
    return Wrap(
      spacing: 1.0,

      /// horizontal gap
      runSpacing: 1.0,

      /// vertical gap
      alignment: WrapAlignment.start,

      /// How the children within a run should be placed in the main axis.
      children: tags as List<Widget>,
    );
  }
}
