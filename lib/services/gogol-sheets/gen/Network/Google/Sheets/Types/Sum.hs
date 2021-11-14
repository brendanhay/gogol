{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Sheets.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Sheets.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | The major dimension that results should use. For example, if the
-- spreadsheet data is: \`A1=1,B1=2,A2=3,B2=4\`, then requesting
-- \`range=A1:B2,majorDimension=ROWS\` returns \`[[1,2],[3,4]]\`, whereas
-- requesting \`range=A1:B2,majorDimension=COLUMNS\` returns
-- \`[[1,3],[2,4]]\`.
data SpreadsheetsValuesBatchGetMajorDimension
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

instance Hashable SpreadsheetsValuesBatchGetMajorDimension

instance FromHttpApiData SpreadsheetsValuesBatchGetMajorDimension where
    parseQueryParam = \case
        "DIMENSION_UNSPECIFIED" -> Right DimensionUnspecified
        "ROWS" -> Right Rows
        "COLUMNS" -> Right Columns
        x -> Left ("Unable to parse SpreadsheetsValuesBatchGetMajorDimension from: " <> x)

instance ToHttpApiData SpreadsheetsValuesBatchGetMajorDimension where
    toQueryParam = \case
        DimensionUnspecified -> "DIMENSION_UNSPECIFIED"
        Rows -> "ROWS"
        Columns -> "COLUMNS"

instance FromJSON SpreadsheetsValuesBatchGetMajorDimension where
    parseJSON = parseJSONText "SpreadsheetsValuesBatchGetMajorDimension"

instance ToJSON SpreadsheetsValuesBatchGetMajorDimension where
    toJSON = toJSONText

-- | The stacked type for charts that support vertical stacking. Applies to
-- Area, Bar, Column, Combo, and Stepped Area charts.
data BasicChartSpecStackedType
    = BasicChartStackedTypeUnspecified
      -- ^ @BASIC_CHART_STACKED_TYPE_UNSPECIFIED@
      -- Default value, do not use.
    | NotStacked
      -- ^ @NOT_STACKED@
      -- Series are not stacked.
    | Stacked
      -- ^ @STACKED@
      -- Series values are stacked, each value is rendered vertically beginning
      -- from the top of the value below it.
    | PercentStacked
      -- ^ @PERCENT_STACKED@
      -- Vertical stacks are stretched to reach the top of the chart, with values
      -- laid out as percentages of each other.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BasicChartSpecStackedType

instance FromHttpApiData BasicChartSpecStackedType where
    parseQueryParam = \case
        "BASIC_CHART_STACKED_TYPE_UNSPECIFIED" -> Right BasicChartStackedTypeUnspecified
        "NOT_STACKED" -> Right NotStacked
        "STACKED" -> Right Stacked
        "PERCENT_STACKED" -> Right PercentStacked
        x -> Left ("Unable to parse BasicChartSpecStackedType from: " <> x)

instance ToHttpApiData BasicChartSpecStackedType where
    toQueryParam = \case
        BasicChartStackedTypeUnspecified -> "BASIC_CHART_STACKED_TYPE_UNSPECIFIED"
        NotStacked -> "NOT_STACKED"
        Stacked -> "STACKED"
        PercentStacked -> "PERCENT_STACKED"

instance FromJSON BasicChartSpecStackedType where
    parseJSON = parseJSONText "BasicChartSpecStackedType"

instance ToJSON BasicChartSpecStackedType where
    toJSON = toJSONText

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
      -- Like \`PASTE_NORMAL\` but without borders.
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

-- | Determines how this lookup matches the location. If this field is
-- specified as EXACT, only developer metadata associated on the exact
-- location specified is matched. If this field is specified to
-- INTERSECTING, developer metadata associated on intersecting locations is
-- also matched. If left unspecified, this field assumes a default value of
-- INTERSECTING. If this field is specified, a metadataLocation must also
-- be specified.
data DeveloperMetadataLookupLocationMatchingStrategy
    = DeveloperMetadataLocationMatchingStrategyUnspecified
      -- ^ @DEVELOPER_METADATA_LOCATION_MATCHING_STRATEGY_UNSPECIFIED@
      -- Default value. This value must not be used.
    | ExactLocation
      -- ^ @EXACT_LOCATION@
      -- Indicates that a specified location should be matched exactly. For
      -- example, if row three were specified as a location this matching
      -- strategy would only match developer metadata also associated on row
      -- three. Metadata associated on other locations would not be considered.
    | IntersectingLocation
      -- ^ @INTERSECTING_LOCATION@
      -- Indicates that a specified location should match that exact location as
      -- well as any intersecting locations. For example, if row three were
      -- specified as a location this matching strategy would match developer
      -- metadata associated on row three as well as metadata associated on
      -- locations that intersect row three. If, for instance, there was
      -- developer metadata associated on column B, this matching strategy would
      -- also match that location because column B intersects row three.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeveloperMetadataLookupLocationMatchingStrategy

instance FromHttpApiData DeveloperMetadataLookupLocationMatchingStrategy where
    parseQueryParam = \case
        "DEVELOPER_METADATA_LOCATION_MATCHING_STRATEGY_UNSPECIFIED" -> Right DeveloperMetadataLocationMatchingStrategyUnspecified
        "EXACT_LOCATION" -> Right ExactLocation
        "INTERSECTING_LOCATION" -> Right IntersectingLocation
        x -> Left ("Unable to parse DeveloperMetadataLookupLocationMatchingStrategy from: " <> x)

instance ToHttpApiData DeveloperMetadataLookupLocationMatchingStrategy where
    toQueryParam = \case
        DeveloperMetadataLocationMatchingStrategyUnspecified -> "DEVELOPER_METADATA_LOCATION_MATCHING_STRATEGY_UNSPECIFIED"
        ExactLocation -> "EXACT_LOCATION"
        IntersectingLocation -> "INTERSECTING_LOCATION"

instance FromJSON DeveloperMetadataLookupLocationMatchingStrategy where
    parseJSON = parseJSONText "DeveloperMetadataLookupLocationMatchingStrategy"

instance ToJSON DeveloperMetadataLookupLocationMatchingStrategy where
    toJSON = toJSONText

-- | Determines how dates, times, and durations in the response should be
-- rendered. This is ignored if response_value_render_option is
-- FORMATTED_VALUE. The default dateTime render option is SERIAL_NUMBER.
data BatchUpdateValuesByDataFilterRequestResponseDateTimeRenderOption
    = SerialNumber
      -- ^ @SERIAL_NUMBER@
      -- Instructs date, time, datetime, and duration fields to be output as
      -- doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The
      -- whole number portion of the value (left of the decimal) counts the days
      -- since December 30th 1899. The fractional portion (right of the decimal)
      -- counts the time as a fraction of the day. For example, January 1st 1900
      -- at noon would be 2.5, 2 because it\'s 2 days after December 30st 1899,
      -- and .5 because noon is half a day. February 1st 1900 at 3pm would be
      -- 33.625. This correctly treats the year 1900 as not a leap year.
    | FormattedString
      -- ^ @FORMATTED_STRING@
      -- Instructs date, time, datetime, and duration fields to be output as
      -- strings in their given number format (which is dependent on the
      -- spreadsheet locale).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BatchUpdateValuesByDataFilterRequestResponseDateTimeRenderOption

instance FromHttpApiData BatchUpdateValuesByDataFilterRequestResponseDateTimeRenderOption where
    parseQueryParam = \case
        "SERIAL_NUMBER" -> Right SerialNumber
        "FORMATTED_STRING" -> Right FormattedString
        x -> Left ("Unable to parse BatchUpdateValuesByDataFilterRequestResponseDateTimeRenderOption from: " <> x)

instance ToHttpApiData BatchUpdateValuesByDataFilterRequestResponseDateTimeRenderOption where
    toQueryParam = \case
        SerialNumber -> "SERIAL_NUMBER"
        FormattedString -> "FORMATTED_STRING"

instance FromJSON BatchUpdateValuesByDataFilterRequestResponseDateTimeRenderOption where
    parseJSON = parseJSONText "BatchUpdateValuesByDataFilterRequestResponseDateTimeRenderOption"

instance ToJSON BatchUpdateValuesByDataFilterRequestResponseDateTimeRenderOption where
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

-- | The view window\'s mode.
data ChartAxisViewWindowOptionsViewWindowMode
    = DefaultViewWindowMode
      -- ^ @DEFAULT_VIEW_WINDOW_MODE@
      -- The default view window mode used in the Sheets editor for this chart
      -- type. In most cases, if set, the default mode is equivalent to
      -- \`PRETTY\`.
    | ViewWindowModeUnsupported
      -- ^ @VIEW_WINDOW_MODE_UNSUPPORTED@
      -- Do not use. Represents that the currently set mode is not supported by
      -- the API.
    | Explicit
      -- ^ @EXPLICIT@
      -- Follows the min and max exactly if specified. If a value is unspecified,
      -- it will fall back to the \`PRETTY\` value.
    | Pretty
      -- ^ @PRETTY@
      -- Chooses a min and max that make the chart look good. Both min and max
      -- are ignored in this mode.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChartAxisViewWindowOptionsViewWindowMode

instance FromHttpApiData ChartAxisViewWindowOptionsViewWindowMode where
    parseQueryParam = \case
        "DEFAULT_VIEW_WINDOW_MODE" -> Right DefaultViewWindowMode
        "VIEW_WINDOW_MODE_UNSUPPORTED" -> Right ViewWindowModeUnsupported
        "EXPLICIT" -> Right Explicit
        "PRETTY" -> Right Pretty
        x -> Left ("Unable to parse ChartAxisViewWindowOptionsViewWindowMode from: " <> x)

instance ToHttpApiData ChartAxisViewWindowOptionsViewWindowMode where
    toQueryParam = \case
        DefaultViewWindowMode -> "DEFAULT_VIEW_WINDOW_MODE"
        ViewWindowModeUnsupported -> "VIEW_WINDOW_MODE_UNSUPPORTED"
        Explicit -> "EXPLICIT"
        Pretty -> "PRETTY"

instance FromJSON ChartAxisViewWindowOptionsViewWindowMode where
    parseJSON = parseJSONText "ChartAxisViewWindowOptionsViewWindowMode"

instance ToJSON ChartAxisViewWindowOptionsViewWindowMode where
    toJSON = toJSONText

-- | The dimension from which deleted cells will be replaced with. If ROWS,
-- existing cells will be shifted upward to replace the deleted cells. If
-- COLUMNS, existing cells will be shifted left to replace the deleted
-- cells.
data DeleteRangeRequestShiftDimension
    = DRRSDDimensionUnspecified
      -- ^ @DIMENSION_UNSPECIFIED@
      -- The default value, do not use.
    | DRRSDRows
      -- ^ @ROWS@
      -- Operates on the rows of a sheet.
    | DRRSDColumns
      -- ^ @COLUMNS@
      -- Operates on the columns of a sheet.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeleteRangeRequestShiftDimension

instance FromHttpApiData DeleteRangeRequestShiftDimension where
    parseQueryParam = \case
        "DIMENSION_UNSPECIFIED" -> Right DRRSDDimensionUnspecified
        "ROWS" -> Right DRRSDRows
        "COLUMNS" -> Right DRRSDColumns
        x -> Left ("Unable to parse DeleteRangeRequestShiftDimension from: " <> x)

instance ToHttpApiData DeleteRangeRequestShiftDimension where
    toQueryParam = \case
        DRRSDDimensionUnspecified -> "DIMENSION_UNSPECIFIED"
        DRRSDRows -> "ROWS"
        DRRSDColumns -> "COLUMNS"

instance FromJSON DeleteRangeRequestShiftDimension where
    parseJSON = parseJSONText "DeleteRangeRequestShiftDimension"

instance ToJSON DeleteRangeRequestShiftDimension where
    toJSON = toJSONText

-- | How dates, times, and durations should be represented in the output.
-- This is ignored if value_render_option is FORMATTED_VALUE. The default
-- dateTime render option is SERIAL_NUMBER.
data SpreadsheetsValuesBatchGetDateTimeRenderOption
    = SVBGDTROSerialNumber
      -- ^ @SERIAL_NUMBER@
      -- Instructs date, time, datetime, and duration fields to be output as
      -- doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The
      -- whole number portion of the value (left of the decimal) counts the days
      -- since December 30th 1899. The fractional portion (right of the decimal)
      -- counts the time as a fraction of the day. For example, January 1st 1900
      -- at noon would be 2.5, 2 because it\'s 2 days after December 30st 1899,
      -- and .5 because noon is half a day. February 1st 1900 at 3pm would be
      -- 33.625. This correctly treats the year 1900 as not a leap year.
    | SVBGDTROFormattedString
      -- ^ @FORMATTED_STRING@
      -- Instructs date, time, datetime, and duration fields to be output as
      -- strings in their given number format (which is dependent on the
      -- spreadsheet locale).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpreadsheetsValuesBatchGetDateTimeRenderOption

instance FromHttpApiData SpreadsheetsValuesBatchGetDateTimeRenderOption where
    parseQueryParam = \case
        "SERIAL_NUMBER" -> Right SVBGDTROSerialNumber
        "FORMATTED_STRING" -> Right SVBGDTROFormattedString
        x -> Left ("Unable to parse SpreadsheetsValuesBatchGetDateTimeRenderOption from: " <> x)

instance ToHttpApiData SpreadsheetsValuesBatchGetDateTimeRenderOption where
    toQueryParam = \case
        SVBGDTROSerialNumber -> "SERIAL_NUMBER"
        SVBGDTROFormattedString -> "FORMATTED_STRING"

instance FromJSON SpreadsheetsValuesBatchGetDateTimeRenderOption where
    parseJSON = parseJSONText "SpreadsheetsValuesBatchGetDateTimeRenderOption"

instance ToJSON SpreadsheetsValuesBatchGetDateTimeRenderOption where
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

-- | The major dimension of the values.
data DataFilterValueRangeMajorDimension
    = DFVRMDDimensionUnspecified
      -- ^ @DIMENSION_UNSPECIFIED@
      -- The default value, do not use.
    | DFVRMDRows
      -- ^ @ROWS@
      -- Operates on the rows of a sheet.
    | DFVRMDColumns
      -- ^ @COLUMNS@
      -- Operates on the columns of a sheet.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataFilterValueRangeMajorDimension

instance FromHttpApiData DataFilterValueRangeMajorDimension where
    parseQueryParam = \case
        "DIMENSION_UNSPECIFIED" -> Right DFVRMDDimensionUnspecified
        "ROWS" -> Right DFVRMDRows
        "COLUMNS" -> Right DFVRMDColumns
        x -> Left ("Unable to parse DataFilterValueRangeMajorDimension from: " <> x)

instance ToHttpApiData DataFilterValueRangeMajorDimension where
    toQueryParam = \case
        DFVRMDDimensionUnspecified -> "DIMENSION_UNSPECIFIED"
        DFVRMDRows -> "ROWS"
        DFVRMDColumns -> "COLUMNS"

instance FromJSON DataFilterValueRangeMajorDimension where
    parseJSON = parseJSONText "DataFilterValueRangeMajorDimension"

instance ToJSON DataFilterValueRangeMajorDimension where
    toJSON = toJSONText

-- | Where the legend of the chart should be drawn.
data BubbleChartSpecLegendPosition
    = BubbleChartLegendPositionUnspecified
      -- ^ @BUBBLE_CHART_LEGEND_POSITION_UNSPECIFIED@
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
    | InsideLegend
      -- ^ @INSIDE_LEGEND@
      -- The legend is rendered inside the chart area.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BubbleChartSpecLegendPosition

instance FromHttpApiData BubbleChartSpecLegendPosition where
    parseQueryParam = \case
        "BUBBLE_CHART_LEGEND_POSITION_UNSPECIFIED" -> Right BubbleChartLegendPositionUnspecified
        "BOTTOM_LEGEND" -> Right BottomLegend
        "LEFT_LEGEND" -> Right LeftLegend
        "RIGHT_LEGEND" -> Right RightLegend
        "TOP_LEGEND" -> Right TopLegend
        "NO_LEGEND" -> Right NoLegend
        "INSIDE_LEGEND" -> Right InsideLegend
        x -> Left ("Unable to parse BubbleChartSpecLegendPosition from: " <> x)

instance ToHttpApiData BubbleChartSpecLegendPosition where
    toQueryParam = \case
        BubbleChartLegendPositionUnspecified -> "BUBBLE_CHART_LEGEND_POSITION_UNSPECIFIED"
        BottomLegend -> "BOTTOM_LEGEND"
        LeftLegend -> "LEFT_LEGEND"
        RightLegend -> "RIGHT_LEGEND"
        TopLegend -> "TOP_LEGEND"
        NoLegend -> "NO_LEGEND"
        InsideLegend -> "INSIDE_LEGEND"

instance FromJSON BubbleChartSpecLegendPosition where
    parseJSON = parseJSONText "BubbleChartSpecLegendPosition"

instance ToJSON BubbleChartSpecLegendPosition where
    toJSON = toJSONText

-- | Determines how dates, times, and durations in the response should be
-- rendered. This is ignored if response_value_render_option is
-- FORMATTED_VALUE. The default dateTime render option is SERIAL_NUMBER.
data BatchUpdateValuesRequestResponseDateTimeRenderOption
    = BUVRRDTROSerialNumber
      -- ^ @SERIAL_NUMBER@
      -- Instructs date, time, datetime, and duration fields to be output as
      -- doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The
      -- whole number portion of the value (left of the decimal) counts the days
      -- since December 30th 1899. The fractional portion (right of the decimal)
      -- counts the time as a fraction of the day. For example, January 1st 1900
      -- at noon would be 2.5, 2 because it\'s 2 days after December 30st 1899,
      -- and .5 because noon is half a day. February 1st 1900 at 3pm would be
      -- 33.625. This correctly treats the year 1900 as not a leap year.
    | BUVRRDTROFormattedString
      -- ^ @FORMATTED_STRING@
      -- Instructs date, time, datetime, and duration fields to be output as
      -- strings in their given number format (which is dependent on the
      -- spreadsheet locale).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BatchUpdateValuesRequestResponseDateTimeRenderOption

instance FromHttpApiData BatchUpdateValuesRequestResponseDateTimeRenderOption where
    parseQueryParam = \case
        "SERIAL_NUMBER" -> Right BUVRRDTROSerialNumber
        "FORMATTED_STRING" -> Right BUVRRDTROFormattedString
        x -> Left ("Unable to parse BatchUpdateValuesRequestResponseDateTimeRenderOption from: " <> x)

instance ToHttpApiData BatchUpdateValuesRequestResponseDateTimeRenderOption where
    toQueryParam = \case
        BUVRRDTROSerialNumber -> "SERIAL_NUMBER"
        BUVRRDTROFormattedString -> "FORMATTED_STRING"

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

-- | Determines how dates, times, and durations in the response should be
-- rendered. This is ignored if response_value_render_option is
-- FORMATTED_VALUE. The default dateTime render option is SERIAL_NUMBER.
data SpreadsheetsValuesUpdateResponseDateTimeRenderOption
    = SVURDTROSerialNumber
      -- ^ @SERIAL_NUMBER@
      -- Instructs date, time, datetime, and duration fields to be output as
      -- doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The
      -- whole number portion of the value (left of the decimal) counts the days
      -- since December 30th 1899. The fractional portion (right of the decimal)
      -- counts the time as a fraction of the day. For example, January 1st 1900
      -- at noon would be 2.5, 2 because it\'s 2 days after December 30st 1899,
      -- and .5 because noon is half a day. February 1st 1900 at 3pm would be
      -- 33.625. This correctly treats the year 1900 as not a leap year.
    | SVURDTROFormattedString
      -- ^ @FORMATTED_STRING@
      -- Instructs date, time, datetime, and duration fields to be output as
      -- strings in their given number format (which is dependent on the
      -- spreadsheet locale).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpreadsheetsValuesUpdateResponseDateTimeRenderOption

instance FromHttpApiData SpreadsheetsValuesUpdateResponseDateTimeRenderOption where
    parseQueryParam = \case
        "SERIAL_NUMBER" -> Right SVURDTROSerialNumber
        "FORMATTED_STRING" -> Right SVURDTROFormattedString
        x -> Left ("Unable to parse SpreadsheetsValuesUpdateResponseDateTimeRenderOption from: " <> x)

instance ToHttpApiData SpreadsheetsValuesUpdateResponseDateTimeRenderOption where
    toQueryParam = \case
        SVURDTROSerialNumber -> "SERIAL_NUMBER"
        SVURDTROFormattedString -> "FORMATTED_STRING"

instance FromJSON SpreadsheetsValuesUpdateResponseDateTimeRenderOption where
    parseJSON = parseJSONText "SpreadsheetsValuesUpdateResponseDateTimeRenderOption"

instance ToJSON SpreadsheetsValuesUpdateResponseDateTimeRenderOption where
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

-- | How values should be represented in the output. The default render
-- option is FORMATTED_VALUE.
data BatchGetValuesByDataFilterRequestValueRenderOption
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

instance Hashable BatchGetValuesByDataFilterRequestValueRenderOption

instance FromHttpApiData BatchGetValuesByDataFilterRequestValueRenderOption where
    parseQueryParam = \case
        "FORMATTED_VALUE" -> Right FormattedValue
        "UNFORMATTED_VALUE" -> Right UnformattedValue
        "FORMULA" -> Right Formula
        x -> Left ("Unable to parse BatchGetValuesByDataFilterRequestValueRenderOption from: " <> x)

instance ToHttpApiData BatchGetValuesByDataFilterRequestValueRenderOption where
    toQueryParam = \case
        FormattedValue -> "FORMATTED_VALUE"
        UnformattedValue -> "UNFORMATTED_VALUE"
        Formula -> "FORMULA"

instance FromJSON BatchGetValuesByDataFilterRequestValueRenderOption where
    parseJSON = parseJSONText "BatchGetValuesByDataFilterRequestValueRenderOption"

instance ToJSON BatchGetValuesByDataFilterRequestValueRenderOption where
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

-- | How the input data should be interpreted.
data SpreadsheetsValuesUpdateValueInputOption
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

instance Hashable SpreadsheetsValuesUpdateValueInputOption

instance FromHttpApiData SpreadsheetsValuesUpdateValueInputOption where
    parseQueryParam = \case
        "INPUT_VALUE_OPTION_UNSPECIFIED" -> Right InputValueOptionUnspecified
        "RAW" -> Right Raw
        "USER_ENTERED" -> Right UserEntered
        x -> Left ("Unable to parse SpreadsheetsValuesUpdateValueInputOption from: " <> x)

instance ToHttpApiData SpreadsheetsValuesUpdateValueInputOption where
    toQueryParam = \case
        InputValueOptionUnspecified -> "INPUT_VALUE_OPTION_UNSPECIFIED"
        Raw -> "RAW"
        UserEntered -> "USER_ENTERED"

instance FromJSON SpreadsheetsValuesUpdateValueInputOption where
    parseJSON = parseJSONText "SpreadsheetsValuesUpdateValueInputOption"

instance ToJSON SpreadsheetsValuesUpdateValueInputOption where
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
      -- non-empty, this behaves the same as \`CLIP\`. The text will never wrap
      -- to the next line unless the user manually inserts a new line. Example: |
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

-- | The scope of the refresh. Must be ALL_DATA_SOURCES.
data DataSourceRefreshScheduleRefreshScope
    = DataSourceRefreshScopeUnspecified
      -- ^ @DATA_SOURCE_REFRESH_SCOPE_UNSPECIFIED@
      -- Default value, do not use.
    | AllDataSources
      -- ^ @ALL_DATA_SOURCES@
      -- Refreshes all data sources and their associated data source objects in
      -- the spreadsheet.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataSourceRefreshScheduleRefreshScope

instance FromHttpApiData DataSourceRefreshScheduleRefreshScope where
    parseQueryParam = \case
        "DATA_SOURCE_REFRESH_SCOPE_UNSPECIFIED" -> Right DataSourceRefreshScopeUnspecified
        "ALL_DATA_SOURCES" -> Right AllDataSources
        x -> Left ("Unable to parse DataSourceRefreshScheduleRefreshScope from: " <> x)

instance ToHttpApiData DataSourceRefreshScheduleRefreshScope where
    toQueryParam = \case
        DataSourceRefreshScopeUnspecified -> "DATA_SOURCE_REFRESH_SCOPE_UNSPECIFIED"
        AllDataSources -> "ALL_DATA_SOURCES"

instance FromJSON DataSourceRefreshScheduleRefreshScope where
    parseJSON = parseJSONText "DataSourceRefreshScheduleRefreshScope"

instance ToJSON DataSourceRefreshScheduleRefreshScope where
    toJSON = toJSONText

-- | Determines how values in the response should be rendered. The default
-- render option is FORMATTED_VALUE.
data SpreadsheetsValuesAppendResponseValueRenderOption
    = SVARVROFormattedValue
      -- ^ @FORMATTED_VALUE@
      -- Values will be calculated & formatted in the reply according to the
      -- cell\'s formatting. Formatting is based on the spreadsheet\'s locale,
      -- not the requesting user\'s locale. For example, if \`A1\` is \`1.23\`
      -- and \`A2\` is \`=A1\` and formatted as currency, then \`A2\` would
      -- return \`\"$1.23\"\`.
    | SVARVROUnformattedValue
      -- ^ @UNFORMATTED_VALUE@
      -- Values will be calculated, but not formatted in the reply. For example,
      -- if \`A1\` is \`1.23\` and \`A2\` is \`=A1\` and formatted as currency,
      -- then \`A2\` would return the number \`1.23\`.
    | SVARVROFormula
      -- ^ @FORMULA@
      -- Values will not be calculated. The reply will include the formulas. For
      -- example, if \`A1\` is \`1.23\` and \`A2\` is \`=A1\` and formatted as
      -- currency, then A2 would return \`\"=A1\"\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpreadsheetsValuesAppendResponseValueRenderOption

instance FromHttpApiData SpreadsheetsValuesAppendResponseValueRenderOption where
    parseQueryParam = \case
        "FORMATTED_VALUE" -> Right SVARVROFormattedValue
        "UNFORMATTED_VALUE" -> Right SVARVROUnformattedValue
        "FORMULA" -> Right SVARVROFormula
        x -> Left ("Unable to parse SpreadsheetsValuesAppendResponseValueRenderOption from: " <> x)

instance ToHttpApiData SpreadsheetsValuesAppendResponseValueRenderOption where
    toQueryParam = \case
        SVARVROFormattedValue -> "FORMATTED_VALUE"
        SVARVROUnformattedValue -> "UNFORMATTED_VALUE"
        SVARVROFormula -> "FORMULA"

instance FromJSON SpreadsheetsValuesAppendResponseValueRenderOption where
    parseJSON = parseJSONText "SpreadsheetsValuesAppendResponseValueRenderOption"

instance ToJSON SpreadsheetsValuesAppendResponseValueRenderOption where
    toJSON = toJSONText

-- | How the input data should be interpreted.
data BatchUpdateValuesRequestValueInputOption
    = BUVRVIOInputValueOptionUnspecified
      -- ^ @INPUT_VALUE_OPTION_UNSPECIFIED@
      -- Default input value. This value must not be used.
    | BUVRVIORaw
      -- ^ @RAW@
      -- The values the user has entered will not be parsed and will be stored
      -- as-is.
    | BUVRVIOUserEntered
      -- ^ @USER_ENTERED@
      -- The values will be parsed as if the user typed them into the UI. Numbers
      -- will stay as numbers, but strings may be converted to numbers, dates,
      -- etc. following the same rules that are applied when entering text into a
      -- cell via the Google Sheets UI.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BatchUpdateValuesRequestValueInputOption

instance FromHttpApiData BatchUpdateValuesRequestValueInputOption where
    parseQueryParam = \case
        "INPUT_VALUE_OPTION_UNSPECIFIED" -> Right BUVRVIOInputValueOptionUnspecified
        "RAW" -> Right BUVRVIORaw
        "USER_ENTERED" -> Right BUVRVIOUserEntered
        x -> Left ("Unable to parse BatchUpdateValuesRequestValueInputOption from: " <> x)

instance ToHttpApiData BatchUpdateValuesRequestValueInputOption where
    toQueryParam = \case
        BUVRVIOInputValueOptionUnspecified -> "INPUT_VALUE_OPTION_UNSPECIFIED"
        BUVRVIORaw -> "RAW"
        BUVRVIOUserEntered -> "USER_ENTERED"

instance FromJSON BatchUpdateValuesRequestValueInputOption where
    parseJSON = parseJSONText "BatchUpdateValuesRequestValueInputOption"

instance ToJSON BatchUpdateValuesRequestValueInputOption where
    toJSON = toJSONText

-- | Determines how values in the response should be rendered. The default
-- render option is FORMATTED_VALUE.
data SpreadsheetsValuesUpdateResponseValueRenderOption
    = SVURVROFormattedValue
      -- ^ @FORMATTED_VALUE@
      -- Values will be calculated & formatted in the reply according to the
      -- cell\'s formatting. Formatting is based on the spreadsheet\'s locale,
      -- not the requesting user\'s locale. For example, if \`A1\` is \`1.23\`
      -- and \`A2\` is \`=A1\` and formatted as currency, then \`A2\` would
      -- return \`\"$1.23\"\`.
    | SVURVROUnformattedValue
      -- ^ @UNFORMATTED_VALUE@
      -- Values will be calculated, but not formatted in the reply. For example,
      -- if \`A1\` is \`1.23\` and \`A2\` is \`=A1\` and formatted as currency,
      -- then \`A2\` would return the number \`1.23\`.
    | SVURVROFormula
      -- ^ @FORMULA@
      -- Values will not be calculated. The reply will include the formulas. For
      -- example, if \`A1\` is \`1.23\` and \`A2\` is \`=A1\` and formatted as
      -- currency, then A2 would return \`\"=A1\"\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpreadsheetsValuesUpdateResponseValueRenderOption

instance FromHttpApiData SpreadsheetsValuesUpdateResponseValueRenderOption where
    parseQueryParam = \case
        "FORMATTED_VALUE" -> Right SVURVROFormattedValue
        "UNFORMATTED_VALUE" -> Right SVURVROUnformattedValue
        "FORMULA" -> Right SVURVROFormula
        x -> Left ("Unable to parse SpreadsheetsValuesUpdateResponseValueRenderOption from: " <> x)

instance ToHttpApiData SpreadsheetsValuesUpdateResponseValueRenderOption where
    toQueryParam = \case
        SVURVROFormattedValue -> "FORMATTED_VALUE"
        SVURVROUnformattedValue -> "UNFORMATTED_VALUE"
        SVURVROFormula -> "FORMULA"

instance FromJSON SpreadsheetsValuesUpdateResponseValueRenderOption where
    parseJSON = parseJSONText "SpreadsheetsValuesUpdateResponseValueRenderOption"

instance ToJSON SpreadsheetsValuesUpdateResponseValueRenderOption where
    toJSON = toJSONText

-- | Horizontal alignment setting for the piece of text.
data TextPositionHorizontalAlignment
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

instance Hashable TextPositionHorizontalAlignment

instance FromHttpApiData TextPositionHorizontalAlignment where
    parseQueryParam = \case
        "HORIZONTAL_ALIGN_UNSPECIFIED" -> Right HorizontalAlignUnspecified
        "LEFT" -> Right Left'
        "CENTER" -> Right Center
        "RIGHT" -> Right Right'
        x -> Left ("Unable to parse TextPositionHorizontalAlignment from: " <> x)

instance ToHttpApiData TextPositionHorizontalAlignment where
    toQueryParam = \case
        HorizontalAlignUnspecified -> "HORIZONTAL_ALIGN_UNSPECIFIED"
        Left' -> "LEFT"
        Center -> "CENTER"
        Right' -> "RIGHT"

instance FromJSON TextPositionHorizontalAlignment where
    parseJSON = parseJSONText "TextPositionHorizontalAlignment"

instance ToJSON TextPositionHorizontalAlignment where
    toJSON = toJSONText

-- | The metadata visibility. Developer metadata must always have a
-- visibility specified.
data DeveloperMetadataVisibility
    = DeveloperMetadataVisibilityUnspecified
      -- ^ @DEVELOPER_METADATA_VISIBILITY_UNSPECIFIED@
      -- Default value.
    | Document
      -- ^ @DOCUMENT@
      -- Document-visible metadata is accessible from any developer project with
      -- access to the document.
    | Project
      -- ^ @PROJECT@
      -- Project-visible metadata is only visible to and accessible by the
      -- developer project that created the metadata.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeveloperMetadataVisibility

instance FromHttpApiData DeveloperMetadataVisibility where
    parseQueryParam = \case
        "DEVELOPER_METADATA_VISIBILITY_UNSPECIFIED" -> Right DeveloperMetadataVisibilityUnspecified
        "DOCUMENT" -> Right Document
        "PROJECT" -> Right Project
        x -> Left ("Unable to parse DeveloperMetadataVisibility from: " <> x)

instance ToHttpApiData DeveloperMetadataVisibility where
    toQueryParam = \case
        DeveloperMetadataVisibilityUnspecified -> "DEVELOPER_METADATA_VISIBILITY_UNSPECIFIED"
        Document -> "DOCUMENT"
        Project -> "PROJECT"

instance FromJSON DeveloperMetadataVisibility where
    parseJSON = parseJSONText "DeveloperMetadataVisibility"

instance ToJSON DeveloperMetadataVisibility where
    toJSON = toJSONText

-- | Determines how values in the response should be rendered. The default
-- render option is FORMATTED_VALUE.
data BatchUpdateValuesRequestResponseValueRenderOption
    = BUVRRVROFormattedValue
      -- ^ @FORMATTED_VALUE@
      -- Values will be calculated & formatted in the reply according to the
      -- cell\'s formatting. Formatting is based on the spreadsheet\'s locale,
      -- not the requesting user\'s locale. For example, if \`A1\` is \`1.23\`
      -- and \`A2\` is \`=A1\` and formatted as currency, then \`A2\` would
      -- return \`\"$1.23\"\`.
    | BUVRRVROUnformattedValue
      -- ^ @UNFORMATTED_VALUE@
      -- Values will be calculated, but not formatted in the reply. For example,
      -- if \`A1\` is \`1.23\` and \`A2\` is \`=A1\` and formatted as currency,
      -- then \`A2\` would return the number \`1.23\`.
    | BUVRRVROFormula
      -- ^ @FORMULA@
      -- Values will not be calculated. The reply will include the formulas. For
      -- example, if \`A1\` is \`1.23\` and \`A2\` is \`=A1\` and formatted as
      -- currency, then A2 would return \`\"=A1\"\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BatchUpdateValuesRequestResponseValueRenderOption

instance FromHttpApiData BatchUpdateValuesRequestResponseValueRenderOption where
    parseQueryParam = \case
        "FORMATTED_VALUE" -> Right BUVRRVROFormattedValue
        "UNFORMATTED_VALUE" -> Right BUVRRVROUnformattedValue
        "FORMULA" -> Right BUVRRVROFormula
        x -> Left ("Unable to parse BatchUpdateValuesRequestResponseValueRenderOption from: " <> x)

instance ToHttpApiData BatchUpdateValuesRequestResponseValueRenderOption where
    toQueryParam = \case
        BUVRRVROFormattedValue -> "FORMATTED_VALUE"
        BUVRRVROUnformattedValue -> "UNFORMATTED_VALUE"
        BUVRRVROFormula -> "FORMULA"

instance FromJSON BatchUpdateValuesRequestResponseValueRenderOption where
    parseJSON = parseJSONText "BatchUpdateValuesRequestResponseValueRenderOption"

instance ToJSON BatchUpdateValuesRequestResponseValueRenderOption where
    toJSON = toJSONText

-- | How values should be represented in the output. The default render
-- option is ValueRenderOption.FORMATTED_VALUE.
data SpreadsheetsValuesBatchGetValueRenderOption
    = SVBGVROFormattedValue
      -- ^ @FORMATTED_VALUE@
      -- Values will be calculated & formatted in the reply according to the
      -- cell\'s formatting. Formatting is based on the spreadsheet\'s locale,
      -- not the requesting user\'s locale. For example, if \`A1\` is \`1.23\`
      -- and \`A2\` is \`=A1\` and formatted as currency, then \`A2\` would
      -- return \`\"$1.23\"\`.
    | SVBGVROUnformattedValue
      -- ^ @UNFORMATTED_VALUE@
      -- Values will be calculated, but not formatted in the reply. For example,
      -- if \`A1\` is \`1.23\` and \`A2\` is \`=A1\` and formatted as currency,
      -- then \`A2\` would return the number \`1.23\`.
    | SVBGVROFormula
      -- ^ @FORMULA@
      -- Values will not be calculated. The reply will include the formulas. For
      -- example, if \`A1\` is \`1.23\` and \`A2\` is \`=A1\` and formatted as
      -- currency, then A2 would return \`\"=A1\"\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpreadsheetsValuesBatchGetValueRenderOption

instance FromHttpApiData SpreadsheetsValuesBatchGetValueRenderOption where
    parseQueryParam = \case
        "FORMATTED_VALUE" -> Right SVBGVROFormattedValue
        "UNFORMATTED_VALUE" -> Right SVBGVROUnformattedValue
        "FORMULA" -> Right SVBGVROFormula
        x -> Left ("Unable to parse SpreadsheetsValuesBatchGetValueRenderOption from: " <> x)

instance ToHttpApiData SpreadsheetsValuesBatchGetValueRenderOption where
    toQueryParam = \case
        SVBGVROFormattedValue -> "FORMATTED_VALUE"
        SVBGVROUnformattedValue -> "UNFORMATTED_VALUE"
        SVBGVROFormula -> "FORMULA"

instance FromJSON SpreadsheetsValuesBatchGetValueRenderOption where
    parseJSON = parseJSONText "SpreadsheetsValuesBatchGetValueRenderOption"

instance ToJSON SpreadsheetsValuesBatchGetValueRenderOption where
    toJSON = toJSONText

-- | Where the legend of the pie chart should be drawn.
data PieChartSpecLegendPosition
    = PCSLPPieChartLegendPositionUnspecified
      -- ^ @PIE_CHART_LEGEND_POSITION_UNSPECIFIED@
      -- Default value, do not use.
    | PCSLPBottomLegend
      -- ^ @BOTTOM_LEGEND@
      -- The legend is rendered on the bottom of the chart.
    | PCSLPLeftLegend
      -- ^ @LEFT_LEGEND@
      -- The legend is rendered on the left of the chart.
    | PCSLPRightLegend
      -- ^ @RIGHT_LEGEND@
      -- The legend is rendered on the right of the chart.
    | PCSLPTopLegend
      -- ^ @TOP_LEGEND@
      -- The legend is rendered on the top of the chart.
    | PCSLPNoLegend
      -- ^ @NO_LEGEND@
      -- No legend is rendered.
    | PCSLPLabeledLegend
      -- ^ @LABELED_LEGEND@
      -- Each pie slice has a label attached to it.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PieChartSpecLegendPosition

instance FromHttpApiData PieChartSpecLegendPosition where
    parseQueryParam = \case
        "PIE_CHART_LEGEND_POSITION_UNSPECIFIED" -> Right PCSLPPieChartLegendPositionUnspecified
        "BOTTOM_LEGEND" -> Right PCSLPBottomLegend
        "LEFT_LEGEND" -> Right PCSLPLeftLegend
        "RIGHT_LEGEND" -> Right PCSLPRightLegend
        "TOP_LEGEND" -> Right PCSLPTopLegend
        "NO_LEGEND" -> Right PCSLPNoLegend
        "LABELED_LEGEND" -> Right PCSLPLabeledLegend
        x -> Left ("Unable to parse PieChartSpecLegendPosition from: " <> x)

instance ToHttpApiData PieChartSpecLegendPosition where
    toQueryParam = \case
        PCSLPPieChartLegendPositionUnspecified -> "PIE_CHART_LEGEND_POSITION_UNSPECIFIED"
        PCSLPBottomLegend -> "BOTTOM_LEGEND"
        PCSLPLeftLegend -> "LEFT_LEGEND"
        PCSLPRightLegend -> "RIGHT_LEGEND"
        PCSLPTopLegend -> "TOP_LEGEND"
        PCSLPNoLegend -> "NO_LEGEND"
        PCSLPLabeledLegend -> "LABELED_LEGEND"

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
    | DateTime''
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
        "DATE_TIME" -> Right DateTime''
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
        DateTime'' -> "DATE_TIME"
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

-- | The type of the spreadsheet theme color.
data ThemeColorPairColorType
    = TCPCTThemeColorTypeUnspecified
      -- ^ @THEME_COLOR_TYPE_UNSPECIFIED@
      -- Unspecified theme color
    | TCPCTText
      -- ^ @TEXT@
      -- Represents the primary text color
    | TCPCTBackgRound
      -- ^ @BACKGROUND@
      -- Represents the primary background color
    | TCPCTACCENT1
      -- ^ @ACCENT1@
      -- Represents the first accent color
    | TCPCTACCENT2
      -- ^ @ACCENT2@
      -- Represents the second accent color
    | TCPCTACCENT3
      -- ^ @ACCENT3@
      -- Represents the third accent color
    | TCPCTACCENT4
      -- ^ @ACCENT4@
      -- Represents the fourth accent color
    | TCPCTACCENT5
      -- ^ @ACCENT5@
      -- Represents the fifth accent color
    | TCPCTACCENT6
      -- ^ @ACCENT6@
      -- Represents the sixth accent color
    | TCPCTLink
      -- ^ @LINK@
      -- Represents the color to use for hyperlinks
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ThemeColorPairColorType

instance FromHttpApiData ThemeColorPairColorType where
    parseQueryParam = \case
        "THEME_COLOR_TYPE_UNSPECIFIED" -> Right TCPCTThemeColorTypeUnspecified
        "TEXT" -> Right TCPCTText
        "BACKGROUND" -> Right TCPCTBackgRound
        "ACCENT1" -> Right TCPCTACCENT1
        "ACCENT2" -> Right TCPCTACCENT2
        "ACCENT3" -> Right TCPCTACCENT3
        "ACCENT4" -> Right TCPCTACCENT4
        "ACCENT5" -> Right TCPCTACCENT5
        "ACCENT6" -> Right TCPCTACCENT6
        "LINK" -> Right TCPCTLink
        x -> Left ("Unable to parse ThemeColorPairColorType from: " <> x)

instance ToHttpApiData ThemeColorPairColorType where
    toQueryParam = \case
        TCPCTThemeColorTypeUnspecified -> "THEME_COLOR_TYPE_UNSPECIFIED"
        TCPCTText -> "TEXT"
        TCPCTBackgRound -> "BACKGROUND"
        TCPCTACCENT1 -> "ACCENT1"
        TCPCTACCENT2 -> "ACCENT2"
        TCPCTACCENT3 -> "ACCENT3"
        TCPCTACCENT4 -> "ACCENT4"
        TCPCTACCENT5 -> "ACCENT5"
        TCPCTACCENT6 -> "ACCENT6"
        TCPCTLink -> "LINK"

instance FromJSON ThemeColorPairColorType where
    parseJSON = parseJSONText "ThemeColorPairColorType"

instance ToJSON ThemeColorPairColorType where
    toJSON = toJSONText

-- | The type of location this object represents. This field is read-only.
data DeveloperMetadataLocationLocationType
    = DMLLTDeveloperMetadataLocationTypeUnspecified
      -- ^ @DEVELOPER_METADATA_LOCATION_TYPE_UNSPECIFIED@
      -- Default value.
    | DMLLTRow
      -- ^ @ROW@
      -- Developer metadata associated on an entire row dimension.
    | DMLLTColumn
      -- ^ @COLUMN@
      -- Developer metadata associated on an entire column dimension.
    | DMLLTSheet
      -- ^ @SHEET@
      -- Developer metadata associated on an entire sheet.
    | DMLLTSpreadsheet
      -- ^ @SPREADSHEET@
      -- Developer metadata associated on the entire spreadsheet.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeveloperMetadataLocationLocationType

instance FromHttpApiData DeveloperMetadataLocationLocationType where
    parseQueryParam = \case
        "DEVELOPER_METADATA_LOCATION_TYPE_UNSPECIFIED" -> Right DMLLTDeveloperMetadataLocationTypeUnspecified
        "ROW" -> Right DMLLTRow
        "COLUMN" -> Right DMLLTColumn
        "SHEET" -> Right DMLLTSheet
        "SPREADSHEET" -> Right DMLLTSpreadsheet
        x -> Left ("Unable to parse DeveloperMetadataLocationLocationType from: " <> x)

instance ToHttpApiData DeveloperMetadataLocationLocationType where
    toQueryParam = \case
        DMLLTDeveloperMetadataLocationTypeUnspecified -> "DEVELOPER_METADATA_LOCATION_TYPE_UNSPECIFIED"
        DMLLTRow -> "ROW"
        DMLLTColumn -> "COLUMN"
        DMLLTSheet -> "SHEET"
        DMLLTSpreadsheet -> "SPREADSHEET"

instance FromJSON DeveloperMetadataLocationLocationType where
    parseJSON = parseJSONText "DeveloperMetadataLocationLocationType"

instance ToJSON DeveloperMetadataLocationLocationType where
    toJSON = toJSONText

-- | The error code.
data DataExecutionStatusErrorCode
    = DataExecutionErrorCodeUnspecified
      -- ^ @DATA_EXECUTION_ERROR_CODE_UNSPECIFIED@
      -- Default value, do not use.
    | TimedOut
      -- ^ @TIMED_OUT@
      -- The data execution timed out.
    | TooManyRows
      -- ^ @TOO_MANY_ROWS@
      -- The data execution returns more rows than the limit.
    | TooManyCells
      -- ^ @TOO_MANY_CELLS@
      -- The data execution returns more cells than the limit.
    | Engine
      -- ^ @ENGINE@
      -- Error is received from the backend data execution engine (e.g.
      -- BigQuery). Check error_message for details.
    | ParameterInvalid
      -- ^ @PARAMETER_INVALID@
      -- One or some of the provided data source parameters are invalid.
    | UnsupportedDataType
      -- ^ @UNSUPPORTED_DATA_TYPE@
      -- The data execution returns an unsupported data type.
    | DuplicateColumnNames
      -- ^ @DUPLICATE_COLUMN_NAMES@
      -- The data execution returns duplicate column names or aliases.
    | Interrupted
      -- ^ @INTERRUPTED@
      -- The data execution is interrupted. Please refresh later.
    | ConcurrentQuery
      -- ^ @CONCURRENT_QUERY@
      -- The data execution is currently in progress, can not be refreshed until
      -- it completes.
    | Other
      -- ^ @OTHER@
      -- Other errors.
    | TooManyCharsPerCell
      -- ^ @TOO_MANY_CHARS_PER_CELL@
      -- The data execution returns values that exceed the maximum characters
      -- allowed in a single cell.
    | DataNotFound
      -- ^ @DATA_NOT_FOUND@
      -- The database referenced by the data source is not found. *\/
    | PermissionDenied
      -- ^ @PERMISSION_DENIED@
      -- The user does not have access to the database referenced by the data
      -- source.
    | MissingColumnAlias
      -- ^ @MISSING_COLUMN_ALIAS@
      -- The data execution returns columns with missing aliases.
    | ObjectNotFound
      -- ^ @OBJECT_NOT_FOUND@
      -- The data source object does not exist.
    | ObjectInErrorState
      -- ^ @OBJECT_IN_ERROR_STATE@
      -- The data source object is currently in error state. To force refresh,
      -- set force in RefreshDataSourceRequest.
    | ObjectSpecInvalid
      -- ^ @OBJECT_SPEC_INVALID@
      -- The data source object specification is invalid.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataExecutionStatusErrorCode

instance FromHttpApiData DataExecutionStatusErrorCode where
    parseQueryParam = \case
        "DATA_EXECUTION_ERROR_CODE_UNSPECIFIED" -> Right DataExecutionErrorCodeUnspecified
        "TIMED_OUT" -> Right TimedOut
        "TOO_MANY_ROWS" -> Right TooManyRows
        "TOO_MANY_CELLS" -> Right TooManyCells
        "ENGINE" -> Right Engine
        "PARAMETER_INVALID" -> Right ParameterInvalid
        "UNSUPPORTED_DATA_TYPE" -> Right UnsupportedDataType
        "DUPLICATE_COLUMN_NAMES" -> Right DuplicateColumnNames
        "INTERRUPTED" -> Right Interrupted
        "CONCURRENT_QUERY" -> Right ConcurrentQuery
        "OTHER" -> Right Other
        "TOO_MANY_CHARS_PER_CELL" -> Right TooManyCharsPerCell
        "DATA_NOT_FOUND" -> Right DataNotFound
        "PERMISSION_DENIED" -> Right PermissionDenied
        "MISSING_COLUMN_ALIAS" -> Right MissingColumnAlias
        "OBJECT_NOT_FOUND" -> Right ObjectNotFound
        "OBJECT_IN_ERROR_STATE" -> Right ObjectInErrorState
        "OBJECT_SPEC_INVALID" -> Right ObjectSpecInvalid
        x -> Left ("Unable to parse DataExecutionStatusErrorCode from: " <> x)

instance ToHttpApiData DataExecutionStatusErrorCode where
    toQueryParam = \case
        DataExecutionErrorCodeUnspecified -> "DATA_EXECUTION_ERROR_CODE_UNSPECIFIED"
        TimedOut -> "TIMED_OUT"
        TooManyRows -> "TOO_MANY_ROWS"
        TooManyCells -> "TOO_MANY_CELLS"
        Engine -> "ENGINE"
        ParameterInvalid -> "PARAMETER_INVALID"
        UnsupportedDataType -> "UNSUPPORTED_DATA_TYPE"
        DuplicateColumnNames -> "DUPLICATE_COLUMN_NAMES"
        Interrupted -> "INTERRUPTED"
        ConcurrentQuery -> "CONCURRENT_QUERY"
        Other -> "OTHER"
        TooManyCharsPerCell -> "TOO_MANY_CHARS_PER_CELL"
        DataNotFound -> "DATA_NOT_FOUND"
        PermissionDenied -> "PERMISSION_DENIED"
        MissingColumnAlias -> "MISSING_COLUMN_ALIAS"
        ObjectNotFound -> "OBJECT_NOT_FOUND"
        ObjectInErrorState -> "OBJECT_IN_ERROR_STATE"
        ObjectSpecInvalid -> "OBJECT_SPEC_INVALID"

instance FromJSON DataExecutionStatusErrorCode where
    parseJSON = parseJSONText "DataExecutionStatusErrorCode"

instance ToJSON DataExecutionStatusErrorCode where
    toJSON = toJSONText

data DataSourceRefreshWeeklyScheduleDaysOfWeekItem
    = DayOfWeekUnspecified
      -- ^ @DAY_OF_WEEK_UNSPECIFIED@
      -- The day of the week is unspecified.
    | Monday
      -- ^ @MONDAY@
      -- Monday
    | Tuesday
      -- ^ @TUESDAY@
      -- Tuesday
    | Wednesday
      -- ^ @WEDNESDAY@
      -- Wednesday
    | Thursday
      -- ^ @THURSDAY@
      -- Thursday
    | Friday
      -- ^ @FRIDAY@
      -- Friday
    | Saturday
      -- ^ @SATURDAY@
      -- Saturday
    | Sunday
      -- ^ @SUNDAY@
      -- Sunday
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataSourceRefreshWeeklyScheduleDaysOfWeekItem

instance FromHttpApiData DataSourceRefreshWeeklyScheduleDaysOfWeekItem where
    parseQueryParam = \case
        "DAY_OF_WEEK_UNSPECIFIED" -> Right DayOfWeekUnspecified
        "MONDAY" -> Right Monday
        "TUESDAY" -> Right Tuesday
        "WEDNESDAY" -> Right Wednesday
        "THURSDAY" -> Right Thursday
        "FRIDAY" -> Right Friday
        "SATURDAY" -> Right Saturday
        "SUNDAY" -> Right Sunday
        x -> Left ("Unable to parse DataSourceRefreshWeeklyScheduleDaysOfWeekItem from: " <> x)

instance ToHttpApiData DataSourceRefreshWeeklyScheduleDaysOfWeekItem where
    toQueryParam = \case
        DayOfWeekUnspecified -> "DAY_OF_WEEK_UNSPECIFIED"
        Monday -> "MONDAY"
        Tuesday -> "TUESDAY"
        Wednesday -> "WEDNESDAY"
        Thursday -> "THURSDAY"
        Friday -> "FRIDAY"
        Saturday -> "SATURDAY"
        Sunday -> "SUNDAY"

instance FromJSON DataSourceRefreshWeeklyScheduleDaysOfWeekItem where
    parseJSON = parseJSONText "DataSourceRefreshWeeklyScheduleDaysOfWeekItem"

instance ToJSON DataSourceRefreshWeeklyScheduleDaysOfWeekItem where
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

-- | The horizontal alignment of title in the slicer. If unspecified,
-- defaults to \`LEFT\`
data SlicerSpecHorizontalAlignment
    = SSHAHorizontalAlignUnspecified
      -- ^ @HORIZONTAL_ALIGN_UNSPECIFIED@
      -- The horizontal alignment is not specified. Do not use this.
    | SSHALeft'
      -- ^ @LEFT@
      -- The text is explicitly aligned to the left of the cell.
    | SSHACenter
      -- ^ @CENTER@
      -- The text is explicitly aligned to the center of the cell.
    | SSHARight'
      -- ^ @RIGHT@
      -- The text is explicitly aligned to the right of the cell.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SlicerSpecHorizontalAlignment

instance FromHttpApiData SlicerSpecHorizontalAlignment where
    parseQueryParam = \case
        "HORIZONTAL_ALIGN_UNSPECIFIED" -> Right SSHAHorizontalAlignUnspecified
        "LEFT" -> Right SSHALeft'
        "CENTER" -> Right SSHACenter
        "RIGHT" -> Right SSHARight'
        x -> Left ("Unable to parse SlicerSpecHorizontalAlignment from: " <> x)

instance ToHttpApiData SlicerSpecHorizontalAlignment where
    toQueryParam = \case
        SSHAHorizontalAlignUnspecified -> "HORIZONTAL_ALIGN_UNSPECIFIED"
        SSHALeft' -> "LEFT"
        SSHACenter -> "CENTER"
        SSHARight' -> "RIGHT"

instance FromJSON SlicerSpecHorizontalAlignment where
    parseJSON = parseJSONText "SlicerSpecHorizontalAlignment"

instance ToJSON SlicerSpecHorizontalAlignment where
    toJSON = toJSONText

-- | Theme color.
data ColorStyleThemeColor
    = CSTCThemeColorTypeUnspecified
      -- ^ @THEME_COLOR_TYPE_UNSPECIFIED@
      -- Unspecified theme color
    | CSTCText
      -- ^ @TEXT@
      -- Represents the primary text color
    | CSTCBackgRound
      -- ^ @BACKGROUND@
      -- Represents the primary background color
    | CSTCACCENT1
      -- ^ @ACCENT1@
      -- Represents the first accent color
    | CSTCACCENT2
      -- ^ @ACCENT2@
      -- Represents the second accent color
    | CSTCACCENT3
      -- ^ @ACCENT3@
      -- Represents the third accent color
    | CSTCACCENT4
      -- ^ @ACCENT4@
      -- Represents the fourth accent color
    | CSTCACCENT5
      -- ^ @ACCENT5@
      -- Represents the fifth accent color
    | CSTCACCENT6
      -- ^ @ACCENT6@
      -- Represents the sixth accent color
    | CSTCLink
      -- ^ @LINK@
      -- Represents the color to use for hyperlinks
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ColorStyleThemeColor

instance FromHttpApiData ColorStyleThemeColor where
    parseQueryParam = \case
        "THEME_COLOR_TYPE_UNSPECIFIED" -> Right CSTCThemeColorTypeUnspecified
        "TEXT" -> Right CSTCText
        "BACKGROUND" -> Right CSTCBackgRound
        "ACCENT1" -> Right CSTCACCENT1
        "ACCENT2" -> Right CSTCACCENT2
        "ACCENT3" -> Right CSTCACCENT3
        "ACCENT4" -> Right CSTCACCENT4
        "ACCENT5" -> Right CSTCACCENT5
        "ACCENT6" -> Right CSTCACCENT6
        "LINK" -> Right CSTCLink
        x -> Left ("Unable to parse ColorStyleThemeColor from: " <> x)

instance ToHttpApiData ColorStyleThemeColor where
    toQueryParam = \case
        CSTCThemeColorTypeUnspecified -> "THEME_COLOR_TYPE_UNSPECIFIED"
        CSTCText -> "TEXT"
        CSTCBackgRound -> "BACKGROUND"
        CSTCACCENT1 -> "ACCENT1"
        CSTCACCENT2 -> "ACCENT2"
        CSTCACCENT3 -> "ACCENT3"
        CSTCACCENT4 -> "ACCENT4"
        CSTCACCENT5 -> "ACCENT5"
        CSTCACCENT6 -> "ACCENT6"
        CSTCLink -> "LINK"

instance FromJSON ColorStyleThemeColor where
    parseJSON = parseJSONText "ColorStyleThemeColor"

instance ToJSON ColorStyleThemeColor where
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

-- | The size of the org chart nodes.
data OrgChartSpecNodeSize
    = OrgChartLabelSizeUnspecified
      -- ^ @ORG_CHART_LABEL_SIZE_UNSPECIFIED@
      -- Default value, do not use.
    | Small
      -- ^ @SMALL@
      -- The small org chart node size.
    | Medium
      -- ^ @MEDIUM@
      -- The medium org chart node size.
    | Large
      -- ^ @LARGE@
      -- The large org chart node size.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable OrgChartSpecNodeSize

instance FromHttpApiData OrgChartSpecNodeSize where
    parseQueryParam = \case
        "ORG_CHART_LABEL_SIZE_UNSPECIFIED" -> Right OrgChartLabelSizeUnspecified
        "SMALL" -> Right Small
        "MEDIUM" -> Right Medium
        "LARGE" -> Right Large
        x -> Left ("Unable to parse OrgChartSpecNodeSize from: " <> x)

instance ToHttpApiData OrgChartSpecNodeSize where
    toQueryParam = \case
        OrgChartLabelSizeUnspecified -> "ORG_CHART_LABEL_SIZE_UNSPECIFIED"
        Small -> "SMALL"
        Medium -> "MEDIUM"
        Large -> "LARGE"

instance FromJSON OrgChartSpecNodeSize where
    parseJSON = parseJSONText "OrgChartSpecNodeSize"

instance ToJSON OrgChartSpecNodeSize where
    toJSON = toJSONText

-- | Determines how values in the response should be rendered. The default
-- render option is FORMATTED_VALUE.
data BatchUpdateValuesByDataFilterRequestResponseValueRenderOption
    = BUVBDFRRVROFormattedValue
      -- ^ @FORMATTED_VALUE@
      -- Values will be calculated & formatted in the reply according to the
      -- cell\'s formatting. Formatting is based on the spreadsheet\'s locale,
      -- not the requesting user\'s locale. For example, if \`A1\` is \`1.23\`
      -- and \`A2\` is \`=A1\` and formatted as currency, then \`A2\` would
      -- return \`\"$1.23\"\`.
    | BUVBDFRRVROUnformattedValue
      -- ^ @UNFORMATTED_VALUE@
      -- Values will be calculated, but not formatted in the reply. For example,
      -- if \`A1\` is \`1.23\` and \`A2\` is \`=A1\` and formatted as currency,
      -- then \`A2\` would return the number \`1.23\`.
    | BUVBDFRRVROFormula
      -- ^ @FORMULA@
      -- Values will not be calculated. The reply will include the formulas. For
      -- example, if \`A1\` is \`1.23\` and \`A2\` is \`=A1\` and formatted as
      -- currency, then A2 would return \`\"=A1\"\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BatchUpdateValuesByDataFilterRequestResponseValueRenderOption

instance FromHttpApiData BatchUpdateValuesByDataFilterRequestResponseValueRenderOption where
    parseQueryParam = \case
        "FORMATTED_VALUE" -> Right BUVBDFRRVROFormattedValue
        "UNFORMATTED_VALUE" -> Right BUVBDFRRVROUnformattedValue
        "FORMULA" -> Right BUVBDFRRVROFormula
        x -> Left ("Unable to parse BatchUpdateValuesByDataFilterRequestResponseValueRenderOption from: " <> x)

instance ToHttpApiData BatchUpdateValuesByDataFilterRequestResponseValueRenderOption where
    toQueryParam = \case
        BUVBDFRRVROFormattedValue -> "FORMATTED_VALUE"
        BUVBDFRRVROUnformattedValue -> "UNFORMATTED_VALUE"
        BUVBDFRRVROFormula -> "FORMULA"

instance FromJSON BatchUpdateValuesByDataFilterRequestResponseValueRenderOption where
    parseJSON = parseJSONText "BatchUpdateValuesByDataFilterRequestResponseValueRenderOption"

instance ToJSON BatchUpdateValuesByDataFilterRequestResponseValueRenderOption where
    toJSON = toJSONText

-- | The type of the data label.
data DataLabelType
    = DLTDataLabelTypeUnspecified
      -- ^ @DATA_LABEL_TYPE_UNSPECIFIED@
      -- The data label type is not specified and will be interpreted depending
      -- on the context of the data label within the chart.
    | DLTNone
      -- ^ @NONE@
      -- The data label is not displayed.
    | DLTData'
      -- ^ @DATA@
      -- The data label is displayed using values from the series data.
    | DLTCustom
      -- ^ @CUSTOM@
      -- The data label is displayed using values from a custom data source
      -- indicated by customLabelData.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataLabelType

instance FromHttpApiData DataLabelType where
    parseQueryParam = \case
        "DATA_LABEL_TYPE_UNSPECIFIED" -> Right DLTDataLabelTypeUnspecified
        "NONE" -> Right DLTNone
        "DATA" -> Right DLTData'
        "CUSTOM" -> Right DLTCustom
        x -> Left ("Unable to parse DataLabelType from: " <> x)

instance ToHttpApiData DataLabelType where
    toQueryParam = \case
        DLTDataLabelTypeUnspecified -> "DATA_LABEL_TYPE_UNSPECIFIED"
        DLTNone -> "NONE"
        DLTData' -> "DATA"
        DLTCustom -> "CUSTOM"

instance FromJSON DataLabelType where
    parseJSON = parseJSONText "DataLabelType"

instance ToJSON DataLabelType where
    toJSON = toJSONText

-- | The dash type of the line.
data LineStyleType
    = LSTLineDashTypeUnspecified
      -- ^ @LINE_DASH_TYPE_UNSPECIFIED@
      -- Default value, do not use.
    | LSTInvisible
      -- ^ @INVISIBLE@
      -- No dash type, which is equivalent to a non-visible line.
    | LSTCustom
      -- ^ @CUSTOM@
      -- A custom dash for a line. Modifying the exact custom dash style is
      -- currently unsupported.
    | LSTSolid
      -- ^ @SOLID@
      -- A solid line.
    | LSTDotted
      -- ^ @DOTTED@
      -- A dotted line.
    | LSTMediumDashed
      -- ^ @MEDIUM_DASHED@
      -- A dashed line where the dashes have \"medium\" length.
    | LSTMediumDashedDotted
      -- ^ @MEDIUM_DASHED_DOTTED@
      -- A line that alternates between a \"medium\" dash and a dot.
    | LSTLongDashed
      -- ^ @LONG_DASHED@
      -- A dashed line where the dashes have \"long\" length.
    | LSTLongDashedDotted
      -- ^ @LONG_DASHED_DOTTED@
      -- A line that alternates between a \"long\" dash and a dot.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LineStyleType

instance FromHttpApiData LineStyleType where
    parseQueryParam = \case
        "LINE_DASH_TYPE_UNSPECIFIED" -> Right LSTLineDashTypeUnspecified
        "INVISIBLE" -> Right LSTInvisible
        "CUSTOM" -> Right LSTCustom
        "SOLID" -> Right LSTSolid
        "DOTTED" -> Right LSTDotted
        "MEDIUM_DASHED" -> Right LSTMediumDashed
        "MEDIUM_DASHED_DOTTED" -> Right LSTMediumDashedDotted
        "LONG_DASHED" -> Right LSTLongDashed
        "LONG_DASHED_DOTTED" -> Right LSTLongDashedDotted
        x -> Left ("Unable to parse LineStyleType from: " <> x)

instance ToHttpApiData LineStyleType where
    toQueryParam = \case
        LSTLineDashTypeUnspecified -> "LINE_DASH_TYPE_UNSPECIFIED"
        LSTInvisible -> "INVISIBLE"
        LSTCustom -> "CUSTOM"
        LSTSolid -> "SOLID"
        LSTDotted -> "DOTTED"
        LSTMediumDashed -> "MEDIUM_DASHED"
        LSTMediumDashedDotted -> "MEDIUM_DASHED_DOTTED"
        LSTLongDashed -> "LONG_DASHED"
        LSTLongDashedDotted -> "LONG_DASHED_DOTTED"

instance FromJSON LineStyleType where
    parseJSON = parseJSONText "LineStyleType"

instance ToJSON LineStyleType where
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

-- | How the input data should be interpreted.
data BatchUpdateValuesByDataFilterRequestValueInputOption
    = BUVBDFRVIOInputValueOptionUnspecified
      -- ^ @INPUT_VALUE_OPTION_UNSPECIFIED@
      -- Default input value. This value must not be used.
    | BUVBDFRVIORaw
      -- ^ @RAW@
      -- The values the user has entered will not be parsed and will be stored
      -- as-is.
    | BUVBDFRVIOUserEntered
      -- ^ @USER_ENTERED@
      -- The values will be parsed as if the user typed them into the UI. Numbers
      -- will stay as numbers, but strings may be converted to numbers, dates,
      -- etc. following the same rules that are applied when entering text into a
      -- cell via the Google Sheets UI.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BatchUpdateValuesByDataFilterRequestValueInputOption

instance FromHttpApiData BatchUpdateValuesByDataFilterRequestValueInputOption where
    parseQueryParam = \case
        "INPUT_VALUE_OPTION_UNSPECIFIED" -> Right BUVBDFRVIOInputValueOptionUnspecified
        "RAW" -> Right BUVBDFRVIORaw
        "USER_ENTERED" -> Right BUVBDFRVIOUserEntered
        x -> Left ("Unable to parse BatchUpdateValuesByDataFilterRequestValueInputOption from: " <> x)

instance ToHttpApiData BatchUpdateValuesByDataFilterRequestValueInputOption where
    toQueryParam = \case
        BUVBDFRVIOInputValueOptionUnspecified -> "INPUT_VALUE_OPTION_UNSPECIFIED"
        BUVBDFRVIORaw -> "RAW"
        BUVBDFRVIOUserEntered -> "USER_ENTERED"

instance FromJSON BatchUpdateValuesByDataFilterRequestValueInputOption where
    parseJSON = parseJSONText "BatchUpdateValuesByDataFilterRequestValueInputOption"

instance ToJSON BatchUpdateValuesByDataFilterRequestValueInputOption where
    toJSON = toJSONText

-- | The position of the chart legend.
data HistogramChartSpecLegendPosition
    = HCSLPHistogramChartLegendPositionUnspecified
      -- ^ @HISTOGRAM_CHART_LEGEND_POSITION_UNSPECIFIED@
      -- Default value, do not use.
    | HCSLPBottomLegend
      -- ^ @BOTTOM_LEGEND@
      -- The legend is rendered on the bottom of the chart.
    | HCSLPLeftLegend
      -- ^ @LEFT_LEGEND@
      -- The legend is rendered on the left of the chart.
    | HCSLPRightLegend
      -- ^ @RIGHT_LEGEND@
      -- The legend is rendered on the right of the chart.
    | HCSLPTopLegend
      -- ^ @TOP_LEGEND@
      -- The legend is rendered on the top of the chart.
    | HCSLPNoLegend
      -- ^ @NO_LEGEND@
      -- No legend is rendered.
    | HCSLPInsideLegend
      -- ^ @INSIDE_LEGEND@
      -- The legend is rendered inside the chart area.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable HistogramChartSpecLegendPosition

instance FromHttpApiData HistogramChartSpecLegendPosition where
    parseQueryParam = \case
        "HISTOGRAM_CHART_LEGEND_POSITION_UNSPECIFIED" -> Right HCSLPHistogramChartLegendPositionUnspecified
        "BOTTOM_LEGEND" -> Right HCSLPBottomLegend
        "LEFT_LEGEND" -> Right HCSLPLeftLegend
        "RIGHT_LEGEND" -> Right HCSLPRightLegend
        "TOP_LEGEND" -> Right HCSLPTopLegend
        "NO_LEGEND" -> Right HCSLPNoLegend
        "INSIDE_LEGEND" -> Right HCSLPInsideLegend
        x -> Left ("Unable to parse HistogramChartSpecLegendPosition from: " <> x)

instance ToHttpApiData HistogramChartSpecLegendPosition where
    toQueryParam = \case
        HCSLPHistogramChartLegendPositionUnspecified -> "HISTOGRAM_CHART_LEGEND_POSITION_UNSPECIFIED"
        HCSLPBottomLegend -> "BOTTOM_LEGEND"
        HCSLPLeftLegend -> "LEFT_LEGEND"
        HCSLPRightLegend -> "RIGHT_LEGEND"
        HCSLPTopLegend -> "TOP_LEGEND"
        HCSLPNoLegend -> "NO_LEGEND"
        HCSLPInsideLegend -> "INSIDE_LEGEND"

instance FromJSON HistogramChartSpecLegendPosition where
    parseJSON = parseJSONText "HistogramChartSpecLegendPosition"

instance ToJSON HistogramChartSpecLegendPosition where
    toJSON = toJSONText

-- | The type of sheet. Defaults to GRID. This field cannot be changed once
-- set.
data SheetPropertiesSheetType
    = SPSTSheetTypeUnspecified
      -- ^ @SHEET_TYPE_UNSPECIFIED@
      -- Default value, do not use.
    | SPSTGrid
      -- ^ @GRID@
      -- The sheet is a grid.
    | SPSTObject
      -- ^ @OBJECT@
      -- The sheet has no grid and instead has an object like a chart or image.
    | SPSTDataSource
      -- ^ @DATA_SOURCE@
      -- The sheet connects with an external DataSource and shows the preview of
      -- data.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SheetPropertiesSheetType

instance FromHttpApiData SheetPropertiesSheetType where
    parseQueryParam = \case
        "SHEET_TYPE_UNSPECIFIED" -> Right SPSTSheetTypeUnspecified
        "GRID" -> Right SPSTGrid
        "OBJECT" -> Right SPSTObject
        "DATA_SOURCE" -> Right SPSTDataSource
        x -> Left ("Unable to parse SheetPropertiesSheetType from: " <> x)

instance ToHttpApiData SheetPropertiesSheetType where
    toQueryParam = \case
        SPSTSheetTypeUnspecified -> "SHEET_TYPE_UNSPECIFIED"
        SPSTGrid -> "GRID"
        SPSTObject -> "OBJECT"
        SPSTDataSource -> "DATA_SOURCE"

instance FromJSON SheetPropertiesSheetType where
    parseJSON = parseJSONText "SheetPropertiesSheetType"

instance ToJSON SheetPropertiesSheetType where
    toJSON = toJSONText

-- | Limits the selected developer metadata to those entries which are
-- associated with locations of the specified type. For example, when this
-- field is specified as ROW this lookup only considers developer metadata
-- associated on rows. If the field is left unspecified, all location types
-- are considered. This field cannot be specified as SPREADSHEET when the
-- locationMatchingStrategy is specified as INTERSECTING or when the
-- metadataLocation is specified as a non-spreadsheet location: spreadsheet
-- metadata cannot intersect any other developer metadata location. This
-- field also must be left unspecified when the locationMatchingStrategy is
-- specified as EXACT.
data DeveloperMetadataLookupLocationType
    = DDeveloperMetadataLocationTypeUnspecified
      -- ^ @DEVELOPER_METADATA_LOCATION_TYPE_UNSPECIFIED@
      -- Default value.
    | DRow
      -- ^ @ROW@
      -- Developer metadata associated on an entire row dimension.
    | DColumn
      -- ^ @COLUMN@
      -- Developer metadata associated on an entire column dimension.
    | DSheet
      -- ^ @SHEET@
      -- Developer metadata associated on an entire sheet.
    | DSpreadsheet
      -- ^ @SPREADSHEET@
      -- Developer metadata associated on the entire spreadsheet.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeveloperMetadataLookupLocationType

instance FromHttpApiData DeveloperMetadataLookupLocationType where
    parseQueryParam = \case
        "DEVELOPER_METADATA_LOCATION_TYPE_UNSPECIFIED" -> Right DDeveloperMetadataLocationTypeUnspecified
        "ROW" -> Right DRow
        "COLUMN" -> Right DColumn
        "SHEET" -> Right DSheet
        "SPREADSHEET" -> Right DSpreadsheet
        x -> Left ("Unable to parse DeveloperMetadataLookupLocationType from: " <> x)

instance ToHttpApiData DeveloperMetadataLookupLocationType where
    toQueryParam = \case
        DDeveloperMetadataLocationTypeUnspecified -> "DEVELOPER_METADATA_LOCATION_TYPE_UNSPECIFIED"
        DRow -> "ROW"
        DColumn -> "COLUMN"
        DSheet -> "SHEET"
        DSpreadsheet -> "SPREADSHEET"

instance FromJSON DeveloperMetadataLookupLocationType where
    parseJSON = parseJSONText "DeveloperMetadataLookupLocationType"

instance ToJSON DeveloperMetadataLookupLocationType where
    toJSON = toJSONText

-- | The point shape. If empty or unspecified, a default shape is used.
data PointStyleShape
    = PointShapeUnspecified
      -- ^ @POINT_SHAPE_UNSPECIFIED@
      -- Default value.
    | Circle
      -- ^ @CIRCLE@
      -- A circle shape.
    | Diamond
      -- ^ @DIAMOND@
      -- A diamond shape.
    | Hexagon
      -- ^ @HEXAGON@
      -- A hexagon shape.
    | Pentagon
      -- ^ @PENTAGON@
      -- A pentagon shape.
    | Square
      -- ^ @SQUARE@
      -- A square shape.
    | Star
      -- ^ @STAR@
      -- A star shape.
    | Triangle
      -- ^ @TRIANGLE@
      -- A triangle shape.
    | XMark
      -- ^ @X_MARK@
      -- An x-mark shape.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PointStyleShape

instance FromHttpApiData PointStyleShape where
    parseQueryParam = \case
        "POINT_SHAPE_UNSPECIFIED" -> Right PointShapeUnspecified
        "CIRCLE" -> Right Circle
        "DIAMOND" -> Right Diamond
        "HEXAGON" -> Right Hexagon
        "PENTAGON" -> Right Pentagon
        "SQUARE" -> Right Square
        "STAR" -> Right Star
        "TRIANGLE" -> Right Triangle
        "X_MARK" -> Right XMark
        x -> Left ("Unable to parse PointStyleShape from: " <> x)

instance ToHttpApiData PointStyleShape where
    toQueryParam = \case
        PointShapeUnspecified -> "POINT_SHAPE_UNSPECIFIED"
        Circle -> "CIRCLE"
        Diamond -> "DIAMOND"
        Hexagon -> "HEXAGON"
        Pentagon -> "PENTAGON"
        Square -> "SQUARE"
        Star -> "STAR"
        Triangle -> "TRIANGLE"
        XMark -> "X_MARK"

instance FromJSON PointStyleShape where
    parseJSON = parseJSONText "PointStyleShape"

instance ToJSON PointStyleShape where
    toJSON = toJSONText

-- | The aggregation type for key and baseline chart data in scorecard chart.
-- This field is not supported for data source charts. Use the
-- ChartData.aggregateType field of the key_value_data or
-- baseline_value_data instead for data source charts. This field is
-- optional.
data ScorecardChartSpecAggregateType
    = SCSATChartAggregateTypeUnspecified
      -- ^ @CHART_AGGREGATE_TYPE_UNSPECIFIED@
      -- Default value, do not use.
    | SCSATAverage
      -- ^ @AVERAGE@
      -- Average aggregate function.
    | SCSATCount
      -- ^ @COUNT@
      -- Count aggregate function.
    | SCSATMax
      -- ^ @MAX@
      -- Maximum aggregate function.
    | SCSATMedian
      -- ^ @MEDIAN@
      -- Median aggregate function.
    | SCSATMin
      -- ^ @MIN@
      -- Minimum aggregate function.
    | SCSATSum
      -- ^ @SUM@
      -- Sum aggregate function.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScorecardChartSpecAggregateType

instance FromHttpApiData ScorecardChartSpecAggregateType where
    parseQueryParam = \case
        "CHART_AGGREGATE_TYPE_UNSPECIFIED" -> Right SCSATChartAggregateTypeUnspecified
        "AVERAGE" -> Right SCSATAverage
        "COUNT" -> Right SCSATCount
        "MAX" -> Right SCSATMax
        "MEDIAN" -> Right SCSATMedian
        "MIN" -> Right SCSATMin
        "SUM" -> Right SCSATSum
        x -> Left ("Unable to parse ScorecardChartSpecAggregateType from: " <> x)

instance ToHttpApiData ScorecardChartSpecAggregateType where
    toQueryParam = \case
        SCSATChartAggregateTypeUnspecified -> "CHART_AGGREGATE_TYPE_UNSPECIFIED"
        SCSATAverage -> "AVERAGE"
        SCSATCount -> "COUNT"
        SCSATMax -> "MAX"
        SCSATMedian -> "MEDIAN"
        SCSATMin -> "MIN"
        SCSATSum -> "SUM"

instance FromJSON ScorecardChartSpecAggregateType where
    parseJSON = parseJSONText "ScorecardChartSpecAggregateType"

instance ToJSON ScorecardChartSpecAggregateType where
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
    = CFHAHorizontalAlignUnspecified
      -- ^ @HORIZONTAL_ALIGN_UNSPECIFIED@
      -- The horizontal alignment is not specified. Do not use this.
    | CFHALeft'
      -- ^ @LEFT@
      -- The text is explicitly aligned to the left of the cell.
    | CFHACenter
      -- ^ @CENTER@
      -- The text is explicitly aligned to the center of the cell.
    | CFHARight'
      -- ^ @RIGHT@
      -- The text is explicitly aligned to the right of the cell.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CellFormatHorizontalAlignment

instance FromHttpApiData CellFormatHorizontalAlignment where
    parseQueryParam = \case
        "HORIZONTAL_ALIGN_UNSPECIFIED" -> Right CFHAHorizontalAlignUnspecified
        "LEFT" -> Right CFHALeft'
        "CENTER" -> Right CFHACenter
        "RIGHT" -> Right CFHARight'
        x -> Left ("Unable to parse CellFormatHorizontalAlignment from: " <> x)

instance ToHttpApiData CellFormatHorizontalAlignment where
    toQueryParam = \case
        CFHAHorizontalAlignUnspecified -> "HORIZONTAL_ALIGN_UNSPECIFIED"
        CFHALeft' -> "LEFT"
        CFHACenter -> "CENTER"
        CFHARight' -> "RIGHT"

instance FromJSON CellFormatHorizontalAlignment where
    parseJSON = parseJSONText "CellFormatHorizontalAlignment"

instance ToJSON CellFormatHorizontalAlignment where
    toJSON = toJSONText

-- | The stacked type.
data WaterfallChartSpecStackedType
    = WCSSTWaterfallStackedTypeUnspecified
      -- ^ @WATERFALL_STACKED_TYPE_UNSPECIFIED@
      -- Default value, do not use.
    | WCSSTStacked
      -- ^ @STACKED@
      -- Values corresponding to the same domain (horizontal axis) value will be
      -- stacked vertically.
    | WCSSTSequential
      -- ^ @SEQUENTIAL@
      -- Series will spread out along the horizontal axis.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WaterfallChartSpecStackedType

instance FromHttpApiData WaterfallChartSpecStackedType where
    parseQueryParam = \case
        "WATERFALL_STACKED_TYPE_UNSPECIFIED" -> Right WCSSTWaterfallStackedTypeUnspecified
        "STACKED" -> Right WCSSTStacked
        "SEQUENTIAL" -> Right WCSSTSequential
        x -> Left ("Unable to parse WaterfallChartSpecStackedType from: " <> x)

instance ToHttpApiData WaterfallChartSpecStackedType where
    toQueryParam = \case
        WCSSTWaterfallStackedTypeUnspecified -> "WATERFALL_STACKED_TYPE_UNSPECIFIED"
        WCSSTStacked -> "STACKED"
        WCSSTSequential -> "SEQUENTIAL"

instance FromJSON WaterfallChartSpecStackedType where
    parseJSON = parseJSONText "WaterfallChartSpecStackedType"

instance ToJSON WaterfallChartSpecStackedType where
    toJSON = toJSONText

-- | The type of date-time grouping to apply.
data DateTimeRuleType
    = DateTimeRuleTypeUnspecified
      -- ^ @DATE_TIME_RULE_TYPE_UNSPECIFIED@
      -- The default type, do not use.
    | Second
      -- ^ @SECOND@
      -- Group dates by second, from 0 to 59.
    | Minute
      -- ^ @MINUTE@
      -- Group dates by minute, from 0 to 59.
    | Hour
      -- ^ @HOUR@
      -- Group dates by hour using a 24-hour system, from 0 to 23.
    | HourMinute
      -- ^ @HOUR_MINUTE@
      -- Group dates by hour and minute using a 24-hour system, for example
      -- 19:45.
    | HourMinuteAmpm
      -- ^ @HOUR_MINUTE_AMPM@
      -- Group dates by hour and minute using a 12-hour system, for example 7:45
      -- PM. The AM\/PM designation is translated based on the spreadsheet
      -- locale.
    | DayOfWeek
      -- ^ @DAY_OF_WEEK@
      -- Group dates by day of week, for example Sunday. The days of the week
      -- will be translated based on the spreadsheet locale.
    | DayOfYear
      -- ^ @DAY_OF_YEAR@
      -- Group dates by day of year, from 1 to 366. Note that dates after Feb. 29
      -- fall in different buckets in leap years than in non-leap years.
    | DayOfMonth
      -- ^ @DAY_OF_MONTH@
      -- Group dates by day of month, from 1 to 31.
    | DayMonth
      -- ^ @DAY_MONTH@
      -- Group dates by day and month, for example 22-Nov. The month is
      -- translated based on the spreadsheet locale.
    | Month
      -- ^ @MONTH@
      -- Group dates by month, for example Nov. The month is translated based on
      -- the spreadsheet locale.
    | Quarter
      -- ^ @QUARTER@
      -- Group dates by quarter, for example Q1 (which represents Jan-Mar).
    | Year
      -- ^ @YEAR@
      -- Group dates by year, for example 2008.
    | YearMonth
      -- ^ @YEAR_MONTH@
      -- Group dates by year and month, for example 2008-Nov. The month is
      -- translated based on the spreadsheet locale.
    | YearQuarter
      -- ^ @YEAR_QUARTER@
      -- Group dates by year and quarter, for example 2008 Q4.
    | YearMonthDay
      -- ^ @YEAR_MONTH_DAY@
      -- Group dates by year, month, and day, for example 2008-11-22.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DateTimeRuleType

instance FromHttpApiData DateTimeRuleType where
    parseQueryParam = \case
        "DATE_TIME_RULE_TYPE_UNSPECIFIED" -> Right DateTimeRuleTypeUnspecified
        "SECOND" -> Right Second
        "MINUTE" -> Right Minute
        "HOUR" -> Right Hour
        "HOUR_MINUTE" -> Right HourMinute
        "HOUR_MINUTE_AMPM" -> Right HourMinuteAmpm
        "DAY_OF_WEEK" -> Right DayOfWeek
        "DAY_OF_YEAR" -> Right DayOfYear
        "DAY_OF_MONTH" -> Right DayOfMonth
        "DAY_MONTH" -> Right DayMonth
        "MONTH" -> Right Month
        "QUARTER" -> Right Quarter
        "YEAR" -> Right Year
        "YEAR_MONTH" -> Right YearMonth
        "YEAR_QUARTER" -> Right YearQuarter
        "YEAR_MONTH_DAY" -> Right YearMonthDay
        x -> Left ("Unable to parse DateTimeRuleType from: " <> x)

instance ToHttpApiData DateTimeRuleType where
    toQueryParam = \case
        DateTimeRuleTypeUnspecified -> "DATE_TIME_RULE_TYPE_UNSPECIFIED"
        Second -> "SECOND"
        Minute -> "MINUTE"
        Hour -> "HOUR"
        HourMinute -> "HOUR_MINUTE"
        HourMinuteAmpm -> "HOUR_MINUTE_AMPM"
        DayOfWeek -> "DAY_OF_WEEK"
        DayOfYear -> "DAY_OF_YEAR"
        DayOfMonth -> "DAY_OF_MONTH"
        DayMonth -> "DAY_MONTH"
        Month -> "MONTH"
        Quarter -> "QUARTER"
        Year -> "YEAR"
        YearMonth -> "YEAR_MONTH"
        YearQuarter -> "YEAR_QUARTER"
        YearMonthDay -> "YEAR_MONTH_DAY"

instance FromJSON DateTimeRuleType where
    parseJSON = parseJSONText "DateTimeRuleType"

instance ToJSON DateTimeRuleType where
    toJSON = toJSONText

-- | Limits the selected developer metadata to that which has a matching
-- DeveloperMetadata.visibility. If left unspecified, all developer
-- metadata visibile to the requesting project is considered.
data DeveloperMetadataLookupVisibility
    = DMLVDeveloperMetadataVisibilityUnspecified
      -- ^ @DEVELOPER_METADATA_VISIBILITY_UNSPECIFIED@
      -- Default value.
    | DMLVDocument
      -- ^ @DOCUMENT@
      -- Document-visible metadata is accessible from any developer project with
      -- access to the document.
    | DMLVProject
      -- ^ @PROJECT@
      -- Project-visible metadata is only visible to and accessible by the
      -- developer project that created the metadata.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DeveloperMetadataLookupVisibility

instance FromHttpApiData DeveloperMetadataLookupVisibility where
    parseQueryParam = \case
        "DEVELOPER_METADATA_VISIBILITY_UNSPECIFIED" -> Right DMLVDeveloperMetadataVisibilityUnspecified
        "DOCUMENT" -> Right DMLVDocument
        "PROJECT" -> Right DMLVProject
        x -> Left ("Unable to parse DeveloperMetadataLookupVisibility from: " <> x)

instance ToHttpApiData DeveloperMetadataLookupVisibility where
    toQueryParam = \case
        DMLVDeveloperMetadataVisibilityUnspecified -> "DEVELOPER_METADATA_VISIBILITY_UNSPECIFIED"
        DMLVDocument -> "DOCUMENT"
        DMLVProject -> "PROJECT"

instance FromJSON DeveloperMetadataLookupVisibility where
    parseJSON = parseJSONText "DeveloperMetadataLookupVisibility"

instance ToJSON DeveloperMetadataLookupVisibility where
    toJSON = toJSONText

-- | The placement of the data label relative to the labeled data.
data DataLabelPlacement
    = DLPDataLabelPlacementUnspecified
      -- ^ @DATA_LABEL_PLACEMENT_UNSPECIFIED@
      -- The positioning is determined automatically by the renderer.
    | DLPCenter
      -- ^ @CENTER@
      -- Center within a bar or column, both horizontally and vertically.
    | DLPLeft'
      -- ^ @LEFT@
      -- To the left of a data point.
    | DLPRight'
      -- ^ @RIGHT@
      -- To the right of a data point.
    | DLPAbove
      -- ^ @ABOVE@
      -- Above a data point.
    | DLPBelow
      -- ^ @BELOW@
      -- Below a data point.
    | DLPInsideEnd
      -- ^ @INSIDE_END@
      -- Inside a bar or column at the end (top if positive, bottom if negative).
    | DLPInsideBase
      -- ^ @INSIDE_BASE@
      -- Inside a bar or column at the base.
    | DLPOutsideEnd
      -- ^ @OUTSIDE_END@
      -- Outside a bar or column at the end.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataLabelPlacement

instance FromHttpApiData DataLabelPlacement where
    parseQueryParam = \case
        "DATA_LABEL_PLACEMENT_UNSPECIFIED" -> Right DLPDataLabelPlacementUnspecified
        "CENTER" -> Right DLPCenter
        "LEFT" -> Right DLPLeft'
        "RIGHT" -> Right DLPRight'
        "ABOVE" -> Right DLPAbove
        "BELOW" -> Right DLPBelow
        "INSIDE_END" -> Right DLPInsideEnd
        "INSIDE_BASE" -> Right DLPInsideBase
        "OUTSIDE_END" -> Right DLPOutsideEnd
        x -> Left ("Unable to parse DataLabelPlacement from: " <> x)

instance ToHttpApiData DataLabelPlacement where
    toQueryParam = \case
        DLPDataLabelPlacementUnspecified -> "DATA_LABEL_PLACEMENT_UNSPECIFIED"
        DLPCenter -> "CENTER"
        DLPLeft' -> "LEFT"
        DLPRight' -> "RIGHT"
        DLPAbove -> "ABOVE"
        DLPBelow -> "BELOW"
        DLPInsideEnd -> "INSIDE_END"
        DLPInsideBase -> "INSIDE_BASE"
        DLPOutsideEnd -> "OUTSIDE_END"

instance FromJSON DataLabelPlacement where
    parseJSON = parseJSONText "DataLabelPlacement"

instance ToJSON DataLabelPlacement where
    toJSON = toJSONText

-- | The behavior of tooltips and data highlighting when hovering on data and
-- chart area.
data BasicChartSpecCompareMode
    = BasicChartCompareModeUnspecified
      -- ^ @BASIC_CHART_COMPARE_MODE_UNSPECIFIED@
      -- Default value, do not use.
    | Datum
      -- ^ @DATUM@
      -- Only the focused data element is highlighted and shown in the tooltip.
    | Category
      -- ^ @CATEGORY@
      -- All data elements with the same category (e.g., domain value) are
      -- highlighted and shown in the tooltip.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BasicChartSpecCompareMode

instance FromHttpApiData BasicChartSpecCompareMode where
    parseQueryParam = \case
        "BASIC_CHART_COMPARE_MODE_UNSPECIFIED" -> Right BasicChartCompareModeUnspecified
        "DATUM" -> Right Datum
        "CATEGORY" -> Right Category
        x -> Left ("Unable to parse BasicChartSpecCompareMode from: " <> x)

instance ToHttpApiData BasicChartSpecCompareMode where
    toQueryParam = \case
        BasicChartCompareModeUnspecified -> "BASIC_CHART_COMPARE_MODE_UNSPECIFIED"
        Datum -> "DATUM"
        Category -> "CATEGORY"

instance FromJSON BasicChartSpecCompareMode where
    parseJSON = parseJSONText "BasicChartSpecCompareMode"

instance ToJSON BasicChartSpecCompareMode where
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
      -- ConditionValue for data validation, conditional formatting, and filters
      -- on non-data source objects and at least one ConditionValue for filters
      -- on data source objects.
    | NumberNotEQ
      -- ^ @NUMBER_NOT_EQ@
      -- The cell\'s value must be not equal to the condition\'s value. Supported
      -- by data validation, conditional formatting and filters. Requires a
      -- single ConditionValue for data validation, conditional formatting, and
      -- filters on non-data source objects and at least one ConditionValue for
      -- filters on data source objects.
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
      -- ConditionValue for data validation, conditional formatting, and filters
      -- on non-data source objects and at least one ConditionValue for filters
      -- on data source objects.
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
      -- Requires a single ConditionValue for data validation, conditional
      -- formatting, and filters on non-data source objects and at least one
      -- ConditionValue for filters on data source objects.
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
      -- The cell\'s value must be in the list of condition values. Supported by
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
      -- validation, conditional formatting and filters. Not supported by data
      -- source sheet filters. Requires a single ConditionValue.
    | Boolean
      -- ^ @BOOLEAN@
      -- The cell\'s value must be TRUE\/FALSE or in the list of condition
      -- values. Supported by data validation. Renders as a cell checkbox.
      -- Supports zero, one or two ConditionValues. No values indicates the cell
      -- must be TRUE or FALSE, where TRUE renders as checked and FALSE renders
      -- as unchecked. One value indicates the cell will render as checked when
      -- it contains that value and unchecked when it is blank. Two values
      -- indicate that the cell will render as checked when it contains the first
      -- value and unchecked when it contains the second value. For example,
      -- [\"Yes\",\"No\"] indicates that the cell will render a checked box when
      -- it has the value \"Yes\" and an unchecked box when it has the value
      -- \"No\".
    | TextNotEQ
      -- ^ @TEXT_NOT_EQ@
      -- The cell\'s value must be exactly not the condition\'s value. Supported
      -- by filters on data source objects. Requires at least one ConditionValue.
    | DateNotEQ
      -- ^ @DATE_NOT_EQ@
      -- The cell\'s value must be exactly not the condition\'s value. Supported
      -- by filters on data source objects. Requires at least one ConditionValue.
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
        "BOOLEAN" -> Right Boolean
        "TEXT_NOT_EQ" -> Right TextNotEQ
        "DATE_NOT_EQ" -> Right DateNotEQ
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
        Boolean -> "BOOLEAN"
        TextNotEQ -> "TEXT_NOT_EQ"
        DateNotEQ -> "DATE_NOT_EQ"

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

-- | How the input data should be inserted.
data SpreadsheetsValuesAppendInsertDataOption
    = Overwrite
      -- ^ @OVERWRITE@
      -- The new data overwrites existing data in the areas it is written. (Note:
      -- adding data to the end of the sheet will still insert new rows or
      -- columns so the data can be written.)
    | InsertRows
      -- ^ @INSERT_ROWS@
      -- Rows are inserted for the new data.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpreadsheetsValuesAppendInsertDataOption

instance FromHttpApiData SpreadsheetsValuesAppendInsertDataOption where
    parseQueryParam = \case
        "OVERWRITE" -> Right Overwrite
        "INSERT_ROWS" -> Right InsertRows
        x -> Left ("Unable to parse SpreadsheetsValuesAppendInsertDataOption from: " <> x)

instance ToHttpApiData SpreadsheetsValuesAppendInsertDataOption where
    toQueryParam = \case
        Overwrite -> "OVERWRITE"
        InsertRows -> "INSERT_ROWS"

instance FromJSON SpreadsheetsValuesAppendInsertDataOption where
    parseJSON = parseJSONText "SpreadsheetsValuesAppendInsertDataOption"

instance ToJSON SpreadsheetsValuesAppendInsertDataOption where
    toJSON = toJSONText

-- | The type of the chart.
data BasicChartSpecChartType
    = BasicChartTypeUnspecified
      -- ^ @BASIC_CHART_TYPE_UNSPECIFIED@
      -- Default value, do not use.
    | Bar
      -- ^ @BAR@
      -- A bar chart.
    | Line
      -- ^ @LINE@
      -- A line chart.
    | Area
      -- ^ @AREA@
      -- An area chart.
    | Column
      -- ^ @COLUMN@
      -- A column chart.
    | Scatter
      -- ^ @SCATTER@
      -- A scatter chart.
    | Combo
      -- ^ @COMBO@
      -- A combo chart.
    | SteppedArea
      -- ^ @STEPPED_AREA@
      -- A stepped area chart.
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
        "STEPPED_AREA" -> Right SteppedArea
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
        SteppedArea -> "STEPPED_AREA"

instance FromJSON BasicChartSpecChartType where
    parseJSON = parseJSONText "BasicChartSpecChartType"

instance ToJSON BasicChartSpecChartType where
    toJSON = toJSONText

-- | The comparison type of key value with baseline value.
data BaselineValueFormatComparisonType
    = ComparisonTypeUndefined
      -- ^ @COMPARISON_TYPE_UNDEFINED@
      -- Default value, do not use.
    | AbsoluteDifference
      -- ^ @ABSOLUTE_DIFFERENCE@
      -- Use absolute difference between key and baseline value.
    | PercentageDifference
      -- ^ @PERCENTAGE_DIFFERENCE@
      -- Use percentage difference between key and baseline value.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BaselineValueFormatComparisonType

instance FromHttpApiData BaselineValueFormatComparisonType where
    parseQueryParam = \case
        "COMPARISON_TYPE_UNDEFINED" -> Right ComparisonTypeUndefined
        "ABSOLUTE_DIFFERENCE" -> Right AbsoluteDifference
        "PERCENTAGE_DIFFERENCE" -> Right PercentageDifference
        x -> Left ("Unable to parse BaselineValueFormatComparisonType from: " <> x)

instance ToHttpApiData BaselineValueFormatComparisonType where
    toQueryParam = \case
        ComparisonTypeUndefined -> "COMPARISON_TYPE_UNDEFINED"
        AbsoluteDifference -> "ABSOLUTE_DIFFERENCE"
        PercentageDifference -> "PERCENTAGE_DIFFERENCE"

instance FromJSON BaselineValueFormatComparisonType where
    parseJSON = parseJSONText "BaselineValueFormatComparisonType"

instance ToJSON BaselineValueFormatComparisonType where
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
    = SPARRecalculationIntervalUnspecified
      -- ^ @RECALCULATION_INTERVAL_UNSPECIFIED@
      -- Default value. This value must not be used.
    | SPAROnChange
      -- ^ @ON_CHANGE@
      -- Volatile functions are updated on every change.
    | SPARMinute
      -- ^ @MINUTE@
      -- Volatile functions are updated on every change and every minute.
    | SPARHour
      -- ^ @HOUR@
      -- Volatile functions are updated on every change and hourly.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpreadsheetPropertiesAutoRecalc

instance FromHttpApiData SpreadsheetPropertiesAutoRecalc where
    parseQueryParam = \case
        "RECALCULATION_INTERVAL_UNSPECIFIED" -> Right SPARRecalculationIntervalUnspecified
        "ON_CHANGE" -> Right SPAROnChange
        "MINUTE" -> Right SPARMinute
        "HOUR" -> Right SPARHour
        x -> Left ("Unable to parse SpreadsheetPropertiesAutoRecalc from: " <> x)

instance ToHttpApiData SpreadsheetPropertiesAutoRecalc where
    toQueryParam = \case
        SPARRecalculationIntervalUnspecified -> "RECALCULATION_INTERVAL_UNSPECIFIED"
        SPAROnChange -> "ON_CHANGE"
        SPARMinute -> "MINUTE"
        SPARHour -> "HOUR"

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
      -- Like \`PASTE_NORMAL\` but without borders.
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

-- | How the input data should be interpreted.
data SpreadsheetsValuesAppendValueInputOption
    = SVAVIOInputValueOptionUnspecified
      -- ^ @INPUT_VALUE_OPTION_UNSPECIFIED@
      -- Default input value. This value must not be used.
    | SVAVIORaw
      -- ^ @RAW@
      -- The values the user has entered will not be parsed and will be stored
      -- as-is.
    | SVAVIOUserEntered
      -- ^ @USER_ENTERED@
      -- The values will be parsed as if the user typed them into the UI. Numbers
      -- will stay as numbers, but strings may be converted to numbers, dates,
      -- etc. following the same rules that are applied when entering text into a
      -- cell via the Google Sheets UI.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpreadsheetsValuesAppendValueInputOption

instance FromHttpApiData SpreadsheetsValuesAppendValueInputOption where
    parseQueryParam = \case
        "INPUT_VALUE_OPTION_UNSPECIFIED" -> Right SVAVIOInputValueOptionUnspecified
        "RAW" -> Right SVAVIORaw
        "USER_ENTERED" -> Right SVAVIOUserEntered
        x -> Left ("Unable to parse SpreadsheetsValuesAppendValueInputOption from: " <> x)

instance ToHttpApiData SpreadsheetsValuesAppendValueInputOption where
    toQueryParam = \case
        SVAVIOInputValueOptionUnspecified -> "INPUT_VALUE_OPTION_UNSPECIFIED"
        SVAVIORaw -> "RAW"
        SVAVIOUserEntered -> "USER_ENTERED"

instance FromJSON SpreadsheetsValuesAppendValueInputOption where
    parseJSON = parseJSONText "SpreadsheetsValuesAppendValueInputOption"

instance ToJSON SpreadsheetsValuesAppendValueInputOption where
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

-- | The type to select columns for the data source table. Defaults to
-- SELECTED.
data DataSourceTableColumnSelectionType
    = DataSourceTableColumnSelectionTypeUnspecified
      -- ^ @DATA_SOURCE_TABLE_COLUMN_SELECTION_TYPE_UNSPECIFIED@
      -- The default column selection type, do not use.
    | Selected
      -- ^ @SELECTED@
      -- Select columns specified by columns field.
    | SyncAll
      -- ^ @SYNC_ALL@
      -- Sync all current and future columns in the data source. If set, the data
      -- source table fetches all the columns in the data source at the time of
      -- refresh.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataSourceTableColumnSelectionType

instance FromHttpApiData DataSourceTableColumnSelectionType where
    parseQueryParam = \case
        "DATA_SOURCE_TABLE_COLUMN_SELECTION_TYPE_UNSPECIFIED" -> Right DataSourceTableColumnSelectionTypeUnspecified
        "SELECTED" -> Right Selected
        "SYNC_ALL" -> Right SyncAll
        x -> Left ("Unable to parse DataSourceTableColumnSelectionType from: " <> x)

instance ToHttpApiData DataSourceTableColumnSelectionType where
    toQueryParam = \case
        DataSourceTableColumnSelectionTypeUnspecified -> "DATA_SOURCE_TABLE_COLUMN_SELECTION_TYPE_UNSPECIFIED"
        Selected -> "SELECTED"
        SyncAll -> "SYNC_ALL"

instance FromJSON DataSourceTableColumnSelectionType where
    parseJSON = parseJSONText "DataSourceTableColumnSelectionType"

instance ToJSON DataSourceTableColumnSelectionType where
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
      -- A bar chart.
    | BCSTLine
      -- ^ @LINE@
      -- A line chart.
    | BCSTArea
      -- ^ @AREA@
      -- An area chart.
    | BCSTColumn
      -- ^ @COLUMN@
      -- A column chart.
    | BCSTScatter
      -- ^ @SCATTER@
      -- A scatter chart.
    | BCSTCombo
      -- ^ @COMBO@
      -- A combo chart.
    | BCSTSteppedArea
      -- ^ @STEPPED_AREA@
      -- A stepped area chart.
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
        "STEPPED_AREA" -> Right BCSTSteppedArea
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
        BCSTSteppedArea -> "STEPPED_AREA"

instance FromJSON BasicChartSeriesType where
    parseJSON = parseJSONText "BasicChartSeriesType"

instance ToJSON BasicChartSeriesType where
    toJSON = toJSONText

-- | If specified, indicates that pivot values should be displayed as the
-- result of a calculation with another pivot value. For example, if
-- calculated_display_type is specified as PERCENT_OF_GRAND_TOTAL, all the
-- pivot values are displayed as the percentage of the grand total. In the
-- Sheets editor, this is referred to as \"Show As\" in the value section
-- of a pivot table.
data PivotValueCalculatedDisplayType
    = PivotValueCalculatedDisplayTypeUnspecified
      -- ^ @PIVOT_VALUE_CALCULATED_DISPLAY_TYPE_UNSPECIFIED@
      -- Default value, do not use.
    | PercentOfRowTotal
      -- ^ @PERCENT_OF_ROW_TOTAL@
      -- Shows the pivot values as percentage of the row total values.
    | PercentOfColumnTotal
      -- ^ @PERCENT_OF_COLUMN_TOTAL@
      -- Shows the pivot values as percentage of the column total values.
    | PercentOfGrandTotal
      -- ^ @PERCENT_OF_GRAND_TOTAL@
      -- Shows the pivot values as percentage of the grand total values.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PivotValueCalculatedDisplayType

instance FromHttpApiData PivotValueCalculatedDisplayType where
    parseQueryParam = \case
        "PIVOT_VALUE_CALCULATED_DISPLAY_TYPE_UNSPECIFIED" -> Right PivotValueCalculatedDisplayTypeUnspecified
        "PERCENT_OF_ROW_TOTAL" -> Right PercentOfRowTotal
        "PERCENT_OF_COLUMN_TOTAL" -> Right PercentOfColumnTotal
        "PERCENT_OF_GRAND_TOTAL" -> Right PercentOfGrandTotal
        x -> Left ("Unable to parse PivotValueCalculatedDisplayType from: " <> x)

instance ToHttpApiData PivotValueCalculatedDisplayType where
    toQueryParam = \case
        PivotValueCalculatedDisplayTypeUnspecified -> "PIVOT_VALUE_CALCULATED_DISPLAY_TYPE_UNSPECIFIED"
        PercentOfRowTotal -> "PERCENT_OF_ROW_TOTAL"
        PercentOfColumnTotal -> "PERCENT_OF_COLUMN_TOTAL"
        PercentOfGrandTotal -> "PERCENT_OF_GRAND_TOTAL"

instance FromJSON PivotValueCalculatedDisplayType where
    parseJSON = parseJSONText "PivotValueCalculatedDisplayType"

instance ToJSON PivotValueCalculatedDisplayType where
    toJSON = toJSONText

-- | The aggregation type for the series of a data source chart. Only
-- supported for data source charts.
data ChartDataAggregateType
    = CDATChartAggregateTypeUnspecified
      -- ^ @CHART_AGGREGATE_TYPE_UNSPECIFIED@
      -- Default value, do not use.
    | CDATAverage
      -- ^ @AVERAGE@
      -- Average aggregate function.
    | CDATCount
      -- ^ @COUNT@
      -- Count aggregate function.
    | CDATMax
      -- ^ @MAX@
      -- Maximum aggregate function.
    | CDATMedian
      -- ^ @MEDIAN@
      -- Median aggregate function.
    | CDATMin
      -- ^ @MIN@
      -- Minimum aggregate function.
    | CDATSum
      -- ^ @SUM@
      -- Sum aggregate function.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChartDataAggregateType

instance FromHttpApiData ChartDataAggregateType where
    parseQueryParam = \case
        "CHART_AGGREGATE_TYPE_UNSPECIFIED" -> Right CDATChartAggregateTypeUnspecified
        "AVERAGE" -> Right CDATAverage
        "COUNT" -> Right CDATCount
        "MAX" -> Right CDATMax
        "MEDIAN" -> Right CDATMedian
        "MIN" -> Right CDATMin
        "SUM" -> Right CDATSum
        x -> Left ("Unable to parse ChartDataAggregateType from: " <> x)

instance ToHttpApiData ChartDataAggregateType where
    toQueryParam = \case
        CDATChartAggregateTypeUnspecified -> "CHART_AGGREGATE_TYPE_UNSPECIFIED"
        CDATAverage -> "AVERAGE"
        CDATCount -> "COUNT"
        CDATMax -> "MAX"
        CDATMedian -> "MEDIAN"
        CDATMin -> "MIN"
        CDATSum -> "SUM"

instance FromJSON ChartDataAggregateType where
    parseJSON = parseJSONText "ChartDataAggregateType"

instance ToJSON ChartDataAggregateType where
    toJSON = toJSONText

-- | The major dimension that results should use. For example, if the
-- spreadsheet data is: \`A1=1,B1=2,A2=3,B2=4\`, then requesting
-- \`range=A1:B2,majorDimension=ROWS\` returns \`[[1,2],[3,4]]\`, whereas
-- requesting \`range=A1:B2,majorDimension=COLUMNS\` returns
-- \`[[1,3],[2,4]]\`.
data SpreadsheetsValuesGetMajorDimension
    = SVGMDDimensionUnspecified
      -- ^ @DIMENSION_UNSPECIFIED@
      -- The default value, do not use.
    | SVGMDRows
      -- ^ @ROWS@
      -- Operates on the rows of a sheet.
    | SVGMDColumns
      -- ^ @COLUMNS@
      -- Operates on the columns of a sheet.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpreadsheetsValuesGetMajorDimension

instance FromHttpApiData SpreadsheetsValuesGetMajorDimension where
    parseQueryParam = \case
        "DIMENSION_UNSPECIFIED" -> Right SVGMDDimensionUnspecified
        "ROWS" -> Right SVGMDRows
        "COLUMNS" -> Right SVGMDColumns
        x -> Left ("Unable to parse SpreadsheetsValuesGetMajorDimension from: " <> x)

instance ToHttpApiData SpreadsheetsValuesGetMajorDimension where
    toQueryParam = \case
        SVGMDDimensionUnspecified -> "DIMENSION_UNSPECIFIED"
        SVGMDRows -> "ROWS"
        SVGMDColumns -> "COLUMNS"

instance FromJSON SpreadsheetsValuesGetMajorDimension where
    parseJSON = parseJSONText "SpreadsheetsValuesGetMajorDimension"

instance ToJSON SpreadsheetsValuesGetMajorDimension where
    toJSON = toJSONText

-- | The number format source used in the scorecard chart. This field is
-- optional.
data ScorecardChartSpecNumberFormatSource
    = SCSNFSChartNumberFormatSourceUndefined
      -- ^ @CHART_NUMBER_FORMAT_SOURCE_UNDEFINED@
      -- Default value, do not use.
    | SCSNFSFromData
      -- ^ @FROM_DATA@
      -- Inherit number formatting from data.
    | SCSNFSCustom
      -- ^ @CUSTOM@
      -- Apply custom formatting as specified by ChartCustomNumberFormatOptions.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ScorecardChartSpecNumberFormatSource

instance FromHttpApiData ScorecardChartSpecNumberFormatSource where
    parseQueryParam = \case
        "CHART_NUMBER_FORMAT_SOURCE_UNDEFINED" -> Right SCSNFSChartNumberFormatSourceUndefined
        "FROM_DATA" -> Right SCSNFSFromData
        "CUSTOM" -> Right SCSNFSCustom
        x -> Left ("Unable to parse ScorecardChartSpecNumberFormatSource from: " <> x)

instance ToHttpApiData ScorecardChartSpecNumberFormatSource where
    toQueryParam = \case
        SCSNFSChartNumberFormatSourceUndefined -> "CHART_NUMBER_FORMAT_SOURCE_UNDEFINED"
        SCSNFSFromData -> "FROM_DATA"
        SCSNFSCustom -> "CUSTOM"

instance FromJSON ScorecardChartSpecNumberFormatSource where
    parseJSON = parseJSONText "ScorecardChartSpecNumberFormatSource"

instance ToJSON ScorecardChartSpecNumberFormatSource where
    toJSON = toJSONText

-- | Determines how dates, times, and durations in the response should be
-- rendered. This is ignored if response_value_render_option is
-- FORMATTED_VALUE. The default dateTime render option is SERIAL_NUMBER.
data SpreadsheetsValuesAppendResponseDateTimeRenderOption
    = SVARDTROSerialNumber
      -- ^ @SERIAL_NUMBER@
      -- Instructs date, time, datetime, and duration fields to be output as
      -- doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The
      -- whole number portion of the value (left of the decimal) counts the days
      -- since December 30th 1899. The fractional portion (right of the decimal)
      -- counts the time as a fraction of the day. For example, January 1st 1900
      -- at noon would be 2.5, 2 because it\'s 2 days after December 30st 1899,
      -- and .5 because noon is half a day. February 1st 1900 at 3pm would be
      -- 33.625. This correctly treats the year 1900 as not a leap year.
    | SVARDTROFormattedString
      -- ^ @FORMATTED_STRING@
      -- Instructs date, time, datetime, and duration fields to be output as
      -- strings in their given number format (which is dependent on the
      -- spreadsheet locale).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpreadsheetsValuesAppendResponseDateTimeRenderOption

instance FromHttpApiData SpreadsheetsValuesAppendResponseDateTimeRenderOption where
    parseQueryParam = \case
        "SERIAL_NUMBER" -> Right SVARDTROSerialNumber
        "FORMATTED_STRING" -> Right SVARDTROFormattedString
        x -> Left ("Unable to parse SpreadsheetsValuesAppendResponseDateTimeRenderOption from: " <> x)

instance ToHttpApiData SpreadsheetsValuesAppendResponseDateTimeRenderOption where
    toQueryParam = \case
        SVARDTROSerialNumber -> "SERIAL_NUMBER"
        SVARDTROFormattedString -> "FORMATTED_STRING"

instance FromJSON SpreadsheetsValuesAppendResponseDateTimeRenderOption where
    parseJSON = parseJSONText "SpreadsheetsValuesAppendResponseDateTimeRenderOption"

instance ToJSON SpreadsheetsValuesAppendResponseDateTimeRenderOption where
    toJSON = toJSONText

-- | How dates, times, and durations should be represented in the output.
-- This is ignored if value_render_option is FORMATTED_VALUE. The default
-- dateTime render option is SERIAL_NUMBER.
data BatchGetValuesByDataFilterRequestDateTimeRenderOption
    = BGVBDFRDTROSerialNumber
      -- ^ @SERIAL_NUMBER@
      -- Instructs date, time, datetime, and duration fields to be output as
      -- doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The
      -- whole number portion of the value (left of the decimal) counts the days
      -- since December 30th 1899. The fractional portion (right of the decimal)
      -- counts the time as a fraction of the day. For example, January 1st 1900
      -- at noon would be 2.5, 2 because it\'s 2 days after December 30st 1899,
      -- and .5 because noon is half a day. February 1st 1900 at 3pm would be
      -- 33.625. This correctly treats the year 1900 as not a leap year.
    | BGVBDFRDTROFormattedString
      -- ^ @FORMATTED_STRING@
      -- Instructs date, time, datetime, and duration fields to be output as
      -- strings in their given number format (which is dependent on the
      -- spreadsheet locale).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BatchGetValuesByDataFilterRequestDateTimeRenderOption

instance FromHttpApiData BatchGetValuesByDataFilterRequestDateTimeRenderOption where
    parseQueryParam = \case
        "SERIAL_NUMBER" -> Right BGVBDFRDTROSerialNumber
        "FORMATTED_STRING" -> Right BGVBDFRDTROFormattedString
        x -> Left ("Unable to parse BatchGetValuesByDataFilterRequestDateTimeRenderOption from: " <> x)

instance ToHttpApiData BatchGetValuesByDataFilterRequestDateTimeRenderOption where
    toQueryParam = \case
        BGVBDFRDTROSerialNumber -> "SERIAL_NUMBER"
        BGVBDFRDTROFormattedString -> "FORMATTED_STRING"

instance FromJSON BatchGetValuesByDataFilterRequestDateTimeRenderOption where
    parseJSON = parseJSONText "BatchGetValuesByDataFilterRequestDateTimeRenderOption"

instance ToJSON BatchGetValuesByDataFilterRequestDateTimeRenderOption where
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
      -- Like \`PASTE_NORMAL\` but without borders.
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
      -- Corresponds to the \`#NUM!\` error.
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

-- | The major dimension that results should use. For example, if the
-- spreadsheet data is: \`A1=1,B1=2,A2=3,B2=4\`, then a request that
-- selects that range and sets \`majorDimension=ROWS\` returns
-- \`[[1,2],[3,4]]\`, whereas a request that sets
-- \`majorDimension=COLUMNS\` returns \`[[1,3],[2,4]]\`.
data BatchGetValuesByDataFilterRequestMajorDimension
    = BGVBDFRMDDimensionUnspecified
      -- ^ @DIMENSION_UNSPECIFIED@
      -- The default value, do not use.
    | BGVBDFRMDRows
      -- ^ @ROWS@
      -- Operates on the rows of a sheet.
    | BGVBDFRMDColumns
      -- ^ @COLUMNS@
      -- Operates on the columns of a sheet.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BatchGetValuesByDataFilterRequestMajorDimension

instance FromHttpApiData BatchGetValuesByDataFilterRequestMajorDimension where
    parseQueryParam = \case
        "DIMENSION_UNSPECIFIED" -> Right BGVBDFRMDDimensionUnspecified
        "ROWS" -> Right BGVBDFRMDRows
        "COLUMNS" -> Right BGVBDFRMDColumns
        x -> Left ("Unable to parse BatchGetValuesByDataFilterRequestMajorDimension from: " <> x)

instance ToHttpApiData BatchGetValuesByDataFilterRequestMajorDimension where
    toQueryParam = \case
        BGVBDFRMDDimensionUnspecified -> "DIMENSION_UNSPECIFIED"
        BGVBDFRMDRows -> "ROWS"
        BGVBDFRMDColumns -> "COLUMNS"

instance FromJSON BatchGetValuesByDataFilterRequestMajorDimension where
    parseJSON = parseJSONText "BatchGetValuesByDataFilterRequestMajorDimension"

instance ToJSON BatchGetValuesByDataFilterRequestMajorDimension where
    toJSON = toJSONText

-- | The type of date-time grouping to apply.
data ChartDateTimeRuleType
    = CDTRTChartDateTimeRuleTypeUnspecified
      -- ^ @CHART_DATE_TIME_RULE_TYPE_UNSPECIFIED@
      -- The default type, do not use.
    | CDTRTSecond
      -- ^ @SECOND@
      -- Group dates by second, from 0 to 59.
    | CDTRTMinute
      -- ^ @MINUTE@
      -- Group dates by minute, from 0 to 59.
    | CDTRTHour
      -- ^ @HOUR@
      -- Group dates by hour using a 24-hour system, from 0 to 23.
    | CDTRTHourMinute
      -- ^ @HOUR_MINUTE@
      -- Group dates by hour and minute using a 24-hour system, for example
      -- 19:45.
    | CDTRTHourMinuteAmpm
      -- ^ @HOUR_MINUTE_AMPM@
      -- Group dates by hour and minute using a 12-hour system, for example 7:45
      -- PM. The AM\/PM designation is translated based on the spreadsheet
      -- locale.
    | CDTRTDayOfWeek
      -- ^ @DAY_OF_WEEK@
      -- Group dates by day of week, for example Sunday. The days of the week
      -- will be translated based on the spreadsheet locale.
    | CDTRTDayOfYear
      -- ^ @DAY_OF_YEAR@
      -- Group dates by day of year, from 1 to 366. Note that dates after Feb. 29
      -- fall in different buckets in leap years than in non-leap years.
    | CDTRTDayOfMonth
      -- ^ @DAY_OF_MONTH@
      -- Group dates by day of month, from 1 to 31.
    | CDTRTDayMonth
      -- ^ @DAY_MONTH@
      -- Group dates by day and month, for example 22-Nov. The month is
      -- translated based on the spreadsheet locale.
    | CDTRTMonth
      -- ^ @MONTH@
      -- Group dates by month, for example Nov. The month is translated based on
      -- the spreadsheet locale.
    | CDTRTQuarter
      -- ^ @QUARTER@
      -- Group dates by quarter, for example Q1 (which represents Jan-Mar).
    | CDTRTYear
      -- ^ @YEAR@
      -- Group dates by year, for example 2008.
    | CDTRTYearMonth
      -- ^ @YEAR_MONTH@
      -- Group dates by year and month, for example 2008-Nov. The month is
      -- translated based on the spreadsheet locale.
    | CDTRTYearQuarter
      -- ^ @YEAR_QUARTER@
      -- Group dates by year and quarter, for example 2008 Q4.
    | CDTRTYearMonthDay
      -- ^ @YEAR_MONTH_DAY@
      -- Group dates by year, month, and day, for example 2008-11-22.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ChartDateTimeRuleType

instance FromHttpApiData ChartDateTimeRuleType where
    parseQueryParam = \case
        "CHART_DATE_TIME_RULE_TYPE_UNSPECIFIED" -> Right CDTRTChartDateTimeRuleTypeUnspecified
        "SECOND" -> Right CDTRTSecond
        "MINUTE" -> Right CDTRTMinute
        "HOUR" -> Right CDTRTHour
        "HOUR_MINUTE" -> Right CDTRTHourMinute
        "HOUR_MINUTE_AMPM" -> Right CDTRTHourMinuteAmpm
        "DAY_OF_WEEK" -> Right CDTRTDayOfWeek
        "DAY_OF_YEAR" -> Right CDTRTDayOfYear
        "DAY_OF_MONTH" -> Right CDTRTDayOfMonth
        "DAY_MONTH" -> Right CDTRTDayMonth
        "MONTH" -> Right CDTRTMonth
        "QUARTER" -> Right CDTRTQuarter
        "YEAR" -> Right CDTRTYear
        "YEAR_MONTH" -> Right CDTRTYearMonth
        "YEAR_QUARTER" -> Right CDTRTYearQuarter
        "YEAR_MONTH_DAY" -> Right CDTRTYearMonthDay
        x -> Left ("Unable to parse ChartDateTimeRuleType from: " <> x)

instance ToHttpApiData ChartDateTimeRuleType where
    toQueryParam = \case
        CDTRTChartDateTimeRuleTypeUnspecified -> "CHART_DATE_TIME_RULE_TYPE_UNSPECIFIED"
        CDTRTSecond -> "SECOND"
        CDTRTMinute -> "MINUTE"
        CDTRTHour -> "HOUR"
        CDTRTHourMinute -> "HOUR_MINUTE"
        CDTRTHourMinuteAmpm -> "HOUR_MINUTE_AMPM"
        CDTRTDayOfWeek -> "DAY_OF_WEEK"
        CDTRTDayOfYear -> "DAY_OF_YEAR"
        CDTRTDayOfMonth -> "DAY_OF_MONTH"
        CDTRTDayMonth -> "DAY_MONTH"
        CDTRTMonth -> "MONTH"
        CDTRTQuarter -> "QUARTER"
        CDTRTYear -> "YEAR"
        CDTRTYearMonth -> "YEAR_MONTH"
        CDTRTYearQuarter -> "YEAR_QUARTER"
        CDTRTYearMonthDay -> "YEAR_MONTH_DAY"

instance FromJSON ChartDateTimeRuleType where
    parseJSON = parseJSONText "ChartDateTimeRuleType"

instance ToJSON ChartDateTimeRuleType where
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

-- | How dates, times, and durations should be represented in the output.
-- This is ignored if value_render_option is FORMATTED_VALUE. The default
-- dateTime render option is SERIAL_NUMBER.
data SpreadsheetsValuesGetDateTimeRenderOption
    = SVGDTROSerialNumber
      -- ^ @SERIAL_NUMBER@
      -- Instructs date, time, datetime, and duration fields to be output as
      -- doubles in \"serial number\" format, as popularized by Lotus 1-2-3. The
      -- whole number portion of the value (left of the decimal) counts the days
      -- since December 30th 1899. The fractional portion (right of the decimal)
      -- counts the time as a fraction of the day. For example, January 1st 1900
      -- at noon would be 2.5, 2 because it\'s 2 days after December 30st 1899,
      -- and .5 because noon is half a day. February 1st 1900 at 3pm would be
      -- 33.625. This correctly treats the year 1900 as not a leap year.
    | SVGDTROFormattedString
      -- ^ @FORMATTED_STRING@
      -- Instructs date, time, datetime, and duration fields to be output as
      -- strings in their given number format (which is dependent on the
      -- spreadsheet locale).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpreadsheetsValuesGetDateTimeRenderOption

instance FromHttpApiData SpreadsheetsValuesGetDateTimeRenderOption where
    parseQueryParam = \case
        "SERIAL_NUMBER" -> Right SVGDTROSerialNumber
        "FORMATTED_STRING" -> Right SVGDTROFormattedString
        x -> Left ("Unable to parse SpreadsheetsValuesGetDateTimeRenderOption from: " <> x)

instance ToHttpApiData SpreadsheetsValuesGetDateTimeRenderOption where
    toQueryParam = \case
        SVGDTROSerialNumber -> "SERIAL_NUMBER"
        SVGDTROFormattedString -> "FORMATTED_STRING"

instance FromJSON SpreadsheetsValuesGetDateTimeRenderOption where
    parseJSON = parseJSONText "SpreadsheetsValuesGetDateTimeRenderOption"

instance ToJSON SpreadsheetsValuesGetDateTimeRenderOption where
    toJSON = toJSONText

-- | How the value should be interpreted.
data InterpolationPointType
    = IPTInterpolationPointTypeUnspecified
      -- ^ @INTERPOLATION_POINT_TYPE_UNSPECIFIED@
      -- The default value, do not use.
    | IPTMin
      -- ^ @MIN@
      -- The interpolation point uses the minimum value in the cells over the
      -- range of the conditional format.
    | IPTMax
      -- ^ @MAX@
      -- The interpolation point uses the maximum value in the cells over the
      -- range of the conditional format.
    | IPTNumber
      -- ^ @NUMBER@
      -- The interpolation point uses exactly the value in
      -- InterpolationPoint.value.
    | IPTPercent
      -- ^ @PERCENT@
      -- The interpolation point is the given percentage over all the cells in
      -- the range of the conditional format. This is equivalent to \`NUMBER\` if
      -- the value was: \`=(MAX(FLATTEN(range)) * (value \/ 100)) +
      -- (MIN(FLATTEN(range)) * (1 - (value \/ 100)))\` (where errors in the
      -- range are ignored when flattening).
    | IPTPercentile
      -- ^ @PERCENTILE@
      -- The interpolation point is the given percentile over all the cells in
      -- the range of the conditional format. This is equivalent to \`NUMBER\` if
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
    | TTCRDTAutodetect
      -- ^ @AUTODETECT@
      -- Automatically detect columns.
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
        "AUTODETECT" -> Right TTCRDTAutodetect
        x -> Left ("Unable to parse TextToColumnsRequestDelimiterType from: " <> x)

instance ToHttpApiData TextToColumnsRequestDelimiterType where
    toQueryParam = \case
        TTCRDTDelimiterTypeUnspecified -> "DELIMITER_TYPE_UNSPECIFIED"
        TTCRDTComma -> "COMMA"
        TTCRDTSemicolon -> "SEMICOLON"
        TTCRDTPeriod -> "PERIOD"
        TTCRDTSpace -> "SPACE"
        TTCRDTCustom -> "CUSTOM"
        TTCRDTAutodetect -> "AUTODETECT"

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

-- | The state of the data execution.
data DataExecutionStatusState
    = DataExecutionStateUnspecified
      -- ^ @DATA_EXECUTION_STATE_UNSPECIFIED@
      -- Default value, do not use.
    | NotStarted
      -- ^ @NOT_STARTED@
      -- The data execution has not started.
    | Running
      -- ^ @RUNNING@
      -- The data execution has started and is running.
    | Succeeded
      -- ^ @SUCCEEDED@
      -- The data execution has completed successfully.
    | Failed
      -- ^ @FAILED@
      -- The data execution has completed with errors.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable DataExecutionStatusState

instance FromHttpApiData DataExecutionStatusState where
    parseQueryParam = \case
        "DATA_EXECUTION_STATE_UNSPECIFIED" -> Right DataExecutionStateUnspecified
        "NOT_STARTED" -> Right NotStarted
        "RUNNING" -> Right Running
        "SUCCEEDED" -> Right Succeeded
        "FAILED" -> Right Failed
        x -> Left ("Unable to parse DataExecutionStatusState from: " <> x)

instance ToHttpApiData DataExecutionStatusState where
    toQueryParam = \case
        DataExecutionStateUnspecified -> "DATA_EXECUTION_STATE_UNSPECIFIED"
        NotStarted -> "NOT_STARTED"
        Running -> "RUNNING"
        Succeeded -> "SUCCEEDED"
        Failed -> "FAILED"

instance FromJSON DataExecutionStatusState where
    parseJSON = parseJSONText "DataExecutionStatusState"

instance ToJSON DataExecutionStatusState where
    toJSON = toJSONText

-- | How values should be represented in the output. The default render
-- option is FORMATTED_VALUE.
data SpreadsheetsValuesGetValueRenderOption
    = SVGVROFormattedValue
      -- ^ @FORMATTED_VALUE@
      -- Values will be calculated & formatted in the reply according to the
      -- cell\'s formatting. Formatting is based on the spreadsheet\'s locale,
      -- not the requesting user\'s locale. For example, if \`A1\` is \`1.23\`
      -- and \`A2\` is \`=A1\` and formatted as currency, then \`A2\` would
      -- return \`\"$1.23\"\`.
    | SVGVROUnformattedValue
      -- ^ @UNFORMATTED_VALUE@
      -- Values will be calculated, but not formatted in the reply. For example,
      -- if \`A1\` is \`1.23\` and \`A2\` is \`=A1\` and formatted as currency,
      -- then \`A2\` would return the number \`1.23\`.
    | SVGVROFormula
      -- ^ @FORMULA@
      -- Values will not be calculated. The reply will include the formulas. For
      -- example, if \`A1\` is \`1.23\` and \`A2\` is \`=A1\` and formatted as
      -- currency, then A2 would return \`\"=A1\"\`.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SpreadsheetsValuesGetValueRenderOption

instance FromHttpApiData SpreadsheetsValuesGetValueRenderOption where
    parseQueryParam = \case
        "FORMATTED_VALUE" -> Right SVGVROFormattedValue
        "UNFORMATTED_VALUE" -> Right SVGVROUnformattedValue
        "FORMULA" -> Right SVGVROFormula
        x -> Left ("Unable to parse SpreadsheetsValuesGetValueRenderOption from: " <> x)

instance ToHttpApiData SpreadsheetsValuesGetValueRenderOption where
    toQueryParam = \case
        SVGVROFormattedValue -> "FORMATTED_VALUE"
        SVGVROUnformattedValue -> "UNFORMATTED_VALUE"
        SVGVROFormula -> "FORMULA"

instance FromJSON SpreadsheetsValuesGetValueRenderOption where
    parseJSON = parseJSONText "SpreadsheetsValuesGetValueRenderOption"

instance ToJSON SpreadsheetsValuesGetValueRenderOption where
    toJSON = toJSONText
