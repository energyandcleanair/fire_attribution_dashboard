library(shiny)
library(shinydashboard)

library(shinyBS)
library(leaflet)
library(plotly)

ui <- tagList(
  tags$head(
    tags$script(async = NA, src = "https://www.googletagmanager.com/gtag/js?id=G-L8H0MTR5MB"),
    tags$script(HTML("
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
      gtag('config', 'G-L8H0MTR5MB');
    "))
  ),
  navbarPage(
    title=div(img(src="crea_logo.svg",
                  height=44)),

    windowTitle="CREA - Air Quality Dashboard",
    theme = "theme.css",
    id = "nav-page",

    source(file.path("ui", "tab_cities.R"),  local = TRUE)$value,
    # source(file.path("ui", "tab_provinces.R"),  local = TRUE)$value,
    source(file.path("ui", "tab_about.R"),  local = TRUE)$value
  )
)