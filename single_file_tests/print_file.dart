import 'dart:io';

main(List<String> args) async {
  print("[INFO] Arguments: $args");
  if (args.length == 0) {
    print("No file assigned.");
    return;
  }
  final contents = await new File(args[0]).readAsString();
  print(contents);
}