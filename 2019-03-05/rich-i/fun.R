library(gt)
library(emo)

# Magic fun
magic_fun <- function(data) {

  data %>%
    gt() %>%
    tab_style(
      style = cells_styles(bkgd_color = "gold"),
      locations = cells_data(
        columns = TRUE,
        rows = votes == max(votes)
      )
    ) %>%
    tab_header(
      title = md("The *Results* of the Vote!"),
      subtitle = md("At this **Meetup**, everyone has voice...")
    ) %>%
    cols_label(
      dataset_name = "Dataset",
      votes = "Votes"
    ) %>%
    tab_options(
      table.width = 550,
      table.font.size = 26,
      column_labels.font.size = 26
    ) %>%
    tab_footnote(
      footnote = md(
        paste0(
          "This dataset lost *really* badly. Kinda sad. ",
          emo::ji("sad")
        )
      ),
      locations = cells_data(
        columns = vars(dataset_name),
        rows = votes == min(votes)
      )
    )
}
