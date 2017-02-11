{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Sheets.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Sheets.Types.Sum where

import           Network.Google.Prelude

-- | What kind of data to paste.
data CopyPasteRequestPasteType
    = PasteNormal
      -- ^ @PASTE_NORMAL@
      -- Paste values, formulas, formats, and merges.
    | PasteValues
      -- ^ @PASTE_VALUES@
      -- Paste the values ONLY without formats, formulas, or merges.
    | PasteFormat
      -- ^ @PASTE_FORMAT@
      -- Paste the format and data validation only.
    | PasteNoBOrders
      -- ^ @PASTE_NO_BORDERS@
      -- Like PASTE_NORMAL but without borders.
    | PasteFormula
      -- ^ @PASTE_FORMULA@
      -- Paste the formulas only.
    | PasteDataValidation
      -- ^ @PASTE_DATA_VALIDATION@
      -- Paste the data validation only.
    | PasteConditionalFormatting
      -- ^ @PASTE_CONDITIONAL_FORMATTING@
      -- Paste the conditional formatting rules only.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CopyPasteRequestPasteType

instance FromHttpApiData CopyPasteRequestPasteType where
    parseQueryParam = \case
        "PASTE_NORMAL" -> Right PasteNormal
        "PASTE_VALUES" -> Right PasteValues
        "PASTE_FORMAT" -> Right PasteFormat
        "PASTE_NO_BORDERS" -> Right PasteNoBOrders
        "PASTE_FORMULA" -> Right PasteFormula
        "PASTE_DATA_VALIDATION" -> Right PasteDataValidation
        "PASTE_CONDITIONAL_FORMATTING" -> Right PasteConditionalFormatting
        x -> Left ("Unable to parse CopyPasteRequestPasteType from: " <> x)

instance ToHttpApiData CopyPasteRequestPasteType where
    toQueryParam = \case
        PasteNormal -> "PASTE_NORMAL"
        PasteValues -> "PASTE_VALUES"
        PasteFormat -> "PASTE_FORMAT"
        PasteNoBOrders -> "PASTE_NO_BORDERS"
        PasteFormula -> "PASTE_FORMULA"
        PasteDataValidation -> "PASTE_DATA_VALIDATION"
        PasteConditionalFormatting -> "PASTE_CONDITIONAL_FORMATTING"

instance FromJSON CopyPasteRequestPasteType where
    parseJSON = parseJSONText "CopyPasteRequestPasteType"

instance ToJSON CopyPasteRequestPasteType where
    toJSON = toJSONText

-- | The position of this axis.
data BasicChartAxisPosition
    = BasicChartAxisPositionUnspecified
      -- ^ @BASIC_CHART_AXIS_POSITION_UNSPECIFIED@
      -- Default value, do not use.
    | BottomAxis
      -- ^ @BOTTOM_AXIS@
      -- The axis rendered at the bottom of a chart. For most charts, this is the
      -- standard major axis. For bar charts, this is a minor axis.
    | LeftAxis
      -- ^ @LEFT_AXIS@
      -- The axis rendered at the left of a chart. For most charts, this is a
      -- minor axis. For bar charts, this is the standard major axis.
    | RightAxis
      -- ^ @RIGHT_AXIS@
      -- The axis rendered at the right of a chart. For most charts, this is a
      -- minor axis. For bar charts, this is an unusual major axis.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BasicChartAxisPosition

instance FromHttpApiData BasicChartAxisPosition where
    parseQueryParam = \case
        "BASIC_CHART_AXIS_POSITION_UNSPECIFIED" -> Right BasicChartAxisPositionUnspecified
        "BOTTOM_AXIS" -> Right BottomAxis
        "LEFT_AXIS" -> Right LeftAxis
        "RIGHT_AXIS" -> Right RightAxis
        x -> Left ("Unable to parse BasicChartAxisPosition from: " <> x)

instance ToHttpApiData BasicChartAxisPosition where
    toQueryParam = \case
        BasicChartAxisPositionUnspecified -> "BASIC_CHART_AXIS_POSITION_UNSPECIFIED"
        BottomAxis -> "BOTTOM_AXIS"
        LeftAxis -> "LEFT_AXIS"
        RightAxis -> "RIGHT_AXIS"

instance FromJSON BasicChartAxisPosition where
    parseJSON = parseJSONText "BasicChartAxisPosition"

instance ToJSON BasicChartAxisPosition where
    toJSON = toJSONText

-- | The dimension from which deleted cells will be replaced with. If ROWS,
-- existing cells will be shifted upward to replace the deleted cells. If
-- COLUMNS, existing cells will be shifted left to replace the deleted
-- cells.
data DeleteRangeRequestShiftDimension
    = DimensionUnspecified
      -- ^ @DIMENSION_UNSPECIFIED@
      -- The default value, do not use.
    | Rows
      -- ^ @ROWS@
      -- Operates on the rows of a sheet.
    | Columns
      -- ^ @COLUMNS@
      -- Operates on the columns of a sheet.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeleteRangeRequestShiftDimension

instance FromHttpApiData DeleteRangeRequestShiftDimension where
    parseQueryParam = \case
        "DIMENSION_UNSPECIFIED" -> Right DimensionUnspecified
        "ROWS" -> Right Rows
        "COLUMNS" -> Right Columns
        x -> Left ("Unable to parse DeleteRangeRequestShiftDimension from: " <> x)

instance ToHttpApiData DeleteRangeRequestShiftDimension where
    toQueryParam = \case
        DimensionUnspecified -> "DIMENSION_UNSPECIFIED"
        Rows -> "ROWS"
        Columns -> "COLUMNS"

instance FromJSON DeleteRangeRequestShiftDimension where
    parseJSON = parseJSONText "DeleteRangeRequestShiftDimension"

instance ToJSON DeleteRangeRequestShiftDimension where
    toJSON = toJSONText

-- | The minor axis that will specify the range of values for this series.
-- For example, if charting stocks over time, the \"Volume\" series may
-- want to be pinned to the right with the prices pinned to the left,
-- because the scale of trading volume is different than the scale of
-- prices. It is an error to specify an axis that isn\'t a valid minor axis
-- for the chart\'s type.
data BasicChartSeriesTargetAxis
    = BCSTABasicChartAxisPositionUnspecified
      -- ^ @BASIC_CHART_AXIS_POSITION_UNSPECIFIED@
      -- Default value, do not use.
    | BCSTABottomAxis
      -- ^ @BOTTOM_AXIS@
      -- The axis rendered at the bottom of a chart. For most charts, this is the
      -- standard major axis. For bar charts, this is a minor axis.
    | BCSTALeftAxis
      -- ^ @LEFT_AXIS@
      -- The axis rendered at the left of a chart. For most charts, this is a
      -- minor axis. For bar charts, this is the standard major axis.
    | BCSTARightAxis
      -- ^ @RIGHT_AXIS@
      -- The axis rendered at the right of a chart. For most charts, this is a
      -- minor axis. For bar charts, this is an unusual major axis.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BasicChartSeriesTargetAxis

instance FromHttpApiData BasicChartSeriesTargetAxis where
    parseQueryParam = \case
        "BASIC_CHART_AXIS_POSITION_UNSPECIFIED" -> Right BCSTABasicChartAxisPositionUnspecified
        "BOTTOM_AXIS" -> Right BCSTABottomAxis
        "LEFT_AXIS" -> Right BCSTALeftAxis
        "RIGHT_AXIS" -> Right BCSTARightAxis
        x -> Left ("Unable to parse BasicChartSeriesTargetAxis from: " <> x)

instance ToHttpApiData BasicChartSeriesTargetAxis where
    toQueryParam = \case
        BCSTABasicChartAxisPositionUnspecified -> "BASIC_CHART_AXIS_POSITION_UNSPECIFIED"
        BCSTABottomAxis -> "BOTTOM_AXIS"
        BCSTALeftAxis -> "LEFT_AXIS"
        BCSTARightAxis -> "RIGHT_AXIS"

instance FromJSON BasicChartSeriesTargetAxis where
    parseJSON = parseJSONText "BasicChartSeriesTargetAxis"

instance ToJSON BasicChartSeriesTargetAxis where
    toJSON = toJSONText

-- | Determines how dates, times, and durations in the response should be
-- rendered. This is ignored if response_value_render_option is
-- FORMATTED_VALUE. The default dateTime render option is
-- [DateTimeRenderOption.SERIAL_NUMBER].
data BatchUpdateValuesRequestResponseDateTimeRenderOption
    = SerialNumber
      -- ^ @SERIAL_NUMBER@
      -- Instructs date, time, datetime, and duration fields to be output as
      -- doubles in \"serial number\" format, as popularized by Lotus 1-2-3. Days
      -- are counted from December 31st 1899 and are incremented by 1, and times
      -- are fractions of a day. For example, January 1st 1900 at noon would be
      -- 1.5, 1 because it\'s 1 day offset from December 31st 1899, and .5
      -- because noon is half a day. February 1st 1900 at 3pm would be 32.625.
      -- This correctly treats the year 1900 as not a leap year.
    | FormattedString
      -- ^ @FORMATTED_STRING@
      -- Instructs date, time, datetime, and duration fields to be output as
      -- strings in their given number format (which is dependent on the
      -- spreadsheet locale).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BatchUpdateValuesRequestResponseDateTimeRenderOption

instance FromHttpApiData BatchUpdateValuesRequestResponseDateTimeRenderOption where
    parseQueryParam = \case
        "SERIAL_NUMBER" -> Right SerialNumber
        "FORMATTED_STRING" -> Right FormattedString
        x -> Left ("Unable to parse BatchUpdateValuesRequestResponseDateTimeRenderOption from: " <> x)

instance ToHttpApiData BatchUpdateValuesRequestResponseDateTimeRenderOption where
    toQueryParam = \case
        SerialNumber -> "SERIAL_NUMBER"
        FormattedString -> "FORMATTED_STRING"

instance FromJSON BatchUpdateValuesRequestResponseDateTimeRenderOption where
    parseJSON = parseJSONText "BatchUpdateValuesRequestResponseDateTimeRenderOption"

instance ToJSON BatchUpdateValuesRequestResponseDateTimeRenderOption where
    toJSON = toJSONText

-- | Whether rows or columns should be appended.
data AppendDimensionRequestDimension
    = ADRDDimensionUnspecified
      -- ^ @DIMENSION_UNSPECIFIED@
      -- The default value, do not use.
    | ADRDRows
      -- ^ @ROWS@
      -- Operates on the rows of a sheet.
    | ADRDColumns
      -- ^ @COLUMNS@
      -- Operates on the columns of a sheet.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AppendDimensionRequestDimension

instance FromHttpApiData AppendDimensionRequestDimension where
    parseQueryParam = \case
        "DIMENSION_UNSPECIFIED" -> Right ADRDDimensionUnspecified
        "ROWS" -> Right ADRDRows
        "COLUMNS" -> Right ADRDColumns
        x -> Left ("Unable to parse AppendDimensionRequestDimension from: " <> x)

instance ToHttpApiData AppendDimensionRequestDimension where
    toQueryParam = \case
        ADRDDimensionUnspecified -> "DIMENSION_UNSPECIFIED"
        ADRDRows -> "ROWS"
        ADRDColumns -> "COLUMNS"

instance FromJSON AppendDimensionRequestDimension where
    parseJSON = parseJSONText "AppendDimensionRequestDimension"

instance ToJSON AppendDimensionRequestDimension where
    toJSON = toJSONText

-- | The dimension of the span.
data DimensionRangeDimension
    = DRDDimensionUnspecified
      -- ^ @DIMENSION_UNSPECIFIED@
      -- The default value, do not use.
    | DRDRows
      -- ^ @ROWS@
      -- Operates on the rows of a sheet.
    | DRDColumns
      -- ^ @COLUMNS@
      -- Operates on the columns of a sheet.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DimensionRangeDimension

instance FromHttpApiData DimensionRangeDimension where
    parseQueryParam = \case
        "DIMENSION_UNSPECIFIED" -> Right DRDDimensionUnspecified
        "ROWS" -> Right DRDRows
        "COLUMNS" -> Right DRDColumns
        x -> Left ("Unable to parse DimensionRangeDimension from: " <> x)

instance ToHttpApiData DimensionRangeDimension where
    toQueryParam = \case
        DRDDimensionUnspecified -> "DIMENSION_UNSPECIFIED"
        DRDRows -> "ROWS"
        DRDColumns -> "COLUMNS"

instance FromJSON DimensionRangeDimension where
    parseJSON = parseJSONText "DimensionRangeDimension"

instance ToJSON DimensionRangeDimension where
    toJSON = toJSONText

-- | The dimension that data should be filled into.
data SourceAndDestinationDimension
    = SADDDimensionUnspecified
      -- ^ @DIMENSION_UNSPECIFIED@
      -- The default value, do not use.
    | SADDRows
      -- ^ @ROWS@
      -- Operates on the rows of a sheet.
    | SADDColumns
      -- ^ @COLUMNS@
      -- Operates on the columns of a sheet.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SourceAndDestinationDimension

instance FromHttpApiData SourceAndDestinationDimension where
    parseQueryParam = \case
        "DIMENSION_UNSPECIFIED" -> Right SADDDimensionUnspecified
        "ROWS" -> Right SADDRows
        "COLUMNS" -> Right SADDColumns
        x -> Left ("Unable to parse SourceAndDestinationDimension from: " <> x)

instance ToHttpApiData SourceAndDestinationDimension where
    toQueryParam = \case
        SADDDimensionUnspecified -> "DIMENSION_UNSPECIFIED"
        SADDRows -> "ROWS"
        SADDColumns -> "COLUMNS"

instance FromJSON SourceAndDestinationDimension where
    parseJSON = parseJSONText "SourceAndDestinationDimension"

instance ToJSON SourceAndDestinationDimension where
    toJSON = toJSONText

-- | The wrap strategy for the value in the cell.
data CellFormatWrapStrategy
    = WrapStrategyUnspecified
      -- ^ @WRAP_STRATEGY_UNSPECIFIED@
      -- The default value, do not use.
    | OverflowCell
      -- ^ @OVERFLOW_CELL@
      -- Lines that are longer than the cell width will be written in the next
      -- cell over, so long as that cell is empty. If the next cell over is
      -- non-empty, this behaves the same as CLIP. The text will never wrap to
      -- the next line unless the user manually inserts a new line. Example: |
      -- First sentence. | | Manual newline that is very long. \<- Text continues
      -- into next cell | Next newline. |
    | LegacyWrap
      -- ^ @LEGACY_WRAP@
      -- This wrap strategy represents the old Google Sheets wrap strategy where
      -- words that are longer than a line are clipped rather than broken. This
      -- strategy is not supported on all platforms and is being phased out.
      -- Example: | Cell has a | | loooooooooo| \<- Word is clipped. | word. |
    | Clip
      -- ^ @CLIP@
      -- Lines that are longer than the cell width will be clipped. The text will
      -- never wrap to the next line unless the user manually inserts a new line.
      -- Example: | First sentence. | | Manual newline t| \<- Text is clipped |
      -- Next newline. |
    | Wrap
      -- ^ @WRAP@
      -- Words that are longer than a line are wrapped at the character level
      -- rather than clipped. Example: | Cell has a | | loooooooooo| \<- Word is
      -- broken. | ong word. |
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CellFormatWrapStrategy

instance FromHttpApiData CellFormatWrapStrategy where
    parseQueryParam = \case
        "WRAP_STRATEGY_UNSPECIFIED" -> Right WrapStrategyUnspecified
        "OVERFLOW_CELL" -> Right OverflowCell
        "LEGACY_WRAP" -> Right LegacyWrap
        "CLIP" -> Right Clip
        "WRAP" -> Right Wrap
        x -> Left ("Unable to parse CellFormatWrapStrategy from: " <> x)

instance ToHttpApiData CellFormatWrapStrategy where
    toQueryParam = \case
        WrapStrategyUnspecified -> "WRAP_STRATEGY_UNSPECIFIED"
        OverflowCell -> "OVERFLOW_CELL"
        LegacyWrap -> "LEGACY_WRAP"
        Clip -> "CLIP"
        Wrap -> "WRAP"

instance FromJSON CellFormatWrapStrategy where
    parseJSON = parseJSONText "CellFormatWrapStrategy"

instance ToJSON CellFormatWrapStrategy where
    toJSON = toJSONText

-- | How the input data should be interpreted.
data BatchUpdateValuesRequestValueInputOption
    = InputValueOptionUnspecified
      -- ^ @INPUT_VALUE_OPTION_UNSPECIFIED@
      -- Default input value. This value must not be used.
    | Raw
      -- ^ @RAW@
      -- The values the user has entered will not be parsed and will be stored
      -- as-is.
    | UserEntered
      -- ^ @USER_ENTERED@
      -- The values will be parsed as if the user typed them into the UI. Numbers
      -- will stay as numbers, but strings may be converted to numbers, dates,
      -- etc. following the same rules that are applied when entering text into a
      -- cell via the Google Sheets UI.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BatchUpdateValuesRequestValueInputOption

instance FromHttpApiData BatchUpdateValuesRequestValueInputOption where
    parseQueryParam = \case
        "INPUT_VALUE_OPTION_UNSPECIFIED" -> Right InputValueOptionUnspecified
        "RAW" -> Right Raw
        "USER_ENTERED" -> Right UserEntered
        x -> Left ("Unable to parse BatchUpdateValuesRequestValueInputOption from: " <> x)

instance ToHttpApiData BatchUpdateValuesRequestValueInputOption where
    toQueryParam = \case
        InputValueOptionUnspecified -> "INPUT_VALUE_OPTION_UNSPECIFIED"
        Raw -> "RAW"
        UserEntered -> "USER_ENTERED"

instance FromJSON BatchUpdateValuesRequestValueInputOption where
    parseJSON = parseJSONText "BatchUpdateValuesRequestValueInputOption"

instance ToJSON BatchUpdateValuesRequestValueInputOption where
    toJSON = toJSONText

-- | Determines how values in the response should be rendered. The default
-- render option is ValueRenderOption.FORMATTED_VALUE.
data BatchUpdateValuesRequestResponseValueRenderOption
    = FormattedValue
      -- ^ @FORMATTED_VALUE@
      -- Values will be calculated & formatted in the reply according to the
      -- cell\'s formatting. Formatting is based on the spreadsheet\'s locale,
      -- not the requesting user\'s locale. For example, if \`A1\` is \`1.23\`
      -- and \`A2\` is \`=A1\` and formatted as currency, then \`A2\` would
      -- return \`\"$1.23\"\`.
    | UnformattedValue
      -- ^ @UNFORMATTED_VALUE@
      -- Values will be calculated, but not formatted in the reply. For example,
      -- if \`A1\` is \`1.23\` and \`A2\` is \`=A1\` and formatted as currency,
      -- then \`A2\` would return the number \`1.23\`.
    | Formula
      -- ^ @FORMULA@
      -- Values will not be calculated. The reply will include the formulas. For
      -- example, if \`A1\` is \`1.23\` and \`A2\` is \`=A1\` and formatted as
      -- currency, then A2 would return \`\"=A1\"\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BatchUpdateValuesRequestResponseValueRenderOption

instance FromHttpApiData BatchUpdateValuesRequestResponseValueRenderOption where
    parseQueryParam = \case
        "FORMATTED_VALUE" -> Right FormattedValue
        "UNFORMATTED_VALUE" -> Right UnformattedValue
        "FORMULA" -> Right Formula
        x -> Left ("Unable to parse BatchUpdateValuesRequestResponseValueRenderOption from: " <> x)

instance ToHttpApiData BatchUpdateValuesRequestResponseValueRenderOption where
    toQueryParam = \case
        FormattedValue -> "FORMATTED_VALUE"
        UnformattedValue -> "UNFORMATTED_VALUE"
        Formula -> "FORMULA"

instance FromJSON BatchUpdateValuesRequestResponseValueRenderOption where
    parseJSON = parseJSONText "BatchUpdateValuesRequestResponseValueRenderOption"

instance ToJSON BatchUpdateValuesRequestResponseValueRenderOption where
    toJSON = toJSONText

-- | Where the legend of the pie chart should be drawn.
data PieChartSpecLegendPosition
    = PieChartLegendPositionUnspecified
      -- ^ @PIE_CHART_LEGEND_POSITION_UNSPECIFIED@
      -- Default value, do not use.
    | BottomLegend
      -- ^ @BOTTOM_LEGEND@
      -- The legend is rendered on the bottom of the chart.
    | LeftLegend
      -- ^ @LEFT_LEGEND@
      -- The legend is rendered on the left of the chart.
    | RightLegend
      -- ^ @RIGHT_LEGEND@
      -- The legend is rendered on the right of the chart.
    | TopLegend
      -- ^ @TOP_LEGEND@
      -- The legend is rendered on the top of the chart.
    | NoLegend
      -- ^ @NO_LEGEND@
      -- No legend is rendered.
    | LabeledLegend
      -- ^ @LABELED_LEGEND@
      -- Each pie slice has a label attached to it.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PieChartSpecLegendPosition

instance FromHttpApiData PieChartSpecLegendPosition where
    parseQueryParam = \case
        "PIE_CHART_LEGEND_POSITION_UNSPECIFIED" -> Right PieChartLegendPositionUnspecified
        "BOTTOM_LEGEND" -> Right BottomLegend
        "LEFT_LEGEND" -> Right LeftLegend
        "RIGHT_LEGEND" -> Right RightLegend
        "TOP_LEGEND" -> Right TopLegend
        "NO_LEGEND" -> Right NoLegend
        "LABELED_LEGEND" -> Right LabeledLegend
        x -> Left ("Unable to parse PieChartSpecLegendPosition from: " <> x)

instance ToHttpApiData PieChartSpecLegendPosition where
    toQueryParam = \case
        PieChartLegendPositionUnspecified -> "PIE_CHART_LEGEND_POSITION_UNSPECIFIED"
        BottomLegend -> "BOTTOM_LEGEND"
        LeftLegend -> "LEFT_LEGEND"
        RightLegend -> "RIGHT_LEGEND"
        TopLegend -> "TOP_LEGEND"
        NoLegend -> "NO_LEGEND"
        LabeledLegend -> "LABELED_LEGEND"

instance FromJSON PieChartSpecLegendPosition where
    parseJSON = parseJSONText "PieChartSpecLegendPosition"

instance ToJSON PieChartSpecLegendPosition where
    toJSON = toJSONText

-- | The vertical alignment of the value in the cell.
data CellFormatVerticalAlignment
    = VerticalAlignUnspecified
      -- ^ @VERTICAL_ALIGN_UNSPECIFIED@
      -- The vertical alignment is not specified. Do not use this.
    | Top
      -- ^ @TOP@
      -- The text is explicitly aligned to the top of the cell.
    | Middle
      -- ^ @MIDDLE@
      -- The text is explicitly aligned to the middle of the cell.
    | Bottom
      -- ^ @BOTTOM@
      -- The text is explicitly aligned to the bottom of the cell.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CellFormatVerticalAlignment

instance FromHttpApiData CellFormatVerticalAlignment where
    parseQueryParam = \case
        "VERTICAL_ALIGN_UNSPECIFIED" -> Right VerticalAlignUnspecified
        "TOP" -> Right Top
        "MIDDLE" -> Right Middle
        "BOTTOM" -> Right Bottom
        x -> Left ("Unable to parse CellFormatVerticalAlignment from: " <> x)

instance ToHttpApiData CellFormatVerticalAlignment where
    toQueryParam = \case
        VerticalAlignUnspecified -> "VERTICAL_ALIGN_UNSPECIFIED"
        Top -> "TOP"
        Middle -> "MIDDLE"
        Bottom -> "BOTTOM"

instance FromJSON CellFormatVerticalAlignment where
    parseJSON = parseJSONText "CellFormatVerticalAlignment"

instance ToJSON CellFormatVerticalAlignment where
    toJSON = toJSONText

-- | The type of the number format. When writing, this field must be set.
data NumberFormatType
    = NumberFormatTypeUnspecified
      -- ^ @NUMBER_FORMAT_TYPE_UNSPECIFIED@
      -- The number format is not specified and is based on the contents of the
      -- cell. Do not explicitly use this.
    | Text
      -- ^ @TEXT@
      -- Text formatting, e.g \`1000.12\`
    | Number
      -- ^ @NUMBER@
      -- Number formatting, e.g, \`1,000.12\`
    | Percent
      -- ^ @PERCENT@
      -- Percent formatting, e.g \`10.12%\`
    | Currency
      -- ^ @CURRENCY@
      -- Currency formatting, e.g \`$1,000.12\`
    | Date
      -- ^ @DATE@
      -- Date formatting, e.g \`9\/26\/2008\`
    | Time
      -- ^ @TIME@
      -- Time formatting, e.g \`3:59:00 PM\`
    | DateTime
      -- ^ @DATE_TIME@
      -- Date+Time formatting, e.g \`9\/26\/08 15:59:00\`
    | Scientific
      -- ^ @SCIENTIFIC@
      -- Scientific number formatting, e.g \`1.01E+03\`
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable NumberFormatType

instance FromHttpApiData NumberFormatType where
    parseQueryParam = \case
        "NUMBER_FORMAT_TYPE_UNSPECIFIED" -> Right NumberFormatTypeUnspecified
        "TEXT" -> Right Text
        "NUMBER" -> Right Number
        "PERCENT" -> Right Percent
        "CURRENCY" -> Right Currency
        "DATE" -> Right Date
        "TIME" -> Right Time
        "DATE_TIME" -> Right DateTime
        "SCIENTIFIC" -> Right Scientific
        x -> Left ("Unable to parse NumberFormatType from: " <> x)

instance ToHttpApiData NumberFormatType where
    toQueryParam = \case
        NumberFormatTypeUnspecified -> "NUMBER_FORMAT_TYPE_UNSPECIFIED"
        Text -> "TEXT"
        Number -> "NUMBER"
        Percent -> "PERCENT"
        Currency -> "CURRENCY"
        Date -> "DATE"
        Time -> "TIME"
        DateTime -> "DATE_TIME"
        Scientific -> "SCIENTIFIC"

instance FromJSON NumberFormatType where
    parseJSON = parseJSONText "NumberFormatType"

instance ToJSON NumberFormatType where
    toJSON = toJSONText

-- | A relative date (based on the current date). Valid only if the type is
-- DATE_BEFORE, DATE_AFTER, DATE_ON_OR_BEFORE or DATE_ON_OR_AFTER. Relative
-- dates are not supported in data validation. They are supported only in
-- conditional formatting and conditional filters.
data ConditionValueRelativeDate
    = RelativeDateUnspecified
      -- ^ @RELATIVE_DATE_UNSPECIFIED@
      -- Default value, do not use.
    | PastYear
      -- ^ @PAST_YEAR@
      -- The value is one year before today.
    | PastMonth
      -- ^ @PAST_MONTH@
      -- The value is one month before today.
    | PastWeek
      -- ^ @PAST_WEEK@
      -- The value is one week before today.
    | Yesterday
      -- ^ @YESTERDAY@
      -- The value is yesterday.
    | Today
      -- ^ @TODAY@
      -- The value is today.
    | Tomorrow
      -- ^ @TOMORROW@
      -- The value is tomorrow.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ConditionValueRelativeDate

instance FromHttpApiData ConditionValueRelativeDate where
    parseQueryParam = \case
        "RELATIVE_DATE_UNSPECIFIED" -> Right RelativeDateUnspecified
        "PAST_YEAR" -> Right PastYear
        "PAST_MONTH" -> Right PastMonth
        "PAST_WEEK" -> Right PastWeek
        "YESTERDAY" -> Right Yesterday
        "TODAY" -> Right Today
        "TOMORROW" -> Right Tomorrow
        x -> Left ("Unable to parse ConditionValueRelativeDate from: " <> x)

instance ToHttpApiData ConditionValueRelativeDate where
    toQueryParam = \case
        RelativeDateUnspecified -> "RELATIVE_DATE_UNSPECIFIED"
        PastYear -> "PAST_YEAR"
        PastMonth -> "PAST_MONTH"
        PastWeek -> "PAST_WEEK"
        Yesterday -> "YESTERDAY"
        Today -> "TODAY"
        Tomorrow -> "TOMORROW"

instance FromJSON ConditionValueRelativeDate where
    parseJSON = parseJSONText "ConditionValueRelativeDate"

instance ToJSON ConditionValueRelativeDate where
    toJSON = toJSONText

-- | The order data should be sorted.
data SortSpecSortOrder
    = SortOrderUnspecified
      -- ^ @SORT_ORDER_UNSPECIFIED@
      -- Default value, do not use this.
    | Ascending
      -- ^ @ASCENDING@
      -- Sort ascending.
    | Descending
      -- ^ @DESCENDING@
      -- Sort descending.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SortSpecSortOrder

instance FromHttpApiData SortSpecSortOrder where
    parseQueryParam = \case
        "SORT_ORDER_UNSPECIFIED" -> Right SortOrderUnspecified
        "ASCENDING" -> Right Ascending
        "DESCENDING" -> Right Descending
        x -> Left ("Unable to parse SortSpecSortOrder from: " <> x)

instance ToHttpApiData SortSpecSortOrder where
    toQueryParam = \case
        SortOrderUnspecified -> "SORT_ORDER_UNSPECIFIED"
        Ascending -> "ASCENDING"
        Descending -> "DESCENDING"

instance FromJSON SortSpecSortOrder where
    parseJSON = parseJSONText "SortSpecSortOrder"

instance ToJSON SortSpecSortOrder where
    toJSON = toJSONText

-- | A function to summarize the value. If formula is set, the only supported
-- values are SUM and CUSTOM. If sourceColumnOffset is set, then \`CUSTOM\`
-- is not supported.
data PivotValueSummarizeFunction
    = PivotStandardValueFunctionUnspecified
      -- ^ @PIVOT_STANDARD_VALUE_FUNCTION_UNSPECIFIED@
      -- The default, do not use.
    | Sum
      -- ^ @SUM@
      -- Corresponds to the \`SUM\` function.
    | Counta
      -- ^ @COUNTA@
      -- Corresponds to the \`COUNTA\` function.
    | Count
      -- ^ @COUNT@
      -- Corresponds to the \`COUNT\` function.
    | Countunique
      -- ^ @COUNTUNIQUE@
      -- Corresponds to the \`COUNTUNIQUE\` function.
    | Average
      -- ^ @AVERAGE@
      -- Corresponds to the \`AVERAGE\` function.
    | Max
      -- ^ @MAX@
      -- Corresponds to the \`MAX\` function.
    | Min
      -- ^ @MIN@
      -- Corresponds to the \`MIN\` function.
    | Median
      -- ^ @MEDIAN@
      -- Corresponds to the \`MEDIAN\` function.
    | Product
      -- ^ @PRODUCT@
      -- Corresponds to the \`PRODUCT\` function.
    | Stdev
      -- ^ @STDEV@
      -- Corresponds to the \`STDEV\` function.
    | Stdevp
      -- ^ @STDEVP@
      -- Corresponds to the \`STDEVP\` function.
    | Var
      -- ^ @VAR@
      -- Corresponds to the \`VAR\` function.
    | Varp
      -- ^ @VARP@
      -- Corresponds to the \`VARP\` function.
    | Custom
      -- ^ @CUSTOM@
      -- Indicates the formula should be used as-is. Only valid if
      -- PivotValue.formula was set.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PivotValueSummarizeFunction

instance FromHttpApiData PivotValueSummarizeFunction where
    parseQueryParam = \case
        "PIVOT_STANDARD_VALUE_FUNCTION_UNSPECIFIED" -> Right PivotStandardValueFunctionUnspecified
        "SUM" -> Right Sum
        "COUNTA" -> Right Counta
        "COUNT" -> Right Count
        "COUNTUNIQUE" -> Right Countunique
        "AVERAGE" -> Right Average
        "MAX" -> Right Max
        "MIN" -> Right Min
        "MEDIAN" -> Right Median
        "PRODUCT" -> Right Product
        "STDEV" -> Right Stdev
        "STDEVP" -> Right Stdevp
        "VAR" -> Right Var
        "VARP" -> Right Varp
        "CUSTOM" -> Right Custom
        x -> Left ("Unable to parse PivotValueSummarizeFunction from: " <> x)

instance ToHttpApiData PivotValueSummarizeFunction where
    toQueryParam = \case
        PivotStandardValueFunctionUnspecified -> "PIVOT_STANDARD_VALUE_FUNCTION_UNSPECIFIED"
        Sum -> "SUM"
        Counta -> "COUNTA"
        Count -> "COUNT"
        Countunique -> "COUNTUNIQUE"
        Average -> "AVERAGE"
        Max -> "MAX"
        Min -> "MIN"
        Median -> "MEDIAN"
        Product -> "PRODUCT"
        Stdev -> "STDEV"
        Stdevp -> "STDEVP"
        Var -> "VAR"
        Varp -> "VARP"
        Custom -> "CUSTOM"

instance FromJSON PivotValueSummarizeFunction where
    parseJSON = parseJSONText "PivotValueSummarizeFunction"

instance ToJSON PivotValueSummarizeFunction where
    toJSON = toJSONText

-- | How a hyperlink, if it exists, should be displayed in the cell.
data CellFormatHyperlinkDisplayType
    = HyperlinkDisplayTypeUnspecified
      -- ^ @HYPERLINK_DISPLAY_TYPE_UNSPECIFIED@
      -- The default value: the hyperlink is rendered. Do not use this.
    | Linked
      -- ^ @LINKED@
      -- A hyperlink should be explicitly rendered.
    | PlainText
      -- ^ @PLAIN_TEXT@
      -- A hyperlink should not be rendered.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CellFormatHyperlinkDisplayType

instance FromHttpApiData CellFormatHyperlinkDisplayType where
    parseQueryParam = \case
        "HYPERLINK_DISPLAY_TYPE_UNSPECIFIED" -> Right HyperlinkDisplayTypeUnspecified
        "LINKED" -> Right Linked
        "PLAIN_TEXT" -> Right PlainText
        x -> Left ("Unable to parse CellFormatHyperlinkDisplayType from: " <> x)

instance ToHttpApiData CellFormatHyperlinkDisplayType where
    toQueryParam = \case
        HyperlinkDisplayTypeUnspecified -> "HYPERLINK_DISPLAY_TYPE_UNSPECIFIED"
        Linked -> "LINKED"
        PlainText -> "PLAIN_TEXT"

instance FromJSON CellFormatHyperlinkDisplayType where
    parseJSON = parseJSONText "CellFormatHyperlinkDisplayType"

instance ToJSON CellFormatHyperlinkDisplayType where
    toJSON = toJSONText

-- | The type of sheet. Defaults to GRID. This field cannot be changed once
-- set.
data SheetPropertiesSheetType
    = SheetTypeUnspecified
      -- ^ @SHEET_TYPE_UNSPECIFIED@
      -- Default value, do not use.
    | Grid
      -- ^ @GRID@
      -- The sheet is a grid.
    | Object
      -- ^ @OBJECT@
      -- The sheet has no grid and instead has an object like a chart or image.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SheetPropertiesSheetType

instance FromHttpApiData SheetPropertiesSheetType where
    parseQueryParam = \case
        "SHEET_TYPE_UNSPECIFIED" -> Right SheetTypeUnspecified
        "GRID" -> Right Grid
        "OBJECT" -> Right Object
        x -> Left ("Unable to parse SheetPropertiesSheetType from: " <> x)

instance ToHttpApiData SheetPropertiesSheetType where
    toQueryParam = \case
        SheetTypeUnspecified -> "SHEET_TYPE_UNSPECIFIED"
        Grid -> "GRID"
        Object -> "OBJECT"

instance FromJSON SheetPropertiesSheetType where
    parseJSON = parseJSONText "SheetPropertiesSheetType"

instance ToJSON SheetPropertiesSheetType where
    toJSON = toJSONText

-- | How the cells should be merged.
data MergeCellsRequestMergeType
    = MergeAll
      -- ^ @MERGE_ALL@
      -- Create a single merge from the range
    | MergeColumns
      -- ^ @MERGE_COLUMNS@
      -- Create a merge for each column in the range
    | MergeRows
      -- ^ @MERGE_ROWS@
      -- Create a merge for each row in the range
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable MergeCellsRequestMergeType

instance FromHttpApiData MergeCellsRequestMergeType where
    parseQueryParam = \case
        "MERGE_ALL" -> Right MergeAll
        "MERGE_COLUMNS" -> Right MergeColumns
        "MERGE_ROWS" -> Right MergeRows
        x -> Left ("Unable to parse MergeCellsRequestMergeType from: " <> x)

instance ToHttpApiData MergeCellsRequestMergeType where
    toQueryParam = \case
        MergeAll -> "MERGE_ALL"
        MergeColumns -> "MERGE_COLUMNS"
        MergeRows -> "MERGE_ROWS"

instance FromJSON MergeCellsRequestMergeType where
    parseJSON = parseJSONText "MergeCellsRequestMergeType"

instance ToJSON MergeCellsRequestMergeType where
    toJSON = toJSONText

-- | The horizontal alignment of the value in the cell.
data CellFormatHorizontalAlignment
    = HorizontalAlignUnspecified
      -- ^ @HORIZONTAL_ALIGN_UNSPECIFIED@
      -- The horizontal alignment is not specified. Do not use this.
    | Left'
      -- ^ @LEFT@
      -- The text is explicitly aligned to the left of the cell.
    | Center
      -- ^ @CENTER@
      -- The text is explicitly aligned to the center of the cell.
    | Right'
      -- ^ @RIGHT@
      -- The text is explicitly aligned to the right of the cell.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CellFormatHorizontalAlignment

instance FromHttpApiData CellFormatHorizontalAlignment where
    parseQueryParam = \case
        "HORIZONTAL_ALIGN_UNSPECIFIED" -> Right HorizontalAlignUnspecified
        "LEFT" -> Right Left'
        "CENTER" -> Right Center
        "RIGHT" -> Right Right'
        x -> Left ("Unable to parse CellFormatHorizontalAlignment from: " <> x)

instance ToHttpApiData CellFormatHorizontalAlignment where
    toQueryParam = \case
        HorizontalAlignUnspecified -> "HORIZONTAL_ALIGN_UNSPECIFIED"
        Left' -> "LEFT"
        Center -> "CENTER"
        Right' -> "RIGHT"

instance FromJSON CellFormatHorizontalAlignment where
    parseJSON = parseJSONText "CellFormatHorizontalAlignment"

instance ToJSON CellFormatHorizontalAlignment where
    toJSON = toJSONText

-- | The type of condition.
data BooleanConditionType
    = ConditionTypeUnspecified
      -- ^ @CONDITION_TYPE_UNSPECIFIED@
      -- The default value, do not use.
    | NumberGreater
      -- ^ @NUMBER_GREATER@
      -- The cell\'s value must be greater than the condition\'s value. Supported
      -- by data validation, conditional formatting and filters. Requires a
      -- single ConditionValue.
    | NumberGreaterThanEQ
      -- ^ @NUMBER_GREATER_THAN_EQ@
      -- The cell\'s value must be greater than or equal to the condition\'s
      -- value. Supported by data validation, conditional formatting and filters.
      -- Requires a single ConditionValue.
    | NumberLess
      -- ^ @NUMBER_LESS@
      -- The cell\'s value must be less than the condition\'s value. Supported by
      -- data validation, conditional formatting and filters. Requires a single
      -- ConditionValue.
    | NumberLessThanEQ
      -- ^ @NUMBER_LESS_THAN_EQ@
      -- The cell\'s value must be less than or equal to the condition\'s value.
      -- Supported by data validation, conditional formatting and filters.
      -- Requires a single ConditionValue.
    | NumberEQ
      -- ^ @NUMBER_EQ@
      -- The cell\'s value must be equal to the condition\'s value. Supported by
      -- data validation, conditional formatting and filters. Requires a single
      -- ConditionValue.
    | NumberNotEQ
      -- ^ @NUMBER_NOT_EQ@
      -- The cell\'s value must be not equal to the condition\'s value. Supported
      -- by data validation, conditional formatting and filters. Requires a
      -- single ConditionValue.
    | NumberBetween
      -- ^ @NUMBER_BETWEEN@
      -- The cell\'s value must be between the two condition values. Supported by
      -- data validation, conditional formatting and filters. Requires exactly
      -- two ConditionValues.
    | NumberNotBetween
      -- ^ @NUMBER_NOT_BETWEEN@
      -- The cell\'s value must not be between the two condition values.
      -- Supported by data validation, conditional formatting and filters.
      -- Requires exactly two ConditionValues.
    | TextContains
      -- ^ @TEXT_CONTAINS@
      -- The cell\'s value must contain the condition\'s value. Supported by data
      -- validation, conditional formatting and filters. Requires a single
      -- ConditionValue.
    | TextNotContains
      -- ^ @TEXT_NOT_CONTAINS@
      -- The cell\'s value must not contain the condition\'s value. Supported by
      -- data validation, conditional formatting and filters. Requires a single
      -- ConditionValue.
    | TextStartsWith
      -- ^ @TEXT_STARTS_WITH@
      -- The cell\'s value must start with the condition\'s value. Supported by
      -- conditional formatting and filters. Requires a single ConditionValue.
    | TextEndsWith
      -- ^ @TEXT_ENDS_WITH@
      -- The cell\'s value must end with the condition\'s value. Supported by
      -- conditional formatting and filters. Requires a single ConditionValue.
    | TextEQ
      -- ^ @TEXT_EQ@
      -- The cell\'s value must be exactly the condition\'s value. Supported by
      -- data validation, conditional formatting and filters. Requires a single
      -- ConditionValue.
    | TextIsEmail
      -- ^ @TEXT_IS_EMAIL@
      -- The cell\'s value must be a valid email address. Supported by data
      -- validation. Requires no ConditionValues.
    | TextIsURL
      -- ^ @TEXT_IS_URL@
      -- The cell\'s value must be a valid URL. Supported by data validation.
      -- Requires no ConditionValues.
    | DateEQ
      -- ^ @DATE_EQ@
      -- The cell\'s value must be the same date as the condition\'s value.
      -- Supported by data validation, conditional formatting and filters.
      -- Requires a single ConditionValue.
    | DateBefore
      -- ^ @DATE_BEFORE@
      -- The cell\'s value must be before the date of the condition\'s value.
      -- Supported by data validation, conditional formatting and filters.
      -- Requires a single ConditionValue that may be a relative date.
    | DateAfter
      -- ^ @DATE_AFTER@
      -- The cell\'s value must be after the date of the condition\'s value.
      -- Supported by data validation, conditional formatting and filters.
      -- Requires a single ConditionValue that may be a relative date.
    | DateOnOrBefore
      -- ^ @DATE_ON_OR_BEFORE@
      -- The cell\'s value must be on or before the date of the condition\'s
      -- value. Supported by data validation. Requires a single ConditionValue
      -- that may be a relative date.
    | DateOnOrAfter
      -- ^ @DATE_ON_OR_AFTER@
      -- The cell\'s value must be on or after the date of the condition\'s
      -- value. Supported by data validation. Requires a single ConditionValue
      -- that may be a relative date.
    | DateBetween
      -- ^ @DATE_BETWEEN@
      -- The cell\'s value must be between the dates of the two condition values.
      -- Supported by data validation. Requires exactly two ConditionValues.
    | DateNotBetween
      -- ^ @DATE_NOT_BETWEEN@
      -- The cell\'s value must be outside the dates of the two condition values.
      -- Supported by data validation. Requires exactly two ConditionValues.
    | DateIsValid
      -- ^ @DATE_IS_VALID@
      -- The cell\'s value must be a date. Supported by data validation. Requires
      -- no ConditionValues.
    | OneOfRange
      -- ^ @ONE_OF_RANGE@
      -- The cell\'s value must be listed in the grid in condition value\'s
      -- range. Supported by data validation. Requires a single ConditionValue,
      -- and the value must be a valid range in A1 notation.
    | OneOfList
      -- ^ @ONE_OF_LIST@
      -- The cell\'s value must in the list of condition values. Supported by
      -- data validation. Supports any number of condition values, one per item
      -- in the list. Formulas are not supported in the values.
    | Blank
      -- ^ @BLANK@
      -- The cell\'s value must be empty. Supported by conditional formatting and
      -- filters. Requires no ConditionValues.
    | NotBlank
      -- ^ @NOT_BLANK@
      -- The cell\'s value must not be empty. Supported by conditional formatting
      -- and filters. Requires no ConditionValues.
    | CustomFormula
      -- ^ @CUSTOM_FORMULA@
      -- The condition\'s formula must evaluate to true. Supported by data
      -- validation, conditional formatting and filters. Requires a single
      -- ConditionValue.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BooleanConditionType

instance FromHttpApiData BooleanConditionType where
    parseQueryParam = \case
        "CONDITION_TYPE_UNSPECIFIED" -> Right ConditionTypeUnspecified
        "NUMBER_GREATER" -> Right NumberGreater
        "NUMBER_GREATER_THAN_EQ" -> Right NumberGreaterThanEQ
        "NUMBER_LESS" -> Right NumberLess
        "NUMBER_LESS_THAN_EQ" -> Right NumberLessThanEQ
        "NUMBER_EQ" -> Right NumberEQ
        "NUMBER_NOT_EQ" -> Right NumberNotEQ
        "NUMBER_BETWEEN" -> Right NumberBetween
        "NUMBER_NOT_BETWEEN" -> Right NumberNotBetween
        "TEXT_CONTAINS" -> Right TextContains
        "TEXT_NOT_CONTAINS" -> Right TextNotContains
        "TEXT_STARTS_WITH" -> Right TextStartsWith
        "TEXT_ENDS_WITH" -> Right TextEndsWith
        "TEXT_EQ" -> Right TextEQ
        "TEXT_IS_EMAIL" -> Right TextIsEmail
        "TEXT_IS_URL" -> Right TextIsURL
        "DATE_EQ" -> Right DateEQ
        "DATE_BEFORE" -> Right DateBefore
        "DATE_AFTER" -> Right DateAfter
        "DATE_ON_OR_BEFORE" -> Right DateOnOrBefore
        "DATE_ON_OR_AFTER" -> Right DateOnOrAfter
        "DATE_BETWEEN" -> Right DateBetween
        "DATE_NOT_BETWEEN" -> Right DateNotBetween
        "DATE_IS_VALID" -> Right DateIsValid
        "ONE_OF_RANGE" -> Right OneOfRange
        "ONE_OF_LIST" -> Right OneOfList
        "BLANK" -> Right Blank
        "NOT_BLANK" -> Right NotBlank
        "CUSTOM_FORMULA" -> Right CustomFormula
        x -> Left ("Unable to parse BooleanConditionType from: " <> x)

instance ToHttpApiData BooleanConditionType where
    toQueryParam = \case
        ConditionTypeUnspecified -> "CONDITION_TYPE_UNSPECIFIED"
        NumberGreater -> "NUMBER_GREATER"
        NumberGreaterThanEQ -> "NUMBER_GREATER_THAN_EQ"
        NumberLess -> "NUMBER_LESS"
        NumberLessThanEQ -> "NUMBER_LESS_THAN_EQ"
        NumberEQ -> "NUMBER_EQ"
        NumberNotEQ -> "NUMBER_NOT_EQ"
        NumberBetween -> "NUMBER_BETWEEN"
        NumberNotBetween -> "NUMBER_NOT_BETWEEN"
        TextContains -> "TEXT_CONTAINS"
        TextNotContains -> "TEXT_NOT_CONTAINS"
        TextStartsWith -> "TEXT_STARTS_WITH"
        TextEndsWith -> "TEXT_ENDS_WITH"
        TextEQ -> "TEXT_EQ"
        TextIsEmail -> "TEXT_IS_EMAIL"
        TextIsURL -> "TEXT_IS_URL"
        DateEQ -> "DATE_EQ"
        DateBefore -> "DATE_BEFORE"
        DateAfter -> "DATE_AFTER"
        DateOnOrBefore -> "DATE_ON_OR_BEFORE"
        DateOnOrAfter -> "DATE_ON_OR_AFTER"
        DateBetween -> "DATE_BETWEEN"
        DateNotBetween -> "DATE_NOT_BETWEEN"
        DateIsValid -> "DATE_IS_VALID"
        OneOfRange -> "ONE_OF_RANGE"
        OneOfList -> "ONE_OF_LIST"
        Blank -> "BLANK"
        NotBlank -> "NOT_BLANK"
        CustomFormula -> "CUSTOM_FORMULA"

instance FromJSON BooleanConditionType where
    parseJSON = parseJSONText "BooleanConditionType"

instance ToJSON BooleanConditionType where
    toJSON = toJSONText

-- | The major dimension of the values. For output, if the spreadsheet data
-- is: \`A1=1,B1=2,A2=3,B2=4\`, then requesting
-- \`range=A1:B2,majorDimension=ROWS\` will return \`[[1,2],[3,4]]\`,
-- whereas requesting \`range=A1:B2,majorDimension=COLUMNS\` will return
-- \`[[1,3],[2,4]]\`. For input, with \`range=A1:B2,majorDimension=ROWS\`
-- then \`[[1,2],[3,4]]\` will set \`A1=1,B1=2,A2=3,B2=4\`. With
-- \`range=A1:B2,majorDimension=COLUMNS\` then \`[[1,2],[3,4]]\` will set
-- \`A1=1,B1=3,A2=2,B2=4\`. When writing, if this field is not set, it
-- defaults to ROWS.
data ValueRangeMajorDimension
    = VRMDDimensionUnspecified
      -- ^ @DIMENSION_UNSPECIFIED@
      -- The default value, do not use.
    | VRMDRows
      -- ^ @ROWS@
      -- Operates on the rows of a sheet.
    | VRMDColumns
      -- ^ @COLUMNS@
      -- Operates on the columns of a sheet.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ValueRangeMajorDimension

instance FromHttpApiData ValueRangeMajorDimension where
    parseQueryParam = \case
        "DIMENSION_UNSPECIFIED" -> Right VRMDDimensionUnspecified
        "ROWS" -> Right VRMDRows
        "COLUMNS" -> Right VRMDColumns
        x -> Left ("Unable to parse ValueRangeMajorDimension from: " <> x)

instance ToHttpApiData ValueRangeMajorDimension where
    toQueryParam = \case
        VRMDDimensionUnspecified -> "DIMENSION_UNSPECIFIED"
        VRMDRows -> "ROWS"
        VRMDColumns -> "COLUMNS"

instance FromJSON ValueRangeMajorDimension where
    parseJSON = parseJSONText "ValueRangeMajorDimension"

instance ToJSON ValueRangeMajorDimension where
    toJSON = toJSONText

-- | The order the values in this group should be sorted.
data PivotGroupSortOrder
    = PGSOSortOrderUnspecified
      -- ^ @SORT_ORDER_UNSPECIFIED@
      -- Default value, do not use this.
    | PGSOAscending
      -- ^ @ASCENDING@
      -- Sort ascending.
    | PGSODescending
      -- ^ @DESCENDING@
      -- Sort descending.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PivotGroupSortOrder

instance FromHttpApiData PivotGroupSortOrder where
    parseQueryParam = \case
        "SORT_ORDER_UNSPECIFIED" -> Right PGSOSortOrderUnspecified
        "ASCENDING" -> Right PGSOAscending
        "DESCENDING" -> Right PGSODescending
        x -> Left ("Unable to parse PivotGroupSortOrder from: " <> x)

instance ToHttpApiData PivotGroupSortOrder where
    toQueryParam = \case
        PGSOSortOrderUnspecified -> "SORT_ORDER_UNSPECIFIED"
        PGSOAscending -> "ASCENDING"
        PGSODescending -> "DESCENDING"

instance FromJSON PivotGroupSortOrder where
    parseJSON = parseJSONText "PivotGroupSortOrder"

instance ToJSON PivotGroupSortOrder where
    toJSON = toJSONText

-- | The type of the chart.
data BasicChartSpecChartType
    = BasicChartTypeUnspecified
      -- ^ @BASIC_CHART_TYPE_UNSPECIFIED@
      -- Default value, do not use.
    | Bar
      -- ^ @BAR@
      -- A </chart/interactive/docs/gallery/barchart bar chart>.
    | Line
      -- ^ @LINE@
      -- A </chart/interactive/docs/gallery/linechart line chart>.
    | Area
      -- ^ @AREA@
      -- An </chart/interactive/docs/gallery/areachart area chart>.
    | Column
      -- ^ @COLUMN@
      -- A </chart/interactive/docs/gallery/columnchart column chart>.
    | Scatter
      -- ^ @SCATTER@
      -- A </chart/interactive/docs/gallery/scatterchart scatter chart>.
    | Combo
      -- ^ @COMBO@
      -- A </chart/interactive/docs/gallery/combochart combo chart>.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BasicChartSpecChartType

instance FromHttpApiData BasicChartSpecChartType where
    parseQueryParam = \case
        "BASIC_CHART_TYPE_UNSPECIFIED" -> Right BasicChartTypeUnspecified
        "BAR" -> Right Bar
        "LINE" -> Right Line
        "AREA" -> Right Area
        "COLUMN" -> Right Column
        "SCATTER" -> Right Scatter
        "COMBO" -> Right Combo
        x -> Left ("Unable to parse BasicChartSpecChartType from: " <> x)

instance ToHttpApiData BasicChartSpecChartType where
    toQueryParam = \case
        BasicChartTypeUnspecified -> "BASIC_CHART_TYPE_UNSPECIFIED"
        Bar -> "BAR"
        Line -> "LINE"
        Area -> "AREA"
        Column -> "COLUMN"
        Scatter -> "SCATTER"
        Combo -> "COMBO"

instance FromJSON BasicChartSpecChartType where
    parseJSON = parseJSONText "BasicChartSpecChartType"

instance ToJSON BasicChartSpecChartType where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The amount of time to wait before volatile functions are recalculated.
data SpreadsheetPropertiesAutoRecalc
    = RecalculationIntervalUnspecified
      -- ^ @RECALCULATION_INTERVAL_UNSPECIFIED@
      -- Default value. This value must not be used.
    | OnChange
      -- ^ @ON_CHANGE@
      -- Volatile functions are updated on every change.
    | Minute
      -- ^ @MINUTE@
      -- Volatile functions are updated on every change and every minute.
    | Hour
      -- ^ @HOUR@
      -- Volatile functions are updated on every change and hourly.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpreadsheetPropertiesAutoRecalc

instance FromHttpApiData SpreadsheetPropertiesAutoRecalc where
    parseQueryParam = \case
        "RECALCULATION_INTERVAL_UNSPECIFIED" -> Right RecalculationIntervalUnspecified
        "ON_CHANGE" -> Right OnChange
        "MINUTE" -> Right Minute
        "HOUR" -> Right Hour
        x -> Left ("Unable to parse SpreadsheetPropertiesAutoRecalc from: " <> x)

instance ToHttpApiData SpreadsheetPropertiesAutoRecalc where
    toQueryParam = \case
        RecalculationIntervalUnspecified -> "RECALCULATION_INTERVAL_UNSPECIFIED"
        OnChange -> "ON_CHANGE"
        Minute -> "MINUTE"
        Hour -> "HOUR"

instance FromJSON SpreadsheetPropertiesAutoRecalc where
    parseJSON = parseJSONText "SpreadsheetPropertiesAutoRecalc"

instance ToJSON SpreadsheetPropertiesAutoRecalc where
    toJSON = toJSONText

-- | How that data should be oriented when pasting.
data CopyPasteRequestPasteOrientation
    = Normal
      -- ^ @NORMAL@
      -- Paste normally.
    | Transpose
      -- ^ @TRANSPOSE@
      -- Paste transposed, where all rows become columns and vice versa.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CopyPasteRequestPasteOrientation

instance FromHttpApiData CopyPasteRequestPasteOrientation where
    parseQueryParam = \case
        "NORMAL" -> Right Normal
        "TRANSPOSE" -> Right Transpose
        x -> Left ("Unable to parse CopyPasteRequestPasteOrientation from: " <> x)

instance ToHttpApiData CopyPasteRequestPasteOrientation where
    toQueryParam = \case
        Normal -> "NORMAL"
        Transpose -> "TRANSPOSE"

instance FromJSON CopyPasteRequestPasteOrientation where
    parseJSON = parseJSONText "CopyPasteRequestPasteOrientation"

instance ToJSON CopyPasteRequestPasteOrientation where
    toJSON = toJSONText

-- | How the data should be pasted.
data PasteDataRequestType
    = PDRTPasteNormal
      -- ^ @PASTE_NORMAL@
      -- Paste values, formulas, formats, and merges.
    | PDRTPasteValues
      -- ^ @PASTE_VALUES@
      -- Paste the values ONLY without formats, formulas, or merges.
    | PDRTPasteFormat
      -- ^ @PASTE_FORMAT@
      -- Paste the format and data validation only.
    | PDRTPasteNoBOrders
      -- ^ @PASTE_NO_BORDERS@
      -- Like PASTE_NORMAL but without borders.
    | PDRTPasteFormula
      -- ^ @PASTE_FORMULA@
      -- Paste the formulas only.
    | PDRTPasteDataValidation
      -- ^ @PASTE_DATA_VALIDATION@
      -- Paste the data validation only.
    | PDRTPasteConditionalFormatting
      -- ^ @PASTE_CONDITIONAL_FORMATTING@
      -- Paste the conditional formatting rules only.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PasteDataRequestType

instance FromHttpApiData PasteDataRequestType where
    parseQueryParam = \case
        "PASTE_NORMAL" -> Right PDRTPasteNormal
        "PASTE_VALUES" -> Right PDRTPasteValues
        "PASTE_FORMAT" -> Right PDRTPasteFormat
        "PASTE_NO_BORDERS" -> Right PDRTPasteNoBOrders
        "PASTE_FORMULA" -> Right PDRTPasteFormula
        "PASTE_DATA_VALIDATION" -> Right PDRTPasteDataValidation
        "PASTE_CONDITIONAL_FORMATTING" -> Right PDRTPasteConditionalFormatting
        x -> Left ("Unable to parse PasteDataRequestType from: " <> x)

instance ToHttpApiData PasteDataRequestType where
    toQueryParam = \case
        PDRTPasteNormal -> "PASTE_NORMAL"
        PDRTPasteValues -> "PASTE_VALUES"
        PDRTPasteFormat -> "PASTE_FORMAT"
        PDRTPasteNoBOrders -> "PASTE_NO_BORDERS"
        PDRTPasteFormula -> "PASTE_FORMULA"
        PDRTPasteDataValidation -> "PASTE_DATA_VALIDATION"
        PDRTPasteConditionalFormatting -> "PASTE_CONDITIONAL_FORMATTING"

instance FromJSON PasteDataRequestType where
    parseJSON = parseJSONText "PasteDataRequestType"

instance ToJSON PasteDataRequestType where
    toJSON = toJSONText

-- | The direction of the text in the cell.
data CellFormatTextDirection
    = TextDirectionUnspecified
      -- ^ @TEXT_DIRECTION_UNSPECIFIED@
      -- The text direction is not specified. Do not use this.
    | LeftToRight
      -- ^ @LEFT_TO_RIGHT@
      -- The text direction of left-to-right was set by the user.
    | RightToLeft
      -- ^ @RIGHT_TO_LEFT@
      -- The text direction of right-to-left was set by the user.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CellFormatTextDirection

instance FromHttpApiData CellFormatTextDirection where
    parseQueryParam = \case
        "TEXT_DIRECTION_UNSPECIFIED" -> Right TextDirectionUnspecified
        "LEFT_TO_RIGHT" -> Right LeftToRight
        "RIGHT_TO_LEFT" -> Right RightToLeft
        x -> Left ("Unable to parse CellFormatTextDirection from: " <> x)

instance ToHttpApiData CellFormatTextDirection where
    toQueryParam = \case
        TextDirectionUnspecified -> "TEXT_DIRECTION_UNSPECIFIED"
        LeftToRight -> "LEFT_TO_RIGHT"
        RightToLeft -> "RIGHT_TO_LEFT"

instance FromJSON CellFormatTextDirection where
    parseJSON = parseJSONText "CellFormatTextDirection"

instance ToJSON CellFormatTextDirection where
    toJSON = toJSONText

-- | The type of this series. Valid only if the chartType is COMBO. Different
-- types will change the way the series is visualized. Only LINE, AREA, and
-- COLUMN are supported.
data BasicChartSeriesType
    = BCSTBasicChartTypeUnspecified
      -- ^ @BASIC_CHART_TYPE_UNSPECIFIED@
      -- Default value, do not use.
    | BCSTBar
      -- ^ @BAR@
      -- A </chart/interactive/docs/gallery/barchart bar chart>.
    | BCSTLine
      -- ^ @LINE@
      -- A </chart/interactive/docs/gallery/linechart line chart>.
    | BCSTArea
      -- ^ @AREA@
      -- An </chart/interactive/docs/gallery/areachart area chart>.
    | BCSTColumn
      -- ^ @COLUMN@
      -- A </chart/interactive/docs/gallery/columnchart column chart>.
    | BCSTScatter
      -- ^ @SCATTER@
      -- A </chart/interactive/docs/gallery/scatterchart scatter chart>.
    | BCSTCombo
      -- ^ @COMBO@
      -- A </chart/interactive/docs/gallery/combochart combo chart>.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BasicChartSeriesType

instance FromHttpApiData BasicChartSeriesType where
    parseQueryParam = \case
        "BASIC_CHART_TYPE_UNSPECIFIED" -> Right BCSTBasicChartTypeUnspecified
        "BAR" -> Right BCSTBar
        "LINE" -> Right BCSTLine
        "AREA" -> Right BCSTArea
        "COLUMN" -> Right BCSTColumn
        "SCATTER" -> Right BCSTScatter
        "COMBO" -> Right BCSTCombo
        x -> Left ("Unable to parse BasicChartSeriesType from: " <> x)

instance ToHttpApiData BasicChartSeriesType where
    toQueryParam = \case
        BCSTBasicChartTypeUnspecified -> "BASIC_CHART_TYPE_UNSPECIFIED"
        BCSTBar -> "BAR"
        BCSTLine -> "LINE"
        BCSTArea -> "AREA"
        BCSTColumn -> "COLUMN"
        BCSTScatter -> "SCATTER"
        BCSTCombo -> "COMBO"

instance FromJSON BasicChartSeriesType where
    parseJSON = parseJSONText "BasicChartSeriesType"

instance ToJSON BasicChartSeriesType where
    toJSON = toJSONText

-- | Determines how the charts will use hidden rows or columns.
data ChartSpecHiddenDimensionStrategy
    = ChartHiddenDimensionStrategyUnspecified
      -- ^ @CHART_HIDDEN_DIMENSION_STRATEGY_UNSPECIFIED@
      -- Default value, do not use.
    | SkipHiddenRowsAndColumns
      -- ^ @SKIP_HIDDEN_ROWS_AND_COLUMNS@
      -- Charts will skip hidden rows and columns.
    | SkipHiddenRows
      -- ^ @SKIP_HIDDEN_ROWS@
      -- Charts will skip hidden rows only.
    | SkipHiddenColumns
      -- ^ @SKIP_HIDDEN_COLUMNS@
      -- Charts will skip hidden columns only.
    | ShowAll
      -- ^ @SHOW_ALL@
      -- Charts will not skip any hidden rows or columns.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChartSpecHiddenDimensionStrategy

instance FromHttpApiData ChartSpecHiddenDimensionStrategy where
    parseQueryParam = \case
        "CHART_HIDDEN_DIMENSION_STRATEGY_UNSPECIFIED" -> Right ChartHiddenDimensionStrategyUnspecified
        "SKIP_HIDDEN_ROWS_AND_COLUMNS" -> Right SkipHiddenRowsAndColumns
        "SKIP_HIDDEN_ROWS" -> Right SkipHiddenRows
        "SKIP_HIDDEN_COLUMNS" -> Right SkipHiddenColumns
        "SHOW_ALL" -> Right ShowAll
        x -> Left ("Unable to parse ChartSpecHiddenDimensionStrategy from: " <> x)

instance ToHttpApiData ChartSpecHiddenDimensionStrategy where
    toQueryParam = \case
        ChartHiddenDimensionStrategyUnspecified -> "CHART_HIDDEN_DIMENSION_STRATEGY_UNSPECIFIED"
        SkipHiddenRowsAndColumns -> "SKIP_HIDDEN_ROWS_AND_COLUMNS"
        SkipHiddenRows -> "SKIP_HIDDEN_ROWS"
        SkipHiddenColumns -> "SKIP_HIDDEN_COLUMNS"
        ShowAll -> "SHOW_ALL"

instance FromJSON ChartSpecHiddenDimensionStrategy where
    parseJSON = parseJSONText "ChartSpecHiddenDimensionStrategy"

instance ToJSON ChartSpecHiddenDimensionStrategy where
    toJSON = toJSONText

-- | The style of the border.
data BOrderStyle
    = StyleUnspecified
      -- ^ @STYLE_UNSPECIFIED@
      -- The style is not specified. Do not use this.
    | Dotted
      -- ^ @DOTTED@
      -- The border is dotted.
    | Dashed
      -- ^ @DASHED@
      -- The border is dashed.
    | Solid
      -- ^ @SOLID@
      -- The border is a thin solid line.
    | SolidMedium
      -- ^ @SOLID_MEDIUM@
      -- The border is a medium solid line.
    | SolidThick
      -- ^ @SOLID_THICK@
      -- The border is a thick solid line.
    | None
      -- ^ @NONE@
      -- No border. Used only when updating a border in order to erase it.
    | Double
      -- ^ @DOUBLE@
      -- The border is two solid lines.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BOrderStyle

instance FromHttpApiData BOrderStyle where
    parseQueryParam = \case
        "STYLE_UNSPECIFIED" -> Right StyleUnspecified
        "DOTTED" -> Right Dotted
        "DASHED" -> Right Dashed
        "SOLID" -> Right Solid
        "SOLID_MEDIUM" -> Right SolidMedium
        "SOLID_THICK" -> Right SolidThick
        "NONE" -> Right None
        "DOUBLE" -> Right Double
        x -> Left ("Unable to parse BOrderStyle from: " <> x)

instance ToHttpApiData BOrderStyle where
    toQueryParam = \case
        StyleUnspecified -> "STYLE_UNSPECIFIED"
        Dotted -> "DOTTED"
        Dashed -> "DASHED"
        Solid -> "SOLID"
        SolidMedium -> "SOLID_MEDIUM"
        SolidThick -> "SOLID_THICK"
        None -> "NONE"
        Double -> "DOUBLE"

instance FromJSON BOrderStyle where
    parseJSON = parseJSONText "BOrderStyle"

instance ToJSON BOrderStyle where
    toJSON = toJSONText

-- | What kind of data to paste. All the source data will be cut, regardless
-- of what is pasted.
data CutPasteRequestPasteType
    = CPRPTPasteNormal
      -- ^ @PASTE_NORMAL@
      -- Paste values, formulas, formats, and merges.
    | CPRPTPasteValues
      -- ^ @PASTE_VALUES@
      -- Paste the values ONLY without formats, formulas, or merges.
    | CPRPTPasteFormat
      -- ^ @PASTE_FORMAT@
      -- Paste the format and data validation only.
    | CPRPTPasteNoBOrders
      -- ^ @PASTE_NO_BORDERS@
      -- Like PASTE_NORMAL but without borders.
    | CPRPTPasteFormula
      -- ^ @PASTE_FORMULA@
      -- Paste the formulas only.
    | CPRPTPasteDataValidation
      -- ^ @PASTE_DATA_VALIDATION@
      -- Paste the data validation only.
    | CPRPTPasteConditionalFormatting
      -- ^ @PASTE_CONDITIONAL_FORMATTING@
      -- Paste the conditional formatting rules only.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CutPasteRequestPasteType

instance FromHttpApiData CutPasteRequestPasteType where
    parseQueryParam = \case
        "PASTE_NORMAL" -> Right CPRPTPasteNormal
        "PASTE_VALUES" -> Right CPRPTPasteValues
        "PASTE_FORMAT" -> Right CPRPTPasteFormat
        "PASTE_NO_BORDERS" -> Right CPRPTPasteNoBOrders
        "PASTE_FORMULA" -> Right CPRPTPasteFormula
        "PASTE_DATA_VALIDATION" -> Right CPRPTPasteDataValidation
        "PASTE_CONDITIONAL_FORMATTING" -> Right CPRPTPasteConditionalFormatting
        x -> Left ("Unable to parse CutPasteRequestPasteType from: " <> x)

instance ToHttpApiData CutPasteRequestPasteType where
    toQueryParam = \case
        CPRPTPasteNormal -> "PASTE_NORMAL"
        CPRPTPasteValues -> "PASTE_VALUES"
        CPRPTPasteFormat -> "PASTE_FORMAT"
        CPRPTPasteNoBOrders -> "PASTE_NO_BORDERS"
        CPRPTPasteFormula -> "PASTE_FORMULA"
        CPRPTPasteDataValidation -> "PASTE_DATA_VALIDATION"
        CPRPTPasteConditionalFormatting -> "PASTE_CONDITIONAL_FORMATTING"

instance FromJSON CutPasteRequestPasteType where
    parseJSON = parseJSONText "CutPasteRequestPasteType"

instance ToJSON CutPasteRequestPasteType where
    toJSON = toJSONText

-- | The position of the chart legend.
data BasicChartSpecLegendPosition
    = BCSLPBasicChartLegendPositionUnspecified
      -- ^ @BASIC_CHART_LEGEND_POSITION_UNSPECIFIED@
      -- Default value, do not use.
    | BCSLPBottomLegend
      -- ^ @BOTTOM_LEGEND@
      -- The legend is rendered on the bottom of the chart.
    | BCSLPLeftLegend
      -- ^ @LEFT_LEGEND@
      -- The legend is rendered on the left of the chart.
    | BCSLPRightLegend
      -- ^ @RIGHT_LEGEND@
      -- The legend is rendered on the right of the chart.
    | BCSLPTopLegend
      -- ^ @TOP_LEGEND@
      -- The legend is rendered on the top of the chart.
    | BCSLPNoLegend
      -- ^ @NO_LEGEND@
      -- No legend is rendered.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BasicChartSpecLegendPosition

instance FromHttpApiData BasicChartSpecLegendPosition where
    parseQueryParam = \case
        "BASIC_CHART_LEGEND_POSITION_UNSPECIFIED" -> Right BCSLPBasicChartLegendPositionUnspecified
        "BOTTOM_LEGEND" -> Right BCSLPBottomLegend
        "LEFT_LEGEND" -> Right BCSLPLeftLegend
        "RIGHT_LEGEND" -> Right BCSLPRightLegend
        "TOP_LEGEND" -> Right BCSLPTopLegend
        "NO_LEGEND" -> Right BCSLPNoLegend
        x -> Left ("Unable to parse BasicChartSpecLegendPosition from: " <> x)

instance ToHttpApiData BasicChartSpecLegendPosition where
    toQueryParam = \case
        BCSLPBasicChartLegendPositionUnspecified -> "BASIC_CHART_LEGEND_POSITION_UNSPECIFIED"
        BCSLPBottomLegend -> "BOTTOM_LEGEND"
        BCSLPLeftLegend -> "LEFT_LEGEND"
        BCSLPRightLegend -> "RIGHT_LEGEND"
        BCSLPTopLegend -> "TOP_LEGEND"
        BCSLPNoLegend -> "NO_LEGEND"

instance FromJSON BasicChartSpecLegendPosition where
    parseJSON = parseJSONText "BasicChartSpecLegendPosition"

instance ToJSON BasicChartSpecLegendPosition where
    toJSON = toJSONText

-- | The type of error.
data ErrorValueType
    = ErrorTypeUnspecified
      -- ^ @ERROR_TYPE_UNSPECIFIED@
      -- The default error type, do not use this.
    | Error'
      -- ^ @ERROR@
      -- Corresponds to the \`#ERROR!\` error.
    | NullValue
      -- ^ @NULL_VALUE@
      -- Corresponds to the \`#NULL!\` error.
    | DivideByZero
      -- ^ @DIVIDE_BY_ZERO@
      -- Corresponds to the \`#DIV\/0\` error.
    | Value
      -- ^ @VALUE@
      -- Corresponds to the \`#VALUE!\` error.
    | Ref
      -- ^ @REF@
      -- Corresponds to the \`#REF!\` error.
    | Name
      -- ^ @NAME@
      -- Corresponds to the \`#NAME?\` error.
    | Num
      -- ^ @NUM@
      -- Corresponds to the \`#NUM\`! error.
    | NA
      -- ^ @N_A@
      -- Corresponds to the \`#N\/A\` error.
    | Loading
      -- ^ @LOADING@
      -- Corresponds to the \`Loading...\` state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ErrorValueType

instance FromHttpApiData ErrorValueType where
    parseQueryParam = \case
        "ERROR_TYPE_UNSPECIFIED" -> Right ErrorTypeUnspecified
        "ERROR" -> Right Error'
        "NULL_VALUE" -> Right NullValue
        "DIVIDE_BY_ZERO" -> Right DivideByZero
        "VALUE" -> Right Value
        "REF" -> Right Ref
        "NAME" -> Right Name
        "NUM" -> Right Num
        "N_A" -> Right NA
        "LOADING" -> Right Loading
        x -> Left ("Unable to parse ErrorValueType from: " <> x)

instance ToHttpApiData ErrorValueType where
    toQueryParam = \case
        ErrorTypeUnspecified -> "ERROR_TYPE_UNSPECIFIED"
        Error' -> "ERROR"
        NullValue -> "NULL_VALUE"
        DivideByZero -> "DIVIDE_BY_ZERO"
        Value -> "VALUE"
        Ref -> "REF"
        Name -> "NAME"
        Num -> "NUM"
        NA -> "N_A"
        Loading -> "LOADING"

instance FromJSON ErrorValueType where
    parseJSON = parseJSONText "ErrorValueType"

instance ToJSON ErrorValueType where
    toJSON = toJSONText

-- | Whether values should be listed horizontally (as columns) or vertically
-- (as rows).
data PivotTableValueLayout
    = Horizontal
      -- ^ @HORIZONTAL@
      -- Values are laid out horizontally (as columns).
    | Vertical
      -- ^ @VERTICAL@
      -- Values are laid out vertically (as rows).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PivotTableValueLayout

instance FromHttpApiData PivotTableValueLayout where
    parseQueryParam = \case
        "HORIZONTAL" -> Right Horizontal
        "VERTICAL" -> Right Vertical
        x -> Left ("Unable to parse PivotTableValueLayout from: " <> x)

instance ToHttpApiData PivotTableValueLayout where
    toQueryParam = \case
        Horizontal -> "HORIZONTAL"
        Vertical -> "VERTICAL"

instance FromJSON PivotTableValueLayout where
    parseJSON = parseJSONText "PivotTableValueLayout"

instance ToJSON PivotTableValueLayout where
    toJSON = toJSONText

-- | How the value should be interpreted.
data InterpolationPointType
    = IPTInterpolationPointTypeUnspecified
      -- ^ @INTERPOLATION_POINT_TYPE_UNSPECIFIED@
      -- The default value, do not use.
    | IPTMin
      -- ^ @MIN@
      -- The interpolation point will use the minimum value in the cells over the
      -- range of the conditional format.
    | IPTMax
      -- ^ @MAX@
      -- The interpolation point will use the maximum value in the cells over the
      -- range of the conditional format.
    | IPTNumber
      -- ^ @NUMBER@
      -- The interpolation point will use exactly the value in
      -- InterpolationPoint.value.
    | IPTPercent
      -- ^ @PERCENT@
      -- The interpolation point will be the given percentage over all the cells
      -- in the range of the conditional format. This is equivalent to NUMBER if
      -- the value was: \`=(MAX(FLATTEN(range)) * (value \/ 100)) +
      -- (MIN(FLATTEN(range)) * (1 - (value \/ 100)))\` (where errors in the
      -- range are ignored when flattening).
    | IPTPercentile
      -- ^ @PERCENTILE@
      -- The interpolation point will be the given percentile over all the cells
      -- in the range of the conditional format. This is equivalent to NUMBER if
      -- the value was: \`=PERCENTILE(FLATTEN(range), value \/ 100)\` (where
      -- errors in the range are ignored when flattening).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InterpolationPointType

instance FromHttpApiData InterpolationPointType where
    parseQueryParam = \case
        "INTERPOLATION_POINT_TYPE_UNSPECIFIED" -> Right IPTInterpolationPointTypeUnspecified
        "MIN" -> Right IPTMin
        "MAX" -> Right IPTMax
        "NUMBER" -> Right IPTNumber
        "PERCENT" -> Right IPTPercent
        "PERCENTILE" -> Right IPTPercentile
        x -> Left ("Unable to parse InterpolationPointType from: " <> x)

instance ToHttpApiData InterpolationPointType where
    toQueryParam = \case
        IPTInterpolationPointTypeUnspecified -> "INTERPOLATION_POINT_TYPE_UNSPECIFIED"
        IPTMin -> "MIN"
        IPTMax -> "MAX"
        IPTNumber -> "NUMBER"
        IPTPercent -> "PERCENT"
        IPTPercentile -> "PERCENTILE"

instance FromJSON InterpolationPointType where
    parseJSON = parseJSONText "InterpolationPointType"

instance ToJSON InterpolationPointType where
    toJSON = toJSONText

-- | The delimiter type to use.
data TextToColumnsRequestDelimiterType
    = TTCRDTDelimiterTypeUnspecified
      -- ^ @DELIMITER_TYPE_UNSPECIFIED@
      -- Default value. This value must not be used.
    | TTCRDTComma
      -- ^ @COMMA@
      -- \",\"
    | TTCRDTSemicolon
      -- ^ @SEMICOLON@
      -- \";\"
    | TTCRDTPeriod
      -- ^ @PERIOD@
      -- \".\"
    | TTCRDTSpace
      -- ^ @SPACE@
      -- \" \"
    | TTCRDTCustom
      -- ^ @CUSTOM@
      -- A custom value as defined in delimiter.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable TextToColumnsRequestDelimiterType

instance FromHttpApiData TextToColumnsRequestDelimiterType where
    parseQueryParam = \case
        "DELIMITER_TYPE_UNSPECIFIED" -> Right TTCRDTDelimiterTypeUnspecified
        "COMMA" -> Right TTCRDTComma
        "SEMICOLON" -> Right TTCRDTSemicolon
        "PERIOD" -> Right TTCRDTPeriod
        "SPACE" -> Right TTCRDTSpace
        "CUSTOM" -> Right TTCRDTCustom
        x -> Left ("Unable to parse TextToColumnsRequestDelimiterType from: " <> x)

instance ToHttpApiData TextToColumnsRequestDelimiterType where
    toQueryParam = \case
        TTCRDTDelimiterTypeUnspecified -> "DELIMITER_TYPE_UNSPECIFIED"
        TTCRDTComma -> "COMMA"
        TTCRDTSemicolon -> "SEMICOLON"
        TTCRDTPeriod -> "PERIOD"
        TTCRDTSpace -> "SPACE"
        TTCRDTCustom -> "CUSTOM"

instance FromJSON TextToColumnsRequestDelimiterType where
    parseJSON = parseJSONText "TextToColumnsRequestDelimiterType"

instance ToJSON TextToColumnsRequestDelimiterType where
    toJSON = toJSONText

-- | The dimension which will be shifted when inserting cells. If ROWS,
-- existing cells will be shifted down. If COLUMNS, existing cells will be
-- shifted right.
data InsertRangeRequestShiftDimension
    = IRRSDDimensionUnspecified
      -- ^ @DIMENSION_UNSPECIFIED@
      -- The default value, do not use.
    | IRRSDRows
      -- ^ @ROWS@
      -- Operates on the rows of a sheet.
    | IRRSDColumns
      -- ^ @COLUMNS@
      -- Operates on the columns of a sheet.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InsertRangeRequestShiftDimension

instance FromHttpApiData InsertRangeRequestShiftDimension where
    parseQueryParam = \case
        "DIMENSION_UNSPECIFIED" -> Right IRRSDDimensionUnspecified
        "ROWS" -> Right IRRSDRows
        "COLUMNS" -> Right IRRSDColumns
        x -> Left ("Unable to parse InsertRangeRequestShiftDimension from: " <> x)

instance ToHttpApiData InsertRangeRequestShiftDimension where
    toQueryParam = \case
        IRRSDDimensionUnspecified -> "DIMENSION_UNSPECIFIED"
        IRRSDRows -> "ROWS"
        IRRSDColumns -> "COLUMNS"

instance FromJSON InsertRangeRequestShiftDimension where
    parseJSON = parseJSONText "InsertRangeRequestShiftDimension"

instance ToJSON InsertRangeRequestShiftDimension where
    toJSON = toJSONText
