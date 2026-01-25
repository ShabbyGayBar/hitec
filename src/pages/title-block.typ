#import "../utils/convert.typ": to-str

/// Generate title block for technical report
///
/// -> content
#let title-block(
  /// Title of the report
  ///
  /// -> content | string
  title: [],
  /// Name(s) of Author(s)
  ///
  /// -> string | array
  author: "",
  /// Name of Company/Institution
  ///
  /// -> content | string
  company: [],
  /// Confidentiality Level
  ///
  /// -> content | string
  confidential: [],
  /// Date of submission
  ///
  /// -> datetime
  date: datetime.today(),
  /// Date format string
  ///
  /// -> string
  date-format: "[month repr:long] [day], [year]",
) = {
  v(54pt)
  grid(
    columns: 1,
    gutter: (
      10pt,
      20pt,
      26pt,
      18pt,
    ),
    align: center + top,
    
    strong(confidential),
    line(length: 100%, stroke: 3pt),
    grid.cell(
      align: left,
    )[
      #set text(size: 14.4pt)
      #strong(title)
    ],
    line(length: 100%, stroke: 3pt),
    grid.cell(
      align: right,
    )[
      #emph(to-str(author))\
      #company\
      #v(11pt)
      #date.display(date-format)
    ],
  )

  v(24.5pt)
}
