#import "@preview/tidy:0.4.3"
#import "@preview/marginalia:0.3.1" as marginalia: wideblock
#import "../src/lib.typ": *

#let (
  // Metadata
  title,
  author,
  company,
  confidential,
  date,
  double-sided,
  print,
  // Layouts
  doc,
  title-page,
  title-block,
) = documentclass(
  title: [The HITEC template],
  author: "Brian Li",
  company: [The Company, Ltd],
  confidential: [#sym.bar.h Unlimited Distribution #sym.bar.h],
  date: datetime.today(),
  print: false,
)

#set document(
  description: [The documentation manual for the HITEC Typst template, generated using Tidy.],
  keywords: ("technology", "report", "documentation", "Typst", "HITEC"),
)

#show: doc
#show heading.where(level: 4): set heading(numbering: none)

#title-block()

This is the documentation manual for the `HITEC` Typst template, generated using `Tidy`.

#outline(depth: 3)

= Top Level

#let docs = tidy.parse-module(
  read("../src/lib.typ"),
)
#tidy.show-module(
  docs,
  first-heading-level: 1,
  show-outline: false,
)

= Layouts

#let docs = tidy.parse-module(
  read("../src/layouts/doc.typ"),
)
#tidy.show-module(
  docs,
  first-heading-level: 1,
  show-outline: false,
)

= Pages

#let docs = tidy.parse-module(
  read("../src/pages/title-block.typ"),
)
#tidy.show-module(
  docs,
  first-heading-level: 1,
  show-outline: false,
)

#let docs = tidy.parse-module(
  read("../src/pages/title-page.typ"),
)
#tidy.show-module(
  docs,
  first-heading-level: 1,
  show-outline: false,
)

= Utility Functions

This section documents utility functions used in the `HITEC` template.

These functions are defined in the `/src/utils` folder and are hidden from the end-user. They are documented here for development purposes.

#let docs = tidy.parse-module(
  read("../src/utils/convert.typ"),
)
#tidy.show-module(
  docs,
  first-heading-level: 1,
  show-outline: false,
)
