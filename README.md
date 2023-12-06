# meiuca_components

![Github Badge](https://img.shields.io/badge/Version-1.0.0-<>)
![Github Badge](https://img.shields.io/badge/-Flutter-3dbbe3?&logo=Flutter)
![Github Badge](https://img.shields.io/badge/-Dart-268bab?&logo=Dart)
![Github Badge](https://img.shields.io/badge/-NullSafety-268bab)

Design systems Flutter baseado no **Jota Design Tokens da Meiuca**

<br/>

# Sumário

- [meiuca\_components](#meiuca_components)
- [Sumário](#sumário)
  - [Projeto](#projeto)
    - [Desenvolvimento](#desenvolvimento)
    - [Pontos de melhoria](#pontos-de-melhoria)
  - [Storybook](#storybook)
  - [Informações técnicas](#informações-técnicas)
    - [Versão atual](#versão-atual)
    - [Instalação](#instalação)

## Projeto

### Desenvolvimento

A primeira coisa feita foi analisar o json de design tokens e mapeá-lo para ser usado como uma classe `Dart`, separando em algumas classes:

- [MeiucaThemeBorderSize](lib/src/theme_manager/properties/meiuca_theme_border_size.dart): propriedades de espessura da borda
- [MeiucaThemeBrandColor](lib/src/theme_manager/properties/meiuca_theme_brand_color.dart): cores da marca
- [MeiucaThemeColorIntensity](lib/src/theme_manager/properties/meiuca_theme_color_intensity.dart): intensidade de cores
- [MeiucaThemeFontFamily](lib/src/theme_manager/properties/meiuca_theme_font_family.dart): tipos de fontes
- [MeiucaThemeFontSize](lib/src/theme_manager/properties/meiuca_theme_font_size.dart): tamanhos de fontes
- [MeiucaThemeFontWeight](lib/src/theme_manager/properties/meiuca_theme_font_weight.dart): pesos de fontes
- [MeiucaThemeLineHeight](lib/src/theme_manager/properties/meiuca_theme_line_height.dart): tamanho de linha de texto
- [MeiucaThemeOpacityLevel](lib/src/theme_manager/properties/meiuca_theme_opacity_level.dart): nível de opacidade
- [MeiucaThemeRadiusSize](lib/src/theme_manager/properties/meiuca_theme_radius_size.dart): tamanho de curvatura
- [MeiucaThemeSpacingSize](lib/src/theme_manager/properties/meiuca_theme_spacing_size.dart): espaçamentos
- [MeiucaThemeSpacingSquishSize](lib/src/theme_manager/properties/meiuca_theme_spacing_squish_size.dart): conjunto de espaçamentos

A partir das classes das propriedades criadas  foi feita a criação desse agrupamento de propriedades que é o tema em si [MeiucaTheme](lib/src/theme_manager/meiuca_theme.dart).

Depois disso comecei a criação do gerenciador de temas. Nele eu gerencio qual o tem aativo no momento e qual `ThemeMode` ele deve ser usado. Nele eu consigo setar o tema atrvés de um arquivo `Map`, que deve ter a mesma estrutura do **Jota Design Tokens**, ou através da criação das classes manualmente.

Com o gerenciador e o tema funcionando comecei a criação dos componentes:
  - [MeiucaCardContent](lib/src/components/meiuca_card_content.dart)
  - [MeiucaPrimaryButton](lib/src/components/meiuca_primary_button.dart)
  - [MeiucaShape](lib/src/components/meiuca_shape.dart)

e estilos de textos:
  - [headingSmall](lib/src/meiuca_text_styles.dart#L6)
  - [subtitleSmall](lib/src/meiuca_text_styles.dart#L28)
  - [paragraph](lib/src/meiuca_text_styles.dart#L50)

Os componentes eu utilizei o prefixo `Meiuca` no nome para não dar conflito com nenhuma outra classe do flutter e os textos eu criei como estilos ao invés de componentes para que possam ser utilizados em diferentes componentes de texto como: `Text`, `RichText`, etc.

Depois da criação dos componentes criei um projeto example para fazer o `storybook` utilizando a biblioteca [storybook_flutter](https://pub.dev/packages/storybook_flutter) e adicionei um `workflow` do `Github Actions` para sempre que for feita uma alteração na main ele irá fazer o deploy desse storybook no [Github Pages do repositório](https://phillipilino.github.io/meiuca-case/)

<br>

### Pontos de melhoria

Para a evolução do projeto eu pretendo tentar automatizar/otimizar de alguma forma a criação dos testes unitários básicos, pois é um processo importante porém pode se tornar repetitivo conforme o projeto vá crescendo, e otimizando isso de alguma forma faz com que o dev se preocupe mais com pontos chaves daquele componente do que ficar testando coisas que ele possui em comum com algum outro componente.

Outro ponto que eu acho importante, é melhorar a atribuição e criação de temas. Pode ser interessante criar um método `.copyWith` em cada classe de propriedade ou talvez fazendo um método desse geral na classe do tema para ajudar na mudança de propriedades do tema em runtime. Além disso melhorar algumas partes do código um tanto quanto repetitivas na criação das classes de propriedades e evoluir isso para um script que le o arquivo de tokens e cria a classe de estrutura do tema sozinho.

<br>

## Storybook

- Acesse o storybook dos componentes [neste link](https://phillipilino.github.io/meiuca-case/)

<br>

## Informações técnicas

### Versão atual

* 1.0.0 (Acesse o [changelog](CHANGELOG.md) para visualizar todas mudanças)

<br/>

### Instalação

Adicionar a seguinte dependência (com base em como você vai utilizar) no seu arquivo `pubspec.yaml` e logo após rodar o comando `flutter pub get` para baixar a dependência

- Versão do Github:
```yaml
meiuca_components:
    git:
      url: git@github.com:phillipiLino/meiuca-case.git
      ref: {nome_da_branch}
```

- Versão local:
```yaml
meiuca_components:
    path: {caminho_do_pacote}
```