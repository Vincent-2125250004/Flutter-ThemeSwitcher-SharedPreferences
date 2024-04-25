import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:submissions/detail_screen.dart';
import 'package:submissions/model/Character.dart';
import 'package:submissions/theme_provider.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PomPomWikie'),
        actions: [
          Consumer<ThemeProvider>(
            builder: (context, themeProvider, _) {
              return IconButton(
                icon: Icon(themeProvider.isDarkMode ? Icons.light_mode : Icons.dark_mode),
                onPressed: () {
                  themeProvider.toggleTheme();
                },
              );
            },
          )
        ],
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return const CharactersList();
        } else if (constraints.maxWidth <= 1200) {
          return const CharactersGrid(gridCount: 4);
        } else {
          return const CharactersGrid(
            gridCount: 6,
          );
        }
      }),

    );
  }
}

class CharactersList extends StatelessWidget {
  const CharactersList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Character chara = characterList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(chara: chara);
            }));
          },
          child: Card(
            color: Theme.of(context).colorScheme.primaryContainer,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.network(
                    chara.iconChara,
                    width: 128,
                    height: 128,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chara.name,
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                                  fontSize: 24)),
                        ),
                        Text(
                          chara.path,
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  color: Theme.of(context).colorScheme.onPrimaryContainer)),
                        ),
                        Text(
                          chara.rarity,
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  color: Theme.of(context).colorScheme.onPrimaryContainer)),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: characterList.length,
    );
  }
}

class CharactersGrid extends StatelessWidget {
  final int gridCount;

  const CharactersGrid({super.key, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: characterList.map((chara) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(chara: chara);
                }));
              },
              child: Card(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.network(
                        chara.iconChara,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        chara.name,
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimaryContainer)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        chara.path,
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Theme.of(context).colorScheme.onPrimaryContainer)),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}
