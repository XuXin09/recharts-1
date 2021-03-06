% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ePie.R
\name{ePie}
\alias{ePie}
\title{Create an HTML pie charts widget using the ECharts(version:3.2.2) library}
\usage{
ePie(dat, namevar = NULL, datavar = NULL, size = NULL, type = c("pie",
  "rose"), roseType = c("radias", "area"), theme = "default",
  title = NULL, subtitle = NULL, title.x = "center", title.y = "top",
  legend = TRUE, legend.x = "left", legend.y = "top",
  legend.orient = "horizontal", toolbox = TRUE,
  toolbox.orient = "horizontal", toolbox.x = "right", toolbox.y = "top",
  dataView = TRUE, readOnly = FALSE, mark = TRUE, dataZoom = FALSE,
  magicType = FALSE, tooltip = TRUE, tooltip.trigger = "item",
  formatter = "", axis.scale = TRUE, xlab = FALSE, ylab = FALSE,
  calculable = TRUE, showLabel = TRUE, opt = list())
}
\arguments{
\item{dat}{a data object (a data frame or a factor array)}

\item{namevar}{objects of class "formula" (or one that can be coerced 
to that class):  the pie name of the given data.frame colnames, e.g. 
\code{namevar = ~pieName};  namevar only needed for the 
data.frame data input.}

\item{datavar}{an "formula" object: Associates the value of variable
with symbol color, e.g. \code{datavar = ~valueName}.}

\item{size}{an array of html widget width and height(either numeric pixels 
or percentage could be accepted): e.g. size = c(1024, 768).}

\item{type}{an option of c("pie", "rose"), the pie type of diplay widgets.}

\item{roseType}{if the pie chart type is rose, this option will be available.
and this option input should be one element of c("radias", "area").}

\item{theme}{an object of theme name. see(\url{http://datatables.net/extensions/index}) for detail.
supported theme: \code{c("default", "vintage", "dark", "westeros", "essos", "wonderland", "walden",
"chalk", "infographic", "macarons", "roma", "shine", "purple-passion")}}

\item{title}{an overall title for the plot. you can modify title widget after chart has been
generated: Echart + eTitle(title = "your title.")}

\item{title.x, title.y}{the xy coordinates of main title, besides the excat exact pixels value, 
x accept c("left", "right", "center") and y accept c("top", "bottom", "center") as legal input. 
you can modify title widget after chart has been generated: 
\code{Echart + eTitle(title="main title", x = "left", y=10)}}

\item{legend}{logical whether the legend widget show or not, default is TRUE.
you can modify legend widget after chart has been generated, the legend position and 
legend orientation are available at present.
\code{Echart + eLegend(show = TRUE)}}

\item{legend.x, legend.y}{the xy coordinates of legend, besides the excat exact pixels value, 
x accept c("left", "right", "center") and y accept c("top", "bottom", "center") as legal input. 
you can modify legend widget after chart has been generated: 
\code{Echart + eLegend(x = "right", y="top")}}

\item{legend.orient}{an element of c("horizontal", "vertical"), default is "horizontal"
you can modify legend widget after chart has been generated: 
\code{Echart + eLegend(orient = "vertical")}}

\item{toolbox}{logical whether the toolbox widget show or not, default is TRUE.
you can modify toolbox widget after chart has been generated, the toolbox position, toolbox 
element and toolbox orientation are available at present.  
\code{Echart + eToolbox(show = TRUE)}}

\item{toolbox.orient}{an element of c("horizontal", "vertical"), default is "horizontal"
you can modify toolbox widget after chart has been generated: 
\code{Echart + eToolbox(orient = "vertical")}}

\item{toolbox.x, toolbox.y}{the xy coordinates of toolbox, besides the excat exact pixels value, 
x accept c("left", "right", "center") and y accept c("top", "bottom", "center") as legal input. 
you can modify toolbox widget after chart has been generated: 
\code{Echart + eToolbox(x = "right", y="top")}}

\item{tooltip}{logical whether the tooltip widget for front-end interactive chart
show or not. default is TRUE. you can modify tooltip widget after chart has been generated, 
the tooltip trigger and tooltip formatter is available at present.  
\code{Echart + eTooltip(show = FALSE)}}

\item{tooltip.trigger}{an element of c("axis", "item"), default is "axis" for bar chart.
"axis" option for trigger will show all the information of mouse;
"item" option for tirgger will only show the given item information of mouse.
you can modify tooltip widget after chart has been generated: 
\code{Echart + eTooltip(trigger = "axis")}}

\item{calculable}{logical whether the front-end interactive chart will 
support the drag-recalculable feature.
the size and calculable option can be setted after bar chart has been 
generated through eOption: \code{Echart + eOption(calculable = TRUE)}}

\item{showLabel}{logical whether the region name label showed on chart.
default is TRUE, e.g. \code{Echart + eOption(showLabel = TRUE)}}

\item{dataview, mark, restore, dataZoom, magicType}{logical variable whether the dataview
, mark, restore, dataZoom or magicType tool in toolbox widget show or not, 
default is TRUE. you can modify toolbox widget after chart has been generated, 
the toolbox position, toolbox element and toolbox orientation are available at present.  
\code{Echart + eToolbox(dataView = FALSE)}}

\item{tooltip.formatter}{the information formatter for tooltip widget, 
default is "<a>:<b><c>" for bar chart.
you can modify tooltip widget after chart has been generated: 
\code{Echart + eTooltip(formatter = "<a><b>:<c>")}}
}
\description{
This function creates an HTML widget to display data.frame and 
numeric array with name, using the JavaScript library ECharts3.
}
\note{
You are recommended to use lazyPlot function for interactive chart
  option set through "shiny" server.
}
\examples{
x = runif(6)
names(x) = LETTERS[1:6]
ePie(x) + eTitle("test")
testData <- head(mapTestData_chs, 5)
ePie(testData, ~stdName, ~val1)
}

