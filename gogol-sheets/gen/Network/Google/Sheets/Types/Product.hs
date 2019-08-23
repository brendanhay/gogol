{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Sheets.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Sheets.Types.Product where

import           Network.Google.Prelude
import           Network.Google.Sheets.Types.Sum

-- | Information about which values in a pivot group should be used for
-- sorting.
--
-- /See:/ 'pivotGroupSortValueBucket' smart constructor.
data PivotGroupSortValueBucket =
  PivotGroupSortValueBucket'
    { _pgsvbBuckets     :: !(Maybe [ExtendedValue])
    , _pgsvbValuesIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PivotGroupSortValueBucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgsvbBuckets'
--
-- * 'pgsvbValuesIndex'
pivotGroupSortValueBucket
    :: PivotGroupSortValueBucket
pivotGroupSortValueBucket =
  PivotGroupSortValueBucket'
    {_pgsvbBuckets = Nothing, _pgsvbValuesIndex = Nothing}


-- | Determines the bucket from which values are chosen to sort. For example,
-- in a pivot table with one row group & two column groups, the row group
-- can list up to two values. The first value corresponds to a value within
-- the first column group, and the second value corresponds to a value in
-- the second column group. If no values are listed, this would indicate
-- that the row should be sorted according to the \"Grand Total\" over the
-- column groups. If a single value is listed, this would correspond to
-- using the \"Total\" of that bucket.
pgsvbBuckets :: Lens' PivotGroupSortValueBucket [ExtendedValue]
pgsvbBuckets
  = lens _pgsvbBuckets (\ s a -> s{_pgsvbBuckets = a})
      . _Default
      . _Coerce

-- | The offset in the PivotTable.values list which the values in this
-- grouping should be sorted by.
pgsvbValuesIndex :: Lens' PivotGroupSortValueBucket (Maybe Int32)
pgsvbValuesIndex
  = lens _pgsvbValuesIndex
      (\ s a -> s{_pgsvbValuesIndex = a})
      . mapping _Coerce

instance FromJSON PivotGroupSortValueBucket where
        parseJSON
          = withObject "PivotGroupSortValueBucket"
              (\ o ->
                 PivotGroupSortValueBucket' <$>
                   (o .:? "buckets" .!= mempty) <*>
                     (o .:? "valuesIndex"))

instance ToJSON PivotGroupSortValueBucket where
        toJSON PivotGroupSortValueBucket'{..}
          = object
              (catMaybes
                 [("buckets" .=) <$> _pgsvbBuckets,
                  ("valuesIndex" .=) <$> _pgsvbValuesIndex])

-- | Data within a range of the spreadsheet.
--
-- /See:/ 'valueRange' smart constructor.
data ValueRange =
  ValueRange'
    { _vrValues         :: !(Maybe [[JSONValue]])
    , _vrRange          :: !(Maybe Text)
    , _vrMajorDimension :: !(Maybe ValueRangeMajorDimension)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ValueRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrValues'
--
-- * 'vrRange'
--
-- * 'vrMajorDimension'
valueRange
    :: ValueRange
valueRange =
  ValueRange'
    {_vrValues = Nothing, _vrRange = Nothing, _vrMajorDimension = Nothing}


-- | The data that was read or to be written. This is an array of arrays, the
-- outer array representing all the data and each inner array representing
-- a major dimension. Each item in the inner array corresponds with one
-- cell. For output, empty trailing rows and columns will not be included.
-- For input, supported value types are: bool, string, and double. Null
-- values will be skipped. To set a cell to an empty value, set the string
-- value to an empty string.
vrValues :: Lens' ValueRange [[JSONValue]]
vrValues
  = lens _vrValues (\ s a -> s{_vrValues = a}) .
      _Default
      . _Coerce

-- | The range the values cover, in A1 notation. For output, this range
-- indicates the entire requested range, even though the values will
-- exclude trailing rows and columns. When appending values, this field
-- represents the range to search for a table, after which values will be
-- appended.
vrRange :: Lens' ValueRange (Maybe Text)
vrRange = lens _vrRange (\ s a -> s{_vrRange = a})

-- | The major dimension of the values. For output, if the spreadsheet data
-- is: \`A1=1,B1=2,A2=3,B2=4\`, then requesting
-- \`range=A1:B2,majorDimension=ROWS\` will return \`[[1,2],[3,4]]\`,
-- whereas requesting \`range=A1:B2,majorDimension=COLUMNS\` will return
-- \`[[1,3],[2,4]]\`. For input, with \`range=A1:B2,majorDimension=ROWS\`
-- then \`[[1,2],[3,4]]\` will set \`A1=1,B1=2,A2=3,B2=4\`. With
-- \`range=A1:B2,majorDimension=COLUMNS\` then \`[[1,2],[3,4]]\` will set
-- \`A1=1,B1=3,A2=2,B2=4\`. When writing, if this field is not set, it
-- defaults to ROWS.
vrMajorDimension :: Lens' ValueRange (Maybe ValueRangeMajorDimension)
vrMajorDimension
  = lens _vrMajorDimension
      (\ s a -> s{_vrMajorDimension = a})

instance FromJSON ValueRange where
        parseJSON
          = withObject "ValueRange"
              (\ o ->
                 ValueRange' <$>
                   (o .:? "values" .!= mempty) <*> (o .:? "range") <*>
                     (o .:? "majorDimension"))

instance ToJSON ValueRange where
        toJSON ValueRange'{..}
          = object
              (catMaybes
                 [("values" .=) <$> _vrValues,
                  ("range" .=) <$> _vrRange,
                  ("majorDimension" .=) <$> _vrMajorDimension])

-- | Sorts data in rows based on a sort order per column.
--
-- /See:/ 'sortRangeRequest' smart constructor.
data SortRangeRequest =
  SortRangeRequest'
    { _srrSortSpecs :: !(Maybe [SortSpec])
    , _srrRange     :: !(Maybe GridRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SortRangeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrSortSpecs'
--
-- * 'srrRange'
sortRangeRequest
    :: SortRangeRequest
sortRangeRequest =
  SortRangeRequest' {_srrSortSpecs = Nothing, _srrRange = Nothing}


-- | The sort order per column. Later specifications are used when values are
-- equal in the earlier specifications.
srrSortSpecs :: Lens' SortRangeRequest [SortSpec]
srrSortSpecs
  = lens _srrSortSpecs (\ s a -> s{_srrSortSpecs = a})
      . _Default
      . _Coerce

-- | The range to sort.
srrRange :: Lens' SortRangeRequest (Maybe GridRange)
srrRange = lens _srrRange (\ s a -> s{_srrRange = a})

instance FromJSON SortRangeRequest where
        parseJSON
          = withObject "SortRangeRequest"
              (\ o ->
                 SortRangeRequest' <$>
                   (o .:? "sortSpecs" .!= mempty) <*> (o .:? "range"))

instance ToJSON SortRangeRequest where
        toJSON SortRangeRequest'{..}
          = object
              (catMaybes
                 [("sortSpecs" .=) <$> _srrSortSpecs,
                  ("range" .=) <$> _srrRange])

-- | Removes the named range with the given ID from the spreadsheet.
--
-- /See:/ 'deleteNamedRangeRequest' smart constructor.
newtype DeleteNamedRangeRequest =
  DeleteNamedRangeRequest'
    { _dnrrNamedRangeId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteNamedRangeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dnrrNamedRangeId'
deleteNamedRangeRequest
    :: DeleteNamedRangeRequest
deleteNamedRangeRequest = DeleteNamedRangeRequest' {_dnrrNamedRangeId = Nothing}


-- | The ID of the named range to delete.
dnrrNamedRangeId :: Lens' DeleteNamedRangeRequest (Maybe Text)
dnrrNamedRangeId
  = lens _dnrrNamedRangeId
      (\ s a -> s{_dnrrNamedRangeId = a})

instance FromJSON DeleteNamedRangeRequest where
        parseJSON
          = withObject "DeleteNamedRangeRequest"
              (\ o ->
                 DeleteNamedRangeRequest' <$> (o .:? "namedRangeId"))

instance ToJSON DeleteNamedRangeRequest where
        toJSON DeleteNamedRangeRequest'{..}
          = object
              (catMaybes
                 [("namedRangeId" .=) <$> _dnrrNamedRangeId])

-- | Updates properties of the named range with the specified namedRangeId.
--
-- /See:/ 'updateNamedRangeRequest' smart constructor.
data UpdateNamedRangeRequest =
  UpdateNamedRangeRequest'
    { _unrrNamedRange :: !(Maybe NamedRange)
    , _unrrFields     :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateNamedRangeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'unrrNamedRange'
--
-- * 'unrrFields'
updateNamedRangeRequest
    :: UpdateNamedRangeRequest
updateNamedRangeRequest =
  UpdateNamedRangeRequest' {_unrrNamedRange = Nothing, _unrrFields = Nothing}


-- | The named range to update with the new properties.
unrrNamedRange :: Lens' UpdateNamedRangeRequest (Maybe NamedRange)
unrrNamedRange
  = lens _unrrNamedRange
      (\ s a -> s{_unrrNamedRange = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`namedRange\` is implied and should not be specified. A single
-- \`\"*\"\` can be used as short-hand for listing every field.
unrrFields :: Lens' UpdateNamedRangeRequest (Maybe GFieldMask)
unrrFields
  = lens _unrrFields (\ s a -> s{_unrrFields = a})

instance FromJSON UpdateNamedRangeRequest where
        parseJSON
          = withObject "UpdateNamedRangeRequest"
              (\ o ->
                 UpdateNamedRangeRequest' <$>
                   (o .:? "namedRange") <*> (o .:? "fields"))

instance ToJSON UpdateNamedRangeRequest where
        toJSON UpdateNamedRangeRequest'{..}
          = object
              (catMaybes
                 [("namedRange" .=) <$> _unrrNamedRange,
                  ("fields" .=) <$> _unrrFields])

-- | The data included in a domain or series.
--
-- /See:/ 'chartData' smart constructor.
newtype ChartData =
  ChartData'
    { _cdSourceRange :: Maybe ChartSourceRange
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChartData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdSourceRange'
chartData
    :: ChartData
chartData = ChartData' {_cdSourceRange = Nothing}


-- | The source ranges of the data.
cdSourceRange :: Lens' ChartData (Maybe ChartSourceRange)
cdSourceRange
  = lens _cdSourceRange
      (\ s a -> s{_cdSourceRange = a})

instance FromJSON ChartData where
        parseJSON
          = withObject "ChartData"
              (\ o -> ChartData' <$> (o .:? "sourceRange"))

instance ToJSON ChartData where
        toJSON ChartData'{..}
          = object
              (catMaybes [("sourceRange" .=) <$> _cdSourceRange])

-- | The request for clearing more than one range of values in a spreadsheet.
--
-- /See:/ 'batchClearValuesRequest' smart constructor.
newtype BatchClearValuesRequest =
  BatchClearValuesRequest'
    { _bcvrRanges :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchClearValuesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcvrRanges'
batchClearValuesRequest
    :: BatchClearValuesRequest
batchClearValuesRequest = BatchClearValuesRequest' {_bcvrRanges = Nothing}


-- | The ranges to clear, in A1 notation.
bcvrRanges :: Lens' BatchClearValuesRequest [Text]
bcvrRanges
  = lens _bcvrRanges (\ s a -> s{_bcvrRanges = a}) .
      _Default
      . _Coerce

instance FromJSON BatchClearValuesRequest where
        parseJSON
          = withObject "BatchClearValuesRequest"
              (\ o ->
                 BatchClearValuesRequest' <$>
                   (o .:? "ranges" .!= mempty))

instance ToJSON BatchClearValuesRequest where
        toJSON BatchClearValuesRequest'{..}
          = object (catMaybes [("ranges" .=) <$> _bcvrRanges])

-- | The response from creating developer metadata.
--
-- /See:/ 'createDeveloperMetadataResponse' smart constructor.
newtype CreateDeveloperMetadataResponse =
  CreateDeveloperMetadataResponse'
    { _cdmrDeveloperMetadata :: Maybe DeveloperMetadata
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateDeveloperMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdmrDeveloperMetadata'
createDeveloperMetadataResponse
    :: CreateDeveloperMetadataResponse
createDeveloperMetadataResponse =
  CreateDeveloperMetadataResponse' {_cdmrDeveloperMetadata = Nothing}


-- | The developer metadata that was created.
cdmrDeveloperMetadata :: Lens' CreateDeveloperMetadataResponse (Maybe DeveloperMetadata)
cdmrDeveloperMetadata
  = lens _cdmrDeveloperMetadata
      (\ s a -> s{_cdmrDeveloperMetadata = a})

instance FromJSON CreateDeveloperMetadataResponse
         where
        parseJSON
          = withObject "CreateDeveloperMetadataResponse"
              (\ o ->
                 CreateDeveloperMetadataResponse' <$>
                   (o .:? "developerMetadata"))

instance ToJSON CreateDeveloperMetadataResponse where
        toJSON CreateDeveloperMetadataResponse'{..}
          = object
              (catMaybes
                 [("developerMetadata" .=) <$>
                    _cdmrDeveloperMetadata])

-- | Allows you to organize the date-time values in a source data column into
-- buckets based on selected parts of their date or time values. For
-- example, consider a pivot table showing sales transactions by date:
-- +----------+--------------+ | Date | SUM of Sales |
-- +----------+--------------+ | 1\/1\/2017 | $621.14 | | 2\/3\/2017 |
-- $708.84 | | 5\/8\/2017 | $326.84 | ... +----------+--------------+
-- Applying a date-time group rule with a DateTimeRuleType of YEAR_MONTH
-- results in the following pivot table. +--------------+--------------+ |
-- Grouped Date | SUM of Sales | +--------------+--------------+ | 2017-Jan
-- | $53,731.78 | | 2017-Feb | $83,475.32 | | 2017-Mar | $94,385.05 | ...
-- +--------------+--------------+
--
-- /See:/ 'dateTimeRule' smart constructor.
newtype DateTimeRule =
  DateTimeRule'
    { _dtrType :: Maybe DateTimeRuleType
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DateTimeRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtrType'
dateTimeRule
    :: DateTimeRule
dateTimeRule = DateTimeRule' {_dtrType = Nothing}


-- | The type of date-time grouping to apply.
dtrType :: Lens' DateTimeRule (Maybe DateTimeRuleType)
dtrType = lens _dtrType (\ s a -> s{_dtrType = a})

instance FromJSON DateTimeRule where
        parseJSON
          = withObject "DateTimeRule"
              (\ o -> DateTimeRule' <$> (o .:? "type"))

instance ToJSON DateTimeRule where
        toJSON DateTimeRule'{..}
          = object (catMaybes [("type" .=) <$> _dtrType])

-- | Properties of a spreadsheet.
--
-- /See:/ 'spreadsheetProperties' smart constructor.
data SpreadsheetProperties =
  SpreadsheetProperties'
    { _spDefaultFormat                :: !(Maybe CellFormat)
    , _spLocale                       :: !(Maybe Text)
    , _spIterativeCalculationSettings :: !(Maybe IterativeCalculationSettings)
    , _spAutoRecalc                   :: !(Maybe SpreadsheetPropertiesAutoRecalc)
    , _spTitle                        :: !(Maybe Text)
    , _spTimeZone                     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpreadsheetProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spDefaultFormat'
--
-- * 'spLocale'
--
-- * 'spIterativeCalculationSettings'
--
-- * 'spAutoRecalc'
--
-- * 'spTitle'
--
-- * 'spTimeZone'
spreadsheetProperties
    :: SpreadsheetProperties
spreadsheetProperties =
  SpreadsheetProperties'
    { _spDefaultFormat = Nothing
    , _spLocale = Nothing
    , _spIterativeCalculationSettings = Nothing
    , _spAutoRecalc = Nothing
    , _spTitle = Nothing
    , _spTimeZone = Nothing
    }


-- | The default format of all cells in the spreadsheet.
-- CellData.effectiveFormat will not be set if the cell\'s format is equal
-- to this default format. This field is read-only.
spDefaultFormat :: Lens' SpreadsheetProperties (Maybe CellFormat)
spDefaultFormat
  = lens _spDefaultFormat
      (\ s a -> s{_spDefaultFormat = a})

-- | The locale of the spreadsheet in one of the following formats: * an ISO
-- 639-1 language code such as \`en\` * an ISO 639-2 language code such as
-- \`fil\`, if no 639-1 code exists * a combination of the ISO language
-- code and country code, such as \`en_US\` Note: when updating this field,
-- not all locales\/languages are supported.
spLocale :: Lens' SpreadsheetProperties (Maybe Text)
spLocale = lens _spLocale (\ s a -> s{_spLocale = a})

-- | Determines whether and how circular references are resolved with
-- iterative calculation. Absence of this field means that circular
-- references will result in calculation errors.
spIterativeCalculationSettings :: Lens' SpreadsheetProperties (Maybe IterativeCalculationSettings)
spIterativeCalculationSettings
  = lens _spIterativeCalculationSettings
      (\ s a -> s{_spIterativeCalculationSettings = a})

-- | The amount of time to wait before volatile functions are recalculated.
spAutoRecalc :: Lens' SpreadsheetProperties (Maybe SpreadsheetPropertiesAutoRecalc)
spAutoRecalc
  = lens _spAutoRecalc (\ s a -> s{_spAutoRecalc = a})

-- | The title of the spreadsheet.
spTitle :: Lens' SpreadsheetProperties (Maybe Text)
spTitle = lens _spTitle (\ s a -> s{_spTitle = a})

-- | The time zone of the spreadsheet, in CLDR format such as
-- \`America\/New_York\`. If the time zone isn\'t recognized, this may be a
-- custom time zone such as \`GMT-07:00\`.
spTimeZone :: Lens' SpreadsheetProperties (Maybe Text)
spTimeZone
  = lens _spTimeZone (\ s a -> s{_spTimeZone = a})

instance FromJSON SpreadsheetProperties where
        parseJSON
          = withObject "SpreadsheetProperties"
              (\ o ->
                 SpreadsheetProperties' <$>
                   (o .:? "defaultFormat") <*> (o .:? "locale") <*>
                     (o .:? "iterativeCalculationSettings")
                     <*> (o .:? "autoRecalc")
                     <*> (o .:? "title")
                     <*> (o .:? "timeZone"))

instance ToJSON SpreadsheetProperties where
        toJSON SpreadsheetProperties'{..}
          = object
              (catMaybes
                 [("defaultFormat" .=) <$> _spDefaultFormat,
                  ("locale" .=) <$> _spLocale,
                  ("iterativeCalculationSettings" .=) <$>
                    _spIterativeCalculationSettings,
                  ("autoRecalc" .=) <$> _spAutoRecalc,
                  ("title" .=) <$> _spTitle,
                  ("timeZone" .=) <$> _spTimeZone])

-- | The borders of the cell.
--
-- /See:/ 'bOrders' smart constructor.
data BOrders =
  BOrders'
    { _boBottom :: !(Maybe BOrder)
    , _boLeft   :: !(Maybe BOrder)
    , _boRight  :: !(Maybe BOrder)
    , _boTop    :: !(Maybe BOrder)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BOrders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'boBottom'
--
-- * 'boLeft'
--
-- * 'boRight'
--
-- * 'boTop'
bOrders
    :: BOrders
bOrders =
  BOrders'
    { _boBottom = Nothing
    , _boLeft = Nothing
    , _boRight = Nothing
    , _boTop = Nothing
    }


-- | The bottom border of the cell.
boBottom :: Lens' BOrders (Maybe BOrder)
boBottom = lens _boBottom (\ s a -> s{_boBottom = a})

-- | The left border of the cell.
boLeft :: Lens' BOrders (Maybe BOrder)
boLeft = lens _boLeft (\ s a -> s{_boLeft = a})

-- | The right border of the cell.
boRight :: Lens' BOrders (Maybe BOrder)
boRight = lens _boRight (\ s a -> s{_boRight = a})

-- | The top border of the cell.
boTop :: Lens' BOrders (Maybe BOrder)
boTop = lens _boTop (\ s a -> s{_boTop = a})

instance FromJSON BOrders where
        parseJSON
          = withObject "BOrders"
              (\ o ->
                 BOrders' <$>
                   (o .:? "bottom") <*> (o .:? "left") <*>
                     (o .:? "right")
                     <*> (o .:? "top"))

instance ToJSON BOrders where
        toJSON BOrders'{..}
          = object
              (catMaybes
                 [("bottom" .=) <$> _boBottom,
                  ("left" .=) <$> _boLeft, ("right" .=) <$> _boRight,
                  ("top" .=) <$> _boTop])

-- | The request for clearing more than one range selected by a DataFilter in
-- a spreadsheet.
--
-- /See:/ 'batchClearValuesByDataFilterRequest' smart constructor.
newtype BatchClearValuesByDataFilterRequest =
  BatchClearValuesByDataFilterRequest'
    { _bcvbdfrDataFilters :: Maybe [DataFilter]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchClearValuesByDataFilterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcvbdfrDataFilters'
batchClearValuesByDataFilterRequest
    :: BatchClearValuesByDataFilterRequest
batchClearValuesByDataFilterRequest =
  BatchClearValuesByDataFilterRequest' {_bcvbdfrDataFilters = Nothing}


-- | The DataFilters used to determine which ranges to clear.
bcvbdfrDataFilters :: Lens' BatchClearValuesByDataFilterRequest [DataFilter]
bcvbdfrDataFilters
  = lens _bcvbdfrDataFilters
      (\ s a -> s{_bcvbdfrDataFilters = a})
      . _Default
      . _Coerce

instance FromJSON BatchClearValuesByDataFilterRequest
         where
        parseJSON
          = withObject "BatchClearValuesByDataFilterRequest"
              (\ o ->
                 BatchClearValuesByDataFilterRequest' <$>
                   (o .:? "dataFilters" .!= mempty))

instance ToJSON BatchClearValuesByDataFilterRequest
         where
        toJSON BatchClearValuesByDataFilterRequest'{..}
          = object
              (catMaybes
                 [("dataFilters" .=) <$> _bcvbdfrDataFilters])

-- | A run of a text format. The format of this run continues until the start
-- index of the next run. When updating, all fields must be set.
--
-- /See:/ 'textFormatRun' smart constructor.
data TextFormatRun =
  TextFormatRun'
    { _tfrFormat     :: !(Maybe TextFormat)
    , _tfrStartIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextFormatRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfrFormat'
--
-- * 'tfrStartIndex'
textFormatRun
    :: TextFormatRun
textFormatRun = TextFormatRun' {_tfrFormat = Nothing, _tfrStartIndex = Nothing}


-- | The format of this run. Absent values inherit the cell\'s format.
tfrFormat :: Lens' TextFormatRun (Maybe TextFormat)
tfrFormat
  = lens _tfrFormat (\ s a -> s{_tfrFormat = a})

-- | The character index where this run starts.
tfrStartIndex :: Lens' TextFormatRun (Maybe Int32)
tfrStartIndex
  = lens _tfrStartIndex
      (\ s a -> s{_tfrStartIndex = a})
      . mapping _Coerce

instance FromJSON TextFormatRun where
        parseJSON
          = withObject "TextFormatRun"
              (\ o ->
                 TextFormatRun' <$>
                   (o .:? "format") <*> (o .:? "startIndex"))

instance ToJSON TextFormatRun where
        toJSON TextFormatRun'{..}
          = object
              (catMaybes
                 [("format" .=) <$> _tfrFormat,
                  ("startIndex" .=) <$> _tfrStartIndex])

-- | Deletes a group over the specified range by decrementing the depth of
-- the dimensions in the range. For example, assume the sheet has a depth-1
-- group over B:E and a depth-2 group over C:D. Deleting a group over D:E
-- leaves the sheet with a depth-1 group over B:D and a depth-2 group over
-- C:C.
--
-- /See:/ 'deleteDimensionGroupRequest' smart constructor.
newtype DeleteDimensionGroupRequest =
  DeleteDimensionGroupRequest'
    { _ddgrRange :: Maybe DimensionRange
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteDimensionGroupRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddgrRange'
deleteDimensionGroupRequest
    :: DeleteDimensionGroupRequest
deleteDimensionGroupRequest =
  DeleteDimensionGroupRequest' {_ddgrRange = Nothing}


-- | The range of the group to be deleted.
ddgrRange :: Lens' DeleteDimensionGroupRequest (Maybe DimensionRange)
ddgrRange
  = lens _ddgrRange (\ s a -> s{_ddgrRange = a})

instance FromJSON DeleteDimensionGroupRequest where
        parseJSON
          = withObject "DeleteDimensionGroupRequest"
              (\ o ->
                 DeleteDimensionGroupRequest' <$> (o .:? "range"))

instance ToJSON DeleteDimensionGroupRequest where
        toJSON DeleteDimensionGroupRequest'{..}
          = object (catMaybes [("range" .=) <$> _ddgrRange])

-- | Updates the state of the specified group.
--
-- /See:/ 'updateDimensionGroupRequest' smart constructor.
data UpdateDimensionGroupRequest =
  UpdateDimensionGroupRequest'
    { _udgrDimensionGroup :: !(Maybe DimensionGroup)
    , _udgrFields         :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateDimensionGroupRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udgrDimensionGroup'
--
-- * 'udgrFields'
updateDimensionGroupRequest
    :: UpdateDimensionGroupRequest
updateDimensionGroupRequest =
  UpdateDimensionGroupRequest'
    {_udgrDimensionGroup = Nothing, _udgrFields = Nothing}


-- | The group whose state should be updated. The range and depth of the
-- group should specify a valid group on the sheet, and all other fields
-- updated.
udgrDimensionGroup :: Lens' UpdateDimensionGroupRequest (Maybe DimensionGroup)
udgrDimensionGroup
  = lens _udgrDimensionGroup
      (\ s a -> s{_udgrDimensionGroup = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`dimensionGroup\` is implied and should not be specified. A
-- single \`\"*\"\` can be used as short-hand for listing every field.
udgrFields :: Lens' UpdateDimensionGroupRequest (Maybe GFieldMask)
udgrFields
  = lens _udgrFields (\ s a -> s{_udgrFields = a})

instance FromJSON UpdateDimensionGroupRequest where
        parseJSON
          = withObject "UpdateDimensionGroupRequest"
              (\ o ->
                 UpdateDimensionGroupRequest' <$>
                   (o .:? "dimensionGroup") <*> (o .:? "fields"))

instance ToJSON UpdateDimensionGroupRequest where
        toJSON UpdateDimensionGroupRequest'{..}
          = object
              (catMaybes
                 [("dimensionGroup" .=) <$> _udgrDimensionGroup,
                  ("fields" .=) <$> _udgrFields])

-- | Adds a new sheet. When a sheet is added at a given index, all subsequent
-- sheets\' indexes are incremented. To add an object sheet, use
-- AddChartRequest instead and specify EmbeddedObjectPosition.sheetId or
-- EmbeddedObjectPosition.newSheet.
--
-- /See:/ 'addSheetRequest' smart constructor.
newtype AddSheetRequest =
  AddSheetRequest'
    { _asrProperties :: Maybe SheetProperties
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddSheetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asrProperties'
addSheetRequest
    :: AddSheetRequest
addSheetRequest = AddSheetRequest' {_asrProperties = Nothing}


-- | The properties the new sheet should have. All properties are optional.
-- The sheetId field is optional; if one is not set, an id will be randomly
-- generated. (It is an error to specify the ID of a sheet that already
-- exists.)
asrProperties :: Lens' AddSheetRequest (Maybe SheetProperties)
asrProperties
  = lens _asrProperties
      (\ s a -> s{_asrProperties = a})

instance FromJSON AddSheetRequest where
        parseJSON
          = withObject "AddSheetRequest"
              (\ o -> AddSheetRequest' <$> (o .:? "properties"))

instance ToJSON AddSheetRequest where
        toJSON AddSheetRequest'{..}
          = object
              (catMaybes [("properties" .=) <$> _asrProperties])

-- | A sort order associated with a specific column or row.
--
-- /See:/ 'sortSpec' smart constructor.
data SortSpec =
  SortSpec'
    { _ssSortOrder      :: !(Maybe SortSpecSortOrder)
    , _ssDimensionIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SortSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssSortOrder'
--
-- * 'ssDimensionIndex'
sortSpec
    :: SortSpec
sortSpec = SortSpec' {_ssSortOrder = Nothing, _ssDimensionIndex = Nothing}


-- | The order data should be sorted.
ssSortOrder :: Lens' SortSpec (Maybe SortSpecSortOrder)
ssSortOrder
  = lens _ssSortOrder (\ s a -> s{_ssSortOrder = a})

-- | The dimension the sort should be applied to.
ssDimensionIndex :: Lens' SortSpec (Maybe Int32)
ssDimensionIndex
  = lens _ssDimensionIndex
      (\ s a -> s{_ssDimensionIndex = a})
      . mapping _Coerce

instance FromJSON SortSpec where
        parseJSON
          = withObject "SortSpec"
              (\ o ->
                 SortSpec' <$>
                   (o .:? "sortOrder") <*> (o .:? "dimensionIndex"))

instance ToJSON SortSpec where
        toJSON SortSpec'{..}
          = object
              (catMaybes
                 [("sortOrder" .=) <$> _ssSortOrder,
                  ("dimensionIndex" .=) <$> _ssDimensionIndex])

-- | A group over an interval of rows or columns on a sheet, which can
-- contain or be contained within other groups. A group can be collapsed or
-- expanded as a unit on the sheet.
--
-- /See:/ 'dimensionGroup' smart constructor.
data DimensionGroup =
  DimensionGroup'
    { _dgCollapsed :: !(Maybe Bool)
    , _dgRange     :: !(Maybe DimensionRange)
    , _dgDepth     :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DimensionGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgCollapsed'
--
-- * 'dgRange'
--
-- * 'dgDepth'
dimensionGroup
    :: DimensionGroup
dimensionGroup =
  DimensionGroup'
    {_dgCollapsed = Nothing, _dgRange = Nothing, _dgDepth = Nothing}


-- | This field is true if this group is collapsed. A collapsed group remains
-- collapsed if an overlapping group at a shallower depth is expanded. A
-- true value does not imply that all dimensions within the group are
-- hidden, since a dimension\'s visibility can change independently from
-- this group property. However, when this property is updated, all
-- dimensions within it are set to hidden if this field is true, or set to
-- visible if this field is false.
dgCollapsed :: Lens' DimensionGroup (Maybe Bool)
dgCollapsed
  = lens _dgCollapsed (\ s a -> s{_dgCollapsed = a})

-- | The range over which this group exists.
dgRange :: Lens' DimensionGroup (Maybe DimensionRange)
dgRange = lens _dgRange (\ s a -> s{_dgRange = a})

-- | The depth of the group, representing how many groups have a range that
-- wholly contains the range of this group.
dgDepth :: Lens' DimensionGroup (Maybe Int32)
dgDepth
  = lens _dgDepth (\ s a -> s{_dgDepth = a}) .
      mapping _Coerce

instance FromJSON DimensionGroup where
        parseJSON
          = withObject "DimensionGroup"
              (\ o ->
                 DimensionGroup' <$>
                   (o .:? "collapsed") <*> (o .:? "range") <*>
                     (o .:? "depth"))

instance ToJSON DimensionGroup where
        toJSON DimensionGroup'{..}
          = object
              (catMaybes
                 [("collapsed" .=) <$> _dgCollapsed,
                  ("range" .=) <$> _dgRange,
                  ("depth" .=) <$> _dgDepth])

-- | Copies data from the source to the destination.
--
-- /See:/ 'copyPasteRequest' smart constructor.
data CopyPasteRequest =
  CopyPasteRequest'
    { _cprDestination      :: !(Maybe GridRange)
    , _cprSource           :: !(Maybe GridRange)
    , _cprPasteOrientation :: !(Maybe CopyPasteRequestPasteOrientation)
    , _cprPasteType        :: !(Maybe CopyPasteRequestPasteType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CopyPasteRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprDestination'
--
-- * 'cprSource'
--
-- * 'cprPasteOrientation'
--
-- * 'cprPasteType'
copyPasteRequest
    :: CopyPasteRequest
copyPasteRequest =
  CopyPasteRequest'
    { _cprDestination = Nothing
    , _cprSource = Nothing
    , _cprPasteOrientation = Nothing
    , _cprPasteType = Nothing
    }


-- | The location to paste to. If the range covers a span that\'s a multiple
-- of the source\'s height or width, then the data will be repeated to fill
-- in the destination range. If the range is smaller than the source range,
-- the entire source data will still be copied (beyond the end of the
-- destination range).
cprDestination :: Lens' CopyPasteRequest (Maybe GridRange)
cprDestination
  = lens _cprDestination
      (\ s a -> s{_cprDestination = a})

-- | The source range to copy.
cprSource :: Lens' CopyPasteRequest (Maybe GridRange)
cprSource
  = lens _cprSource (\ s a -> s{_cprSource = a})

-- | How that data should be oriented when pasting.
cprPasteOrientation :: Lens' CopyPasteRequest (Maybe CopyPasteRequestPasteOrientation)
cprPasteOrientation
  = lens _cprPasteOrientation
      (\ s a -> s{_cprPasteOrientation = a})

-- | What kind of data to paste.
cprPasteType :: Lens' CopyPasteRequest (Maybe CopyPasteRequestPasteType)
cprPasteType
  = lens _cprPasteType (\ s a -> s{_cprPasteType = a})

instance FromJSON CopyPasteRequest where
        parseJSON
          = withObject "CopyPasteRequest"
              (\ o ->
                 CopyPasteRequest' <$>
                   (o .:? "destination") <*> (o .:? "source") <*>
                     (o .:? "pasteOrientation")
                     <*> (o .:? "pasteType"))

instance ToJSON CopyPasteRequest where
        toJSON CopyPasteRequest'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _cprDestination,
                  ("source" .=) <$> _cprSource,
                  ("pasteOrientation" .=) <$> _cprPasteOrientation,
                  ("pasteType" .=) <$> _cprPasteType])

-- | A range on a sheet. All indexes are zero-based. Indexes are half open,
-- e.g the start index is inclusive and the end index is exclusive --
-- [start_index, end_index). Missing indexes indicate the range is
-- unbounded on that side. For example, if \`\"Sheet1\"\` is sheet ID 0,
-- then: \`Sheet1!A1:A1 == sheet_id: 0, start_row_index: 0, end_row_index:
-- 1, start_column_index: 0, end_column_index: 1\` \`Sheet1!A3:B4 ==
-- sheet_id: 0, start_row_index: 2, end_row_index: 4, start_column_index:
-- 0, end_column_index: 2\` \`Sheet1!A:B == sheet_id: 0,
-- start_column_index: 0, end_column_index: 2\` \`Sheet1!A5:B == sheet_id:
-- 0, start_row_index: 4, start_column_index: 0, end_column_index: 2\`
-- \`Sheet1 == sheet_id:0\` The start index must always be less than or
-- equal to the end index. If the start index equals the end index, then
-- the range is empty. Empty ranges are typically not meaningful and are
-- usually rendered in the UI as \`#REF!\`.
--
-- /See:/ 'gridRange' smart constructor.
data GridRange =
  GridRange'
    { _grEndColumnIndex   :: !(Maybe (Textual Int32))
    , _grStartColumnIndex :: !(Maybe (Textual Int32))
    , _grEndRowIndex      :: !(Maybe (Textual Int32))
    , _grStartRowIndex    :: !(Maybe (Textual Int32))
    , _grSheetId          :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GridRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grEndColumnIndex'
--
-- * 'grStartColumnIndex'
--
-- * 'grEndRowIndex'
--
-- * 'grStartRowIndex'
--
-- * 'grSheetId'
gridRange
    :: GridRange
gridRange =
  GridRange'
    { _grEndColumnIndex = Nothing
    , _grStartColumnIndex = Nothing
    , _grEndRowIndex = Nothing
    , _grStartRowIndex = Nothing
    , _grSheetId = Nothing
    }


-- | The end column (exclusive) of the range, or not set if unbounded.
grEndColumnIndex :: Lens' GridRange (Maybe Int32)
grEndColumnIndex
  = lens _grEndColumnIndex
      (\ s a -> s{_grEndColumnIndex = a})
      . mapping _Coerce

-- | The start column (inclusive) of the range, or not set if unbounded.
grStartColumnIndex :: Lens' GridRange (Maybe Int32)
grStartColumnIndex
  = lens _grStartColumnIndex
      (\ s a -> s{_grStartColumnIndex = a})
      . mapping _Coerce

-- | The end row (exclusive) of the range, or not set if unbounded.
grEndRowIndex :: Lens' GridRange (Maybe Int32)
grEndRowIndex
  = lens _grEndRowIndex
      (\ s a -> s{_grEndRowIndex = a})
      . mapping _Coerce

-- | The start row (inclusive) of the range, or not set if unbounded.
grStartRowIndex :: Lens' GridRange (Maybe Int32)
grStartRowIndex
  = lens _grStartRowIndex
      (\ s a -> s{_grStartRowIndex = a})
      . mapping _Coerce

-- | The sheet this range is on.
grSheetId :: Lens' GridRange (Maybe Int32)
grSheetId
  = lens _grSheetId (\ s a -> s{_grSheetId = a}) .
      mapping _Coerce

instance FromJSON GridRange where
        parseJSON
          = withObject "GridRange"
              (\ o ->
                 GridRange' <$>
                   (o .:? "endColumnIndex") <*>
                     (o .:? "startColumnIndex")
                     <*> (o .:? "endRowIndex")
                     <*> (o .:? "startRowIndex")
                     <*> (o .:? "sheetId"))

instance ToJSON GridRange where
        toJSON GridRange'{..}
          = object
              (catMaybes
                 [("endColumnIndex" .=) <$> _grEndColumnIndex,
                  ("startColumnIndex" .=) <$> _grStartColumnIndex,
                  ("endRowIndex" .=) <$> _grEndRowIndex,
                  ("startRowIndex" .=) <$> _grStartRowIndex,
                  ("sheetId" .=) <$> _grSheetId])

-- | The result of adding a filter view.
--
-- /See:/ 'addFilterViewResponse' smart constructor.
newtype AddFilterViewResponse =
  AddFilterViewResponse'
    { _afvrFilter :: Maybe FilterView
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddFilterViewResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afvrFilter'
addFilterViewResponse
    :: AddFilterViewResponse
addFilterViewResponse = AddFilterViewResponse' {_afvrFilter = Nothing}


-- | The newly added filter view.
afvrFilter :: Lens' AddFilterViewResponse (Maybe FilterView)
afvrFilter
  = lens _afvrFilter (\ s a -> s{_afvrFilter = a})

instance FromJSON AddFilterViewResponse where
        parseJSON
          = withObject "AddFilterViewResponse"
              (\ o -> AddFilterViewResponse' <$> (o .:? "filter"))

instance ToJSON AddFilterViewResponse where
        toJSON AddFilterViewResponse'{..}
          = object (catMaybes [("filter" .=) <$> _afvrFilter])

-- | A condition that can evaluate to true or false. BooleanConditions are
-- used by conditional formatting, data validation, and the criteria in
-- filters.
--
-- /See:/ 'booleanCondition' smart constructor.
data BooleanCondition =
  BooleanCondition'
    { _bcValues :: !(Maybe [ConditionValue])
    , _bcType   :: !(Maybe BooleanConditionType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BooleanCondition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcValues'
--
-- * 'bcType'
booleanCondition
    :: BooleanCondition
booleanCondition = BooleanCondition' {_bcValues = Nothing, _bcType = Nothing}


-- | The values of the condition. The number of supported values depends on
-- the condition type. Some support zero values, others one or two values,
-- and ConditionType.ONE_OF_LIST supports an arbitrary number of values.
bcValues :: Lens' BooleanCondition [ConditionValue]
bcValues
  = lens _bcValues (\ s a -> s{_bcValues = a}) .
      _Default
      . _Coerce

-- | The type of condition.
bcType :: Lens' BooleanCondition (Maybe BooleanConditionType)
bcType = lens _bcType (\ s a -> s{_bcType = a})

instance FromJSON BooleanCondition where
        parseJSON
          = withObject "BooleanCondition"
              (\ o ->
                 BooleanCondition' <$>
                   (o .:? "values" .!= mempty) <*> (o .:? "type"))

instance ToJSON BooleanCondition where
        toJSON BooleanCondition'{..}
          = object
              (catMaybes
                 [("values" .=) <$> _bcValues,
                  ("type" .=) <$> _bcType])

-- | Automatically resizes one or more dimensions based on the contents of
-- the cells in that dimension.
--
-- /See:/ 'autoResizeDimensionsRequest' smart constructor.
newtype AutoResizeDimensionsRequest =
  AutoResizeDimensionsRequest'
    { _ardrDimensions :: Maybe DimensionRange
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AutoResizeDimensionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ardrDimensions'
autoResizeDimensionsRequest
    :: AutoResizeDimensionsRequest
autoResizeDimensionsRequest =
  AutoResizeDimensionsRequest' {_ardrDimensions = Nothing}


-- | The dimensions to automatically resize.
ardrDimensions :: Lens' AutoResizeDimensionsRequest (Maybe DimensionRange)
ardrDimensions
  = lens _ardrDimensions
      (\ s a -> s{_ardrDimensions = a})

instance FromJSON AutoResizeDimensionsRequest where
        parseJSON
          = withObject "AutoResizeDimensionsRequest"
              (\ o ->
                 AutoResizeDimensionsRequest' <$>
                   (o .:? "dimensions"))

instance ToJSON AutoResizeDimensionsRequest where
        toJSON AutoResizeDimensionsRequest'{..}
          = object
              (catMaybes [("dimensions" .=) <$> _ardrDimensions])

-- | A </chart/interactive/docs/gallery/bubblechart bubble chart>.
--
-- /See:/ 'bubbleChartSpec' smart constructor.
data BubbleChartSpec =
  BubbleChartSpec'
    { _bcsBubbleTextStyle     :: !(Maybe TextFormat)
    , _bcsBubbleBOrderColor   :: !(Maybe Color)
    , _bcsLegendPosition      :: !(Maybe BubbleChartSpecLegendPosition)
    , _bcsDomain              :: !(Maybe ChartData)
    , _bcsSeries              :: !(Maybe ChartData)
    , _bcsBubbleLabels        :: !(Maybe ChartData)
    , _bcsGroupIds            :: !(Maybe ChartData)
    , _bcsBubbleMinRadiusSize :: !(Maybe (Textual Int32))
    , _bcsBubbleMaxRadiusSize :: !(Maybe (Textual Int32))
    , _bcsBubbleOpacity       :: !(Maybe (Textual Double))
    , _bcsBubbleSizes         :: !(Maybe ChartData)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BubbleChartSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcsBubbleTextStyle'
--
-- * 'bcsBubbleBOrderColor'
--
-- * 'bcsLegendPosition'
--
-- * 'bcsDomain'
--
-- * 'bcsSeries'
--
-- * 'bcsBubbleLabels'
--
-- * 'bcsGroupIds'
--
-- * 'bcsBubbleMinRadiusSize'
--
-- * 'bcsBubbleMaxRadiusSize'
--
-- * 'bcsBubbleOpacity'
--
-- * 'bcsBubbleSizes'
bubbleChartSpec
    :: BubbleChartSpec
bubbleChartSpec =
  BubbleChartSpec'
    { _bcsBubbleTextStyle = Nothing
    , _bcsBubbleBOrderColor = Nothing
    , _bcsLegendPosition = Nothing
    , _bcsDomain = Nothing
    , _bcsSeries = Nothing
    , _bcsBubbleLabels = Nothing
    , _bcsGroupIds = Nothing
    , _bcsBubbleMinRadiusSize = Nothing
    , _bcsBubbleMaxRadiusSize = Nothing
    , _bcsBubbleOpacity = Nothing
    , _bcsBubbleSizes = Nothing
    }


-- | The format of the text inside the bubbles. Underline and Strikethrough
-- are not supported.
bcsBubbleTextStyle :: Lens' BubbleChartSpec (Maybe TextFormat)
bcsBubbleTextStyle
  = lens _bcsBubbleTextStyle
      (\ s a -> s{_bcsBubbleTextStyle = a})

-- | The bubble border color.
bcsBubbleBOrderColor :: Lens' BubbleChartSpec (Maybe Color)
bcsBubbleBOrderColor
  = lens _bcsBubbleBOrderColor
      (\ s a -> s{_bcsBubbleBOrderColor = a})

-- | Where the legend of the chart should be drawn.
bcsLegendPosition :: Lens' BubbleChartSpec (Maybe BubbleChartSpecLegendPosition)
bcsLegendPosition
  = lens _bcsLegendPosition
      (\ s a -> s{_bcsLegendPosition = a})

-- | The data containing the bubble x-values. These values locate the bubbles
-- in the chart horizontally.
bcsDomain :: Lens' BubbleChartSpec (Maybe ChartData)
bcsDomain
  = lens _bcsDomain (\ s a -> s{_bcsDomain = a})

-- | The data contianing the bubble y-values. These values locate the bubbles
-- in the chart vertically.
bcsSeries :: Lens' BubbleChartSpec (Maybe ChartData)
bcsSeries
  = lens _bcsSeries (\ s a -> s{_bcsSeries = a})

-- | The data containing the bubble labels. These do not need to be unique.
bcsBubbleLabels :: Lens' BubbleChartSpec (Maybe ChartData)
bcsBubbleLabels
  = lens _bcsBubbleLabels
      (\ s a -> s{_bcsBubbleLabels = a})

-- | The data containing the bubble group IDs. All bubbles with the same
-- group ID are drawn in the same color. If bubble_sizes is specified then
-- this field must also be specified but may contain blank values. This
-- field is optional.
bcsGroupIds :: Lens' BubbleChartSpec (Maybe ChartData)
bcsGroupIds
  = lens _bcsGroupIds (\ s a -> s{_bcsGroupIds = a})

-- | The minimum radius size of the bubbles, in pixels. If specific, the
-- field must be a positive value.
bcsBubbleMinRadiusSize :: Lens' BubbleChartSpec (Maybe Int32)
bcsBubbleMinRadiusSize
  = lens _bcsBubbleMinRadiusSize
      (\ s a -> s{_bcsBubbleMinRadiusSize = a})
      . mapping _Coerce

-- | The max radius size of the bubbles, in pixels. If specified, the field
-- must be a positive value.
bcsBubbleMaxRadiusSize :: Lens' BubbleChartSpec (Maybe Int32)
bcsBubbleMaxRadiusSize
  = lens _bcsBubbleMaxRadiusSize
      (\ s a -> s{_bcsBubbleMaxRadiusSize = a})
      . mapping _Coerce

-- | The opacity of the bubbles between 0 and 1.0. 0 is fully transparent and
-- 1 is fully opaque.
bcsBubbleOpacity :: Lens' BubbleChartSpec (Maybe Double)
bcsBubbleOpacity
  = lens _bcsBubbleOpacity
      (\ s a -> s{_bcsBubbleOpacity = a})
      . mapping _Coerce

-- | The data contianing the bubble sizes. Bubble sizes are used to draw the
-- bubbles at different sizes relative to each other. If specified,
-- group_ids must also be specified. This field is optional.
bcsBubbleSizes :: Lens' BubbleChartSpec (Maybe ChartData)
bcsBubbleSizes
  = lens _bcsBubbleSizes
      (\ s a -> s{_bcsBubbleSizes = a})

instance FromJSON BubbleChartSpec where
        parseJSON
          = withObject "BubbleChartSpec"
              (\ o ->
                 BubbleChartSpec' <$>
                   (o .:? "bubbleTextStyle") <*>
                     (o .:? "bubbleBorderColor")
                     <*> (o .:? "legendPosition")
                     <*> (o .:? "domain")
                     <*> (o .:? "series")
                     <*> (o .:? "bubbleLabels")
                     <*> (o .:? "groupIds")
                     <*> (o .:? "bubbleMinRadiusSize")
                     <*> (o .:? "bubbleMaxRadiusSize")
                     <*> (o .:? "bubbleOpacity")
                     <*> (o .:? "bubbleSizes"))

instance ToJSON BubbleChartSpec where
        toJSON BubbleChartSpec'{..}
          = object
              (catMaybes
                 [("bubbleTextStyle" .=) <$> _bcsBubbleTextStyle,
                  ("bubbleBorderColor" .=) <$> _bcsBubbleBOrderColor,
                  ("legendPosition" .=) <$> _bcsLegendPosition,
                  ("domain" .=) <$> _bcsDomain,
                  ("series" .=) <$> _bcsSeries,
                  ("bubbleLabels" .=) <$> _bcsBubbleLabels,
                  ("groupIds" .=) <$> _bcsGroupIds,
                  ("bubbleMinRadiusSize" .=) <$>
                    _bcsBubbleMinRadiusSize,
                  ("bubbleMaxRadiusSize" .=) <$>
                    _bcsBubbleMaxRadiusSize,
                  ("bubbleOpacity" .=) <$> _bcsBubbleOpacity,
                  ("bubbleSizes" .=) <$> _bcsBubbleSizes])

-- | Deletes a range of cells, shifting other cells into the deleted area.
--
-- /See:/ 'deleteRangeRequest' smart constructor.
data DeleteRangeRequest =
  DeleteRangeRequest'
    { _drrShiftDimension :: !(Maybe DeleteRangeRequestShiftDimension)
    , _drrRange          :: !(Maybe GridRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteRangeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrShiftDimension'
--
-- * 'drrRange'
deleteRangeRequest
    :: DeleteRangeRequest
deleteRangeRequest =
  DeleteRangeRequest' {_drrShiftDimension = Nothing, _drrRange = Nothing}


-- | The dimension from which deleted cells will be replaced with. If ROWS,
-- existing cells will be shifted upward to replace the deleted cells. If
-- COLUMNS, existing cells will be shifted left to replace the deleted
-- cells.
drrShiftDimension :: Lens' DeleteRangeRequest (Maybe DeleteRangeRequestShiftDimension)
drrShiftDimension
  = lens _drrShiftDimension
      (\ s a -> s{_drrShiftDimension = a})

-- | The range of cells to delete.
drrRange :: Lens' DeleteRangeRequest (Maybe GridRange)
drrRange = lens _drrRange (\ s a -> s{_drrRange = a})

instance FromJSON DeleteRangeRequest where
        parseJSON
          = withObject "DeleteRangeRequest"
              (\ o ->
                 DeleteRangeRequest' <$>
                   (o .:? "shiftDimension") <*> (o .:? "range"))

instance ToJSON DeleteRangeRequest where
        toJSON DeleteRangeRequest'{..}
          = object
              (catMaybes
                 [("shiftDimension" .=) <$> _drrShiftDimension,
                  ("range" .=) <$> _drrRange])

-- | A sheet in a spreadsheet.
--
-- /See:/ 'sheet' smart constructor.
data Sheet =
  Sheet'
    { _sColumnGroups       :: !(Maybe [DimensionGroup])
    , _sData               :: !(Maybe [GridData])
    , _sMerges             :: !(Maybe [GridRange])
    , _sRowGroups          :: !(Maybe [DimensionGroup])
    , _sProtectedRanges    :: !(Maybe [ProtectedRange])
    , _sBandedRanges       :: !(Maybe [BandedRange])
    , _sCharts             :: !(Maybe [EmbeddedChart])
    , _sBasicFilter        :: !(Maybe BasicFilter)
    , _sDeveloperMetadata  :: !(Maybe [DeveloperMetadata])
    , _sConditionalFormats :: !(Maybe [ConditionalFormatRule])
    , _sFilterViews        :: !(Maybe [FilterView])
    , _sProperties         :: !(Maybe SheetProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Sheet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sColumnGroups'
--
-- * 'sData'
--
-- * 'sMerges'
--
-- * 'sRowGroups'
--
-- * 'sProtectedRanges'
--
-- * 'sBandedRanges'
--
-- * 'sCharts'
--
-- * 'sBasicFilter'
--
-- * 'sDeveloperMetadata'
--
-- * 'sConditionalFormats'
--
-- * 'sFilterViews'
--
-- * 'sProperties'
sheet
    :: Sheet
sheet =
  Sheet'
    { _sColumnGroups = Nothing
    , _sData = Nothing
    , _sMerges = Nothing
    , _sRowGroups = Nothing
    , _sProtectedRanges = Nothing
    , _sBandedRanges = Nothing
    , _sCharts = Nothing
    , _sBasicFilter = Nothing
    , _sDeveloperMetadata = Nothing
    , _sConditionalFormats = Nothing
    , _sFilterViews = Nothing
    , _sProperties = Nothing
    }


-- | All column groups on this sheet, ordered by increasing range start
-- index, then by group depth.
sColumnGroups :: Lens' Sheet [DimensionGroup]
sColumnGroups
  = lens _sColumnGroups
      (\ s a -> s{_sColumnGroups = a})
      . _Default
      . _Coerce

-- | Data in the grid, if this is a grid sheet. The number of GridData
-- objects returned is dependent on the number of ranges requested on this
-- sheet. For example, if this is representing \`Sheet1\`, and the
-- spreadsheet was requested with ranges \`Sheet1!A1:C10\` and
-- \`Sheet1!D15:E20\`, then the first GridData will have a
-- startRow\/startColumn of \`0\`, while the second one will have
-- \`startRow 14\` (zero-based row 15), and \`startColumn 3\` (zero-based
-- column D).
sData :: Lens' Sheet [GridData]
sData
  = lens _sData (\ s a -> s{_sData = a}) . _Default .
      _Coerce

-- | The ranges that are merged together.
sMerges :: Lens' Sheet [GridRange]
sMerges
  = lens _sMerges (\ s a -> s{_sMerges = a}) . _Default
      . _Coerce

-- | All row groups on this sheet, ordered by increasing range start index,
-- then by group depth.
sRowGroups :: Lens' Sheet [DimensionGroup]
sRowGroups
  = lens _sRowGroups (\ s a -> s{_sRowGroups = a}) .
      _Default
      . _Coerce

-- | The protected ranges in this sheet.
sProtectedRanges :: Lens' Sheet [ProtectedRange]
sProtectedRanges
  = lens _sProtectedRanges
      (\ s a -> s{_sProtectedRanges = a})
      . _Default
      . _Coerce

-- | The banded (alternating colors) ranges on this sheet.
sBandedRanges :: Lens' Sheet [BandedRange]
sBandedRanges
  = lens _sBandedRanges
      (\ s a -> s{_sBandedRanges = a})
      . _Default
      . _Coerce

-- | The specifications of every chart on this sheet.
sCharts :: Lens' Sheet [EmbeddedChart]
sCharts
  = lens _sCharts (\ s a -> s{_sCharts = a}) . _Default
      . _Coerce

-- | The filter on this sheet, if any.
sBasicFilter :: Lens' Sheet (Maybe BasicFilter)
sBasicFilter
  = lens _sBasicFilter (\ s a -> s{_sBasicFilter = a})

-- | The developer metadata associated with a sheet.
sDeveloperMetadata :: Lens' Sheet [DeveloperMetadata]
sDeveloperMetadata
  = lens _sDeveloperMetadata
      (\ s a -> s{_sDeveloperMetadata = a})
      . _Default
      . _Coerce

-- | The conditional format rules in this sheet.
sConditionalFormats :: Lens' Sheet [ConditionalFormatRule]
sConditionalFormats
  = lens _sConditionalFormats
      (\ s a -> s{_sConditionalFormats = a})
      . _Default
      . _Coerce

-- | The filter views in this sheet.
sFilterViews :: Lens' Sheet [FilterView]
sFilterViews
  = lens _sFilterViews (\ s a -> s{_sFilterViews = a})
      . _Default
      . _Coerce

-- | The properties of the sheet.
sProperties :: Lens' Sheet (Maybe SheetProperties)
sProperties
  = lens _sProperties (\ s a -> s{_sProperties = a})

instance FromJSON Sheet where
        parseJSON
          = withObject "Sheet"
              (\ o ->
                 Sheet' <$>
                   (o .:? "columnGroups" .!= mempty) <*>
                     (o .:? "data" .!= mempty)
                     <*> (o .:? "merges" .!= mempty)
                     <*> (o .:? "rowGroups" .!= mempty)
                     <*> (o .:? "protectedRanges" .!= mempty)
                     <*> (o .:? "bandedRanges" .!= mempty)
                     <*> (o .:? "charts" .!= mempty)
                     <*> (o .:? "basicFilter")
                     <*> (o .:? "developerMetadata" .!= mempty)
                     <*> (o .:? "conditionalFormats" .!= mempty)
                     <*> (o .:? "filterViews" .!= mempty)
                     <*> (o .:? "properties"))

instance ToJSON Sheet where
        toJSON Sheet'{..}
          = object
              (catMaybes
                 [("columnGroups" .=) <$> _sColumnGroups,
                  ("data" .=) <$> _sData, ("merges" .=) <$> _sMerges,
                  ("rowGroups" .=) <$> _sRowGroups,
                  ("protectedRanges" .=) <$> _sProtectedRanges,
                  ("bandedRanges" .=) <$> _sBandedRanges,
                  ("charts" .=) <$> _sCharts,
                  ("basicFilter" .=) <$> _sBasicFilter,
                  ("developerMetadata" .=) <$> _sDeveloperMetadata,
                  ("conditionalFormats" .=) <$> _sConditionalFormats,
                  ("filterViews" .=) <$> _sFilterViews,
                  ("properties" .=) <$> _sProperties])

-- | A coordinate in a sheet. All indexes are zero-based.
--
-- /See:/ 'gridCoordinate' smart constructor.
data GridCoordinate =
  GridCoordinate'
    { _gcColumnIndex :: !(Maybe (Textual Int32))
    , _gcRowIndex    :: !(Maybe (Textual Int32))
    , _gcSheetId     :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GridCoordinate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcColumnIndex'
--
-- * 'gcRowIndex'
--
-- * 'gcSheetId'
gridCoordinate
    :: GridCoordinate
gridCoordinate =
  GridCoordinate'
    {_gcColumnIndex = Nothing, _gcRowIndex = Nothing, _gcSheetId = Nothing}


-- | The column index of the coordinate.
gcColumnIndex :: Lens' GridCoordinate (Maybe Int32)
gcColumnIndex
  = lens _gcColumnIndex
      (\ s a -> s{_gcColumnIndex = a})
      . mapping _Coerce

-- | The row index of the coordinate.
gcRowIndex :: Lens' GridCoordinate (Maybe Int32)
gcRowIndex
  = lens _gcRowIndex (\ s a -> s{_gcRowIndex = a}) .
      mapping _Coerce

-- | The sheet this coordinate is on.
gcSheetId :: Lens' GridCoordinate (Maybe Int32)
gcSheetId
  = lens _gcSheetId (\ s a -> s{_gcSheetId = a}) .
      mapping _Coerce

instance FromJSON GridCoordinate where
        parseJSON
          = withObject "GridCoordinate"
              (\ o ->
                 GridCoordinate' <$>
                   (o .:? "columnIndex") <*> (o .:? "rowIndex") <*>
                     (o .:? "sheetId"))

instance ToJSON GridCoordinate where
        toJSON GridCoordinate'{..}
          = object
              (catMaybes
                 [("columnIndex" .=) <$> _gcColumnIndex,
                  ("rowIndex" .=) <$> _gcRowIndex,
                  ("sheetId" .=) <$> _gcSheetId])

-- | The response when clearing a range of values in a spreadsheet.
--
-- /See:/ 'clearValuesResponse' smart constructor.
data ClearValuesResponse =
  ClearValuesResponse'
    { _cvrClearedRange  :: !(Maybe Text)
    , _cvrSpreadsheetId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClearValuesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvrClearedRange'
--
-- * 'cvrSpreadsheetId'
clearValuesResponse
    :: ClearValuesResponse
clearValuesResponse =
  ClearValuesResponse' {_cvrClearedRange = Nothing, _cvrSpreadsheetId = Nothing}


-- | The range (in A1 notation) that was cleared. (If the request was for an
-- unbounded range or a ranger larger than the bounds of the sheet, this
-- will be the actual range that was cleared, bounded to the sheet\'s
-- limits.)
cvrClearedRange :: Lens' ClearValuesResponse (Maybe Text)
cvrClearedRange
  = lens _cvrClearedRange
      (\ s a -> s{_cvrClearedRange = a})

-- | The spreadsheet the updates were applied to.
cvrSpreadsheetId :: Lens' ClearValuesResponse (Maybe Text)
cvrSpreadsheetId
  = lens _cvrSpreadsheetId
      (\ s a -> s{_cvrSpreadsheetId = a})

instance FromJSON ClearValuesResponse where
        parseJSON
          = withObject "ClearValuesResponse"
              (\ o ->
                 ClearValuesResponse' <$>
                   (o .:? "clearedRange") <*> (o .:? "spreadsheetId"))

instance ToJSON ClearValuesResponse where
        toJSON ClearValuesResponse'{..}
          = object
              (catMaybes
                 [("clearedRange" .=) <$> _cvrClearedRange,
                  ("spreadsheetId" .=) <$> _cvrSpreadsheetId])

-- | Clears the basic filter, if any exists on the sheet.
--
-- /See:/ 'clearBasicFilterRequest' smart constructor.
newtype ClearBasicFilterRequest =
  ClearBasicFilterRequest'
    { _cbfrSheetId :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClearBasicFilterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbfrSheetId'
clearBasicFilterRequest
    :: ClearBasicFilterRequest
clearBasicFilterRequest = ClearBasicFilterRequest' {_cbfrSheetId = Nothing}


-- | The sheet ID on which the basic filter should be cleared.
cbfrSheetId :: Lens' ClearBasicFilterRequest (Maybe Int32)
cbfrSheetId
  = lens _cbfrSheetId (\ s a -> s{_cbfrSheetId = a}) .
      mapping _Coerce

instance FromJSON ClearBasicFilterRequest where
        parseJSON
          = withObject "ClearBasicFilterRequest"
              (\ o ->
                 ClearBasicFilterRequest' <$> (o .:? "sheetId"))

instance ToJSON ClearBasicFilterRequest where
        toJSON ClearBasicFilterRequest'{..}
          = object
              (catMaybes [("sheetId" .=) <$> _cbfrSheetId])

-- | Update an embedded object\'s position (such as a moving or resizing a
-- chart or image).
--
-- /See:/ 'updateEmbeddedObjectPositionRequest' smart constructor.
data UpdateEmbeddedObjectPositionRequest =
  UpdateEmbeddedObjectPositionRequest'
    { _ueoprNewPosition :: !(Maybe EmbeddedObjectPosition)
    , _ueoprObjectId    :: !(Maybe (Textual Int32))
    , _ueoprFields      :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateEmbeddedObjectPositionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ueoprNewPosition'
--
-- * 'ueoprObjectId'
--
-- * 'ueoprFields'
updateEmbeddedObjectPositionRequest
    :: UpdateEmbeddedObjectPositionRequest
updateEmbeddedObjectPositionRequest =
  UpdateEmbeddedObjectPositionRequest'
    { _ueoprNewPosition = Nothing
    , _ueoprObjectId = Nothing
    , _ueoprFields = Nothing
    }


-- | An explicit position to move the embedded object to. If
-- newPosition.sheetId is set, a new sheet with that ID will be created. If
-- newPosition.newSheet is set to true, a new sheet will be created with an
-- ID that will be chosen for you.
ueoprNewPosition :: Lens' UpdateEmbeddedObjectPositionRequest (Maybe EmbeddedObjectPosition)
ueoprNewPosition
  = lens _ueoprNewPosition
      (\ s a -> s{_ueoprNewPosition = a})

-- | The ID of the object to moved.
ueoprObjectId :: Lens' UpdateEmbeddedObjectPositionRequest (Maybe Int32)
ueoprObjectId
  = lens _ueoprObjectId
      (\ s a -> s{_ueoprObjectId = a})
      . mapping _Coerce

-- | The fields of OverlayPosition that should be updated when setting a new
-- position. Used only if newPosition.overlayPosition is set, in which case
-- at least one field must be specified. The root
-- \`newPosition.overlayPosition\` is implied and should not be specified.
-- A single \`\"*\"\` can be used as short-hand for listing every field.
ueoprFields :: Lens' UpdateEmbeddedObjectPositionRequest (Maybe GFieldMask)
ueoprFields
  = lens _ueoprFields (\ s a -> s{_ueoprFields = a})

instance FromJSON UpdateEmbeddedObjectPositionRequest
         where
        parseJSON
          = withObject "UpdateEmbeddedObjectPositionRequest"
              (\ o ->
                 UpdateEmbeddedObjectPositionRequest' <$>
                   (o .:? "newPosition") <*> (o .:? "objectId") <*>
                     (o .:? "fields"))

instance ToJSON UpdateEmbeddedObjectPositionRequest
         where
        toJSON UpdateEmbeddedObjectPositionRequest'{..}
          = object
              (catMaybes
                 [("newPosition" .=) <$> _ueoprNewPosition,
                  ("objectId" .=) <$> _ueoprObjectId,
                  ("fields" .=) <$> _ueoprFields])

-- | A rule that may or may not match, depending on the condition.
--
-- /See:/ 'booleanRule' smart constructor.
data BooleanRule =
  BooleanRule'
    { _brFormat    :: !(Maybe CellFormat)
    , _brCondition :: !(Maybe BooleanCondition)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BooleanRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brFormat'
--
-- * 'brCondition'
booleanRule
    :: BooleanRule
booleanRule = BooleanRule' {_brFormat = Nothing, _brCondition = Nothing}


-- | The format to apply. Conditional formatting can only apply a subset of
-- formatting: bold, italic, strikethrough, foreground color & background
-- color.
brFormat :: Lens' BooleanRule (Maybe CellFormat)
brFormat = lens _brFormat (\ s a -> s{_brFormat = a})

-- | The condition of the rule. If the condition evaluates to true, the
-- format is applied.
brCondition :: Lens' BooleanRule (Maybe BooleanCondition)
brCondition
  = lens _brCondition (\ s a -> s{_brCondition = a})

instance FromJSON BooleanRule where
        parseJSON
          = withObject "BooleanRule"
              (\ o ->
                 BooleanRule' <$>
                   (o .:? "format") <*> (o .:? "condition"))

instance ToJSON BooleanRule where
        toJSON BooleanRule'{..}
          = object
              (catMaybes
                 [("format" .=) <$> _brFormat,
                  ("condition" .=) <$> _brCondition])

-- | The response when retrieving more than one range of values in a
-- spreadsheet selected by DataFilters.
--
-- /See:/ 'batchGetValuesByDataFilterResponse' smart constructor.
data BatchGetValuesByDataFilterResponse =
  BatchGetValuesByDataFilterResponse'
    { _bgvbdfrSpreadsheetId :: !(Maybe Text)
    , _bgvbdfrValueRanges   :: !(Maybe [MatchedValueRange])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchGetValuesByDataFilterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgvbdfrSpreadsheetId'
--
-- * 'bgvbdfrValueRanges'
batchGetValuesByDataFilterResponse
    :: BatchGetValuesByDataFilterResponse
batchGetValuesByDataFilterResponse =
  BatchGetValuesByDataFilterResponse'
    {_bgvbdfrSpreadsheetId = Nothing, _bgvbdfrValueRanges = Nothing}


-- | The ID of the spreadsheet the data was retrieved from.
bgvbdfrSpreadsheetId :: Lens' BatchGetValuesByDataFilterResponse (Maybe Text)
bgvbdfrSpreadsheetId
  = lens _bgvbdfrSpreadsheetId
      (\ s a -> s{_bgvbdfrSpreadsheetId = a})

-- | The requested values with the list of data filters that matched them.
bgvbdfrValueRanges :: Lens' BatchGetValuesByDataFilterResponse [MatchedValueRange]
bgvbdfrValueRanges
  = lens _bgvbdfrValueRanges
      (\ s a -> s{_bgvbdfrValueRanges = a})
      . _Default
      . _Coerce

instance FromJSON BatchGetValuesByDataFilterResponse
         where
        parseJSON
          = withObject "BatchGetValuesByDataFilterResponse"
              (\ o ->
                 BatchGetValuesByDataFilterResponse' <$>
                   (o .:? "spreadsheetId") <*>
                     (o .:? "valueRanges" .!= mempty))

instance ToJSON BatchGetValuesByDataFilterResponse
         where
        toJSON BatchGetValuesByDataFilterResponse'{..}
          = object
              (catMaybes
                 [("spreadsheetId" .=) <$> _bgvbdfrSpreadsheetId,
                  ("valueRanges" .=) <$> _bgvbdfrValueRanges])

-- | A combination of a source range and how to extend that source.
--
-- /See:/ 'sourceAndDestination' smart constructor.
data SourceAndDestination =
  SourceAndDestination'
    { _sadDimension  :: !(Maybe SourceAndDestinationDimension)
    , _sadSource     :: !(Maybe GridRange)
    , _sadFillLength :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SourceAndDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sadDimension'
--
-- * 'sadSource'
--
-- * 'sadFillLength'
sourceAndDestination
    :: SourceAndDestination
sourceAndDestination =
  SourceAndDestination'
    {_sadDimension = Nothing, _sadSource = Nothing, _sadFillLength = Nothing}


-- | The dimension that data should be filled into.
sadDimension :: Lens' SourceAndDestination (Maybe SourceAndDestinationDimension)
sadDimension
  = lens _sadDimension (\ s a -> s{_sadDimension = a})

-- | The location of the data to use as the source of the autofill.
sadSource :: Lens' SourceAndDestination (Maybe GridRange)
sadSource
  = lens _sadSource (\ s a -> s{_sadSource = a})

-- | The number of rows or columns that data should be filled into. Positive
-- numbers expand beyond the last row or last column of the source.
-- Negative numbers expand before the first row or first column of the
-- source.
sadFillLength :: Lens' SourceAndDestination (Maybe Int32)
sadFillLength
  = lens _sadFillLength
      (\ s a -> s{_sadFillLength = a})
      . mapping _Coerce

instance FromJSON SourceAndDestination where
        parseJSON
          = withObject "SourceAndDestination"
              (\ o ->
                 SourceAndDestination' <$>
                   (o .:? "dimension") <*> (o .:? "source") <*>
                     (o .:? "fillLength"))

instance ToJSON SourceAndDestination where
        toJSON SourceAndDestination'{..}
          = object
              (catMaybes
                 [("dimension" .=) <$> _sadDimension,
                  ("source" .=) <$> _sadSource,
                  ("fillLength" .=) <$> _sadFillLength])

-- | Inserts data into the spreadsheet starting at the specified coordinate.
--
-- /See:/ 'pasteDataRequest' smart constructor.
data PasteDataRequest =
  PasteDataRequest'
    { _pdrData       :: !(Maybe Text)
    , _pdrCoordinate :: !(Maybe GridCoordinate)
    , _pdrHTML       :: !(Maybe Bool)
    , _pdrType       :: !(Maybe PasteDataRequestType)
    , _pdrDelimiter  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PasteDataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdrData'
--
-- * 'pdrCoordinate'
--
-- * 'pdrHTML'
--
-- * 'pdrType'
--
-- * 'pdrDelimiter'
pasteDataRequest
    :: PasteDataRequest
pasteDataRequest =
  PasteDataRequest'
    { _pdrData = Nothing
    , _pdrCoordinate = Nothing
    , _pdrHTML = Nothing
    , _pdrType = Nothing
    , _pdrDelimiter = Nothing
    }


-- | The data to insert.
pdrData :: Lens' PasteDataRequest (Maybe Text)
pdrData = lens _pdrData (\ s a -> s{_pdrData = a})

-- | The coordinate at which the data should start being inserted.
pdrCoordinate :: Lens' PasteDataRequest (Maybe GridCoordinate)
pdrCoordinate
  = lens _pdrCoordinate
      (\ s a -> s{_pdrCoordinate = a})

-- | True if the data is HTML.
pdrHTML :: Lens' PasteDataRequest (Maybe Bool)
pdrHTML = lens _pdrHTML (\ s a -> s{_pdrHTML = a})

-- | How the data should be pasted.
pdrType :: Lens' PasteDataRequest (Maybe PasteDataRequestType)
pdrType = lens _pdrType (\ s a -> s{_pdrType = a})

-- | The delimiter in the data.
pdrDelimiter :: Lens' PasteDataRequest (Maybe Text)
pdrDelimiter
  = lens _pdrDelimiter (\ s a -> s{_pdrDelimiter = a})

instance FromJSON PasteDataRequest where
        parseJSON
          = withObject "PasteDataRequest"
              (\ o ->
                 PasteDataRequest' <$>
                   (o .:? "data") <*> (o .:? "coordinate") <*>
                     (o .:? "html")
                     <*> (o .:? "type")
                     <*> (o .:? "delimiter"))

instance ToJSON PasteDataRequest where
        toJSON PasteDataRequest'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _pdrData,
                  ("coordinate" .=) <$> _pdrCoordinate,
                  ("html" .=) <$> _pdrHTML, ("type" .=) <$> _pdrType,
                  ("delimiter" .=) <$> _pdrDelimiter])

-- | Adds new cells after the last row with data in a sheet, inserting new
-- rows into the sheet if necessary.
--
-- /See:/ 'appendCellsRequest' smart constructor.
data AppendCellsRequest =
  AppendCellsRequest'
    { _acrRows    :: !(Maybe [RowData])
    , _acrSheetId :: !(Maybe (Textual Int32))
    , _acrFields  :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppendCellsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrRows'
--
-- * 'acrSheetId'
--
-- * 'acrFields'
appendCellsRequest
    :: AppendCellsRequest
appendCellsRequest =
  AppendCellsRequest'
    {_acrRows = Nothing, _acrSheetId = Nothing, _acrFields = Nothing}


-- | The data to append.
acrRows :: Lens' AppendCellsRequest [RowData]
acrRows
  = lens _acrRows (\ s a -> s{_acrRows = a}) . _Default
      . _Coerce

-- | The sheet ID to append the data to.
acrSheetId :: Lens' AppendCellsRequest (Maybe Int32)
acrSheetId
  = lens _acrSheetId (\ s a -> s{_acrSheetId = a}) .
      mapping _Coerce

-- | The fields of CellData that should be updated. At least one field must
-- be specified. The root is the CellData; \'row.values.\' should not be
-- specified. A single \`\"*\"\` can be used as short-hand for listing
-- every field.
acrFields :: Lens' AppendCellsRequest (Maybe GFieldMask)
acrFields
  = lens _acrFields (\ s a -> s{_acrFields = a})

instance FromJSON AppendCellsRequest where
        parseJSON
          = withObject "AppendCellsRequest"
              (\ o ->
                 AppendCellsRequest' <$>
                   (o .:? "rows" .!= mempty) <*> (o .:? "sheetId") <*>
                     (o .:? "fields"))

instance ToJSON AppendCellsRequest where
        toJSON AppendCellsRequest'{..}
          = object
              (catMaybes
                 [("rows" .=) <$> _acrRows,
                  ("sheetId" .=) <$> _acrSheetId,
                  ("fields" .=) <$> _acrFields])

-- | The result of the find\/replace.
--
-- /See:/ 'findReplaceResponse' smart constructor.
data FindReplaceResponse =
  FindReplaceResponse'
    { _frrValuesChanged      :: !(Maybe (Textual Int32))
    , _frrFormulasChanged    :: !(Maybe (Textual Int32))
    , _frrRowsChanged        :: !(Maybe (Textual Int32))
    , _frrSheetsChanged      :: !(Maybe (Textual Int32))
    , _frrOccurrencesChanged :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FindReplaceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frrValuesChanged'
--
-- * 'frrFormulasChanged'
--
-- * 'frrRowsChanged'
--
-- * 'frrSheetsChanged'
--
-- * 'frrOccurrencesChanged'
findReplaceResponse
    :: FindReplaceResponse
findReplaceResponse =
  FindReplaceResponse'
    { _frrValuesChanged = Nothing
    , _frrFormulasChanged = Nothing
    , _frrRowsChanged = Nothing
    , _frrSheetsChanged = Nothing
    , _frrOccurrencesChanged = Nothing
    }


-- | The number of non-formula cells changed.
frrValuesChanged :: Lens' FindReplaceResponse (Maybe Int32)
frrValuesChanged
  = lens _frrValuesChanged
      (\ s a -> s{_frrValuesChanged = a})
      . mapping _Coerce

-- | The number of formula cells changed.
frrFormulasChanged :: Lens' FindReplaceResponse (Maybe Int32)
frrFormulasChanged
  = lens _frrFormulasChanged
      (\ s a -> s{_frrFormulasChanged = a})
      . mapping _Coerce

-- | The number of rows changed.
frrRowsChanged :: Lens' FindReplaceResponse (Maybe Int32)
frrRowsChanged
  = lens _frrRowsChanged
      (\ s a -> s{_frrRowsChanged = a})
      . mapping _Coerce

-- | The number of sheets changed.
frrSheetsChanged :: Lens' FindReplaceResponse (Maybe Int32)
frrSheetsChanged
  = lens _frrSheetsChanged
      (\ s a -> s{_frrSheetsChanged = a})
      . mapping _Coerce

-- | The number of occurrences (possibly multiple within a cell) changed. For
-- example, if replacing \`\"e\"\` with \`\"o\"\` in \`\"Google Sheets\"\`,
-- this would be \`\"3\"\` because \`\"Google Sheets\"\` -> \`\"Googlo
-- Shoots\"\`.
frrOccurrencesChanged :: Lens' FindReplaceResponse (Maybe Int32)
frrOccurrencesChanged
  = lens _frrOccurrencesChanged
      (\ s a -> s{_frrOccurrencesChanged = a})
      . mapping _Coerce

instance FromJSON FindReplaceResponse where
        parseJSON
          = withObject "FindReplaceResponse"
              (\ o ->
                 FindReplaceResponse' <$>
                   (o .:? "valuesChanged") <*> (o .:? "formulasChanged")
                     <*> (o .:? "rowsChanged")
                     <*> (o .:? "sheetsChanged")
                     <*> (o .:? "occurrencesChanged"))

instance ToJSON FindReplaceResponse where
        toJSON FindReplaceResponse'{..}
          = object
              (catMaybes
                 [("valuesChanged" .=) <$> _frrValuesChanged,
                  ("formulasChanged" .=) <$> _frrFormulasChanged,
                  ("rowsChanged" .=) <$> _frrRowsChanged,
                  ("sheetsChanged" .=) <$> _frrSheetsChanged,
                  ("occurrencesChanged" .=) <$>
                    _frrOccurrencesChanged])

-- | The result of adding a group.
--
-- /See:/ 'addDimensionGroupResponse' smart constructor.
newtype AddDimensionGroupResponse =
  AddDimensionGroupResponse'
    { _adgrDimensionGroups :: Maybe [DimensionGroup]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddDimensionGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adgrDimensionGroups'
addDimensionGroupResponse
    :: AddDimensionGroupResponse
addDimensionGroupResponse =
  AddDimensionGroupResponse' {_adgrDimensionGroups = Nothing}


-- | All groups of a dimension after adding a group to that dimension.
adgrDimensionGroups :: Lens' AddDimensionGroupResponse [DimensionGroup]
adgrDimensionGroups
  = lens _adgrDimensionGroups
      (\ s a -> s{_adgrDimensionGroups = a})
      . _Default
      . _Coerce

instance FromJSON AddDimensionGroupResponse where
        parseJSON
          = withObject "AddDimensionGroupResponse"
              (\ o ->
                 AddDimensionGroupResponse' <$>
                   (o .:? "dimensionGroups" .!= mempty))

instance ToJSON AddDimensionGroupResponse where
        toJSON AddDimensionGroupResponse'{..}
          = object
              (catMaybes
                 [("dimensionGroups" .=) <$> _adgrDimensionGroups])

-- | A </chart/interactive/docs/gallery/piechart pie chart>.
--
-- /See:/ 'pieChartSpec' smart constructor.
data PieChartSpec =
  PieChartSpec'
    { _pcsPieHole          :: !(Maybe (Textual Double))
    , _pcsLegendPosition   :: !(Maybe PieChartSpecLegendPosition)
    , _pcsDomain           :: !(Maybe ChartData)
    , _pcsSeries           :: !(Maybe ChartData)
    , _pcsThreeDimensional :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PieChartSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcsPieHole'
--
-- * 'pcsLegendPosition'
--
-- * 'pcsDomain'
--
-- * 'pcsSeries'
--
-- * 'pcsThreeDimensional'
pieChartSpec
    :: PieChartSpec
pieChartSpec =
  PieChartSpec'
    { _pcsPieHole = Nothing
    , _pcsLegendPosition = Nothing
    , _pcsDomain = Nothing
    , _pcsSeries = Nothing
    , _pcsThreeDimensional = Nothing
    }


-- | The size of the hole in the pie chart.
pcsPieHole :: Lens' PieChartSpec (Maybe Double)
pcsPieHole
  = lens _pcsPieHole (\ s a -> s{_pcsPieHole = a}) .
      mapping _Coerce

-- | Where the legend of the pie chart should be drawn.
pcsLegendPosition :: Lens' PieChartSpec (Maybe PieChartSpecLegendPosition)
pcsLegendPosition
  = lens _pcsLegendPosition
      (\ s a -> s{_pcsLegendPosition = a})

-- | The data that covers the domain of the pie chart.
pcsDomain :: Lens' PieChartSpec (Maybe ChartData)
pcsDomain
  = lens _pcsDomain (\ s a -> s{_pcsDomain = a})

-- | The data that covers the one and only series of the pie chart.
pcsSeries :: Lens' PieChartSpec (Maybe ChartData)
pcsSeries
  = lens _pcsSeries (\ s a -> s{_pcsSeries = a})

-- | True if the pie is three dimensional.
pcsThreeDimensional :: Lens' PieChartSpec (Maybe Bool)
pcsThreeDimensional
  = lens _pcsThreeDimensional
      (\ s a -> s{_pcsThreeDimensional = a})

instance FromJSON PieChartSpec where
        parseJSON
          = withObject "PieChartSpec"
              (\ o ->
                 PieChartSpec' <$>
                   (o .:? "pieHole") <*> (o .:? "legendPosition") <*>
                     (o .:? "domain")
                     <*> (o .:? "series")
                     <*> (o .:? "threeDimensional"))

instance ToJSON PieChartSpec where
        toJSON PieChartSpec'{..}
          = object
              (catMaybes
                 [("pieHole" .=) <$> _pcsPieHole,
                  ("legendPosition" .=) <$> _pcsLegendPosition,
                  ("domain" .=) <$> _pcsDomain,
                  ("series" .=) <$> _pcsSeries,
                  ("threeDimensional" .=) <$> _pcsThreeDimensional])

-- | The response when updating a range of values in a spreadsheet.
--
-- /See:/ 'batchUpdateValuesByDataFilterResponse' smart constructor.
data BatchUpdateValuesByDataFilterResponse =
  BatchUpdateValuesByDataFilterResponse'
    { _buvbdfrTotalUpdatedColumns :: !(Maybe (Textual Int32))
    , _buvbdfrResponses           :: !(Maybe [UpdateValuesByDataFilterResponse])
    , _buvbdfrSpreadsheetId       :: !(Maybe Text)
    , _buvbdfrTotalUpdatedSheets  :: !(Maybe (Textual Int32))
    , _buvbdfrTotalUpdatedCells   :: !(Maybe (Textual Int32))
    , _buvbdfrTotalUpdatedRows    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUpdateValuesByDataFilterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buvbdfrTotalUpdatedColumns'
--
-- * 'buvbdfrResponses'
--
-- * 'buvbdfrSpreadsheetId'
--
-- * 'buvbdfrTotalUpdatedSheets'
--
-- * 'buvbdfrTotalUpdatedCells'
--
-- * 'buvbdfrTotalUpdatedRows'
batchUpdateValuesByDataFilterResponse
    :: BatchUpdateValuesByDataFilterResponse
batchUpdateValuesByDataFilterResponse =
  BatchUpdateValuesByDataFilterResponse'
    { _buvbdfrTotalUpdatedColumns = Nothing
    , _buvbdfrResponses = Nothing
    , _buvbdfrSpreadsheetId = Nothing
    , _buvbdfrTotalUpdatedSheets = Nothing
    , _buvbdfrTotalUpdatedCells = Nothing
    , _buvbdfrTotalUpdatedRows = Nothing
    }


-- | The total number of columns where at least one cell in the column was
-- updated.
buvbdfrTotalUpdatedColumns :: Lens' BatchUpdateValuesByDataFilterResponse (Maybe Int32)
buvbdfrTotalUpdatedColumns
  = lens _buvbdfrTotalUpdatedColumns
      (\ s a -> s{_buvbdfrTotalUpdatedColumns = a})
      . mapping _Coerce

-- | The response for each range updated.
buvbdfrResponses :: Lens' BatchUpdateValuesByDataFilterResponse [UpdateValuesByDataFilterResponse]
buvbdfrResponses
  = lens _buvbdfrResponses
      (\ s a -> s{_buvbdfrResponses = a})
      . _Default
      . _Coerce

-- | The spreadsheet the updates were applied to.
buvbdfrSpreadsheetId :: Lens' BatchUpdateValuesByDataFilterResponse (Maybe Text)
buvbdfrSpreadsheetId
  = lens _buvbdfrSpreadsheetId
      (\ s a -> s{_buvbdfrSpreadsheetId = a})

-- | The total number of sheets where at least one cell in the sheet was
-- updated.
buvbdfrTotalUpdatedSheets :: Lens' BatchUpdateValuesByDataFilterResponse (Maybe Int32)
buvbdfrTotalUpdatedSheets
  = lens _buvbdfrTotalUpdatedSheets
      (\ s a -> s{_buvbdfrTotalUpdatedSheets = a})
      . mapping _Coerce

-- | The total number of cells updated.
buvbdfrTotalUpdatedCells :: Lens' BatchUpdateValuesByDataFilterResponse (Maybe Int32)
buvbdfrTotalUpdatedCells
  = lens _buvbdfrTotalUpdatedCells
      (\ s a -> s{_buvbdfrTotalUpdatedCells = a})
      . mapping _Coerce

-- | The total number of rows where at least one cell in the row was updated.
buvbdfrTotalUpdatedRows :: Lens' BatchUpdateValuesByDataFilterResponse (Maybe Int32)
buvbdfrTotalUpdatedRows
  = lens _buvbdfrTotalUpdatedRows
      (\ s a -> s{_buvbdfrTotalUpdatedRows = a})
      . mapping _Coerce

instance FromJSON
           BatchUpdateValuesByDataFilterResponse
         where
        parseJSON
          = withObject "BatchUpdateValuesByDataFilterResponse"
              (\ o ->
                 BatchUpdateValuesByDataFilterResponse' <$>
                   (o .:? "totalUpdatedColumns") <*>
                     (o .:? "responses" .!= mempty)
                     <*> (o .:? "spreadsheetId")
                     <*> (o .:? "totalUpdatedSheets")
                     <*> (o .:? "totalUpdatedCells")
                     <*> (o .:? "totalUpdatedRows"))

instance ToJSON BatchUpdateValuesByDataFilterResponse
         where
        toJSON BatchUpdateValuesByDataFilterResponse'{..}
          = object
              (catMaybes
                 [("totalUpdatedColumns" .=) <$>
                    _buvbdfrTotalUpdatedColumns,
                  ("responses" .=) <$> _buvbdfrResponses,
                  ("spreadsheetId" .=) <$> _buvbdfrSpreadsheetId,
                  ("totalUpdatedSheets" .=) <$>
                    _buvbdfrTotalUpdatedSheets,
                  ("totalUpdatedCells" .=) <$>
                    _buvbdfrTotalUpdatedCells,
                  ("totalUpdatedRows" .=) <$>
                    _buvbdfrTotalUpdatedRows])

-- | The response when updating a range of values in a spreadsheet.
--
-- /See:/ 'appendValuesResponse' smart constructor.
data AppendValuesResponse =
  AppendValuesResponse'
    { _avrSpreadsheetId :: !(Maybe Text)
    , _avrUpdates       :: !(Maybe UpdateValuesResponse)
    , _avrTableRange    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppendValuesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avrSpreadsheetId'
--
-- * 'avrUpdates'
--
-- * 'avrTableRange'
appendValuesResponse
    :: AppendValuesResponse
appendValuesResponse =
  AppendValuesResponse'
    { _avrSpreadsheetId = Nothing
    , _avrUpdates = Nothing
    , _avrTableRange = Nothing
    }


-- | The spreadsheet the updates were applied to.
avrSpreadsheetId :: Lens' AppendValuesResponse (Maybe Text)
avrSpreadsheetId
  = lens _avrSpreadsheetId
      (\ s a -> s{_avrSpreadsheetId = a})

-- | Information about the updates that were applied.
avrUpdates :: Lens' AppendValuesResponse (Maybe UpdateValuesResponse)
avrUpdates
  = lens _avrUpdates (\ s a -> s{_avrUpdates = a})

-- | The range (in A1 notation) of the table that values are being appended
-- to (before the values were appended). Empty if no table was found.
avrTableRange :: Lens' AppendValuesResponse (Maybe Text)
avrTableRange
  = lens _avrTableRange
      (\ s a -> s{_avrTableRange = a})

instance FromJSON AppendValuesResponse where
        parseJSON
          = withObject "AppendValuesResponse"
              (\ o ->
                 AppendValuesResponse' <$>
                   (o .:? "spreadsheetId") <*> (o .:? "updates") <*>
                     (o .:? "tableRange"))

instance ToJSON AppendValuesResponse where
        toJSON AppendValuesResponse'{..}
          = object
              (catMaybes
                 [("spreadsheetId" .=) <$> _avrSpreadsheetId,
                  ("updates" .=) <$> _avrUpdates,
                  ("tableRange" .=) <$> _avrTableRange])

-- | A data validation rule.
--
-- /See:/ 'dataValidationRule' smart constructor.
data DataValidationRule =
  DataValidationRule'
    { _dvrShowCustomUi :: !(Maybe Bool)
    , _dvrInputMessage :: !(Maybe Text)
    , _dvrStrict       :: !(Maybe Bool)
    , _dvrCondition    :: !(Maybe BooleanCondition)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataValidationRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvrShowCustomUi'
--
-- * 'dvrInputMessage'
--
-- * 'dvrStrict'
--
-- * 'dvrCondition'
dataValidationRule
    :: DataValidationRule
dataValidationRule =
  DataValidationRule'
    { _dvrShowCustomUi = Nothing
    , _dvrInputMessage = Nothing
    , _dvrStrict = Nothing
    , _dvrCondition = Nothing
    }


-- | True if the UI should be customized based on the kind of condition. If
-- true, \"List\" conditions will show a dropdown.
dvrShowCustomUi :: Lens' DataValidationRule (Maybe Bool)
dvrShowCustomUi
  = lens _dvrShowCustomUi
      (\ s a -> s{_dvrShowCustomUi = a})

-- | A message to show the user when adding data to the cell.
dvrInputMessage :: Lens' DataValidationRule (Maybe Text)
dvrInputMessage
  = lens _dvrInputMessage
      (\ s a -> s{_dvrInputMessage = a})

-- | True if invalid data should be rejected.
dvrStrict :: Lens' DataValidationRule (Maybe Bool)
dvrStrict
  = lens _dvrStrict (\ s a -> s{_dvrStrict = a})

-- | The condition that data in the cell must match.
dvrCondition :: Lens' DataValidationRule (Maybe BooleanCondition)
dvrCondition
  = lens _dvrCondition (\ s a -> s{_dvrCondition = a})

instance FromJSON DataValidationRule where
        parseJSON
          = withObject "DataValidationRule"
              (\ o ->
                 DataValidationRule' <$>
                   (o .:? "showCustomUi") <*> (o .:? "inputMessage") <*>
                     (o .:? "strict")
                     <*> (o .:? "condition"))

instance ToJSON DataValidationRule where
        toJSON DataValidationRule'{..}
          = object
              (catMaybes
                 [("showCustomUi" .=) <$> _dvrShowCustomUi,
                  ("inputMessage" .=) <$> _dvrInputMessage,
                  ("strict" .=) <$> _dvrStrict,
                  ("condition" .=) <$> _dvrCondition])

-- | A filter view.
--
-- /See:/ 'filterView' smart constructor.
data FilterView =
  FilterView'
    { _fvSortSpecs    :: !(Maybe [SortSpec])
    , _fvNamedRangeId :: !(Maybe Text)
    , _fvRange        :: !(Maybe GridRange)
    , _fvFilterViewId :: !(Maybe (Textual Int32))
    , _fvTitle        :: !(Maybe Text)
    , _fvCriteria     :: !(Maybe FilterViewCriteria)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FilterView' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fvSortSpecs'
--
-- * 'fvNamedRangeId'
--
-- * 'fvRange'
--
-- * 'fvFilterViewId'
--
-- * 'fvTitle'
--
-- * 'fvCriteria'
filterView
    :: FilterView
filterView =
  FilterView'
    { _fvSortSpecs = Nothing
    , _fvNamedRangeId = Nothing
    , _fvRange = Nothing
    , _fvFilterViewId = Nothing
    , _fvTitle = Nothing
    , _fvCriteria = Nothing
    }


-- | The sort order per column. Later specifications are used when values are
-- equal in the earlier specifications.
fvSortSpecs :: Lens' FilterView [SortSpec]
fvSortSpecs
  = lens _fvSortSpecs (\ s a -> s{_fvSortSpecs = a}) .
      _Default
      . _Coerce

-- | The named range this filter view is backed by, if any. When writing,
-- only one of range or named_range_id may be set.
fvNamedRangeId :: Lens' FilterView (Maybe Text)
fvNamedRangeId
  = lens _fvNamedRangeId
      (\ s a -> s{_fvNamedRangeId = a})

-- | The range this filter view covers. When writing, only one of range or
-- named_range_id may be set.
fvRange :: Lens' FilterView (Maybe GridRange)
fvRange = lens _fvRange (\ s a -> s{_fvRange = a})

-- | The ID of the filter view.
fvFilterViewId :: Lens' FilterView (Maybe Int32)
fvFilterViewId
  = lens _fvFilterViewId
      (\ s a -> s{_fvFilterViewId = a})
      . mapping _Coerce

-- | The name of the filter view.
fvTitle :: Lens' FilterView (Maybe Text)
fvTitle = lens _fvTitle (\ s a -> s{_fvTitle = a})

-- | The criteria for showing\/hiding values per column. The map\'s key is
-- the column index, and the value is the criteria for that column.
fvCriteria :: Lens' FilterView (Maybe FilterViewCriteria)
fvCriteria
  = lens _fvCriteria (\ s a -> s{_fvCriteria = a})

instance FromJSON FilterView where
        parseJSON
          = withObject "FilterView"
              (\ o ->
                 FilterView' <$>
                   (o .:? "sortSpecs" .!= mempty) <*>
                     (o .:? "namedRangeId")
                     <*> (o .:? "range")
                     <*> (o .:? "filterViewId")
                     <*> (o .:? "title")
                     <*> (o .:? "criteria"))

instance ToJSON FilterView where
        toJSON FilterView'{..}
          = object
              (catMaybes
                 [("sortSpecs" .=) <$> _fvSortSpecs,
                  ("namedRangeId" .=) <$> _fvNamedRangeId,
                  ("range" .=) <$> _fvRange,
                  ("filterViewId" .=) <$> _fvFilterViewId,
                  ("title" .=) <$> _fvTitle,
                  ("criteria" .=) <$> _fvCriteria])

-- | Represents a color in the RGBA color space. This representation is
-- designed for simplicity of conversion to\/from color representations in
-- various languages over compactness; for example, the fields of this
-- representation can be trivially provided to the constructor of
-- \"java.awt.Color\" in Java; it can also be trivially provided to
-- UIColor\'s \"+colorWithRed:green:blue:alpha\" method in iOS; and, with
-- just a little work, it can be easily formatted into a CSS \"rgba()\"
-- string in JavaScript, as well. Note: this proto does not carry
-- information about the absolute color space that should be used to
-- interpret the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.).
-- By default, applications SHOULD assume the sRGB color space. Example
-- (Java): import com.google.type.Color; \/\/ ... public static
-- java.awt.Color fromProto(Color protocolor) { float alpha =
-- protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return
-- new java.awt.Color( protocolor.getRed(), protocolor.getGreen(),
-- protocolor.getBlue(), alpha); } public static Color
-- toProto(java.awt.Color color) { float red = (float) color.getRed();
-- float green = (float) color.getGreen(); float blue = (float)
-- color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder
-- = Color .newBuilder() .setRed(red \/ denominator) .setGreen(green \/
-- denominator) .setBlue(blue \/ denominator); int alpha =
-- color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue
-- .newBuilder() .setValue(((float) alpha) \/ denominator) .build()); }
-- return resultBuilder.build(); } \/\/ ... Example (iOS \/ Obj-C): \/\/
-- ... static UIColor* fromProto(Color* protocolor) { float red =
-- [protocolor red]; float green = [protocolor green]; float blue =
-- [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float
-- alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value];
-- } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; }
-- static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha;
-- if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return
-- nil; } Color* result = [[Color alloc] init]; [result setRed:red];
-- [result setGreen:green]; [result setBlue:blue]; if (alpha \<= 0.9999) {
-- [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease];
-- return result; } \/\/ ... Example (JavaScript): \/\/ ... var
-- protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red ||
-- 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac =
-- rgb_color.blue || 0.0; var red = Math.floor(redFrac * 255); var green =
-- Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if
-- (!(\'alpha\' in rgb_color)) { return rgbToCssColor_(red, green, blue); }
-- var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red,
-- green, blue].join(\',\'); return [\'rgba(\', rgbParams, \',\',
-- alphaFrac, \')\'].join(\'\'); }; var rgbToCssColor_ = function(red,
-- green, blue) { var rgbNumber = new Number((red \<\< 16) | (green \<\< 8)
-- | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 -
-- hexString.length; var resultBuilder = [\'#\']; for (var i = 0; i \<
-- missingZeros; i++) { resultBuilder.push(\'0\'); }
-- resultBuilder.push(hexString); return resultBuilder.join(\'\'); }; \/\/
-- ...
--
-- /See:/ 'color' smart constructor.
data Color =
  Color'
    { _cRed   :: !(Maybe (Textual Double))
    , _cAlpha :: !(Maybe (Textual Double))
    , _cGreen :: !(Maybe (Textual Double))
    , _cBlue  :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Color' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cRed'
--
-- * 'cAlpha'
--
-- * 'cGreen'
--
-- * 'cBlue'
color
    :: Color
color =
  Color'
    {_cRed = Nothing, _cAlpha = Nothing, _cGreen = Nothing, _cBlue = Nothing}


-- | The amount of red in the color as a value in the interval [0, 1].
cRed :: Lens' Color (Maybe Double)
cRed
  = lens _cRed (\ s a -> s{_cRed = a}) .
      mapping _Coerce

-- | The fraction of this color that should be applied to the pixel. That is,
-- the final pixel color is defined by the equation: pixel color = alpha *
-- (this color) + (1.0 - alpha) * (background color) This means that a
-- value of 1.0 corresponds to a solid color, whereas a value of 0.0
-- corresponds to a completely transparent color. This uses a wrapper
-- message rather than a simple float scalar so that it is possible to
-- distinguish between a default value and the value being unset. If
-- omitted, this color object is to be rendered as a solid color (as if the
-- alpha value had been explicitly given with a value of 1.0).
cAlpha :: Lens' Color (Maybe Double)
cAlpha
  = lens _cAlpha (\ s a -> s{_cAlpha = a}) .
      mapping _Coerce

-- | The amount of green in the color as a value in the interval [0, 1].
cGreen :: Lens' Color (Maybe Double)
cGreen
  = lens _cGreen (\ s a -> s{_cGreen = a}) .
      mapping _Coerce

-- | The amount of blue in the color as a value in the interval [0, 1].
cBlue :: Lens' Color (Maybe Double)
cBlue
  = lens _cBlue (\ s a -> s{_cBlue = a}) .
      mapping _Coerce

instance FromJSON Color where
        parseJSON
          = withObject "Color"
              (\ o ->
                 Color' <$>
                   (o .:? "red") <*> (o .:? "alpha") <*> (o .:? "green")
                     <*> (o .:? "blue"))

instance ToJSON Color where
        toJSON Color'{..}
          = object
              (catMaybes
                 [("red" .=) <$> _cRed, ("alpha" .=) <$> _cAlpha,
                  ("green" .=) <$> _cGreen, ("blue" .=) <$> _cBlue])

-- | Deletes a particular filter view.
--
-- /See:/ 'deleteFilterViewRequest' smart constructor.
newtype DeleteFilterViewRequest =
  DeleteFilterViewRequest'
    { _dfvrFilterId :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteFilterViewRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfvrFilterId'
deleteFilterViewRequest
    :: DeleteFilterViewRequest
deleteFilterViewRequest = DeleteFilterViewRequest' {_dfvrFilterId = Nothing}


-- | The ID of the filter to delete.
dfvrFilterId :: Lens' DeleteFilterViewRequest (Maybe Int32)
dfvrFilterId
  = lens _dfvrFilterId (\ s a -> s{_dfvrFilterId = a})
      . mapping _Coerce

instance FromJSON DeleteFilterViewRequest where
        parseJSON
          = withObject "DeleteFilterViewRequest"
              (\ o ->
                 DeleteFilterViewRequest' <$> (o .:? "filterId"))

instance ToJSON DeleteFilterViewRequest where
        toJSON DeleteFilterViewRequest'{..}
          = object
              (catMaybes [("filterId" .=) <$> _dfvrFilterId])

-- | Updates properties of the filter view.
--
-- /See:/ 'updateFilterViewRequest' smart constructor.
data UpdateFilterViewRequest =
  UpdateFilterViewRequest'
    { _ufvrFilter :: !(Maybe FilterView)
    , _ufvrFields :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateFilterViewRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ufvrFilter'
--
-- * 'ufvrFields'
updateFilterViewRequest
    :: UpdateFilterViewRequest
updateFilterViewRequest =
  UpdateFilterViewRequest' {_ufvrFilter = Nothing, _ufvrFields = Nothing}


-- | The new properties of the filter view.
ufvrFilter :: Lens' UpdateFilterViewRequest (Maybe FilterView)
ufvrFilter
  = lens _ufvrFilter (\ s a -> s{_ufvrFilter = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`filter\` is implied and should not be specified. A single
-- \`\"*\"\` can be used as short-hand for listing every field.
ufvrFields :: Lens' UpdateFilterViewRequest (Maybe GFieldMask)
ufvrFields
  = lens _ufvrFields (\ s a -> s{_ufvrFields = a})

instance FromJSON UpdateFilterViewRequest where
        parseJSON
          = withObject "UpdateFilterViewRequest"
              (\ o ->
                 UpdateFilterViewRequest' <$>
                   (o .:? "filter") <*> (o .:? "fields"))

instance ToJSON UpdateFilterViewRequest where
        toJSON UpdateFilterViewRequest'{..}
          = object
              (catMaybes
                 [("filter" .=) <$> _ufvrFilter,
                  ("fields" .=) <$> _ufvrFields])

-- | A single series of data in a chart. For example, if charting stock
-- prices over time, multiple series may exist, one for the \"Open Price\",
-- \"High Price\", \"Low Price\" and \"Close Price\".
--
-- /See:/ 'basicChartSeries' smart constructor.
data BasicChartSeries =
  BasicChartSeries'
    { _bTargetAxis :: !(Maybe BasicChartSeriesTargetAxis)
    , _bColor      :: !(Maybe Color)
    , _bSeries     :: !(Maybe ChartData)
    , _bType       :: !(Maybe BasicChartSeriesType)
    , _bLineStyle  :: !(Maybe LineStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BasicChartSeries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bTargetAxis'
--
-- * 'bColor'
--
-- * 'bSeries'
--
-- * 'bType'
--
-- * 'bLineStyle'
basicChartSeries
    :: BasicChartSeries
basicChartSeries =
  BasicChartSeries'
    { _bTargetAxis = Nothing
    , _bColor = Nothing
    , _bSeries = Nothing
    , _bType = Nothing
    , _bLineStyle = Nothing
    }


-- | The minor axis that will specify the range of values for this series.
-- For example, if charting stocks over time, the \"Volume\" series may
-- want to be pinned to the right with the prices pinned to the left,
-- because the scale of trading volume is different than the scale of
-- prices. It is an error to specify an axis that isn\'t a valid minor axis
-- for the chart\'s type.
bTargetAxis :: Lens' BasicChartSeries (Maybe BasicChartSeriesTargetAxis)
bTargetAxis
  = lens _bTargetAxis (\ s a -> s{_bTargetAxis = a})

-- | The color for elements (i.e. bars, lines, points) associated with this
-- series. If empty, a default color is used.
bColor :: Lens' BasicChartSeries (Maybe Color)
bColor = lens _bColor (\ s a -> s{_bColor = a})

-- | The data being visualized in this chart series.
bSeries :: Lens' BasicChartSeries (Maybe ChartData)
bSeries = lens _bSeries (\ s a -> s{_bSeries = a})

-- | The type of this series. Valid only if the chartType is COMBO. Different
-- types will change the way the series is visualized. Only LINE, AREA, and
-- COLUMN are supported.
bType :: Lens' BasicChartSeries (Maybe BasicChartSeriesType)
bType = lens _bType (\ s a -> s{_bType = a})

-- | The line style of this series. Valid only if the chartType is AREA,
-- LINE, or SCATTER. COMBO charts are also supported if the series chart
-- type is AREA or LINE.
bLineStyle :: Lens' BasicChartSeries (Maybe LineStyle)
bLineStyle
  = lens _bLineStyle (\ s a -> s{_bLineStyle = a})

instance FromJSON BasicChartSeries where
        parseJSON
          = withObject "BasicChartSeries"
              (\ o ->
                 BasicChartSeries' <$>
                   (o .:? "targetAxis") <*> (o .:? "color") <*>
                     (o .:? "series")
                     <*> (o .:? "type")
                     <*> (o .:? "lineStyle"))

instance ToJSON BasicChartSeries where
        toJSON BasicChartSeries'{..}
          = object
              (catMaybes
                 [("targetAxis" .=) <$> _bTargetAxis,
                  ("color" .=) <$> _bColor, ("series" .=) <$> _bSeries,
                  ("type" .=) <$> _bType,
                  ("lineStyle" .=) <$> _bLineStyle])

-- | An optional setting on a PivotGroup that defines buckets for the values
-- in the source data column rather than breaking out each individual
-- value. Only one PivotGroup with a group rule may be added for each
-- column in the source data, though on any given column you may add both a
-- PivotGroup that has a rule and a PivotGroup that does not.
--
-- /See:/ 'pivotGroupRule' smart constructor.
data PivotGroupRule =
  PivotGroupRule'
    { _pgrDateTimeRule  :: !(Maybe DateTimeRule)
    , _pgrManualRule    :: !(Maybe ManualRule)
    , _pgrHistogramRule :: !(Maybe HistogramRule)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PivotGroupRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgrDateTimeRule'
--
-- * 'pgrManualRule'
--
-- * 'pgrHistogramRule'
pivotGroupRule
    :: PivotGroupRule
pivotGroupRule =
  PivotGroupRule'
    { _pgrDateTimeRule = Nothing
    , _pgrManualRule = Nothing
    , _pgrHistogramRule = Nothing
    }


-- | A DateTimeRule.
pgrDateTimeRule :: Lens' PivotGroupRule (Maybe DateTimeRule)
pgrDateTimeRule
  = lens _pgrDateTimeRule
      (\ s a -> s{_pgrDateTimeRule = a})

-- | A ManualRule.
pgrManualRule :: Lens' PivotGroupRule (Maybe ManualRule)
pgrManualRule
  = lens _pgrManualRule
      (\ s a -> s{_pgrManualRule = a})

-- | A HistogramRule.
pgrHistogramRule :: Lens' PivotGroupRule (Maybe HistogramRule)
pgrHistogramRule
  = lens _pgrHistogramRule
      (\ s a -> s{_pgrHistogramRule = a})

instance FromJSON PivotGroupRule where
        parseJSON
          = withObject "PivotGroupRule"
              (\ o ->
                 PivotGroupRule' <$>
                   (o .:? "dateTimeRule") <*> (o .:? "manualRule") <*>
                     (o .:? "histogramRule"))

instance ToJSON PivotGroupRule where
        toJSON PivotGroupRule'{..}
          = object
              (catMaybes
                 [("dateTimeRule" .=) <$> _pgrDateTimeRule,
                  ("manualRule" .=) <$> _pgrManualRule,
                  ("histogramRule" .=) <$> _pgrHistogramRule])

-- | Adds a new protected range.
--
-- /See:/ 'addProtectedRangeRequest' smart constructor.
newtype AddProtectedRangeRequest =
  AddProtectedRangeRequest'
    { _aprrProtectedRange :: Maybe ProtectedRange
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddProtectedRangeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aprrProtectedRange'
addProtectedRangeRequest
    :: AddProtectedRangeRequest
addProtectedRangeRequest =
  AddProtectedRangeRequest' {_aprrProtectedRange = Nothing}


-- | The protected range to be added. The protectedRangeId field is optional;
-- if one is not set, an id will be randomly generated. (It is an error to
-- specify the ID of a range that already exists.)
aprrProtectedRange :: Lens' AddProtectedRangeRequest (Maybe ProtectedRange)
aprrProtectedRange
  = lens _aprrProtectedRange
      (\ s a -> s{_aprrProtectedRange = a})

instance FromJSON AddProtectedRangeRequest where
        parseJSON
          = withObject "AddProtectedRangeRequest"
              (\ o ->
                 AddProtectedRangeRequest' <$>
                   (o .:? "protectedRange"))

instance ToJSON AddProtectedRangeRequest where
        toJSON AddProtectedRangeRequest'{..}
          = object
              (catMaybes
                 [("protectedRange" .=) <$> _aprrProtectedRange])

-- | Updates all cells in the range to the values in the given Cell object.
-- Only the fields listed in the fields field are updated; others are
-- unchanged. If writing a cell with a formula, the formula\'s ranges will
-- automatically increment for each field in the range. For example, if
-- writing a cell with formula \`=A1\` into range B2:C4, B2 would be
-- \`=A1\`, B3 would be \`=A2\`, B4 would be \`=A3\`, C2 would be \`=B1\`,
-- C3 would be \`=B2\`, C4 would be \`=B3\`. To keep the formula\'s ranges
-- static, use the \`$\` indicator. For example, use the formula \`=$A$1\`
-- to prevent both the row and the column from incrementing.
--
-- /See:/ 'repeatCellRequest' smart constructor.
data RepeatCellRequest =
  RepeatCellRequest'
    { _rcrCell   :: !(Maybe CellData)
    , _rcrRange  :: !(Maybe GridRange)
    , _rcrFields :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RepeatCellRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcrCell'
--
-- * 'rcrRange'
--
-- * 'rcrFields'
repeatCellRequest
    :: RepeatCellRequest
repeatCellRequest =
  RepeatCellRequest'
    {_rcrCell = Nothing, _rcrRange = Nothing, _rcrFields = Nothing}


-- | The data to write.
rcrCell :: Lens' RepeatCellRequest (Maybe CellData)
rcrCell = lens _rcrCell (\ s a -> s{_rcrCell = a})

-- | The range to repeat the cell in.
rcrRange :: Lens' RepeatCellRequest (Maybe GridRange)
rcrRange = lens _rcrRange (\ s a -> s{_rcrRange = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`cell\` is implied and should not be specified. A single
-- \`\"*\"\` can be used as short-hand for listing every field.
rcrFields :: Lens' RepeatCellRequest (Maybe GFieldMask)
rcrFields
  = lens _rcrFields (\ s a -> s{_rcrFields = a})

instance FromJSON RepeatCellRequest where
        parseJSON
          = withObject "RepeatCellRequest"
              (\ o ->
                 RepeatCellRequest' <$>
                   (o .:? "cell") <*> (o .:? "range") <*>
                     (o .:? "fields"))

instance ToJSON RepeatCellRequest where
        toJSON RepeatCellRequest'{..}
          = object
              (catMaybes
                 [("cell" .=) <$> _rcrCell,
                  ("range" .=) <$> _rcrRange,
                  ("fields" .=) <$> _rcrFields])

-- | The value of the condition.
--
-- /See:/ 'conditionValue' smart constructor.
data ConditionValue =
  ConditionValue'
    { _cvRelativeDate     :: !(Maybe ConditionValueRelativeDate)
    , _cvUserEnteredValue :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConditionValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvRelativeDate'
--
-- * 'cvUserEnteredValue'
conditionValue
    :: ConditionValue
conditionValue =
  ConditionValue' {_cvRelativeDate = Nothing, _cvUserEnteredValue = Nothing}


-- | A relative date (based on the current date). Valid only if the type is
-- DATE_BEFORE, DATE_AFTER, DATE_ON_OR_BEFORE or DATE_ON_OR_AFTER. Relative
-- dates are not supported in data validation. They are supported only in
-- conditional formatting and conditional filters.
cvRelativeDate :: Lens' ConditionValue (Maybe ConditionValueRelativeDate)
cvRelativeDate
  = lens _cvRelativeDate
      (\ s a -> s{_cvRelativeDate = a})

-- | A value the condition is based on. The value is parsed as if the user
-- typed into a cell. Formulas are supported (and must begin with an \`=\`
-- or a \'+\').
cvUserEnteredValue :: Lens' ConditionValue (Maybe Text)
cvUserEnteredValue
  = lens _cvUserEnteredValue
      (\ s a -> s{_cvUserEnteredValue = a})

instance FromJSON ConditionValue where
        parseJSON
          = withObject "ConditionValue"
              (\ o ->
                 ConditionValue' <$>
                   (o .:? "relativeDate") <*>
                     (o .:? "userEnteredValue"))

instance ToJSON ConditionValue where
        toJSON ConditionValue'{..}
          = object
              (catMaybes
                 [("relativeDate" .=) <$> _cvRelativeDate,
                  ("userEnteredValue" .=) <$> _cvUserEnteredValue])

-- | Deletes the dimensions from the sheet.
--
-- /See:/ 'deleteDimensionRequest' smart constructor.
newtype DeleteDimensionRequest =
  DeleteDimensionRequest'
    { _ddrRange :: Maybe DimensionRange
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteDimensionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrRange'
deleteDimensionRequest
    :: DeleteDimensionRequest
deleteDimensionRequest = DeleteDimensionRequest' {_ddrRange = Nothing}


-- | The dimensions to delete from the sheet.
ddrRange :: Lens' DeleteDimensionRequest (Maybe DimensionRange)
ddrRange = lens _ddrRange (\ s a -> s{_ddrRange = a})

instance FromJSON DeleteDimensionRequest where
        parseJSON
          = withObject "DeleteDimensionRequest"
              (\ o -> DeleteDimensionRequest' <$> (o .:? "range"))

instance ToJSON DeleteDimensionRequest where
        toJSON DeleteDimensionRequest'{..}
          = object (catMaybes [("range" .=) <$> _ddrRange])

-- | The request for clearing a range of values in a spreadsheet.
--
-- /See:/ 'clearValuesRequest' smart constructor.
data ClearValuesRequest =
  ClearValuesRequest'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ClearValuesRequest' with the minimum fields required to make a request.
--
clearValuesRequest
    :: ClearValuesRequest
clearValuesRequest = ClearValuesRequest'


instance FromJSON ClearValuesRequest where
        parseJSON
          = withObject "ClearValuesRequest"
              (\ o -> pure ClearValuesRequest')

instance ToJSON ClearValuesRequest where
        toJSON = const emptyObject

-- | Finds and replaces data in cells over a range, sheet, or all sheets.
--
-- /See:/ 'findReplaceRequest' smart constructor.
data FindReplaceRequest =
  FindReplaceRequest'
    { _frrMatchCase       :: !(Maybe Bool)
    , _frrAllSheets       :: !(Maybe Bool)
    , _frrIncludeFormulas :: !(Maybe Bool)
    , _frrMatchEntireCell :: !(Maybe Bool)
    , _frrRange           :: !(Maybe GridRange)
    , _frrSheetId         :: !(Maybe (Textual Int32))
    , _frrFind            :: !(Maybe Text)
    , _frrSearchByRegex   :: !(Maybe Bool)
    , _frrReplacement     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FindReplaceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frrMatchCase'
--
-- * 'frrAllSheets'
--
-- * 'frrIncludeFormulas'
--
-- * 'frrMatchEntireCell'
--
-- * 'frrRange'
--
-- * 'frrSheetId'
--
-- * 'frrFind'
--
-- * 'frrSearchByRegex'
--
-- * 'frrReplacement'
findReplaceRequest
    :: FindReplaceRequest
findReplaceRequest =
  FindReplaceRequest'
    { _frrMatchCase = Nothing
    , _frrAllSheets = Nothing
    , _frrIncludeFormulas = Nothing
    , _frrMatchEntireCell = Nothing
    , _frrRange = Nothing
    , _frrSheetId = Nothing
    , _frrFind = Nothing
    , _frrSearchByRegex = Nothing
    , _frrReplacement = Nothing
    }


-- | True if the search is case sensitive.
frrMatchCase :: Lens' FindReplaceRequest (Maybe Bool)
frrMatchCase
  = lens _frrMatchCase (\ s a -> s{_frrMatchCase = a})

-- | True to find\/replace over all sheets.
frrAllSheets :: Lens' FindReplaceRequest (Maybe Bool)
frrAllSheets
  = lens _frrAllSheets (\ s a -> s{_frrAllSheets = a})

-- | True if the search should include cells with formulas. False to skip
-- cells with formulas.
frrIncludeFormulas :: Lens' FindReplaceRequest (Maybe Bool)
frrIncludeFormulas
  = lens _frrIncludeFormulas
      (\ s a -> s{_frrIncludeFormulas = a})

-- | True if the find value should match the entire cell.
frrMatchEntireCell :: Lens' FindReplaceRequest (Maybe Bool)
frrMatchEntireCell
  = lens _frrMatchEntireCell
      (\ s a -> s{_frrMatchEntireCell = a})

-- | The range to find\/replace over.
frrRange :: Lens' FindReplaceRequest (Maybe GridRange)
frrRange = lens _frrRange (\ s a -> s{_frrRange = a})

-- | The sheet to find\/replace over.
frrSheetId :: Lens' FindReplaceRequest (Maybe Int32)
frrSheetId
  = lens _frrSheetId (\ s a -> s{_frrSheetId = a}) .
      mapping _Coerce

-- | The value to search.
frrFind :: Lens' FindReplaceRequest (Maybe Text)
frrFind = lens _frrFind (\ s a -> s{_frrFind = a})

-- | True if the find value is a regex. The regular expression and
-- replacement should follow Java regex rules at
-- https:\/\/docs.oracle.com\/javase\/8\/docs\/api\/java\/util\/regex\/Pattern.html.
-- The replacement string is allowed to refer to capturing groups. For
-- example, if one cell has the contents \`\"Google Sheets\"\` and another
-- has \`\"Google Docs\"\`, then searching for \`\"o.* (.*)\"\` with a
-- replacement of \`\"$1 Rocks\"\` would change the contents of the cells
-- to \`\"GSheets Rocks\"\` and \`\"GDocs Rocks\"\` respectively.
frrSearchByRegex :: Lens' FindReplaceRequest (Maybe Bool)
frrSearchByRegex
  = lens _frrSearchByRegex
      (\ s a -> s{_frrSearchByRegex = a})

-- | The value to use as the replacement.
frrReplacement :: Lens' FindReplaceRequest (Maybe Text)
frrReplacement
  = lens _frrReplacement
      (\ s a -> s{_frrReplacement = a})

instance FromJSON FindReplaceRequest where
        parseJSON
          = withObject "FindReplaceRequest"
              (\ o ->
                 FindReplaceRequest' <$>
                   (o .:? "matchCase") <*> (o .:? "allSheets") <*>
                     (o .:? "includeFormulas")
                     <*> (o .:? "matchEntireCell")
                     <*> (o .:? "range")
                     <*> (o .:? "sheetId")
                     <*> (o .:? "find")
                     <*> (o .:? "searchByRegex")
                     <*> (o .:? "replacement"))

instance ToJSON FindReplaceRequest where
        toJSON FindReplaceRequest'{..}
          = object
              (catMaybes
                 [("matchCase" .=) <$> _frrMatchCase,
                  ("allSheets" .=) <$> _frrAllSheets,
                  ("includeFormulas" .=) <$> _frrIncludeFormulas,
                  ("matchEntireCell" .=) <$> _frrMatchEntireCell,
                  ("range" .=) <$> _frrRange,
                  ("sheetId" .=) <$> _frrSheetId,
                  ("find" .=) <$> _frrFind,
                  ("searchByRegex" .=) <$> _frrSearchByRegex,
                  ("replacement" .=) <$> _frrReplacement])

-- | Moves one or more rows or columns.
--
-- /See:/ 'moveDimensionRequest' smart constructor.
data MoveDimensionRequest =
  MoveDimensionRequest'
    { _mdrDestinationIndex :: !(Maybe (Textual Int32))
    , _mdrSource           :: !(Maybe DimensionRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MoveDimensionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdrDestinationIndex'
--
-- * 'mdrSource'
moveDimensionRequest
    :: MoveDimensionRequest
moveDimensionRequest =
  MoveDimensionRequest' {_mdrDestinationIndex = Nothing, _mdrSource = Nothing}


-- | The zero-based start index of where to move the source data to, based on
-- the coordinates *before* the source data is removed from the grid.
-- Existing data will be shifted down or right (depending on the dimension)
-- to make room for the moved dimensions. The source dimensions are removed
-- from the grid, so the the data may end up in a different index than
-- specified. For example, given \`A1..A5\` of \`0, 1, 2, 3, 4\` and
-- wanting to move \`\"1\"\` and \`\"2\"\` to between \`\"3\"\` and
-- \`\"4\"\`, the source would be \`ROWS [1..3)\`,and the destination index
-- would be \`\"4\"\` (the zero-based index of row 5). The end result would
-- be \`A1..A5\` of \`0, 3, 1, 2, 4\`.
mdrDestinationIndex :: Lens' MoveDimensionRequest (Maybe Int32)
mdrDestinationIndex
  = lens _mdrDestinationIndex
      (\ s a -> s{_mdrDestinationIndex = a})
      . mapping _Coerce

-- | The source dimensions to move.
mdrSource :: Lens' MoveDimensionRequest (Maybe DimensionRange)
mdrSource
  = lens _mdrSource (\ s a -> s{_mdrSource = a})

instance FromJSON MoveDimensionRequest where
        parseJSON
          = withObject "MoveDimensionRequest"
              (\ o ->
                 MoveDimensionRequest' <$>
                   (o .:? "destinationIndex") <*> (o .:? "source"))

instance ToJSON MoveDimensionRequest where
        toJSON MoveDimensionRequest'{..}
          = object
              (catMaybes
                 [("destinationIndex" .=) <$> _mdrDestinationIndex,
                  ("source" .=) <$> _mdrSource])

-- | The request for retrieving a range of values in a spreadsheet selected
-- by a set of DataFilters.
--
-- /See:/ 'batchGetValuesByDataFilterRequest' smart constructor.
data BatchGetValuesByDataFilterRequest =
  BatchGetValuesByDataFilterRequest'
    { _bgvbdfrValueRenderOption    :: !(Maybe BatchGetValuesByDataFilterRequestValueRenderOption)
    , _bgvbdfrDataFilters          :: !(Maybe [DataFilter])
    , _bgvbdfrDateTimeRenderOption :: !(Maybe BatchGetValuesByDataFilterRequestDateTimeRenderOption)
    , _bgvbdfrMajorDimension       :: !(Maybe BatchGetValuesByDataFilterRequestMajorDimension)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchGetValuesByDataFilterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgvbdfrValueRenderOption'
--
-- * 'bgvbdfrDataFilters'
--
-- * 'bgvbdfrDateTimeRenderOption'
--
-- * 'bgvbdfrMajorDimension'
batchGetValuesByDataFilterRequest
    :: BatchGetValuesByDataFilterRequest
batchGetValuesByDataFilterRequest =
  BatchGetValuesByDataFilterRequest'
    { _bgvbdfrValueRenderOption = Nothing
    , _bgvbdfrDataFilters = Nothing
    , _bgvbdfrDateTimeRenderOption = Nothing
    , _bgvbdfrMajorDimension = Nothing
    }


-- | How values should be represented in the output. The default render
-- option is ValueRenderOption.FORMATTED_VALUE.
bgvbdfrValueRenderOption :: Lens' BatchGetValuesByDataFilterRequest (Maybe BatchGetValuesByDataFilterRequestValueRenderOption)
bgvbdfrValueRenderOption
  = lens _bgvbdfrValueRenderOption
      (\ s a -> s{_bgvbdfrValueRenderOption = a})

-- | The data filters used to match the ranges of values to retrieve. Ranges
-- that match any of the specified data filters will be included in the
-- response.
bgvbdfrDataFilters :: Lens' BatchGetValuesByDataFilterRequest [DataFilter]
bgvbdfrDataFilters
  = lens _bgvbdfrDataFilters
      (\ s a -> s{_bgvbdfrDataFilters = a})
      . _Default
      . _Coerce

-- | How dates, times, and durations should be represented in the output.
-- This is ignored if value_render_option is FORMATTED_VALUE. The default
-- dateTime render option is [DateTimeRenderOption.SERIAL_NUMBER].
bgvbdfrDateTimeRenderOption :: Lens' BatchGetValuesByDataFilterRequest (Maybe BatchGetValuesByDataFilterRequestDateTimeRenderOption)
bgvbdfrDateTimeRenderOption
  = lens _bgvbdfrDateTimeRenderOption
      (\ s a -> s{_bgvbdfrDateTimeRenderOption = a})

-- | The major dimension that results should use. For example, if the
-- spreadsheet data is: \`A1=1,B1=2,A2=3,B2=4\`, then a request that
-- selects that range and sets \`majorDimension=ROWS\` will return
-- \`[[1,2],[3,4]]\`, whereas a request that sets
-- \`majorDimension=COLUMNS\` will return \`[[1,3],[2,4]]\`.
bgvbdfrMajorDimension :: Lens' BatchGetValuesByDataFilterRequest (Maybe BatchGetValuesByDataFilterRequestMajorDimension)
bgvbdfrMajorDimension
  = lens _bgvbdfrMajorDimension
      (\ s a -> s{_bgvbdfrMajorDimension = a})

instance FromJSON BatchGetValuesByDataFilterRequest
         where
        parseJSON
          = withObject "BatchGetValuesByDataFilterRequest"
              (\ o ->
                 BatchGetValuesByDataFilterRequest' <$>
                   (o .:? "valueRenderOption") <*>
                     (o .:? "dataFilters" .!= mempty)
                     <*> (o .:? "dateTimeRenderOption")
                     <*> (o .:? "majorDimension"))

instance ToJSON BatchGetValuesByDataFilterRequest
         where
        toJSON BatchGetValuesByDataFilterRequest'{..}
          = object
              (catMaybes
                 [("valueRenderOption" .=) <$>
                    _bgvbdfrValueRenderOption,
                  ("dataFilters" .=) <$> _bgvbdfrDataFilters,
                  ("dateTimeRenderOption" .=) <$>
                    _bgvbdfrDateTimeRenderOption,
                  ("majorDimension" .=) <$> _bgvbdfrMajorDimension])

-- | A rule that applies a gradient color scale format, based on the
-- interpolation points listed. The format of a cell will vary based on its
-- contents as compared to the values of the interpolation points.
--
-- /See:/ 'gradientRule' smart constructor.
data GradientRule =
  GradientRule'
    { _grMidpoint :: !(Maybe InterpolationPoint)
    , _grMaxpoint :: !(Maybe InterpolationPoint)
    , _grMinpoint :: !(Maybe InterpolationPoint)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GradientRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grMidpoint'
--
-- * 'grMaxpoint'
--
-- * 'grMinpoint'
gradientRule
    :: GradientRule
gradientRule =
  GradientRule'
    {_grMidpoint = Nothing, _grMaxpoint = Nothing, _grMinpoint = Nothing}


-- | An optional midway interpolation point.
grMidpoint :: Lens' GradientRule (Maybe InterpolationPoint)
grMidpoint
  = lens _grMidpoint (\ s a -> s{_grMidpoint = a})

-- | The final interpolation point.
grMaxpoint :: Lens' GradientRule (Maybe InterpolationPoint)
grMaxpoint
  = lens _grMaxpoint (\ s a -> s{_grMaxpoint = a})

-- | The starting interpolation point.
grMinpoint :: Lens' GradientRule (Maybe InterpolationPoint)
grMinpoint
  = lens _grMinpoint (\ s a -> s{_grMinpoint = a})

instance FromJSON GradientRule where
        parseJSON
          = withObject "GradientRule"
              (\ o ->
                 GradientRule' <$>
                   (o .:? "midpoint") <*> (o .:? "maxpoint") <*>
                     (o .:? "minpoint"))

instance ToJSON GradientRule where
        toJSON GradientRule'{..}
          = object
              (catMaybes
                 [("midpoint" .=) <$> _grMidpoint,
                  ("maxpoint" .=) <$> _grMaxpoint,
                  ("minpoint" .=) <$> _grMinpoint])

-- | Moves data from the source to the destination.
--
-- /See:/ 'cutPasteRequest' smart constructor.
data CutPasteRequest =
  CutPasteRequest'
    { _cDestination :: !(Maybe GridCoordinate)
    , _cSource      :: !(Maybe GridRange)
    , _cPasteType   :: !(Maybe CutPasteRequestPasteType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CutPasteRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cDestination'
--
-- * 'cSource'
--
-- * 'cPasteType'
cutPasteRequest
    :: CutPasteRequest
cutPasteRequest =
  CutPasteRequest'
    {_cDestination = Nothing, _cSource = Nothing, _cPasteType = Nothing}


-- | The top-left coordinate where the data should be pasted.
cDestination :: Lens' CutPasteRequest (Maybe GridCoordinate)
cDestination
  = lens _cDestination (\ s a -> s{_cDestination = a})

-- | The source data to cut.
cSource :: Lens' CutPasteRequest (Maybe GridRange)
cSource = lens _cSource (\ s a -> s{_cSource = a})

-- | What kind of data to paste. All the source data will be cut, regardless
-- of what is pasted.
cPasteType :: Lens' CutPasteRequest (Maybe CutPasteRequestPasteType)
cPasteType
  = lens _cPasteType (\ s a -> s{_cPasteType = a})

instance FromJSON CutPasteRequest where
        parseJSON
          = withObject "CutPasteRequest"
              (\ o ->
                 CutPasteRequest' <$>
                   (o .:? "destination") <*> (o .:? "source") <*>
                     (o .:? "pasteType"))

instance ToJSON CutPasteRequest where
        toJSON CutPasteRequest'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _cDestination,
                  ("source" .=) <$> _cSource,
                  ("pasteType" .=) <$> _cPasteType])

-- | The result of updating an embedded object\'s position.
--
-- /See:/ 'updateEmbeddedObjectPositionResponse' smart constructor.
newtype UpdateEmbeddedObjectPositionResponse =
  UpdateEmbeddedObjectPositionResponse'
    { _ueoprPosition :: Maybe EmbeddedObjectPosition
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateEmbeddedObjectPositionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ueoprPosition'
updateEmbeddedObjectPositionResponse
    :: UpdateEmbeddedObjectPositionResponse
updateEmbeddedObjectPositionResponse =
  UpdateEmbeddedObjectPositionResponse' {_ueoprPosition = Nothing}


-- | The new position of the embedded object.
ueoprPosition :: Lens' UpdateEmbeddedObjectPositionResponse (Maybe EmbeddedObjectPosition)
ueoprPosition
  = lens _ueoprPosition
      (\ s a -> s{_ueoprPosition = a})

instance FromJSON
           UpdateEmbeddedObjectPositionResponse
         where
        parseJSON
          = withObject "UpdateEmbeddedObjectPositionResponse"
              (\ o ->
                 UpdateEmbeddedObjectPositionResponse' <$>
                   (o .:? "position"))

instance ToJSON UpdateEmbeddedObjectPositionResponse
         where
        toJSON UpdateEmbeddedObjectPositionResponse'{..}
          = object
              (catMaybes [("position" .=) <$> _ueoprPosition])

-- | A custom subtotal column for a waterfall chart series.
--
-- /See:/ 'waterfallChartCustomSubtotal' smart constructor.
data WaterfallChartCustomSubtotal =
  WaterfallChartCustomSubtotal'
    { _wccsDataIsSubtotal :: !(Maybe Bool)
    , _wccsSubtotalIndex  :: !(Maybe (Textual Int32))
    , _wccsLabel          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WaterfallChartCustomSubtotal' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wccsDataIsSubtotal'
--
-- * 'wccsSubtotalIndex'
--
-- * 'wccsLabel'
waterfallChartCustomSubtotal
    :: WaterfallChartCustomSubtotal
waterfallChartCustomSubtotal =
  WaterfallChartCustomSubtotal'
    { _wccsDataIsSubtotal = Nothing
    , _wccsSubtotalIndex = Nothing
    , _wccsLabel = Nothing
    }


-- | True if the data point at subtotal_index is the subtotal. If false, the
-- subtotal will be computed and appear after the data point.
wccsDataIsSubtotal :: Lens' WaterfallChartCustomSubtotal (Maybe Bool)
wccsDataIsSubtotal
  = lens _wccsDataIsSubtotal
      (\ s a -> s{_wccsDataIsSubtotal = a})

-- | The 0-based index of a data point within the series. If data_is_subtotal
-- is true, the data point at this index is the subtotal. Otherwise, the
-- subtotal appears after the data point with this index. A series can have
-- multiple subtotals at arbitrary indices, but subtotals do not affect the
-- indices of the data points. For example, if a series has three data
-- points, their indices will always be 0, 1, and 2, regardless of how many
-- subtotals exist on the series or what data points they are associated
-- with.
wccsSubtotalIndex :: Lens' WaterfallChartCustomSubtotal (Maybe Int32)
wccsSubtotalIndex
  = lens _wccsSubtotalIndex
      (\ s a -> s{_wccsSubtotalIndex = a})
      . mapping _Coerce

-- | A label for the subtotal column.
wccsLabel :: Lens' WaterfallChartCustomSubtotal (Maybe Text)
wccsLabel
  = lens _wccsLabel (\ s a -> s{_wccsLabel = a})

instance FromJSON WaterfallChartCustomSubtotal where
        parseJSON
          = withObject "WaterfallChartCustomSubtotal"
              (\ o ->
                 WaterfallChartCustomSubtotal' <$>
                   (o .:? "dataIsSubtotal") <*> (o .:? "subtotalIndex")
                     <*> (o .:? "label"))

instance ToJSON WaterfallChartCustomSubtotal where
        toJSON WaterfallChartCustomSubtotal'{..}
          = object
              (catMaybes
                 [("dataIsSubtotal" .=) <$> _wccsDataIsSubtotal,
                  ("subtotalIndex" .=) <$> _wccsSubtotalIndex,
                  ("label" .=) <$> _wccsLabel])

-- | A single response from an update.
--
-- /See:/ 'response' smart constructor.
data Response =
  Response'
    { _rAddFilterView                :: !(Maybe AddFilterViewResponse)
    , _rCreateDeveloperMetadata      :: !(Maybe CreateDeveloperMetadataResponse)
    , _rDuplicateFilterView          :: !(Maybe DuplicateFilterViewResponse)
    , _rUpdateEmbeddedObjectPosition :: !(Maybe UpdateEmbeddedObjectPositionResponse)
    , _rDeleteDimensionGroup         :: !(Maybe DeleteDimensionGroupResponse)
    , _rAddSheet                     :: !(Maybe AddSheetResponse)
    , _rFindReplace                  :: !(Maybe FindReplaceResponse)
    , _rAddProtectedRange            :: !(Maybe AddProtectedRangeResponse)
    , _rDeleteConditionalFormatRule  :: !(Maybe DeleteConditionalFormatRuleResponse)
    , _rUpdateConditionalFormatRule  :: !(Maybe UpdateConditionalFormatRuleResponse)
    , _rDeleteDeveloperMetadata      :: !(Maybe DeleteDeveloperMetadataResponse)
    , _rUpdateDeveloperMetadata      :: !(Maybe UpdateDeveloperMetadataResponse)
    , _rAddNamedRange                :: !(Maybe AddNamedRangeResponse)
    , _rAddChart                     :: !(Maybe AddChartResponse)
    , _rAddBanding                   :: !(Maybe AddBandingResponse)
    , _rDuplicateSheet               :: !(Maybe DuplicateSheetResponse)
    , _rAddDimensionGroup            :: !(Maybe AddDimensionGroupResponse)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Response' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rAddFilterView'
--
-- * 'rCreateDeveloperMetadata'
--
-- * 'rDuplicateFilterView'
--
-- * 'rUpdateEmbeddedObjectPosition'
--
-- * 'rDeleteDimensionGroup'
--
-- * 'rAddSheet'
--
-- * 'rFindReplace'
--
-- * 'rAddProtectedRange'
--
-- * 'rDeleteConditionalFormatRule'
--
-- * 'rUpdateConditionalFormatRule'
--
-- * 'rDeleteDeveloperMetadata'
--
-- * 'rUpdateDeveloperMetadata'
--
-- * 'rAddNamedRange'
--
-- * 'rAddChart'
--
-- * 'rAddBanding'
--
-- * 'rDuplicateSheet'
--
-- * 'rAddDimensionGroup'
response
    :: Response
response =
  Response'
    { _rAddFilterView = Nothing
    , _rCreateDeveloperMetadata = Nothing
    , _rDuplicateFilterView = Nothing
    , _rUpdateEmbeddedObjectPosition = Nothing
    , _rDeleteDimensionGroup = Nothing
    , _rAddSheet = Nothing
    , _rFindReplace = Nothing
    , _rAddProtectedRange = Nothing
    , _rDeleteConditionalFormatRule = Nothing
    , _rUpdateConditionalFormatRule = Nothing
    , _rDeleteDeveloperMetadata = Nothing
    , _rUpdateDeveloperMetadata = Nothing
    , _rAddNamedRange = Nothing
    , _rAddChart = Nothing
    , _rAddBanding = Nothing
    , _rDuplicateSheet = Nothing
    , _rAddDimensionGroup = Nothing
    }


-- | A reply from adding a filter view.
rAddFilterView :: Lens' Response (Maybe AddFilterViewResponse)
rAddFilterView
  = lens _rAddFilterView
      (\ s a -> s{_rAddFilterView = a})

-- | A reply from creating a developer metadata entry.
rCreateDeveloperMetadata :: Lens' Response (Maybe CreateDeveloperMetadataResponse)
rCreateDeveloperMetadata
  = lens _rCreateDeveloperMetadata
      (\ s a -> s{_rCreateDeveloperMetadata = a})

-- | A reply from duplicating a filter view.
rDuplicateFilterView :: Lens' Response (Maybe DuplicateFilterViewResponse)
rDuplicateFilterView
  = lens _rDuplicateFilterView
      (\ s a -> s{_rDuplicateFilterView = a})

-- | A reply from updating an embedded object\'s position.
rUpdateEmbeddedObjectPosition :: Lens' Response (Maybe UpdateEmbeddedObjectPositionResponse)
rUpdateEmbeddedObjectPosition
  = lens _rUpdateEmbeddedObjectPosition
      (\ s a -> s{_rUpdateEmbeddedObjectPosition = a})

-- | A reply from deleting a dimension group.
rDeleteDimensionGroup :: Lens' Response (Maybe DeleteDimensionGroupResponse)
rDeleteDimensionGroup
  = lens _rDeleteDimensionGroup
      (\ s a -> s{_rDeleteDimensionGroup = a})

-- | A reply from adding a sheet.
rAddSheet :: Lens' Response (Maybe AddSheetResponse)
rAddSheet
  = lens _rAddSheet (\ s a -> s{_rAddSheet = a})

-- | A reply from doing a find\/replace.
rFindReplace :: Lens' Response (Maybe FindReplaceResponse)
rFindReplace
  = lens _rFindReplace (\ s a -> s{_rFindReplace = a})

-- | A reply from adding a protected range.
rAddProtectedRange :: Lens' Response (Maybe AddProtectedRangeResponse)
rAddProtectedRange
  = lens _rAddProtectedRange
      (\ s a -> s{_rAddProtectedRange = a})

-- | A reply from deleting a conditional format rule.
rDeleteConditionalFormatRule :: Lens' Response (Maybe DeleteConditionalFormatRuleResponse)
rDeleteConditionalFormatRule
  = lens _rDeleteConditionalFormatRule
      (\ s a -> s{_rDeleteConditionalFormatRule = a})

-- | A reply from updating a conditional format rule.
rUpdateConditionalFormatRule :: Lens' Response (Maybe UpdateConditionalFormatRuleResponse)
rUpdateConditionalFormatRule
  = lens _rUpdateConditionalFormatRule
      (\ s a -> s{_rUpdateConditionalFormatRule = a})

-- | A reply from deleting a developer metadata entry.
rDeleteDeveloperMetadata :: Lens' Response (Maybe DeleteDeveloperMetadataResponse)
rDeleteDeveloperMetadata
  = lens _rDeleteDeveloperMetadata
      (\ s a -> s{_rDeleteDeveloperMetadata = a})

-- | A reply from updating a developer metadata entry.
rUpdateDeveloperMetadata :: Lens' Response (Maybe UpdateDeveloperMetadataResponse)
rUpdateDeveloperMetadata
  = lens _rUpdateDeveloperMetadata
      (\ s a -> s{_rUpdateDeveloperMetadata = a})

-- | A reply from adding a named range.
rAddNamedRange :: Lens' Response (Maybe AddNamedRangeResponse)
rAddNamedRange
  = lens _rAddNamedRange
      (\ s a -> s{_rAddNamedRange = a})

-- | A reply from adding a chart.
rAddChart :: Lens' Response (Maybe AddChartResponse)
rAddChart
  = lens _rAddChart (\ s a -> s{_rAddChart = a})

-- | A reply from adding a banded range.
rAddBanding :: Lens' Response (Maybe AddBandingResponse)
rAddBanding
  = lens _rAddBanding (\ s a -> s{_rAddBanding = a})

-- | A reply from duplicating a sheet.
rDuplicateSheet :: Lens' Response (Maybe DuplicateSheetResponse)
rDuplicateSheet
  = lens _rDuplicateSheet
      (\ s a -> s{_rDuplicateSheet = a})

-- | A reply from adding a dimension group.
rAddDimensionGroup :: Lens' Response (Maybe AddDimensionGroupResponse)
rAddDimensionGroup
  = lens _rAddDimensionGroup
      (\ s a -> s{_rAddDimensionGroup = a})

instance FromJSON Response where
        parseJSON
          = withObject "Response"
              (\ o ->
                 Response' <$>
                   (o .:? "addFilterView") <*>
                     (o .:? "createDeveloperMetadata")
                     <*> (o .:? "duplicateFilterView")
                     <*> (o .:? "updateEmbeddedObjectPosition")
                     <*> (o .:? "deleteDimensionGroup")
                     <*> (o .:? "addSheet")
                     <*> (o .:? "findReplace")
                     <*> (o .:? "addProtectedRange")
                     <*> (o .:? "deleteConditionalFormatRule")
                     <*> (o .:? "updateConditionalFormatRule")
                     <*> (o .:? "deleteDeveloperMetadata")
                     <*> (o .:? "updateDeveloperMetadata")
                     <*> (o .:? "addNamedRange")
                     <*> (o .:? "addChart")
                     <*> (o .:? "addBanding")
                     <*> (o .:? "duplicateSheet")
                     <*> (o .:? "addDimensionGroup"))

instance ToJSON Response where
        toJSON Response'{..}
          = object
              (catMaybes
                 [("addFilterView" .=) <$> _rAddFilterView,
                  ("createDeveloperMetadata" .=) <$>
                    _rCreateDeveloperMetadata,
                  ("duplicateFilterView" .=) <$> _rDuplicateFilterView,
                  ("updateEmbeddedObjectPosition" .=) <$>
                    _rUpdateEmbeddedObjectPosition,
                  ("deleteDimensionGroup" .=) <$>
                    _rDeleteDimensionGroup,
                  ("addSheet" .=) <$> _rAddSheet,
                  ("findReplace" .=) <$> _rFindReplace,
                  ("addProtectedRange" .=) <$> _rAddProtectedRange,
                  ("deleteConditionalFormatRule" .=) <$>
                    _rDeleteConditionalFormatRule,
                  ("updateConditionalFormatRule" .=) <$>
                    _rUpdateConditionalFormatRule,
                  ("deleteDeveloperMetadata" .=) <$>
                    _rDeleteDeveloperMetadata,
                  ("updateDeveloperMetadata" .=) <$>
                    _rUpdateDeveloperMetadata,
                  ("addNamedRange" .=) <$> _rAddNamedRange,
                  ("addChart" .=) <$> _rAddChart,
                  ("addBanding" .=) <$> _rAddBanding,
                  ("duplicateSheet" .=) <$> _rDuplicateSheet,
                  ("addDimensionGroup" .=) <$> _rAddDimensionGroup])

-- | Criteria for showing\/hiding rows in a filter or filter view.
--
-- /See:/ 'filterCriteria' smart constructor.
data FilterCriteria =
  FilterCriteria'
    { _fcHiddenValues :: !(Maybe [Text])
    , _fcCondition    :: !(Maybe BooleanCondition)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FilterCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcHiddenValues'
--
-- * 'fcCondition'
filterCriteria
    :: FilterCriteria
filterCriteria =
  FilterCriteria' {_fcHiddenValues = Nothing, _fcCondition = Nothing}


-- | Values that should be hidden.
fcHiddenValues :: Lens' FilterCriteria [Text]
fcHiddenValues
  = lens _fcHiddenValues
      (\ s a -> s{_fcHiddenValues = a})
      . _Default
      . _Coerce

-- | A condition that must be true for values to be shown. (This does not
-- override hiddenValues -- if a value is listed there, it will still be
-- hidden.)
fcCondition :: Lens' FilterCriteria (Maybe BooleanCondition)
fcCondition
  = lens _fcCondition (\ s a -> s{_fcCondition = a})

instance FromJSON FilterCriteria where
        parseJSON
          = withObject "FilterCriteria"
              (\ o ->
                 FilterCriteria' <$>
                   (o .:? "hiddenValues" .!= mempty) <*>
                     (o .:? "condition"))

instance ToJSON FilterCriteria where
        toJSON FilterCriteria'{..}
          = object
              (catMaybes
                 [("hiddenValues" .=) <$> _fcHiddenValues,
                  ("condition" .=) <$> _fcCondition])

-- | An error in a cell.
--
-- /See:/ 'errorValue' smart constructor.
data ErrorValue =
  ErrorValue'
    { _evType    :: !(Maybe ErrorValueType)
    , _evMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ErrorValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evType'
--
-- * 'evMessage'
errorValue
    :: ErrorValue
errorValue = ErrorValue' {_evType = Nothing, _evMessage = Nothing}


-- | The type of error.
evType :: Lens' ErrorValue (Maybe ErrorValueType)
evType = lens _evType (\ s a -> s{_evType = a})

-- | A message with more information about the error (in the spreadsheet\'s
-- locale).
evMessage :: Lens' ErrorValue (Maybe Text)
evMessage
  = lens _evMessage (\ s a -> s{_evMessage = a})

instance FromJSON ErrorValue where
        parseJSON
          = withObject "ErrorValue"
              (\ o ->
                 ErrorValue' <$> (o .:? "type") <*> (o .:? "message"))

instance ToJSON ErrorValue where
        toJSON ErrorValue'{..}
          = object
              (catMaybes
                 [("type" .=) <$> _evType,
                  ("message" .=) <$> _evMessage])

-- | Updates a conditional format rule at the given index, or moves a
-- conditional format rule to another index.
--
-- /See:/ 'updateConditionalFormatRuleRequest' smart constructor.
data UpdateConditionalFormatRuleRequest =
  UpdateConditionalFormatRuleRequest'
    { _ucfrrRule     :: !(Maybe ConditionalFormatRule)
    , _ucfrrNewIndex :: !(Maybe (Textual Int32))
    , _ucfrrSheetId  :: !(Maybe (Textual Int32))
    , _ucfrrIndex    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateConditionalFormatRuleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucfrrRule'
--
-- * 'ucfrrNewIndex'
--
-- * 'ucfrrSheetId'
--
-- * 'ucfrrIndex'
updateConditionalFormatRuleRequest
    :: UpdateConditionalFormatRuleRequest
updateConditionalFormatRuleRequest =
  UpdateConditionalFormatRuleRequest'
    { _ucfrrRule = Nothing
    , _ucfrrNewIndex = Nothing
    , _ucfrrSheetId = Nothing
    , _ucfrrIndex = Nothing
    }


-- | The rule that should replace the rule at the given index.
ucfrrRule :: Lens' UpdateConditionalFormatRuleRequest (Maybe ConditionalFormatRule)
ucfrrRule
  = lens _ucfrrRule (\ s a -> s{_ucfrrRule = a})

-- | The zero-based new index the rule should end up at.
ucfrrNewIndex :: Lens' UpdateConditionalFormatRuleRequest (Maybe Int32)
ucfrrNewIndex
  = lens _ucfrrNewIndex
      (\ s a -> s{_ucfrrNewIndex = a})
      . mapping _Coerce

-- | The sheet of the rule to move. Required if new_index is set, unused
-- otherwise.
ucfrrSheetId :: Lens' UpdateConditionalFormatRuleRequest (Maybe Int32)
ucfrrSheetId
  = lens _ucfrrSheetId (\ s a -> s{_ucfrrSheetId = a})
      . mapping _Coerce

-- | The zero-based index of the rule that should be replaced or moved.
ucfrrIndex :: Lens' UpdateConditionalFormatRuleRequest (Maybe Int32)
ucfrrIndex
  = lens _ucfrrIndex (\ s a -> s{_ucfrrIndex = a}) .
      mapping _Coerce

instance FromJSON UpdateConditionalFormatRuleRequest
         where
        parseJSON
          = withObject "UpdateConditionalFormatRuleRequest"
              (\ o ->
                 UpdateConditionalFormatRuleRequest' <$>
                   (o .:? "rule") <*> (o .:? "newIndex") <*>
                     (o .:? "sheetId")
                     <*> (o .:? "index"))

instance ToJSON UpdateConditionalFormatRuleRequest
         where
        toJSON UpdateConditionalFormatRuleRequest'{..}
          = object
              (catMaybes
                 [("rule" .=) <$> _ucfrrRule,
                  ("newIndex" .=) <$> _ucfrrNewIndex,
                  ("sheetId" .=) <$> _ucfrrSheetId,
                  ("index" .=) <$> _ucfrrIndex])

-- | Deletes a conditional format rule at the given index. All subsequent
-- rules\' indexes are decremented.
--
-- /See:/ 'deleteConditionalFormatRuleRequest' smart constructor.
data DeleteConditionalFormatRuleRequest =
  DeleteConditionalFormatRuleRequest'
    { _dcfrrSheetId :: !(Maybe (Textual Int32))
    , _dcfrrIndex   :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteConditionalFormatRuleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcfrrSheetId'
--
-- * 'dcfrrIndex'
deleteConditionalFormatRuleRequest
    :: DeleteConditionalFormatRuleRequest
deleteConditionalFormatRuleRequest =
  DeleteConditionalFormatRuleRequest'
    {_dcfrrSheetId = Nothing, _dcfrrIndex = Nothing}


-- | The sheet the rule is being deleted from.
dcfrrSheetId :: Lens' DeleteConditionalFormatRuleRequest (Maybe Int32)
dcfrrSheetId
  = lens _dcfrrSheetId (\ s a -> s{_dcfrrSheetId = a})
      . mapping _Coerce

-- | The zero-based index of the rule to be deleted.
dcfrrIndex :: Lens' DeleteConditionalFormatRuleRequest (Maybe Int32)
dcfrrIndex
  = lens _dcfrrIndex (\ s a -> s{_dcfrrIndex = a}) .
      mapping _Coerce

instance FromJSON DeleteConditionalFormatRuleRequest
         where
        parseJSON
          = withObject "DeleteConditionalFormatRuleRequest"
              (\ o ->
                 DeleteConditionalFormatRuleRequest' <$>
                   (o .:? "sheetId") <*> (o .:? "index"))

instance ToJSON DeleteConditionalFormatRuleRequest
         where
        toJSON DeleteConditionalFormatRuleRequest'{..}
          = object
              (catMaybes
                 [("sheetId" .=) <$> _dcfrrSheetId,
                  ("index" .=) <$> _dcfrrIndex])

-- | A request to update properties of developer metadata. Updates the
-- properties of the developer metadata selected by the filters to the
-- values provided in the DeveloperMetadata resource. Callers must specify
-- the properties they wish to update in the fields parameter, as well as
-- specify at least one DataFilter matching the metadata they wish to
-- update.
--
-- /See:/ 'updateDeveloperMetadataRequest' smart constructor.
data UpdateDeveloperMetadataRequest =
  UpdateDeveloperMetadataRequest'
    { _udmrDataFilters       :: !(Maybe [DataFilter])
    , _udmrDeveloperMetadata :: !(Maybe DeveloperMetadata)
    , _udmrFields            :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateDeveloperMetadataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udmrDataFilters'
--
-- * 'udmrDeveloperMetadata'
--
-- * 'udmrFields'
updateDeveloperMetadataRequest
    :: UpdateDeveloperMetadataRequest
updateDeveloperMetadataRequest =
  UpdateDeveloperMetadataRequest'
    { _udmrDataFilters = Nothing
    , _udmrDeveloperMetadata = Nothing
    , _udmrFields = Nothing
    }


-- | The filters matching the developer metadata entries to update.
udmrDataFilters :: Lens' UpdateDeveloperMetadataRequest [DataFilter]
udmrDataFilters
  = lens _udmrDataFilters
      (\ s a -> s{_udmrDataFilters = a})
      . _Default
      . _Coerce

-- | The value that all metadata matched by the data filters will be updated
-- to.
udmrDeveloperMetadata :: Lens' UpdateDeveloperMetadataRequest (Maybe DeveloperMetadata)
udmrDeveloperMetadata
  = lens _udmrDeveloperMetadata
      (\ s a -> s{_udmrDeveloperMetadata = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`developerMetadata\` is implied and should not be specified. A
-- single \`\"*\"\` can be used as short-hand for listing every field.
udmrFields :: Lens' UpdateDeveloperMetadataRequest (Maybe GFieldMask)
udmrFields
  = lens _udmrFields (\ s a -> s{_udmrFields = a})

instance FromJSON UpdateDeveloperMetadataRequest
         where
        parseJSON
          = withObject "UpdateDeveloperMetadataRequest"
              (\ o ->
                 UpdateDeveloperMetadataRequest' <$>
                   (o .:? "dataFilters" .!= mempty) <*>
                     (o .:? "developerMetadata")
                     <*> (o .:? "fields"))

instance ToJSON UpdateDeveloperMetadataRequest where
        toJSON UpdateDeveloperMetadataRequest'{..}
          = object
              (catMaybes
                 [("dataFilters" .=) <$> _udmrDataFilters,
                  ("developerMetadata" .=) <$> _udmrDeveloperMetadata,
                  ("fields" .=) <$> _udmrFields])

-- | A request to delete developer metadata.
--
-- /See:/ 'deleteDeveloperMetadataRequest' smart constructor.
newtype DeleteDeveloperMetadataRequest =
  DeleteDeveloperMetadataRequest'
    { _ddmrDataFilter :: Maybe DataFilter
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteDeveloperMetadataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddmrDataFilter'
deleteDeveloperMetadataRequest
    :: DeleteDeveloperMetadataRequest
deleteDeveloperMetadataRequest =
  DeleteDeveloperMetadataRequest' {_ddmrDataFilter = Nothing}


-- | The data filter describing the criteria used to select which developer
-- metadata entry to delete.
ddmrDataFilter :: Lens' DeleteDeveloperMetadataRequest (Maybe DataFilter)
ddmrDataFilter
  = lens _ddmrDataFilter
      (\ s a -> s{_ddmrDataFilter = a})

instance FromJSON DeleteDeveloperMetadataRequest
         where
        parseJSON
          = withObject "DeleteDeveloperMetadataRequest"
              (\ o ->
                 DeleteDeveloperMetadataRequest' <$>
                   (o .:? "dataFilter"))

instance ToJSON DeleteDeveloperMetadataRequest where
        toJSON DeleteDeveloperMetadataRequest'{..}
          = object
              (catMaybes [("dataFilter" .=) <$> _ddmrDataFilter])

-- | A waterfall chart.
--
-- /See:/ 'waterfallChartSpec' smart constructor.
data WaterfallChartSpec =
  WaterfallChartSpec'
    { _wcsStackedType        :: !(Maybe WaterfallChartSpecStackedType)
    , _wcsConnectorLineStyle :: !(Maybe LineStyle)
    , _wcsDomain             :: !(Maybe WaterfallChartDomain)
    , _wcsSeries             :: !(Maybe [WaterfallChartSeries])
    , _wcsHideConnectorLines :: !(Maybe Bool)
    , _wcsFirstValueIsTotal  :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WaterfallChartSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wcsStackedType'
--
-- * 'wcsConnectorLineStyle'
--
-- * 'wcsDomain'
--
-- * 'wcsSeries'
--
-- * 'wcsHideConnectorLines'
--
-- * 'wcsFirstValueIsTotal'
waterfallChartSpec
    :: WaterfallChartSpec
waterfallChartSpec =
  WaterfallChartSpec'
    { _wcsStackedType = Nothing
    , _wcsConnectorLineStyle = Nothing
    , _wcsDomain = Nothing
    , _wcsSeries = Nothing
    , _wcsHideConnectorLines = Nothing
    , _wcsFirstValueIsTotal = Nothing
    }


-- | The stacked type.
wcsStackedType :: Lens' WaterfallChartSpec (Maybe WaterfallChartSpecStackedType)
wcsStackedType
  = lens _wcsStackedType
      (\ s a -> s{_wcsStackedType = a})

-- | The line style for the connector lines.
wcsConnectorLineStyle :: Lens' WaterfallChartSpec (Maybe LineStyle)
wcsConnectorLineStyle
  = lens _wcsConnectorLineStyle
      (\ s a -> s{_wcsConnectorLineStyle = a})

-- | The domain data (horizontal axis) for the waterfall chart.
wcsDomain :: Lens' WaterfallChartSpec (Maybe WaterfallChartDomain)
wcsDomain
  = lens _wcsDomain (\ s a -> s{_wcsDomain = a})

-- | The data this waterfall chart is visualizing.
wcsSeries :: Lens' WaterfallChartSpec [WaterfallChartSeries]
wcsSeries
  = lens _wcsSeries (\ s a -> s{_wcsSeries = a}) .
      _Default
      . _Coerce

-- | True to hide connector lines between columns.
wcsHideConnectorLines :: Lens' WaterfallChartSpec (Maybe Bool)
wcsHideConnectorLines
  = lens _wcsHideConnectorLines
      (\ s a -> s{_wcsHideConnectorLines = a})

-- | True to interpret the first value as a total.
wcsFirstValueIsTotal :: Lens' WaterfallChartSpec (Maybe Bool)
wcsFirstValueIsTotal
  = lens _wcsFirstValueIsTotal
      (\ s a -> s{_wcsFirstValueIsTotal = a})

instance FromJSON WaterfallChartSpec where
        parseJSON
          = withObject "WaterfallChartSpec"
              (\ o ->
                 WaterfallChartSpec' <$>
                   (o .:? "stackedType") <*>
                     (o .:? "connectorLineStyle")
                     <*> (o .:? "domain")
                     <*> (o .:? "series" .!= mempty)
                     <*> (o .:? "hideConnectorLines")
                     <*> (o .:? "firstValueIsTotal"))

instance ToJSON WaterfallChartSpec where
        toJSON WaterfallChartSpec'{..}
          = object
              (catMaybes
                 [("stackedType" .=) <$> _wcsStackedType,
                  ("connectorLineStyle" .=) <$> _wcsConnectorLineStyle,
                  ("domain" .=) <$> _wcsDomain,
                  ("series" .=) <$> _wcsSeries,
                  ("hideConnectorLines" .=) <$> _wcsHideConnectorLines,
                  ("firstValueIsTotal" .=) <$> _wcsFirstValueIsTotal])

-- | The location an object is overlaid on top of a grid.
--
-- /See:/ 'overlayPosition' smart constructor.
data OverlayPosition =
  OverlayPosition'
    { _opHeightPixels  :: !(Maybe (Textual Int32))
    , _opOffSetYPixels :: !(Maybe (Textual Int32))
    , _opAnchorCell    :: !(Maybe GridCoordinate)
    , _opWidthPixels   :: !(Maybe (Textual Int32))
    , _opOffSetXPixels :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OverlayPosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opHeightPixels'
--
-- * 'opOffSetYPixels'
--
-- * 'opAnchorCell'
--
-- * 'opWidthPixels'
--
-- * 'opOffSetXPixels'
overlayPosition
    :: OverlayPosition
overlayPosition =
  OverlayPosition'
    { _opHeightPixels = Nothing
    , _opOffSetYPixels = Nothing
    , _opAnchorCell = Nothing
    , _opWidthPixels = Nothing
    , _opOffSetXPixels = Nothing
    }


-- | The height of the object, in pixels. Defaults to 371.
opHeightPixels :: Lens' OverlayPosition (Maybe Int32)
opHeightPixels
  = lens _opHeightPixels
      (\ s a -> s{_opHeightPixels = a})
      . mapping _Coerce

-- | The vertical offset, in pixels, that the object is offset from the
-- anchor cell.
opOffSetYPixels :: Lens' OverlayPosition (Maybe Int32)
opOffSetYPixels
  = lens _opOffSetYPixels
      (\ s a -> s{_opOffSetYPixels = a})
      . mapping _Coerce

-- | The cell the object is anchored to.
opAnchorCell :: Lens' OverlayPosition (Maybe GridCoordinate)
opAnchorCell
  = lens _opAnchorCell (\ s a -> s{_opAnchorCell = a})

-- | The width of the object, in pixels. Defaults to 600.
opWidthPixels :: Lens' OverlayPosition (Maybe Int32)
opWidthPixels
  = lens _opWidthPixels
      (\ s a -> s{_opWidthPixels = a})
      . mapping _Coerce

-- | The horizontal offset, in pixels, that the object is offset from the
-- anchor cell.
opOffSetXPixels :: Lens' OverlayPosition (Maybe Int32)
opOffSetXPixels
  = lens _opOffSetXPixels
      (\ s a -> s{_opOffSetXPixels = a})
      . mapping _Coerce

instance FromJSON OverlayPosition where
        parseJSON
          = withObject "OverlayPosition"
              (\ o ->
                 OverlayPosition' <$>
                   (o .:? "heightPixels") <*> (o .:? "offsetYPixels")
                     <*> (o .:? "anchorCell")
                     <*> (o .:? "widthPixels")
                     <*> (o .:? "offsetXPixels"))

instance ToJSON OverlayPosition where
        toJSON OverlayPosition'{..}
          = object
              (catMaybes
                 [("heightPixels" .=) <$> _opHeightPixels,
                  ("offsetYPixels" .=) <$> _opOffSetYPixels,
                  ("anchorCell" .=) <$> _opAnchorCell,
                  ("widthPixels" .=) <$> _opWidthPixels,
                  ("offsetXPixels" .=) <$> _opOffSetXPixels])

-- | Deletes the embedded object with the given ID.
--
-- /See:/ 'deleteEmbeddedObjectRequest' smart constructor.
newtype DeleteEmbeddedObjectRequest =
  DeleteEmbeddedObjectRequest'
    { _deorObjectId :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteEmbeddedObjectRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deorObjectId'
deleteEmbeddedObjectRequest
    :: DeleteEmbeddedObjectRequest
deleteEmbeddedObjectRequest =
  DeleteEmbeddedObjectRequest' {_deorObjectId = Nothing}


-- | The ID of the embedded object to delete.
deorObjectId :: Lens' DeleteEmbeddedObjectRequest (Maybe Int32)
deorObjectId
  = lens _deorObjectId (\ s a -> s{_deorObjectId = a})
      . mapping _Coerce

instance FromJSON DeleteEmbeddedObjectRequest where
        parseJSON
          = withObject "DeleteEmbeddedObjectRequest"
              (\ o ->
                 DeleteEmbeddedObjectRequest' <$> (o .:? "objectId"))

instance ToJSON DeleteEmbeddedObjectRequest where
        toJSON DeleteEmbeddedObjectRequest'{..}
          = object
              (catMaybes [("objectId" .=) <$> _deorObjectId])

-- | A location where metadata may be associated in a spreadsheet.
--
-- /See:/ 'developerMetadataLocation' smart constructor.
data DeveloperMetadataLocation =
  DeveloperMetadataLocation'
    { _dmlSpreadsheet    :: !(Maybe Bool)
    , _dmlDimensionRange :: !(Maybe DimensionRange)
    , _dmlSheetId        :: !(Maybe (Textual Int32))
    , _dmlLocationType   :: !(Maybe DeveloperMetadataLocationLocationType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeveloperMetadataLocation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmlSpreadsheet'
--
-- * 'dmlDimensionRange'
--
-- * 'dmlSheetId'
--
-- * 'dmlLocationType'
developerMetadataLocation
    :: DeveloperMetadataLocation
developerMetadataLocation =
  DeveloperMetadataLocation'
    { _dmlSpreadsheet = Nothing
    , _dmlDimensionRange = Nothing
    , _dmlSheetId = Nothing
    , _dmlLocationType = Nothing
    }


-- | True when metadata is associated with an entire spreadsheet.
dmlSpreadsheet :: Lens' DeveloperMetadataLocation (Maybe Bool)
dmlSpreadsheet
  = lens _dmlSpreadsheet
      (\ s a -> s{_dmlSpreadsheet = a})

-- | Represents the row or column when metadata is associated with a
-- dimension. The specified DimensionRange must represent a single row or
-- column; it cannot be unbounded or span multiple rows or columns.
dmlDimensionRange :: Lens' DeveloperMetadataLocation (Maybe DimensionRange)
dmlDimensionRange
  = lens _dmlDimensionRange
      (\ s a -> s{_dmlDimensionRange = a})

-- | The ID of the sheet when metadata is associated with an entire sheet.
dmlSheetId :: Lens' DeveloperMetadataLocation (Maybe Int32)
dmlSheetId
  = lens _dmlSheetId (\ s a -> s{_dmlSheetId = a}) .
      mapping _Coerce

-- | The type of location this object represents. This field is read-only.
dmlLocationType :: Lens' DeveloperMetadataLocation (Maybe DeveloperMetadataLocationLocationType)
dmlLocationType
  = lens _dmlLocationType
      (\ s a -> s{_dmlLocationType = a})

instance FromJSON DeveloperMetadataLocation where
        parseJSON
          = withObject "DeveloperMetadataLocation"
              (\ o ->
                 DeveloperMetadataLocation' <$>
                   (o .:? "spreadsheet") <*> (o .:? "dimensionRange")
                     <*> (o .:? "sheetId")
                     <*> (o .:? "locationType"))

instance ToJSON DeveloperMetadataLocation where
        toJSON DeveloperMetadataLocation'{..}
          = object
              (catMaybes
                 [("spreadsheet" .=) <$> _dmlSpreadsheet,
                  ("dimensionRange" .=) <$> _dmlDimensionRange,
                  ("sheetId" .=) <$> _dmlSheetId,
                  ("locationType" .=) <$> _dmlLocationType])

-- | Properties of a sheet.
--
-- /See:/ 'sheetProperties' smart constructor.
data SheetProperties =
  SheetProperties'
    { _sTabColor       :: !(Maybe Color)
    , _sGridProperties :: !(Maybe GridProperties)
    , _sSheetType      :: !(Maybe SheetPropertiesSheetType)
    , _sHidden         :: !(Maybe Bool)
    , _sSheetId        :: !(Maybe (Textual Int32))
    , _sTitle          :: !(Maybe Text)
    , _sRightToLeft    :: !(Maybe Bool)
    , _sIndex          :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SheetProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sTabColor'
--
-- * 'sGridProperties'
--
-- * 'sSheetType'
--
-- * 'sHidden'
--
-- * 'sSheetId'
--
-- * 'sTitle'
--
-- * 'sRightToLeft'
--
-- * 'sIndex'
sheetProperties
    :: SheetProperties
sheetProperties =
  SheetProperties'
    { _sTabColor = Nothing
    , _sGridProperties = Nothing
    , _sSheetType = Nothing
    , _sHidden = Nothing
    , _sSheetId = Nothing
    , _sTitle = Nothing
    , _sRightToLeft = Nothing
    , _sIndex = Nothing
    }


-- | The color of the tab in the UI.
sTabColor :: Lens' SheetProperties (Maybe Color)
sTabColor
  = lens _sTabColor (\ s a -> s{_sTabColor = a})

-- | Additional properties of the sheet if this sheet is a grid. (If the
-- sheet is an object sheet, containing a chart or image, then this field
-- will be absent.) When writing it is an error to set any grid properties
-- on non-grid sheets.
sGridProperties :: Lens' SheetProperties (Maybe GridProperties)
sGridProperties
  = lens _sGridProperties
      (\ s a -> s{_sGridProperties = a})

-- | The type of sheet. Defaults to GRID. This field cannot be changed once
-- set.
sSheetType :: Lens' SheetProperties (Maybe SheetPropertiesSheetType)
sSheetType
  = lens _sSheetType (\ s a -> s{_sSheetType = a})

-- | True if the sheet is hidden in the UI, false if it\'s visible.
sHidden :: Lens' SheetProperties (Maybe Bool)
sHidden = lens _sHidden (\ s a -> s{_sHidden = a})

-- | The ID of the sheet. Must be non-negative. This field cannot be changed
-- once set.
sSheetId :: Lens' SheetProperties (Maybe Int32)
sSheetId
  = lens _sSheetId (\ s a -> s{_sSheetId = a}) .
      mapping _Coerce

-- | The name of the sheet.
sTitle :: Lens' SheetProperties (Maybe Text)
sTitle = lens _sTitle (\ s a -> s{_sTitle = a})

-- | True if the sheet is an RTL sheet instead of an LTR sheet.
sRightToLeft :: Lens' SheetProperties (Maybe Bool)
sRightToLeft
  = lens _sRightToLeft (\ s a -> s{_sRightToLeft = a})

-- | The index of the sheet within the spreadsheet. When adding or updating
-- sheet properties, if this field is excluded then the sheet is added or
-- moved to the end of the sheet list. When updating sheet indices or
-- inserting sheets, movement is considered in \"before the move\" indexes.
-- For example, if there were 3 sheets (S1, S2, S3) in order to move S1
-- ahead of S2 the index would have to be set to 2. A sheet index update
-- request is ignored if the requested index is identical to the sheets
-- current index or if the requested new index is equal to the current
-- sheet index + 1.
sIndex :: Lens' SheetProperties (Maybe Int32)
sIndex
  = lens _sIndex (\ s a -> s{_sIndex = a}) .
      mapping _Coerce

instance FromJSON SheetProperties where
        parseJSON
          = withObject "SheetProperties"
              (\ o ->
                 SheetProperties' <$>
                   (o .:? "tabColor") <*> (o .:? "gridProperties") <*>
                     (o .:? "sheetType")
                     <*> (o .:? "hidden")
                     <*> (o .:? "sheetId")
                     <*> (o .:? "title")
                     <*> (o .:? "rightToLeft")
                     <*> (o .:? "index"))

instance ToJSON SheetProperties where
        toJSON SheetProperties'{..}
          = object
              (catMaybes
                 [("tabColor" .=) <$> _sTabColor,
                  ("gridProperties" .=) <$> _sGridProperties,
                  ("sheetType" .=) <$> _sSheetType,
                  ("hidden" .=) <$> _sHidden,
                  ("sheetId" .=) <$> _sSheetId,
                  ("title" .=) <$> _sTitle,
                  ("rightToLeft" .=) <$> _sRightToLeft,
                  ("index" .=) <$> _sIndex])

-- | The criteria for showing\/hiding values per column. The map\'s key is
-- the column index, and the value is the criteria for that column.
--
-- /See:/ 'filterViewCriteria' smart constructor.
newtype FilterViewCriteria =
  FilterViewCriteria'
    { _fvcAddtional :: HashMap Text FilterCriteria
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FilterViewCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fvcAddtional'
filterViewCriteria
    :: HashMap Text FilterCriteria -- ^ 'fvcAddtional'
    -> FilterViewCriteria
filterViewCriteria pFvcAddtional_ =
  FilterViewCriteria' {_fvcAddtional = _Coerce # pFvcAddtional_}


fvcAddtional :: Lens' FilterViewCriteria (HashMap Text FilterCriteria)
fvcAddtional
  = lens _fvcAddtional (\ s a -> s{_fvcAddtional = a})
      . _Coerce

instance FromJSON FilterViewCriteria where
        parseJSON
          = withObject "FilterViewCriteria"
              (\ o -> FilterViewCriteria' <$> (parseJSONObject o))

instance ToJSON FilterViewCriteria where
        toJSON = toJSON . _fvcAddtional

-- | The response when updating a range of values in a spreadsheet.
--
-- /See:/ 'batchUpdateValuesResponse' smart constructor.
data BatchUpdateValuesResponse =
  BatchUpdateValuesResponse'
    { _buvrTotalUpdatedColumns :: !(Maybe (Textual Int32))
    , _buvrResponses           :: !(Maybe [UpdateValuesResponse])
    , _buvrSpreadsheetId       :: !(Maybe Text)
    , _buvrTotalUpdatedSheets  :: !(Maybe (Textual Int32))
    , _buvrTotalUpdatedCells   :: !(Maybe (Textual Int32))
    , _buvrTotalUpdatedRows    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUpdateValuesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buvrTotalUpdatedColumns'
--
-- * 'buvrResponses'
--
-- * 'buvrSpreadsheetId'
--
-- * 'buvrTotalUpdatedSheets'
--
-- * 'buvrTotalUpdatedCells'
--
-- * 'buvrTotalUpdatedRows'
batchUpdateValuesResponse
    :: BatchUpdateValuesResponse
batchUpdateValuesResponse =
  BatchUpdateValuesResponse'
    { _buvrTotalUpdatedColumns = Nothing
    , _buvrResponses = Nothing
    , _buvrSpreadsheetId = Nothing
    , _buvrTotalUpdatedSheets = Nothing
    , _buvrTotalUpdatedCells = Nothing
    , _buvrTotalUpdatedRows = Nothing
    }


-- | The total number of columns where at least one cell in the column was
-- updated.
buvrTotalUpdatedColumns :: Lens' BatchUpdateValuesResponse (Maybe Int32)
buvrTotalUpdatedColumns
  = lens _buvrTotalUpdatedColumns
      (\ s a -> s{_buvrTotalUpdatedColumns = a})
      . mapping _Coerce

-- | One UpdateValuesResponse per requested range, in the same order as the
-- requests appeared.
buvrResponses :: Lens' BatchUpdateValuesResponse [UpdateValuesResponse]
buvrResponses
  = lens _buvrResponses
      (\ s a -> s{_buvrResponses = a})
      . _Default
      . _Coerce

-- | The spreadsheet the updates were applied to.
buvrSpreadsheetId :: Lens' BatchUpdateValuesResponse (Maybe Text)
buvrSpreadsheetId
  = lens _buvrSpreadsheetId
      (\ s a -> s{_buvrSpreadsheetId = a})

-- | The total number of sheets where at least one cell in the sheet was
-- updated.
buvrTotalUpdatedSheets :: Lens' BatchUpdateValuesResponse (Maybe Int32)
buvrTotalUpdatedSheets
  = lens _buvrTotalUpdatedSheets
      (\ s a -> s{_buvrTotalUpdatedSheets = a})
      . mapping _Coerce

-- | The total number of cells updated.
buvrTotalUpdatedCells :: Lens' BatchUpdateValuesResponse (Maybe Int32)
buvrTotalUpdatedCells
  = lens _buvrTotalUpdatedCells
      (\ s a -> s{_buvrTotalUpdatedCells = a})
      . mapping _Coerce

-- | The total number of rows where at least one cell in the row was updated.
buvrTotalUpdatedRows :: Lens' BatchUpdateValuesResponse (Maybe Int32)
buvrTotalUpdatedRows
  = lens _buvrTotalUpdatedRows
      (\ s a -> s{_buvrTotalUpdatedRows = a})
      . mapping _Coerce

instance FromJSON BatchUpdateValuesResponse where
        parseJSON
          = withObject "BatchUpdateValuesResponse"
              (\ o ->
                 BatchUpdateValuesResponse' <$>
                   (o .:? "totalUpdatedColumns") <*>
                     (o .:? "responses" .!= mempty)
                     <*> (o .:? "spreadsheetId")
                     <*> (o .:? "totalUpdatedSheets")
                     <*> (o .:? "totalUpdatedCells")
                     <*> (o .:? "totalUpdatedRows"))

instance ToJSON BatchUpdateValuesResponse where
        toJSON BatchUpdateValuesResponse'{..}
          = object
              (catMaybes
                 [("totalUpdatedColumns" .=) <$>
                    _buvrTotalUpdatedColumns,
                  ("responses" .=) <$> _buvrResponses,
                  ("spreadsheetId" .=) <$> _buvrSpreadsheetId,
                  ("totalUpdatedSheets" .=) <$>
                    _buvrTotalUpdatedSheets,
                  ("totalUpdatedCells" .=) <$> _buvrTotalUpdatedCells,
                  ("totalUpdatedRows" .=) <$> _buvrTotalUpdatedRows])

-- | Updates properties of the sheet with the specified sheetId.
--
-- /See:/ 'updateSheetPropertiesRequest' smart constructor.
data UpdateSheetPropertiesRequest =
  UpdateSheetPropertiesRequest'
    { _usprFields     :: !(Maybe GFieldMask)
    , _usprProperties :: !(Maybe SheetProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateSheetPropertiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usprFields'
--
-- * 'usprProperties'
updateSheetPropertiesRequest
    :: UpdateSheetPropertiesRequest
updateSheetPropertiesRequest =
  UpdateSheetPropertiesRequest'
    {_usprFields = Nothing, _usprProperties = Nothing}


-- | The fields that should be updated. At least one field must be specified.
-- The root \`properties\` is implied and should not be specified. A single
-- \`\"*\"\` can be used as short-hand for listing every field.
usprFields :: Lens' UpdateSheetPropertiesRequest (Maybe GFieldMask)
usprFields
  = lens _usprFields (\ s a -> s{_usprFields = a})

-- | The properties to update.
usprProperties :: Lens' UpdateSheetPropertiesRequest (Maybe SheetProperties)
usprProperties
  = lens _usprProperties
      (\ s a -> s{_usprProperties = a})

instance FromJSON UpdateSheetPropertiesRequest where
        parseJSON
          = withObject "UpdateSheetPropertiesRequest"
              (\ o ->
                 UpdateSheetPropertiesRequest' <$>
                   (o .:? "fields") <*> (o .:? "properties"))

instance ToJSON UpdateSheetPropertiesRequest where
        toJSON UpdateSheetPropertiesRequest'{..}
          = object
              (catMaybes
                 [("fields" .=) <$> _usprFields,
                  ("properties" .=) <$> _usprProperties])

-- | Resource that represents a spreadsheet.
--
-- /See:/ 'spreadsheet' smart constructor.
data Spreadsheet =
  Spreadsheet'
    { _sprSheets            :: !(Maybe [Sheet])
    , _sprNamedRanges       :: !(Maybe [NamedRange])
    , _sprSpreadsheetId     :: !(Maybe Text)
    , _sprSpreadsheetURL    :: !(Maybe Text)
    , _sprDeveloperMetadata :: !(Maybe [DeveloperMetadata])
    , _sprProperties        :: !(Maybe SpreadsheetProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Spreadsheet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sprSheets'
--
-- * 'sprNamedRanges'
--
-- * 'sprSpreadsheetId'
--
-- * 'sprSpreadsheetURL'
--
-- * 'sprDeveloperMetadata'
--
-- * 'sprProperties'
spreadsheet
    :: Spreadsheet
spreadsheet =
  Spreadsheet'
    { _sprSheets = Nothing
    , _sprNamedRanges = Nothing
    , _sprSpreadsheetId = Nothing
    , _sprSpreadsheetURL = Nothing
    , _sprDeveloperMetadata = Nothing
    , _sprProperties = Nothing
    }


-- | The sheets that are part of a spreadsheet.
sprSheets :: Lens' Spreadsheet [Sheet]
sprSheets
  = lens _sprSheets (\ s a -> s{_sprSheets = a}) .
      _Default
      . _Coerce

-- | The named ranges defined in a spreadsheet.
sprNamedRanges :: Lens' Spreadsheet [NamedRange]
sprNamedRanges
  = lens _sprNamedRanges
      (\ s a -> s{_sprNamedRanges = a})
      . _Default
      . _Coerce

-- | The ID of the spreadsheet. This field is read-only.
sprSpreadsheetId :: Lens' Spreadsheet (Maybe Text)
sprSpreadsheetId
  = lens _sprSpreadsheetId
      (\ s a -> s{_sprSpreadsheetId = a})

-- | The url of the spreadsheet. This field is read-only.
sprSpreadsheetURL :: Lens' Spreadsheet (Maybe Text)
sprSpreadsheetURL
  = lens _sprSpreadsheetURL
      (\ s a -> s{_sprSpreadsheetURL = a})

-- | The developer metadata associated with a spreadsheet.
sprDeveloperMetadata :: Lens' Spreadsheet [DeveloperMetadata]
sprDeveloperMetadata
  = lens _sprDeveloperMetadata
      (\ s a -> s{_sprDeveloperMetadata = a})
      . _Default
      . _Coerce

-- | Overall properties of a spreadsheet.
sprProperties :: Lens' Spreadsheet (Maybe SpreadsheetProperties)
sprProperties
  = lens _sprProperties
      (\ s a -> s{_sprProperties = a})

instance FromJSON Spreadsheet where
        parseJSON
          = withObject "Spreadsheet"
              (\ o ->
                 Spreadsheet' <$>
                   (o .:? "sheets" .!= mempty) <*>
                     (o .:? "namedRanges" .!= mempty)
                     <*> (o .:? "spreadsheetId")
                     <*> (o .:? "spreadsheetUrl")
                     <*> (o .:? "developerMetadata" .!= mempty)
                     <*> (o .:? "properties"))

instance ToJSON Spreadsheet where
        toJSON Spreadsheet'{..}
          = object
              (catMaybes
                 [("sheets" .=) <$> _sprSheets,
                  ("namedRanges" .=) <$> _sprNamedRanges,
                  ("spreadsheetId" .=) <$> _sprSpreadsheetId,
                  ("spreadsheetUrl" .=) <$> _sprSpreadsheetURL,
                  ("developerMetadata" .=) <$> _sprDeveloperMetadata,
                  ("properties" .=) <$> _sprProperties])

-- | A </chart/interactive/docs/gallery/candlestickchart candlestick chart>.
--
-- /See:/ 'candlestickChartSpec' smart constructor.
data CandlestickChartSpec =
  CandlestickChartSpec'
    { _ccsData   :: !(Maybe [CandlestickData])
    , _ccsDomain :: !(Maybe CandlestickDomain)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CandlestickChartSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccsData'
--
-- * 'ccsDomain'
candlestickChartSpec
    :: CandlestickChartSpec
candlestickChartSpec =
  CandlestickChartSpec' {_ccsData = Nothing, _ccsDomain = Nothing}


-- | The Candlestick chart data. Only one CandlestickData is supported.
ccsData :: Lens' CandlestickChartSpec [CandlestickData]
ccsData
  = lens _ccsData (\ s a -> s{_ccsData = a}) . _Default
      . _Coerce

-- | The domain data (horizontal axis) for the candlestick chart. String data
-- will be treated as discrete labels, other data will be treated as
-- continuous values.
ccsDomain :: Lens' CandlestickChartSpec (Maybe CandlestickDomain)
ccsDomain
  = lens _ccsDomain (\ s a -> s{_ccsDomain = a})

instance FromJSON CandlestickChartSpec where
        parseJSON
          = withObject "CandlestickChartSpec"
              (\ o ->
                 CandlestickChartSpec' <$>
                   (o .:? "data" .!= mempty) <*> (o .:? "domain"))

instance ToJSON CandlestickChartSpec where
        toJSON CandlestickChartSpec'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _ccsData,
                  ("domain" .=) <$> _ccsDomain])

-- | Inserts rows or columns in a sheet at a particular index.
--
-- /See:/ 'insertDimensionRequest' smart constructor.
data InsertDimensionRequest =
  InsertDimensionRequest'
    { _idrRange             :: !(Maybe DimensionRange)
    , _idrInheritFromBefore :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InsertDimensionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idrRange'
--
-- * 'idrInheritFromBefore'
insertDimensionRequest
    :: InsertDimensionRequest
insertDimensionRequest =
  InsertDimensionRequest' {_idrRange = Nothing, _idrInheritFromBefore = Nothing}


-- | The dimensions to insert. Both the start and end indexes must be
-- bounded.
idrRange :: Lens' InsertDimensionRequest (Maybe DimensionRange)
idrRange = lens _idrRange (\ s a -> s{_idrRange = a})

-- | Whether dimension properties should be extended from the dimensions
-- before or after the newly inserted dimensions. True to inherit from the
-- dimensions before (in which case the start index must be greater than
-- 0), and false to inherit from the dimensions after. For example, if row
-- index 0 has red background and row index 1 has a green background, then
-- inserting 2 rows at index 1 can inherit either the green or red
-- background. If \`inheritFromBefore\` is true, the two new rows will be
-- red (because the row before the insertion point was red), whereas if
-- \`inheritFromBefore\` is false, the two new rows will be green (because
-- the row after the insertion point was green).
idrInheritFromBefore :: Lens' InsertDimensionRequest (Maybe Bool)
idrInheritFromBefore
  = lens _idrInheritFromBefore
      (\ s a -> s{_idrInheritFromBefore = a})

instance FromJSON InsertDimensionRequest where
        parseJSON
          = withObject "InsertDimensionRequest"
              (\ o ->
                 InsertDimensionRequest' <$>
                   (o .:? "range") <*> (o .:? "inheritFromBefore"))

instance ToJSON InsertDimensionRequest where
        toJSON InsertDimensionRequest'{..}
          = object
              (catMaybes
                 [("range" .=) <$> _idrRange,
                  ("inheritFromBefore" .=) <$> _idrInheritFromBefore])

-- | A reply to a developer metadata search request.
--
-- /See:/ 'searchDeveloperMetadataResponse' smart constructor.
newtype SearchDeveloperMetadataResponse =
  SearchDeveloperMetadataResponse'
    { _sdmrMatchedDeveloperMetadata :: Maybe [MatchedDeveloperMetadata]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchDeveloperMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdmrMatchedDeveloperMetadata'
searchDeveloperMetadataResponse
    :: SearchDeveloperMetadataResponse
searchDeveloperMetadataResponse =
  SearchDeveloperMetadataResponse' {_sdmrMatchedDeveloperMetadata = Nothing}


-- | The metadata matching the criteria of the search request.
sdmrMatchedDeveloperMetadata :: Lens' SearchDeveloperMetadataResponse [MatchedDeveloperMetadata]
sdmrMatchedDeveloperMetadata
  = lens _sdmrMatchedDeveloperMetadata
      (\ s a -> s{_sdmrMatchedDeveloperMetadata = a})
      . _Default
      . _Coerce

instance FromJSON SearchDeveloperMetadataResponse
         where
        parseJSON
          = withObject "SearchDeveloperMetadataResponse"
              (\ o ->
                 SearchDeveloperMetadataResponse' <$>
                   (o .:? "matchedDeveloperMetadata" .!= mempty))

instance ToJSON SearchDeveloperMetadataResponse where
        toJSON SearchDeveloperMetadataResponse'{..}
          = object
              (catMaybes
                 [("matchedDeveloperMetadata" .=) <$>
                    _sdmrMatchedDeveloperMetadata])

-- | A single interpolation point on a gradient conditional format. These pin
-- the gradient color scale according to the color, type and value chosen.
--
-- /See:/ 'interpolationPoint' smart constructor.
data InterpolationPoint =
  InterpolationPoint'
    { _ipColor :: !(Maybe Color)
    , _ipValue :: !(Maybe Text)
    , _ipType  :: !(Maybe InterpolationPointType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InterpolationPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipColor'
--
-- * 'ipValue'
--
-- * 'ipType'
interpolationPoint
    :: InterpolationPoint
interpolationPoint =
  InterpolationPoint'
    {_ipColor = Nothing, _ipValue = Nothing, _ipType = Nothing}


-- | The color this interpolation point should use.
ipColor :: Lens' InterpolationPoint (Maybe Color)
ipColor = lens _ipColor (\ s a -> s{_ipColor = a})

-- | The value this interpolation point uses. May be a formula. Unused if
-- type is MIN or MAX.
ipValue :: Lens' InterpolationPoint (Maybe Text)
ipValue = lens _ipValue (\ s a -> s{_ipValue = a})

-- | How the value should be interpreted.
ipType :: Lens' InterpolationPoint (Maybe InterpolationPointType)
ipType = lens _ipType (\ s a -> s{_ipType = a})

instance FromJSON InterpolationPoint where
        parseJSON
          = withObject "InterpolationPoint"
              (\ o ->
                 InterpolationPoint' <$>
                   (o .:? "color") <*> (o .:? "value") <*>
                     (o .:? "type"))

instance ToJSON InterpolationPoint where
        toJSON InterpolationPoint'{..}
          = object
              (catMaybes
                 [("color" .=) <$> _ipColor,
                  ("value" .=) <$> _ipValue, ("type" .=) <$> _ipType])

-- | Data about a specific cell.
--
-- /See:/ 'cellData' smart constructor.
data CellData =
  CellData'
    { _cdTextFormatRuns    :: !(Maybe [TextFormatRun])
    , _cdNote              :: !(Maybe Text)
    , _cdUserEnteredValue  :: !(Maybe ExtendedValue)
    , _cdUserEnteredFormat :: !(Maybe CellFormat)
    , _cdEffectiveFormat   :: !(Maybe CellFormat)
    , _cdPivotTable        :: !(Maybe PivotTable)
    , _cdFormattedValue    :: !(Maybe Text)
    , _cdDataValidation    :: !(Maybe DataValidationRule)
    , _cdHyperlink         :: !(Maybe Text)
    , _cdEffectiveValue    :: !(Maybe ExtendedValue)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CellData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdTextFormatRuns'
--
-- * 'cdNote'
--
-- * 'cdUserEnteredValue'
--
-- * 'cdUserEnteredFormat'
--
-- * 'cdEffectiveFormat'
--
-- * 'cdPivotTable'
--
-- * 'cdFormattedValue'
--
-- * 'cdDataValidation'
--
-- * 'cdHyperlink'
--
-- * 'cdEffectiveValue'
cellData
    :: CellData
cellData =
  CellData'
    { _cdTextFormatRuns = Nothing
    , _cdNote = Nothing
    , _cdUserEnteredValue = Nothing
    , _cdUserEnteredFormat = Nothing
    , _cdEffectiveFormat = Nothing
    , _cdPivotTable = Nothing
    , _cdFormattedValue = Nothing
    , _cdDataValidation = Nothing
    , _cdHyperlink = Nothing
    , _cdEffectiveValue = Nothing
    }


-- | Runs of rich text applied to subsections of the cell. Runs are only
-- valid on user entered strings, not formulas, bools, or numbers. Runs
-- start at specific indexes in the text and continue until the next run.
-- Properties of a run will continue unless explicitly changed in a
-- subsequent run (and properties of the first run will continue the
-- properties of the cell unless explicitly changed). When writing, the new
-- runs will overwrite any prior runs. When writing a new
-- user_entered_value, previous runs are erased.
cdTextFormatRuns :: Lens' CellData [TextFormatRun]
cdTextFormatRuns
  = lens _cdTextFormatRuns
      (\ s a -> s{_cdTextFormatRuns = a})
      . _Default
      . _Coerce

-- | Any note on the cell.
cdNote :: Lens' CellData (Maybe Text)
cdNote = lens _cdNote (\ s a -> s{_cdNote = a})

-- | The value the user entered in the cell. e.g, \`1234\`, \`\'Hello\'\`, or
-- \`=NOW()\` Note: Dates, Times and DateTimes are represented as doubles
-- in serial number format.
cdUserEnteredValue :: Lens' CellData (Maybe ExtendedValue)
cdUserEnteredValue
  = lens _cdUserEnteredValue
      (\ s a -> s{_cdUserEnteredValue = a})

-- | The format the user entered for the cell. When writing, the new format
-- will be merged with the existing format.
cdUserEnteredFormat :: Lens' CellData (Maybe CellFormat)
cdUserEnteredFormat
  = lens _cdUserEnteredFormat
      (\ s a -> s{_cdUserEnteredFormat = a})

-- | The effective format being used by the cell. This includes the results
-- of applying any conditional formatting and, if the cell contains a
-- formula, the computed number format. If the effective format is the
-- default format, effective format will not be written. This field is
-- read-only.
cdEffectiveFormat :: Lens' CellData (Maybe CellFormat)
cdEffectiveFormat
  = lens _cdEffectiveFormat
      (\ s a -> s{_cdEffectiveFormat = a})

-- | A pivot table anchored at this cell. The size of pivot table itself is
-- computed dynamically based on its data, grouping, filters, values, etc.
-- Only the top-left cell of the pivot table contains the pivot table
-- definition. The other cells will contain the calculated values of the
-- results of the pivot in their effective_value fields.
cdPivotTable :: Lens' CellData (Maybe PivotTable)
cdPivotTable
  = lens _cdPivotTable (\ s a -> s{_cdPivotTable = a})

-- | The formatted value of the cell. This is the value as it\'s shown to the
-- user. This field is read-only.
cdFormattedValue :: Lens' CellData (Maybe Text)
cdFormattedValue
  = lens _cdFormattedValue
      (\ s a -> s{_cdFormattedValue = a})

-- | A data validation rule on the cell, if any. When writing, the new data
-- validation rule will overwrite any prior rule.
cdDataValidation :: Lens' CellData (Maybe DataValidationRule)
cdDataValidation
  = lens _cdDataValidation
      (\ s a -> s{_cdDataValidation = a})

-- | A hyperlink this cell points to, if any. This field is read-only. (To
-- set it, use a \`=HYPERLINK\` formula in the
-- userEnteredValue.formulaValue field.)
cdHyperlink :: Lens' CellData (Maybe Text)
cdHyperlink
  = lens _cdHyperlink (\ s a -> s{_cdHyperlink = a})

-- | The effective value of the cell. For cells with formulas, this is the
-- calculated value. For cells with literals, this is the same as the
-- user_entered_value. This field is read-only.
cdEffectiveValue :: Lens' CellData (Maybe ExtendedValue)
cdEffectiveValue
  = lens _cdEffectiveValue
      (\ s a -> s{_cdEffectiveValue = a})

instance FromJSON CellData where
        parseJSON
          = withObject "CellData"
              (\ o ->
                 CellData' <$>
                   (o .:? "textFormatRuns" .!= mempty) <*>
                     (o .:? "note")
                     <*> (o .:? "userEnteredValue")
                     <*> (o .:? "userEnteredFormat")
                     <*> (o .:? "effectiveFormat")
                     <*> (o .:? "pivotTable")
                     <*> (o .:? "formattedValue")
                     <*> (o .:? "dataValidation")
                     <*> (o .:? "hyperlink")
                     <*> (o .:? "effectiveValue"))

instance ToJSON CellData where
        toJSON CellData'{..}
          = object
              (catMaybes
                 [("textFormatRuns" .=) <$> _cdTextFormatRuns,
                  ("note" .=) <$> _cdNote,
                  ("userEnteredValue" .=) <$> _cdUserEnteredValue,
                  ("userEnteredFormat" .=) <$> _cdUserEnteredFormat,
                  ("effectiveFormat" .=) <$> _cdEffectiveFormat,
                  ("pivotTable" .=) <$> _cdPivotTable,
                  ("formattedValue" .=) <$> _cdFormattedValue,
                  ("dataValidation" .=) <$> _cdDataValidation,
                  ("hyperlink" .=) <$> _cdHyperlink,
                  ("effectiveValue" .=) <$> _cdEffectiveValue])

-- | Source ranges for a chart.
--
-- /See:/ 'chartSourceRange' smart constructor.
newtype ChartSourceRange =
  ChartSourceRange'
    { _csrSources :: Maybe [GridRange]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChartSourceRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrSources'
chartSourceRange
    :: ChartSourceRange
chartSourceRange = ChartSourceRange' {_csrSources = Nothing}


-- | The ranges of data for a series or domain. Exactly one dimension must
-- have a length of 1, and all sources in the list must have the same
-- dimension with length 1. The domain (if it exists) & all series must
-- have the same number of source ranges. If using more than one source
-- range, then the source range at a given offset must be in order and
-- contiguous across the domain and series. For example, these are valid
-- configurations: domain sources: A1:A5 series1 sources: B1:B5 series2
-- sources: D6:D10 domain sources: A1:A5, C10:C12 series1 sources: B1:B5,
-- D10:D12 series2 sources: C1:C5, E10:E12
csrSources :: Lens' ChartSourceRange [GridRange]
csrSources
  = lens _csrSources (\ s a -> s{_csrSources = a}) .
      _Default
      . _Coerce

instance FromJSON ChartSourceRange where
        parseJSON
          = withObject "ChartSourceRange"
              (\ o ->
                 ChartSourceRange' <$> (o .:? "sources" .!= mempty))

instance ToJSON ChartSourceRange where
        toJSON ChartSourceRange'{..}
          = object (catMaybes [("sources" .=) <$> _csrSources])

-- | The result of adding a named range.
--
-- /See:/ 'addNamedRangeResponse' smart constructor.
newtype AddNamedRangeResponse =
  AddNamedRangeResponse'
    { _anrrNamedRange :: Maybe NamedRange
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddNamedRangeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'anrrNamedRange'
addNamedRangeResponse
    :: AddNamedRangeResponse
addNamedRangeResponse = AddNamedRangeResponse' {_anrrNamedRange = Nothing}


-- | The named range to add.
anrrNamedRange :: Lens' AddNamedRangeResponse (Maybe NamedRange)
anrrNamedRange
  = lens _anrrNamedRange
      (\ s a -> s{_anrrNamedRange = a})

instance FromJSON AddNamedRangeResponse where
        parseJSON
          = withObject "AddNamedRangeResponse"
              (\ o ->
                 AddNamedRangeResponse' <$> (o .:? "namedRange"))

instance ToJSON AddNamedRangeResponse where
        toJSON AddNamedRangeResponse'{..}
          = object
              (catMaybes [("namedRange" .=) <$> _anrrNamedRange])

-- | The domain of a waterfall chart.
--
-- /See:/ 'waterfallChartDomain' smart constructor.
data WaterfallChartDomain =
  WaterfallChartDomain'
    { _wcdReversed :: !(Maybe Bool)
    , _wcdData     :: !(Maybe ChartData)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WaterfallChartDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wcdReversed'
--
-- * 'wcdData'
waterfallChartDomain
    :: WaterfallChartDomain
waterfallChartDomain =
  WaterfallChartDomain' {_wcdReversed = Nothing, _wcdData = Nothing}


-- | True to reverse the order of the domain values (horizontal axis).
wcdReversed :: Lens' WaterfallChartDomain (Maybe Bool)
wcdReversed
  = lens _wcdReversed (\ s a -> s{_wcdReversed = a})

-- | The data of the WaterfallChartDomain.
wcdData :: Lens' WaterfallChartDomain (Maybe ChartData)
wcdData = lens _wcdData (\ s a -> s{_wcdData = a})

instance FromJSON WaterfallChartDomain where
        parseJSON
          = withObject "WaterfallChartDomain"
              (\ o ->
                 WaterfallChartDomain' <$>
                   (o .:? "reversed") <*> (o .:? "data"))

instance ToJSON WaterfallChartDomain where
        toJSON WaterfallChartDomain'{..}
          = object
              (catMaybes
                 [("reversed" .=) <$> _wcdReversed,
                  ("data" .=) <$> _wcdData])

-- | The result of adding a chart to a spreadsheet.
--
-- /See:/ 'addChartResponse' smart constructor.
newtype AddChartResponse =
  AddChartResponse'
    { _acrChart :: Maybe EmbeddedChart
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddChartResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acrChart'
addChartResponse
    :: AddChartResponse
addChartResponse = AddChartResponse' {_acrChart = Nothing}


-- | The newly added chart.
acrChart :: Lens' AddChartResponse (Maybe EmbeddedChart)
acrChart = lens _acrChart (\ s a -> s{_acrChart = a})

instance FromJSON AddChartResponse where
        parseJSON
          = withObject "AddChartResponse"
              (\ o -> AddChartResponse' <$> (o .:? "chart"))

instance ToJSON AddChartResponse where
        toJSON AddChartResponse'{..}
          = object (catMaybes [("chart" .=) <$> _acrChart])

-- | Updates a chart\'s specifications. (This does not move or resize a
-- chart. To move or resize a chart, use
-- UpdateEmbeddedObjectPositionRequest.)
--
-- /See:/ 'updateChartSpecRequest' smart constructor.
data UpdateChartSpecRequest =
  UpdateChartSpecRequest'
    { _ucsrSpec    :: !(Maybe ChartSpec)
    , _ucsrChartId :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateChartSpecRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucsrSpec'
--
-- * 'ucsrChartId'
updateChartSpecRequest
    :: UpdateChartSpecRequest
updateChartSpecRequest =
  UpdateChartSpecRequest' {_ucsrSpec = Nothing, _ucsrChartId = Nothing}


-- | The specification to apply to the chart.
ucsrSpec :: Lens' UpdateChartSpecRequest (Maybe ChartSpec)
ucsrSpec = lens _ucsrSpec (\ s a -> s{_ucsrSpec = a})

-- | The ID of the chart to update.
ucsrChartId :: Lens' UpdateChartSpecRequest (Maybe Int32)
ucsrChartId
  = lens _ucsrChartId (\ s a -> s{_ucsrChartId = a}) .
      mapping _Coerce

instance FromJSON UpdateChartSpecRequest where
        parseJSON
          = withObject "UpdateChartSpecRequest"
              (\ o ->
                 UpdateChartSpecRequest' <$>
                   (o .:? "spec") <*> (o .:? "chartId"))

instance ToJSON UpdateChartSpecRequest where
        toJSON UpdateChartSpecRequest'{..}
          = object
              (catMaybes
                 [("spec" .=) <$> _ucsrSpec,
                  ("chartId" .=) <$> _ucsrChartId])

-- | Sets the basic filter associated with a sheet.
--
-- /See:/ 'setBasicFilterRequest' smart constructor.
newtype SetBasicFilterRequest =
  SetBasicFilterRequest'
    { _sbfrFilter :: Maybe BasicFilter
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetBasicFilterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbfrFilter'
setBasicFilterRequest
    :: SetBasicFilterRequest
setBasicFilterRequest = SetBasicFilterRequest' {_sbfrFilter = Nothing}


-- | The filter to set.
sbfrFilter :: Lens' SetBasicFilterRequest (Maybe BasicFilter)
sbfrFilter
  = lens _sbfrFilter (\ s a -> s{_sbfrFilter = a})

instance FromJSON SetBasicFilterRequest where
        parseJSON
          = withObject "SetBasicFilterRequest"
              (\ o -> SetBasicFilterRequest' <$> (o .:? "filter"))

instance ToJSON SetBasicFilterRequest where
        toJSON SetBasicFilterRequest'{..}
          = object (catMaybes [("filter" .=) <$> _sbfrFilter])

-- | Settings to control how circular dependencies are resolved with
-- iterative calculation.
--
-- /See:/ 'iterativeCalculationSettings' smart constructor.
data IterativeCalculationSettings =
  IterativeCalculationSettings'
    { _icsMaxIterations        :: !(Maybe (Textual Int32))
    , _icsConvergenceThreshold :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IterativeCalculationSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icsMaxIterations'
--
-- * 'icsConvergenceThreshold'
iterativeCalculationSettings
    :: IterativeCalculationSettings
iterativeCalculationSettings =
  IterativeCalculationSettings'
    {_icsMaxIterations = Nothing, _icsConvergenceThreshold = Nothing}


-- | When iterative calculation is enabled, the maximum number of calculation
-- rounds to perform.
icsMaxIterations :: Lens' IterativeCalculationSettings (Maybe Int32)
icsMaxIterations
  = lens _icsMaxIterations
      (\ s a -> s{_icsMaxIterations = a})
      . mapping _Coerce

-- | When iterative calculation is enabled and successive results differ by
-- less than this threshold value, the calculation rounds stop.
icsConvergenceThreshold :: Lens' IterativeCalculationSettings (Maybe Double)
icsConvergenceThreshold
  = lens _icsConvergenceThreshold
      (\ s a -> s{_icsConvergenceThreshold = a})
      . mapping _Coerce

instance FromJSON IterativeCalculationSettings where
        parseJSON
          = withObject "IterativeCalculationSettings"
              (\ o ->
                 IterativeCalculationSettings' <$>
                   (o .:? "maxIterations") <*>
                     (o .:? "convergenceThreshold"))

instance ToJSON IterativeCalculationSettings where
        toJSON IterativeCalculationSettings'{..}
          = object
              (catMaybes
                 [("maxIterations" .=) <$> _icsMaxIterations,
                  ("convergenceThreshold" .=) <$>
                    _icsConvergenceThreshold])

-- | The response when updating a range of values by a data filter in a
-- spreadsheet.
--
-- /See:/ 'updateValuesByDataFilterResponse' smart constructor.
data UpdateValuesByDataFilterResponse =
  UpdateValuesByDataFilterResponse'
    { _uvbdfrUpdatedCells   :: !(Maybe (Textual Int32))
    , _uvbdfrUpdatedRows    :: !(Maybe (Textual Int32))
    , _uvbdfrUpdatedRange   :: !(Maybe Text)
    , _uvbdfrUpdatedData    :: !(Maybe ValueRange)
    , _uvbdfrUpdatedColumns :: !(Maybe (Textual Int32))
    , _uvbdfrDataFilter     :: !(Maybe DataFilter)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateValuesByDataFilterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uvbdfrUpdatedCells'
--
-- * 'uvbdfrUpdatedRows'
--
-- * 'uvbdfrUpdatedRange'
--
-- * 'uvbdfrUpdatedData'
--
-- * 'uvbdfrUpdatedColumns'
--
-- * 'uvbdfrDataFilter'
updateValuesByDataFilterResponse
    :: UpdateValuesByDataFilterResponse
updateValuesByDataFilterResponse =
  UpdateValuesByDataFilterResponse'
    { _uvbdfrUpdatedCells = Nothing
    , _uvbdfrUpdatedRows = Nothing
    , _uvbdfrUpdatedRange = Nothing
    , _uvbdfrUpdatedData = Nothing
    , _uvbdfrUpdatedColumns = Nothing
    , _uvbdfrDataFilter = Nothing
    }


-- | The number of cells updated.
uvbdfrUpdatedCells :: Lens' UpdateValuesByDataFilterResponse (Maybe Int32)
uvbdfrUpdatedCells
  = lens _uvbdfrUpdatedCells
      (\ s a -> s{_uvbdfrUpdatedCells = a})
      . mapping _Coerce

-- | The number of rows where at least one cell in the row was updated.
uvbdfrUpdatedRows :: Lens' UpdateValuesByDataFilterResponse (Maybe Int32)
uvbdfrUpdatedRows
  = lens _uvbdfrUpdatedRows
      (\ s a -> s{_uvbdfrUpdatedRows = a})
      . mapping _Coerce

-- | The range (in A1 notation) that updates were applied to.
uvbdfrUpdatedRange :: Lens' UpdateValuesByDataFilterResponse (Maybe Text)
uvbdfrUpdatedRange
  = lens _uvbdfrUpdatedRange
      (\ s a -> s{_uvbdfrUpdatedRange = a})

-- | The values of the cells in the range matched by the dataFilter after all
-- updates were applied. This is only included if the request\'s
-- \`includeValuesInResponse\` field was \`true\`.
uvbdfrUpdatedData :: Lens' UpdateValuesByDataFilterResponse (Maybe ValueRange)
uvbdfrUpdatedData
  = lens _uvbdfrUpdatedData
      (\ s a -> s{_uvbdfrUpdatedData = a})

-- | The number of columns where at least one cell in the column was updated.
uvbdfrUpdatedColumns :: Lens' UpdateValuesByDataFilterResponse (Maybe Int32)
uvbdfrUpdatedColumns
  = lens _uvbdfrUpdatedColumns
      (\ s a -> s{_uvbdfrUpdatedColumns = a})
      . mapping _Coerce

-- | The data filter that selected the range that was updated.
uvbdfrDataFilter :: Lens' UpdateValuesByDataFilterResponse (Maybe DataFilter)
uvbdfrDataFilter
  = lens _uvbdfrDataFilter
      (\ s a -> s{_uvbdfrDataFilter = a})

instance FromJSON UpdateValuesByDataFilterResponse
         where
        parseJSON
          = withObject "UpdateValuesByDataFilterResponse"
              (\ o ->
                 UpdateValuesByDataFilterResponse' <$>
                   (o .:? "updatedCells") <*> (o .:? "updatedRows") <*>
                     (o .:? "updatedRange")
                     <*> (o .:? "updatedData")
                     <*> (o .:? "updatedColumns")
                     <*> (o .:? "dataFilter"))

instance ToJSON UpdateValuesByDataFilterResponse
         where
        toJSON UpdateValuesByDataFilterResponse'{..}
          = object
              (catMaybes
                 [("updatedCells" .=) <$> _uvbdfrUpdatedCells,
                  ("updatedRows" .=) <$> _uvbdfrUpdatedRows,
                  ("updatedRange" .=) <$> _uvbdfrUpdatedRange,
                  ("updatedData" .=) <$> _uvbdfrUpdatedData,
                  ("updatedColumns" .=) <$> _uvbdfrUpdatedColumns,
                  ("dataFilter" .=) <$> _uvbdfrDataFilter])

-- | Properties of a grid.
--
-- /See:/ 'gridProperties' smart constructor.
data GridProperties =
  GridProperties'
    { _gpFrozenColumnCount       :: !(Maybe (Textual Int32))
    , _gpColumnCount             :: !(Maybe (Textual Int32))
    , _gpColumnGroupControlAfter :: !(Maybe Bool)
    , _gpHideGridlines           :: !(Maybe Bool)
    , _gpFrozenRowCount          :: !(Maybe (Textual Int32))
    , _gpRowGroupControlAfter    :: !(Maybe Bool)
    , _gpRowCount                :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GridProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpFrozenColumnCount'
--
-- * 'gpColumnCount'
--
-- * 'gpColumnGroupControlAfter'
--
-- * 'gpHideGridlines'
--
-- * 'gpFrozenRowCount'
--
-- * 'gpRowGroupControlAfter'
--
-- * 'gpRowCount'
gridProperties
    :: GridProperties
gridProperties =
  GridProperties'
    { _gpFrozenColumnCount = Nothing
    , _gpColumnCount = Nothing
    , _gpColumnGroupControlAfter = Nothing
    , _gpHideGridlines = Nothing
    , _gpFrozenRowCount = Nothing
    , _gpRowGroupControlAfter = Nothing
    , _gpRowCount = Nothing
    }


-- | The number of columns that are frozen in the grid.
gpFrozenColumnCount :: Lens' GridProperties (Maybe Int32)
gpFrozenColumnCount
  = lens _gpFrozenColumnCount
      (\ s a -> s{_gpFrozenColumnCount = a})
      . mapping _Coerce

-- | The number of columns in the grid.
gpColumnCount :: Lens' GridProperties (Maybe Int32)
gpColumnCount
  = lens _gpColumnCount
      (\ s a -> s{_gpColumnCount = a})
      . mapping _Coerce

-- | True if the column grouping control toggle is shown after the group.
gpColumnGroupControlAfter :: Lens' GridProperties (Maybe Bool)
gpColumnGroupControlAfter
  = lens _gpColumnGroupControlAfter
      (\ s a -> s{_gpColumnGroupControlAfter = a})

-- | True if the grid isn\'t showing gridlines in the UI.
gpHideGridlines :: Lens' GridProperties (Maybe Bool)
gpHideGridlines
  = lens _gpHideGridlines
      (\ s a -> s{_gpHideGridlines = a})

-- | The number of rows that are frozen in the grid.
gpFrozenRowCount :: Lens' GridProperties (Maybe Int32)
gpFrozenRowCount
  = lens _gpFrozenRowCount
      (\ s a -> s{_gpFrozenRowCount = a})
      . mapping _Coerce

-- | True if the row grouping control toggle is shown after the group.
gpRowGroupControlAfter :: Lens' GridProperties (Maybe Bool)
gpRowGroupControlAfter
  = lens _gpRowGroupControlAfter
      (\ s a -> s{_gpRowGroupControlAfter = a})

-- | The number of rows in the grid.
gpRowCount :: Lens' GridProperties (Maybe Int32)
gpRowCount
  = lens _gpRowCount (\ s a -> s{_gpRowCount = a}) .
      mapping _Coerce

instance FromJSON GridProperties where
        parseJSON
          = withObject "GridProperties"
              (\ o ->
                 GridProperties' <$>
                   (o .:? "frozenColumnCount") <*> (o .:? "columnCount")
                     <*> (o .:? "columnGroupControlAfter")
                     <*> (o .:? "hideGridlines")
                     <*> (o .:? "frozenRowCount")
                     <*> (o .:? "rowGroupControlAfter")
                     <*> (o .:? "rowCount"))

instance ToJSON GridProperties where
        toJSON GridProperties'{..}
          = object
              (catMaybes
                 [("frozenColumnCount" .=) <$> _gpFrozenColumnCount,
                  ("columnCount" .=) <$> _gpColumnCount,
                  ("columnGroupControlAfter" .=) <$>
                    _gpColumnGroupControlAfter,
                  ("hideGridlines" .=) <$> _gpHideGridlines,
                  ("frozenRowCount" .=) <$> _gpFrozenRowCount,
                  ("rowGroupControlAfter" .=) <$>
                    _gpRowGroupControlAfter,
                  ("rowCount" .=) <$> _gpRowCount])

-- | A </chart/interactive/docs/gallery/histogram histogram chart>. A
-- histogram chart groups data items into bins, displaying each bin as a
-- column of stacked items. Histograms are used to display the distribution
-- of a dataset. Each column of items represents a range into which those
-- items fall. The number of bins can be chosen automatically or specified
-- explicitly.
--
-- /See:/ 'histogramChartSpec' smart constructor.
data HistogramChartSpec =
  HistogramChartSpec'
    { _hcsLegendPosition    :: !(Maybe HistogramChartSpecLegendPosition)
    , _hcsSeries            :: !(Maybe [HistogramSeries])
    , _hcsShowItemDividers  :: !(Maybe Bool)
    , _hcsOutlierPercentile :: !(Maybe (Textual Double))
    , _hcsBucketSize        :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HistogramChartSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcsLegendPosition'
--
-- * 'hcsSeries'
--
-- * 'hcsShowItemDividers'
--
-- * 'hcsOutlierPercentile'
--
-- * 'hcsBucketSize'
histogramChartSpec
    :: HistogramChartSpec
histogramChartSpec =
  HistogramChartSpec'
    { _hcsLegendPosition = Nothing
    , _hcsSeries = Nothing
    , _hcsShowItemDividers = Nothing
    , _hcsOutlierPercentile = Nothing
    , _hcsBucketSize = Nothing
    }


-- | The position of the chart legend.
hcsLegendPosition :: Lens' HistogramChartSpec (Maybe HistogramChartSpecLegendPosition)
hcsLegendPosition
  = lens _hcsLegendPosition
      (\ s a -> s{_hcsLegendPosition = a})

-- | The series for a histogram may be either a single series of values to be
-- bucketed or multiple series, each of the same length, containing the
-- name of the series followed by the values to be bucketed for that
-- series.
hcsSeries :: Lens' HistogramChartSpec [HistogramSeries]
hcsSeries
  = lens _hcsSeries (\ s a -> s{_hcsSeries = a}) .
      _Default
      . _Coerce

-- | Whether horizontal divider lines should be displayed between items in
-- each column.
hcsShowItemDividers :: Lens' HistogramChartSpec (Maybe Bool)
hcsShowItemDividers
  = lens _hcsShowItemDividers
      (\ s a -> s{_hcsShowItemDividers = a})

-- | The outlier percentile is used to ensure that outliers do not adversely
-- affect the calculation of bucket sizes. For example, setting an outlier
-- percentile of 0.05 indicates that the top and bottom 5% of values when
-- calculating buckets. The values are still included in the chart, they
-- will be added to the first or last buckets instead of their own buckets.
-- Must be between 0.0 and 0.5.
hcsOutlierPercentile :: Lens' HistogramChartSpec (Maybe Double)
hcsOutlierPercentile
  = lens _hcsOutlierPercentile
      (\ s a -> s{_hcsOutlierPercentile = a})
      . mapping _Coerce

-- | By default the bucket size (the range of values stacked in a single
-- column) is chosen automatically, but it may be overridden here. E.g., A
-- bucket size of 1.5 results in buckets from 0 - 1.5, 1.5 - 3.0, etc.
-- Cannot be negative. This field is optional.
hcsBucketSize :: Lens' HistogramChartSpec (Maybe Double)
hcsBucketSize
  = lens _hcsBucketSize
      (\ s a -> s{_hcsBucketSize = a})
      . mapping _Coerce

instance FromJSON HistogramChartSpec where
        parseJSON
          = withObject "HistogramChartSpec"
              (\ o ->
                 HistogramChartSpec' <$>
                   (o .:? "legendPosition") <*>
                     (o .:? "series" .!= mempty)
                     <*> (o .:? "showItemDividers")
                     <*> (o .:? "outlierPercentile")
                     <*> (o .:? "bucketSize"))

instance ToJSON HistogramChartSpec where
        toJSON HistogramChartSpec'{..}
          = object
              (catMaybes
                 [("legendPosition" .=) <$> _hcsLegendPosition,
                  ("series" .=) <$> _hcsSeries,
                  ("showItemDividers" .=) <$> _hcsShowItemDividers,
                  ("outlierPercentile" .=) <$> _hcsOutlierPercentile,
                  ("bucketSize" .=) <$> _hcsBucketSize])

-- | The criteria for showing\/hiding values per column. The map\'s key is
-- the column index, and the value is the criteria for that column.
--
-- /See:/ 'basicFilterCriteria' smart constructor.
newtype BasicFilterCriteria =
  BasicFilterCriteria'
    { _bfcAddtional :: HashMap Text FilterCriteria
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BasicFilterCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfcAddtional'
basicFilterCriteria
    :: HashMap Text FilterCriteria -- ^ 'bfcAddtional'
    -> BasicFilterCriteria
basicFilterCriteria pBfcAddtional_ =
  BasicFilterCriteria' {_bfcAddtional = _Coerce # pBfcAddtional_}


bfcAddtional :: Lens' BasicFilterCriteria (HashMap Text FilterCriteria)
bfcAddtional
  = lens _bfcAddtional (\ s a -> s{_bfcAddtional = a})
      . _Coerce

instance FromJSON BasicFilterCriteria where
        parseJSON
          = withObject "BasicFilterCriteria"
              (\ o -> BasicFilterCriteria' <$> (parseJSONObject o))

instance ToJSON BasicFilterCriteria where
        toJSON = toJSON . _bfcAddtional

-- | Adds a new banded range to the spreadsheet.
--
-- /See:/ 'addBandingRequest' smart constructor.
newtype AddBandingRequest =
  AddBandingRequest'
    { _abrBandedRange :: Maybe BandedRange
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddBandingRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'abrBandedRange'
addBandingRequest
    :: AddBandingRequest
addBandingRequest = AddBandingRequest' {_abrBandedRange = Nothing}


-- | The banded range to add. The bandedRangeId field is optional; if one is
-- not set, an id will be randomly generated. (It is an error to specify
-- the ID of a range that already exists.)
abrBandedRange :: Lens' AddBandingRequest (Maybe BandedRange)
abrBandedRange
  = lens _abrBandedRange
      (\ s a -> s{_abrBandedRange = a})

instance FromJSON AddBandingRequest where
        parseJSON
          = withObject "AddBandingRequest"
              (\ o -> AddBandingRequest' <$> (o .:? "bandedRange"))

instance ToJSON AddBandingRequest where
        toJSON AddBandingRequest'{..}
          = object
              (catMaybes [("bandedRange" .=) <$> _abrBandedRange])

-- | Updates properties of dimensions within the specified range.
--
-- /See:/ 'updateDimensionPropertiesRequest' smart constructor.
data UpdateDimensionPropertiesRequest =
  UpdateDimensionPropertiesRequest'
    { _udprRange      :: !(Maybe DimensionRange)
    , _udprFields     :: !(Maybe GFieldMask)
    , _udprProperties :: !(Maybe DimensionProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateDimensionPropertiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udprRange'
--
-- * 'udprFields'
--
-- * 'udprProperties'
updateDimensionPropertiesRequest
    :: UpdateDimensionPropertiesRequest
updateDimensionPropertiesRequest =
  UpdateDimensionPropertiesRequest'
    {_udprRange = Nothing, _udprFields = Nothing, _udprProperties = Nothing}


-- | The rows or columns to update.
udprRange :: Lens' UpdateDimensionPropertiesRequest (Maybe DimensionRange)
udprRange
  = lens _udprRange (\ s a -> s{_udprRange = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`properties\` is implied and should not be specified. A single
-- \`\"*\"\` can be used as short-hand for listing every field.
udprFields :: Lens' UpdateDimensionPropertiesRequest (Maybe GFieldMask)
udprFields
  = lens _udprFields (\ s a -> s{_udprFields = a})

-- | Properties to update.
udprProperties :: Lens' UpdateDimensionPropertiesRequest (Maybe DimensionProperties)
udprProperties
  = lens _udprProperties
      (\ s a -> s{_udprProperties = a})

instance FromJSON UpdateDimensionPropertiesRequest
         where
        parseJSON
          = withObject "UpdateDimensionPropertiesRequest"
              (\ o ->
                 UpdateDimensionPropertiesRequest' <$>
                   (o .:? "range") <*> (o .:? "fields") <*>
                     (o .:? "properties"))

instance ToJSON UpdateDimensionPropertiesRequest
         where
        toJSON UpdateDimensionPropertiesRequest'{..}
          = object
              (catMaybes
                 [("range" .=) <$> _udprRange,
                  ("fields" .=) <$> _udprFields,
                  ("properties" .=) <$> _udprProperties])

-- | An optional mapping of filters per source column offset. The filters are
-- applied before aggregating data into the pivot table. The map\'s key is
-- the column offset of the source range that you want to filter, and the
-- value is the criteria for that column. For example, if the source was
-- \`C10:E15\`, a key of \`0\` will have the filter for column \`C\`,
-- whereas the key \`1\` is for column \`D\`.
--
-- /See:/ 'pivotTableCriteria' smart constructor.
newtype PivotTableCriteria =
  PivotTableCriteria'
    { _ptcAddtional :: HashMap Text PivotFilterCriteria
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PivotTableCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcAddtional'
pivotTableCriteria
    :: HashMap Text PivotFilterCriteria -- ^ 'ptcAddtional'
    -> PivotTableCriteria
pivotTableCriteria pPtcAddtional_ =
  PivotTableCriteria' {_ptcAddtional = _Coerce # pPtcAddtional_}


ptcAddtional :: Lens' PivotTableCriteria (HashMap Text PivotFilterCriteria)
ptcAddtional
  = lens _ptcAddtional (\ s a -> s{_ptcAddtional = a})
      . _Coerce

instance FromJSON PivotTableCriteria where
        parseJSON
          = withObject "PivotTableCriteria"
              (\ o -> PivotTableCriteria' <$> (parseJSONObject o))

instance ToJSON PivotTableCriteria where
        toJSON = toJSON . _ptcAddtional

-- | Fills in more data based on existing data.
--
-- /See:/ 'autoFillRequest' smart constructor.
data AutoFillRequest =
  AutoFillRequest'
    { _afrSourceAndDestination :: !(Maybe SourceAndDestination)
    , _afrUseAlternateSeries   :: !(Maybe Bool)
    , _afrRange                :: !(Maybe GridRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AutoFillRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'afrSourceAndDestination'
--
-- * 'afrUseAlternateSeries'
--
-- * 'afrRange'
autoFillRequest
    :: AutoFillRequest
autoFillRequest =
  AutoFillRequest'
    { _afrSourceAndDestination = Nothing
    , _afrUseAlternateSeries = Nothing
    , _afrRange = Nothing
    }


-- | The source and destination areas to autofill. This explicitly lists the
-- source of the autofill and where to extend that data.
afrSourceAndDestination :: Lens' AutoFillRequest (Maybe SourceAndDestination)
afrSourceAndDestination
  = lens _afrSourceAndDestination
      (\ s a -> s{_afrSourceAndDestination = a})

-- | True if we should generate data with the \"alternate\" series. This
-- differs based on the type and amount of source data.
afrUseAlternateSeries :: Lens' AutoFillRequest (Maybe Bool)
afrUseAlternateSeries
  = lens _afrUseAlternateSeries
      (\ s a -> s{_afrUseAlternateSeries = a})

-- | The range to autofill. This will examine the range and detect the
-- location that has data and automatically fill that data in to the rest
-- of the range.
afrRange :: Lens' AutoFillRequest (Maybe GridRange)
afrRange = lens _afrRange (\ s a -> s{_afrRange = a})

instance FromJSON AutoFillRequest where
        parseJSON
          = withObject "AutoFillRequest"
              (\ o ->
                 AutoFillRequest' <$>
                   (o .:? "sourceAndDestination") <*>
                     (o .:? "useAlternateSeries")
                     <*> (o .:? "range"))

instance ToJSON AutoFillRequest where
        toJSON AutoFillRequest'{..}
          = object
              (catMaybes
                 [("sourceAndDestination" .=) <$>
                    _afrSourceAndDestination,
                  ("useAlternateSeries" .=) <$> _afrUseAlternateSeries,
                  ("range" .=) <$> _afrRange])

-- | Selects DeveloperMetadata that matches all of the specified fields. For
-- example, if only a metadata ID is specified this considers the
-- DeveloperMetadata with that particular unique ID. If a metadata key is
-- specified, this considers all developer metadata with that key. If a
-- key, visibility, and location type are all specified, this considers all
-- developer metadata with that key and visibility that are associated with
-- a location of that type. In general, this selects all DeveloperMetadata
-- that matches the intersection of all the specified fields; any field or
-- combination of fields may be specified.
--
-- /See:/ 'developerMetadataLookup' smart constructor.
data DeveloperMetadataLookup =
  DeveloperMetadataLookup'
    { _dLocationMatchingStrategy :: !(Maybe DeveloperMetadataLookupLocationMatchingStrategy)
    , _dMetadataId               :: !(Maybe (Textual Int32))
    , _dVisibility               :: !(Maybe DeveloperMetadataLookupVisibility)
    , _dMetadataKey              :: !(Maybe Text)
    , _dLocationType             :: !(Maybe DeveloperMetadataLookupLocationType)
    , _dMetadataLocation         :: !(Maybe DeveloperMetadataLocation)
    , _dMetadataValue            :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeveloperMetadataLookup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dLocationMatchingStrategy'
--
-- * 'dMetadataId'
--
-- * 'dVisibility'
--
-- * 'dMetadataKey'
--
-- * 'dLocationType'
--
-- * 'dMetadataLocation'
--
-- * 'dMetadataValue'
developerMetadataLookup
    :: DeveloperMetadataLookup
developerMetadataLookup =
  DeveloperMetadataLookup'
    { _dLocationMatchingStrategy = Nothing
    , _dMetadataId = Nothing
    , _dVisibility = Nothing
    , _dMetadataKey = Nothing
    , _dLocationType = Nothing
    , _dMetadataLocation = Nothing
    , _dMetadataValue = Nothing
    }


-- | Determines how this lookup matches the location. If this field is
-- specified as EXACT, only developer metadata associated on the exact
-- location specified is matched. If this field is specified to
-- INTERSECTING, developer metadata associated on intersecting locations is
-- also matched. If left unspecified, this field assumes a default value of
-- INTERSECTING. If this field is specified, a metadataLocation must also
-- be specified.
dLocationMatchingStrategy :: Lens' DeveloperMetadataLookup (Maybe DeveloperMetadataLookupLocationMatchingStrategy)
dLocationMatchingStrategy
  = lens _dLocationMatchingStrategy
      (\ s a -> s{_dLocationMatchingStrategy = a})

-- | Limits the selected developer metadata to that which has a matching
-- DeveloperMetadata.metadata_id.
dMetadataId :: Lens' DeveloperMetadataLookup (Maybe Int32)
dMetadataId
  = lens _dMetadataId (\ s a -> s{_dMetadataId = a}) .
      mapping _Coerce

-- | Limits the selected developer metadata to that which has a matching
-- DeveloperMetadata.visibility. If left unspecified, all developer
-- metadata visibile to the requesting project is considered.
dVisibility :: Lens' DeveloperMetadataLookup (Maybe DeveloperMetadataLookupVisibility)
dVisibility
  = lens _dVisibility (\ s a -> s{_dVisibility = a})

-- | Limits the selected developer metadata to that which has a matching
-- DeveloperMetadata.metadata_key.
dMetadataKey :: Lens' DeveloperMetadataLookup (Maybe Text)
dMetadataKey
  = lens _dMetadataKey (\ s a -> s{_dMetadataKey = a})

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
dLocationType :: Lens' DeveloperMetadataLookup (Maybe DeveloperMetadataLookupLocationType)
dLocationType
  = lens _dLocationType
      (\ s a -> s{_dLocationType = a})

-- | Limits the selected developer metadata to those entries associated with
-- the specified location. This field either matches exact locations or all
-- intersecting locations according the specified locationMatchingStrategy.
dMetadataLocation :: Lens' DeveloperMetadataLookup (Maybe DeveloperMetadataLocation)
dMetadataLocation
  = lens _dMetadataLocation
      (\ s a -> s{_dMetadataLocation = a})

-- | Limits the selected developer metadata to that which has a matching
-- DeveloperMetadata.metadata_value.
dMetadataValue :: Lens' DeveloperMetadataLookup (Maybe Text)
dMetadataValue
  = lens _dMetadataValue
      (\ s a -> s{_dMetadataValue = a})

instance FromJSON DeveloperMetadataLookup where
        parseJSON
          = withObject "DeveloperMetadataLookup"
              (\ o ->
                 DeveloperMetadataLookup' <$>
                   (o .:? "locationMatchingStrategy") <*>
                     (o .:? "metadataId")
                     <*> (o .:? "visibility")
                     <*> (o .:? "metadataKey")
                     <*> (o .:? "locationType")
                     <*> (o .:? "metadataLocation")
                     <*> (o .:? "metadataValue"))

instance ToJSON DeveloperMetadataLookup where
        toJSON DeveloperMetadataLookup'{..}
          = object
              (catMaybes
                 [("locationMatchingStrategy" .=) <$>
                    _dLocationMatchingStrategy,
                  ("metadataId" .=) <$> _dMetadataId,
                  ("visibility" .=) <$> _dVisibility,
                  ("metadataKey" .=) <$> _dMetadataKey,
                  ("locationType" .=) <$> _dLocationType,
                  ("metadataLocation" .=) <$> _dMetadataLocation,
                  ("metadataValue" .=) <$> _dMetadataValue])

-- | Duplicates the contents of a sheet.
--
-- /See:/ 'duplicateSheetRequest' smart constructor.
data DuplicateSheetRequest =
  DuplicateSheetRequest'
    { _dsrNewSheetName     :: !(Maybe Text)
    , _dsrInsertSheetIndex :: !(Maybe (Textual Int32))
    , _dsrSourceSheetId    :: !(Maybe (Textual Int32))
    , _dsrNewSheetId       :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DuplicateSheetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrNewSheetName'
--
-- * 'dsrInsertSheetIndex'
--
-- * 'dsrSourceSheetId'
--
-- * 'dsrNewSheetId'
duplicateSheetRequest
    :: DuplicateSheetRequest
duplicateSheetRequest =
  DuplicateSheetRequest'
    { _dsrNewSheetName = Nothing
    , _dsrInsertSheetIndex = Nothing
    , _dsrSourceSheetId = Nothing
    , _dsrNewSheetId = Nothing
    }


-- | The name of the new sheet. If empty, a new name is chosen for you.
dsrNewSheetName :: Lens' DuplicateSheetRequest (Maybe Text)
dsrNewSheetName
  = lens _dsrNewSheetName
      (\ s a -> s{_dsrNewSheetName = a})

-- | The zero-based index where the new sheet should be inserted. The index
-- of all sheets after this are incremented.
dsrInsertSheetIndex :: Lens' DuplicateSheetRequest (Maybe Int32)
dsrInsertSheetIndex
  = lens _dsrInsertSheetIndex
      (\ s a -> s{_dsrInsertSheetIndex = a})
      . mapping _Coerce

-- | The sheet to duplicate.
dsrSourceSheetId :: Lens' DuplicateSheetRequest (Maybe Int32)
dsrSourceSheetId
  = lens _dsrSourceSheetId
      (\ s a -> s{_dsrSourceSheetId = a})
      . mapping _Coerce

-- | If set, the ID of the new sheet. If not set, an ID is chosen. If set,
-- the ID must not conflict with any existing sheet ID. If set, it must be
-- non-negative.
dsrNewSheetId :: Lens' DuplicateSheetRequest (Maybe Int32)
dsrNewSheetId
  = lens _dsrNewSheetId
      (\ s a -> s{_dsrNewSheetId = a})
      . mapping _Coerce

instance FromJSON DuplicateSheetRequest where
        parseJSON
          = withObject "DuplicateSheetRequest"
              (\ o ->
                 DuplicateSheetRequest' <$>
                   (o .:? "newSheetName") <*> (o .:? "insertSheetIndex")
                     <*> (o .:? "sourceSheetId")
                     <*> (o .:? "newSheetId"))

instance ToJSON DuplicateSheetRequest where
        toJSON DuplicateSheetRequest'{..}
          = object
              (catMaybes
                 [("newSheetName" .=) <$> _dsrNewSheetName,
                  ("insertSheetIndex" .=) <$> _dsrInsertSheetIndex,
                  ("sourceSheetId" .=) <$> _dsrSourceSheetId,
                  ("newSheetId" .=) <$> _dsrNewSheetId])

-- | The rotation applied to text in a cell.
--
-- /See:/ 'textRotation' smart constructor.
data TextRotation =
  TextRotation'
    { _trAngle    :: !(Maybe (Textual Int32))
    , _trVertical :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextRotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trAngle'
--
-- * 'trVertical'
textRotation
    :: TextRotation
textRotation = TextRotation' {_trAngle = Nothing, _trVertical = Nothing}


-- | The angle between the standard orientation and the desired orientation.
-- Measured in degrees. Valid values are between -90 and 90. Positive
-- angles are angled upwards, negative are angled downwards. Note: For LTR
-- text direction positive angles are in the counterclockwise direction,
-- whereas for RTL they are in the clockwise direction
trAngle :: Lens' TextRotation (Maybe Int32)
trAngle
  = lens _trAngle (\ s a -> s{_trAngle = a}) .
      mapping _Coerce

-- | If true, text reads top to bottom, but the orientation of individual
-- characters is unchanged. For example: | V | | e | | r | | t | | i | | c
-- | | a | | l |
trVertical :: Lens' TextRotation (Maybe Bool)
trVertical
  = lens _trVertical (\ s a -> s{_trVertical = a})

instance FromJSON TextRotation where
        parseJSON
          = withObject "TextRotation"
              (\ o ->
                 TextRotation' <$>
                   (o .:? "angle") <*> (o .:? "vertical"))

instance ToJSON TextRotation where
        toJSON TextRotation'{..}
          = object
              (catMaybes
                 [("angle" .=) <$> _trAngle,
                  ("vertical" .=) <$> _trVertical])

-- | The result of a filter view being duplicated.
--
-- /See:/ 'duplicateFilterViewResponse' smart constructor.
newtype DuplicateFilterViewResponse =
  DuplicateFilterViewResponse'
    { _dfvrFilter :: Maybe FilterView
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DuplicateFilterViewResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfvrFilter'
duplicateFilterViewResponse
    :: DuplicateFilterViewResponse
duplicateFilterViewResponse =
  DuplicateFilterViewResponse' {_dfvrFilter = Nothing}


-- | The newly created filter.
dfvrFilter :: Lens' DuplicateFilterViewResponse (Maybe FilterView)
dfvrFilter
  = lens _dfvrFilter (\ s a -> s{_dfvrFilter = a})

instance FromJSON DuplicateFilterViewResponse where
        parseJSON
          = withObject "DuplicateFilterViewResponse"
              (\ o ->
                 DuplicateFilterViewResponse' <$> (o .:? "filter"))

instance ToJSON DuplicateFilterViewResponse where
        toJSON DuplicateFilterViewResponse'{..}
          = object (catMaybes [("filter" .=) <$> _dfvrFilter])

-- | The request for updating more than one range of values in a spreadsheet.
--
-- /See:/ 'batchUpdateValuesRequest' smart constructor.
data BatchUpdateValuesRequest =
  BatchUpdateValuesRequest'
    { _buvrData                         :: !(Maybe [ValueRange])
    , _buvrValueInputOption             :: !(Maybe BatchUpdateValuesRequestValueInputOption)
    , _buvrIncludeValuesInResponse      :: !(Maybe Bool)
    , _buvrResponseDateTimeRenderOption :: !(Maybe BatchUpdateValuesRequestResponseDateTimeRenderOption)
    , _buvrResponseValueRenderOption    :: !(Maybe BatchUpdateValuesRequestResponseValueRenderOption)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUpdateValuesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buvrData'
--
-- * 'buvrValueInputOption'
--
-- * 'buvrIncludeValuesInResponse'
--
-- * 'buvrResponseDateTimeRenderOption'
--
-- * 'buvrResponseValueRenderOption'
batchUpdateValuesRequest
    :: BatchUpdateValuesRequest
batchUpdateValuesRequest =
  BatchUpdateValuesRequest'
    { _buvrData = Nothing
    , _buvrValueInputOption = Nothing
    , _buvrIncludeValuesInResponse = Nothing
    , _buvrResponseDateTimeRenderOption = Nothing
    , _buvrResponseValueRenderOption = Nothing
    }


-- | The new values to apply to the spreadsheet.
buvrData :: Lens' BatchUpdateValuesRequest [ValueRange]
buvrData
  = lens _buvrData (\ s a -> s{_buvrData = a}) .
      _Default
      . _Coerce

-- | How the input data should be interpreted.
buvrValueInputOption :: Lens' BatchUpdateValuesRequest (Maybe BatchUpdateValuesRequestValueInputOption)
buvrValueInputOption
  = lens _buvrValueInputOption
      (\ s a -> s{_buvrValueInputOption = a})

-- | Determines if the update response should include the values of the cells
-- that were updated. By default, responses do not include the updated
-- values. The \`updatedData\` field within each of the
-- BatchUpdateValuesResponse.responses will contain the updated values. If
-- the range to write was larger than than the range actually written, the
-- response will include all values in the requested range (excluding
-- trailing empty rows and columns).
buvrIncludeValuesInResponse :: Lens' BatchUpdateValuesRequest (Maybe Bool)
buvrIncludeValuesInResponse
  = lens _buvrIncludeValuesInResponse
      (\ s a -> s{_buvrIncludeValuesInResponse = a})

-- | Determines how dates, times, and durations in the response should be
-- rendered. This is ignored if response_value_render_option is
-- FORMATTED_VALUE. The default dateTime render option is
-- DateTimeRenderOption.SERIAL_NUMBER.
buvrResponseDateTimeRenderOption :: Lens' BatchUpdateValuesRequest (Maybe BatchUpdateValuesRequestResponseDateTimeRenderOption)
buvrResponseDateTimeRenderOption
  = lens _buvrResponseDateTimeRenderOption
      (\ s a -> s{_buvrResponseDateTimeRenderOption = a})

-- | Determines how values in the response should be rendered. The default
-- render option is ValueRenderOption.FORMATTED_VALUE.
buvrResponseValueRenderOption :: Lens' BatchUpdateValuesRequest (Maybe BatchUpdateValuesRequestResponseValueRenderOption)
buvrResponseValueRenderOption
  = lens _buvrResponseValueRenderOption
      (\ s a -> s{_buvrResponseValueRenderOption = a})

instance FromJSON BatchUpdateValuesRequest where
        parseJSON
          = withObject "BatchUpdateValuesRequest"
              (\ o ->
                 BatchUpdateValuesRequest' <$>
                   (o .:? "data" .!= mempty) <*>
                     (o .:? "valueInputOption")
                     <*> (o .:? "includeValuesInResponse")
                     <*> (o .:? "responseDateTimeRenderOption")
                     <*> (o .:? "responseValueRenderOption"))

instance ToJSON BatchUpdateValuesRequest where
        toJSON BatchUpdateValuesRequest'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _buvrData,
                  ("valueInputOption" .=) <$> _buvrValueInputOption,
                  ("includeValuesInResponse" .=) <$>
                    _buvrIncludeValuesInResponse,
                  ("responseDateTimeRenderOption" .=) <$>
                    _buvrResponseDateTimeRenderOption,
                  ("responseValueRenderOption" .=) <$>
                    _buvrResponseValueRenderOption])

-- | A range of values whose location is specified by a DataFilter.
--
-- /See:/ 'dataFilterValueRange' smart constructor.
data DataFilterValueRange =
  DataFilterValueRange'
    { _dfvrValues         :: !(Maybe [[JSONValue]])
    , _dfvrDataFilter     :: !(Maybe DataFilter)
    , _dfvrMajorDimension :: !(Maybe DataFilterValueRangeMajorDimension)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataFilterValueRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfvrValues'
--
-- * 'dfvrDataFilter'
--
-- * 'dfvrMajorDimension'
dataFilterValueRange
    :: DataFilterValueRange
dataFilterValueRange =
  DataFilterValueRange'
    { _dfvrValues = Nothing
    , _dfvrDataFilter = Nothing
    , _dfvrMajorDimension = Nothing
    }


-- | The data to be written. If the provided values exceed any of the ranges
-- matched by the data filter then the request will fail. If the provided
-- values are less than the matched ranges only the specified values will
-- be written, existing values in the matched ranges will remain
-- unaffected.
dfvrValues :: Lens' DataFilterValueRange [[JSONValue]]
dfvrValues
  = lens _dfvrValues (\ s a -> s{_dfvrValues = a}) .
      _Default
      . _Coerce

-- | The data filter describing the location of the values in the
-- spreadsheet.
dfvrDataFilter :: Lens' DataFilterValueRange (Maybe DataFilter)
dfvrDataFilter
  = lens _dfvrDataFilter
      (\ s a -> s{_dfvrDataFilter = a})

-- | The major dimension of the values.
dfvrMajorDimension :: Lens' DataFilterValueRange (Maybe DataFilterValueRangeMajorDimension)
dfvrMajorDimension
  = lens _dfvrMajorDimension
      (\ s a -> s{_dfvrMajorDimension = a})

instance FromJSON DataFilterValueRange where
        parseJSON
          = withObject "DataFilterValueRange"
              (\ o ->
                 DataFilterValueRange' <$>
                   (o .:? "values" .!= mempty) <*> (o .:? "dataFilter")
                     <*> (o .:? "majorDimension"))

instance ToJSON DataFilterValueRange where
        toJSON DataFilterValueRange'{..}
          = object
              (catMaybes
                 [("values" .=) <$> _dfvrValues,
                  ("dataFilter" .=) <$> _dfvrDataFilter,
                  ("majorDimension" .=) <$> _dfvrMajorDimension])

-- | Adds a chart to a sheet in the spreadsheet.
--
-- /See:/ 'addChartRequest' smart constructor.
newtype AddChartRequest =
  AddChartRequest'
    { _aChart :: Maybe EmbeddedChart
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddChartRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aChart'
addChartRequest
    :: AddChartRequest
addChartRequest = AddChartRequest' {_aChart = Nothing}


-- | The chart that should be added to the spreadsheet, including the
-- position where it should be placed. The chartId field is optional; if
-- one is not set, an id will be randomly generated. (It is an error to
-- specify the ID of a chart that already exists.)
aChart :: Lens' AddChartRequest (Maybe EmbeddedChart)
aChart = lens _aChart (\ s a -> s{_aChart = a})

instance FromJSON AddChartRequest where
        parseJSON
          = withObject "AddChartRequest"
              (\ o -> AddChartRequest' <$> (o .:? "chart"))

instance ToJSON AddChartRequest where
        toJSON AddChartRequest'{..}
          = object (catMaybes [("chart" .=) <$> _aChart])

-- | A named range.
--
-- /See:/ 'namedRange' smart constructor.
data NamedRange =
  NamedRange'
    { _nrNamedRangeId :: !(Maybe Text)
    , _nrName         :: !(Maybe Text)
    , _nrRange        :: !(Maybe GridRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NamedRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nrNamedRangeId'
--
-- * 'nrName'
--
-- * 'nrRange'
namedRange
    :: NamedRange
namedRange =
  NamedRange' {_nrNamedRangeId = Nothing, _nrName = Nothing, _nrRange = Nothing}


-- | The ID of the named range.
nrNamedRangeId :: Lens' NamedRange (Maybe Text)
nrNamedRangeId
  = lens _nrNamedRangeId
      (\ s a -> s{_nrNamedRangeId = a})

-- | The name of the named range.
nrName :: Lens' NamedRange (Maybe Text)
nrName = lens _nrName (\ s a -> s{_nrName = a})

-- | The range this represents.
nrRange :: Lens' NamedRange (Maybe GridRange)
nrRange = lens _nrRange (\ s a -> s{_nrRange = a})

instance FromJSON NamedRange where
        parseJSON
          = withObject "NamedRange"
              (\ o ->
                 NamedRange' <$>
                   (o .:? "namedRangeId") <*> (o .:? "name") <*>
                     (o .:? "range"))

instance ToJSON NamedRange where
        toJSON NamedRange'{..}
          = object
              (catMaybes
                 [("namedRangeId" .=) <$> _nrNamedRangeId,
                  ("name" .=) <$> _nrName, ("range" .=) <$> _nrRange])

-- | Merges all cells in the range.
--
-- /See:/ 'mergeCellsRequest' smart constructor.
data MergeCellsRequest =
  MergeCellsRequest'
    { _mcrMergeType :: !(Maybe MergeCellsRequestMergeType)
    , _mcrRange     :: !(Maybe GridRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MergeCellsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcrMergeType'
--
-- * 'mcrRange'
mergeCellsRequest
    :: MergeCellsRequest
mergeCellsRequest =
  MergeCellsRequest' {_mcrMergeType = Nothing, _mcrRange = Nothing}


-- | How the cells should be merged.
mcrMergeType :: Lens' MergeCellsRequest (Maybe MergeCellsRequestMergeType)
mcrMergeType
  = lens _mcrMergeType (\ s a -> s{_mcrMergeType = a})

-- | The range of cells to merge.
mcrRange :: Lens' MergeCellsRequest (Maybe GridRange)
mcrRange = lens _mcrRange (\ s a -> s{_mcrRange = a})

instance FromJSON MergeCellsRequest where
        parseJSON
          = withObject "MergeCellsRequest"
              (\ o ->
                 MergeCellsRequest' <$>
                   (o .:? "mergeType") <*> (o .:? "range"))

instance ToJSON MergeCellsRequest where
        toJSON MergeCellsRequest'{..}
          = object
              (catMaybes
                 [("mergeType" .=) <$> _mcrMergeType,
                  ("range" .=) <$> _mcrRange])

-- | Allows you to manually organize the values in a source data column into
-- buckets with names of your choosing. For example, a pivot table that
-- aggregates population by state: +-------+-------------------+ | State |
-- SUM of Population | +-------+-------------------+ | AK | 0.7 | | AL |
-- 4.8 | | AR | 2.9 | ... +-------+-------------------+ could be turned
-- into a pivot table that aggregates population by time zone by providing
-- a list of groups (for example, groupName = \'Central\', items = [\'AL\',
-- \'AR\', \'IA\', ...]) to a manual group rule. Note that a similar effect
-- could be achieved by adding a time zone column to the source data and
-- adjusting the pivot table. +-----------+-------------------+ | Time Zone
-- | SUM of Population | +-----------+-------------------+ | Central |
-- 106.3 | | Eastern | 151.9 | | Mountain | 17.4 | ...
-- +-----------+-------------------+
--
-- /See:/ 'manualRule' smart constructor.
newtype ManualRule =
  ManualRule'
    { _mrGroups :: Maybe [ManualRuleGroup]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManualRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrGroups'
manualRule
    :: ManualRule
manualRule = ManualRule' {_mrGroups = Nothing}


-- | The list of group names and the corresponding items from the source data
-- that map to each group name.
mrGroups :: Lens' ManualRule [ManualRuleGroup]
mrGroups
  = lens _mrGroups (\ s a -> s{_mrGroups = a}) .
      _Default
      . _Coerce

instance FromJSON ManualRule where
        parseJSON
          = withObject "ManualRule"
              (\ o -> ManualRule' <$> (o .:? "groups" .!= mempty))

instance ToJSON ManualRule where
        toJSON ManualRule'{..}
          = object (catMaybes [("groups" .=) <$> _mrGroups])

-- | Position settings for text.
--
-- /See:/ 'textPosition' smart constructor.
newtype TextPosition =
  TextPosition'
    { _tpHorizontalAlignment :: Maybe TextPositionHorizontalAlignment
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextPosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpHorizontalAlignment'
textPosition
    :: TextPosition
textPosition = TextPosition' {_tpHorizontalAlignment = Nothing}


-- | Horizontal alignment setting for the piece of text.
tpHorizontalAlignment :: Lens' TextPosition (Maybe TextPositionHorizontalAlignment)
tpHorizontalAlignment
  = lens _tpHorizontalAlignment
      (\ s a -> s{_tpHorizontalAlignment = a})

instance FromJSON TextPosition where
        parseJSON
          = withObject "TextPosition"
              (\ o ->
                 TextPosition' <$> (o .:? "horizontalAlignment"))

instance ToJSON TextPosition where
        toJSON TextPosition'{..}
          = object
              (catMaybes
                 [("horizontalAlignment" .=) <$>
                    _tpHorizontalAlignment])

-- | A border along a cell.
--
-- /See:/ 'bOrder' smart constructor.
data BOrder =
  BOrder'
    { _boStyle :: !(Maybe BOrderStyle)
    , _boColor :: !(Maybe Color)
    , _boWidth :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BOrder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'boStyle'
--
-- * 'boColor'
--
-- * 'boWidth'
bOrder
    :: BOrder
bOrder = BOrder' {_boStyle = Nothing, _boColor = Nothing, _boWidth = Nothing}


-- | The style of the border.
boStyle :: Lens' BOrder (Maybe BOrderStyle)
boStyle = lens _boStyle (\ s a -> s{_boStyle = a})

-- | The color of the border.
boColor :: Lens' BOrder (Maybe Color)
boColor = lens _boColor (\ s a -> s{_boColor = a})

-- | The width of the border, in pixels. Deprecated; the width is determined
-- by the \"style\" field.
boWidth :: Lens' BOrder (Maybe Int32)
boWidth
  = lens _boWidth (\ s a -> s{_boWidth = a}) .
      mapping _Coerce

instance FromJSON BOrder where
        parseJSON
          = withObject "BOrder"
              (\ o ->
                 BOrder' <$>
                   (o .:? "style") <*> (o .:? "color") <*>
                     (o .:? "width"))

instance ToJSON BOrder where
        toJSON BOrder'{..}
          = object
              (catMaybes
                 [("style" .=) <$> _boStyle,
                  ("color" .=) <$> _boColor,
                  ("width" .=) <$> _boWidth])

-- | A request to retrieve all developer metadata matching the set of
-- specified criteria.
--
-- /See:/ 'searchDeveloperMetadataRequest' smart constructor.
newtype SearchDeveloperMetadataRequest =
  SearchDeveloperMetadataRequest'
    { _sdmrDataFilters :: Maybe [DataFilter]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SearchDeveloperMetadataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdmrDataFilters'
searchDeveloperMetadataRequest
    :: SearchDeveloperMetadataRequest
searchDeveloperMetadataRequest =
  SearchDeveloperMetadataRequest' {_sdmrDataFilters = Nothing}


-- | The data filters describing the criteria used to determine which
-- DeveloperMetadata entries to return. DeveloperMetadata matching any of
-- the specified filters will be included in the response.
sdmrDataFilters :: Lens' SearchDeveloperMetadataRequest [DataFilter]
sdmrDataFilters
  = lens _sdmrDataFilters
      (\ s a -> s{_sdmrDataFilters = a})
      . _Default
      . _Coerce

instance FromJSON SearchDeveloperMetadataRequest
         where
        parseJSON
          = withObject "SearchDeveloperMetadataRequest"
              (\ o ->
                 SearchDeveloperMetadataRequest' <$>
                   (o .:? "dataFilters" .!= mempty))

instance ToJSON SearchDeveloperMetadataRequest where
        toJSON SearchDeveloperMetadataRequest'{..}
          = object
              (catMaybes [("dataFilters" .=) <$> _sdmrDataFilters])

-- | The series of a CandlestickData.
--
-- /See:/ 'candlestickSeries' smart constructor.
newtype CandlestickSeries =
  CandlestickSeries'
    { _csData :: Maybe ChartData
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CandlestickSeries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csData'
candlestickSeries
    :: CandlestickSeries
candlestickSeries = CandlestickSeries' {_csData = Nothing}


-- | The data of the CandlestickSeries.
csData :: Lens' CandlestickSeries (Maybe ChartData)
csData = lens _csData (\ s a -> s{_csData = a})

instance FromJSON CandlestickSeries where
        parseJSON
          = withObject "CandlestickSeries"
              (\ o -> CandlestickSeries' <$> (o .:? "data"))

instance ToJSON CandlestickSeries where
        toJSON CandlestickSeries'{..}
          = object (catMaybes [("data" .=) <$> _csData])

-- | The kinds of value that a cell in a spreadsheet can have.
--
-- /See:/ 'extendedValue' smart constructor.
data ExtendedValue =
  ExtendedValue'
    { _evBoolValue    :: !(Maybe Bool)
    , _evNumberValue  :: !(Maybe (Textual Double))
    , _evErrorValue   :: !(Maybe ErrorValue)
    , _evStringValue  :: !(Maybe Text)
    , _evFormulaValue :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExtendedValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evBoolValue'
--
-- * 'evNumberValue'
--
-- * 'evErrorValue'
--
-- * 'evStringValue'
--
-- * 'evFormulaValue'
extendedValue
    :: ExtendedValue
extendedValue =
  ExtendedValue'
    { _evBoolValue = Nothing
    , _evNumberValue = Nothing
    , _evErrorValue = Nothing
    , _evStringValue = Nothing
    , _evFormulaValue = Nothing
    }


-- | Represents a boolean value.
evBoolValue :: Lens' ExtendedValue (Maybe Bool)
evBoolValue
  = lens _evBoolValue (\ s a -> s{_evBoolValue = a})

-- | Represents a double value. Note: Dates, Times and DateTimes are
-- represented as doubles in \"serial number\" format.
evNumberValue :: Lens' ExtendedValue (Maybe Double)
evNumberValue
  = lens _evNumberValue
      (\ s a -> s{_evNumberValue = a})
      . mapping _Coerce

-- | Represents an error. This field is read-only.
evErrorValue :: Lens' ExtendedValue (Maybe ErrorValue)
evErrorValue
  = lens _evErrorValue (\ s a -> s{_evErrorValue = a})

-- | Represents a string value. Leading single quotes are not included. For
-- example, if the user typed \`\'123\` into the UI, this would be
-- represented as a \`stringValue\` of \`\"123\"\`.
evStringValue :: Lens' ExtendedValue (Maybe Text)
evStringValue
  = lens _evStringValue
      (\ s a -> s{_evStringValue = a})

-- | Represents a formula.
evFormulaValue :: Lens' ExtendedValue (Maybe Text)
evFormulaValue
  = lens _evFormulaValue
      (\ s a -> s{_evFormulaValue = a})

instance FromJSON ExtendedValue where
        parseJSON
          = withObject "ExtendedValue"
              (\ o ->
                 ExtendedValue' <$>
                   (o .:? "boolValue") <*> (o .:? "numberValue") <*>
                     (o .:? "errorValue")
                     <*> (o .:? "stringValue")
                     <*> (o .:? "formulaValue"))

instance ToJSON ExtendedValue where
        toJSON ExtendedValue'{..}
          = object
              (catMaybes
                 [("boolValue" .=) <$> _evBoolValue,
                  ("numberValue" .=) <$> _evNumberValue,
                  ("errorValue" .=) <$> _evErrorValue,
                  ("stringValue" .=) <$> _evStringValue,
                  ("formulaValue" .=) <$> _evFormulaValue])

-- | Adds a named range to the spreadsheet.
--
-- /See:/ 'addNamedRangeRequest' smart constructor.
newtype AddNamedRangeRequest =
  AddNamedRangeRequest'
    { _aNamedRange :: Maybe NamedRange
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddNamedRangeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aNamedRange'
addNamedRangeRequest
    :: AddNamedRangeRequest
addNamedRangeRequest = AddNamedRangeRequest' {_aNamedRange = Nothing}


-- | The named range to add. The namedRangeId field is optional; if one is
-- not set, an id will be randomly generated. (It is an error to specify
-- the ID of a range that already exists.)
aNamedRange :: Lens' AddNamedRangeRequest (Maybe NamedRange)
aNamedRange
  = lens _aNamedRange (\ s a -> s{_aNamedRange = a})

instance FromJSON AddNamedRangeRequest where
        parseJSON
          = withObject "AddNamedRangeRequest"
              (\ o ->
                 AddNamedRangeRequest' <$> (o .:? "namedRange"))

instance ToJSON AddNamedRangeRequest where
        toJSON AddNamedRangeRequest'{..}
          = object
              (catMaybes [("namedRange" .=) <$> _aNamedRange])

-- | Criteria for showing\/hiding rows in a pivot table.
--
-- /See:/ 'pivotFilterCriteria' smart constructor.
newtype PivotFilterCriteria =
  PivotFilterCriteria'
    { _pfcVisibleValues :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PivotFilterCriteria' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pfcVisibleValues'
pivotFilterCriteria
    :: PivotFilterCriteria
pivotFilterCriteria = PivotFilterCriteria' {_pfcVisibleValues = Nothing}


-- | Values that should be included. Values not listed here are excluded.
pfcVisibleValues :: Lens' PivotFilterCriteria [Text]
pfcVisibleValues
  = lens _pfcVisibleValues
      (\ s a -> s{_pfcVisibleValues = a})
      . _Default
      . _Coerce

instance FromJSON PivotFilterCriteria where
        parseJSON
          = withObject "PivotFilterCriteria"
              (\ o ->
                 PivotFilterCriteria' <$>
                   (o .:? "visibleValues" .!= mempty))

instance ToJSON PivotFilterCriteria where
        toJSON PivotFilterCriteria'{..}
          = object
              (catMaybes
                 [("visibleValues" .=) <$> _pfcVisibleValues])

-- | A range along a single dimension on a sheet. All indexes are zero-based.
-- Indexes are half open: the start index is inclusive and the end index is
-- exclusive. Missing indexes indicate the range is unbounded on that side.
--
-- /See:/ 'dimensionRange' smart constructor.
data DimensionRange =
  DimensionRange'
    { _drDimension  :: !(Maybe DimensionRangeDimension)
    , _drEndIndex   :: !(Maybe (Textual Int32))
    , _drSheetId    :: !(Maybe (Textual Int32))
    , _drStartIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DimensionRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drDimension'
--
-- * 'drEndIndex'
--
-- * 'drSheetId'
--
-- * 'drStartIndex'
dimensionRange
    :: DimensionRange
dimensionRange =
  DimensionRange'
    { _drDimension = Nothing
    , _drEndIndex = Nothing
    , _drSheetId = Nothing
    , _drStartIndex = Nothing
    }


-- | The dimension of the span.
drDimension :: Lens' DimensionRange (Maybe DimensionRangeDimension)
drDimension
  = lens _drDimension (\ s a -> s{_drDimension = a})

-- | The end (exclusive) of the span, or not set if unbounded.
drEndIndex :: Lens' DimensionRange (Maybe Int32)
drEndIndex
  = lens _drEndIndex (\ s a -> s{_drEndIndex = a}) .
      mapping _Coerce

-- | The sheet this span is on.
drSheetId :: Lens' DimensionRange (Maybe Int32)
drSheetId
  = lens _drSheetId (\ s a -> s{_drSheetId = a}) .
      mapping _Coerce

-- | The start (inclusive) of the span, or not set if unbounded.
drStartIndex :: Lens' DimensionRange (Maybe Int32)
drStartIndex
  = lens _drStartIndex (\ s a -> s{_drStartIndex = a})
      . mapping _Coerce

instance FromJSON DimensionRange where
        parseJSON
          = withObject "DimensionRange"
              (\ o ->
                 DimensionRange' <$>
                   (o .:? "dimension") <*> (o .:? "endIndex") <*>
                     (o .:? "sheetId")
                     <*> (o .:? "startIndex"))

instance ToJSON DimensionRange where
        toJSON DimensionRange'{..}
          = object
              (catMaybes
                 [("dimension" .=) <$> _drDimension,
                  ("endIndex" .=) <$> _drEndIndex,
                  ("sheetId" .=) <$> _drSheetId,
                  ("startIndex" .=) <$> _drStartIndex])

-- | Updates properties of a spreadsheet.
--
-- /See:/ 'updateSpreadsheetPropertiesRequest' smart constructor.
data UpdateSpreadsheetPropertiesRequest =
  UpdateSpreadsheetPropertiesRequest'
    { _uFields     :: !(Maybe GFieldMask)
    , _uProperties :: !(Maybe SpreadsheetProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateSpreadsheetPropertiesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uFields'
--
-- * 'uProperties'
updateSpreadsheetPropertiesRequest
    :: UpdateSpreadsheetPropertiesRequest
updateSpreadsheetPropertiesRequest =
  UpdateSpreadsheetPropertiesRequest'
    {_uFields = Nothing, _uProperties = Nothing}


-- | The fields that should be updated. At least one field must be specified.
-- The root \'properties\' is implied and should not be specified. A single
-- \`\"*\"\` can be used as short-hand for listing every field.
uFields :: Lens' UpdateSpreadsheetPropertiesRequest (Maybe GFieldMask)
uFields = lens _uFields (\ s a -> s{_uFields = a})

-- | The properties to update.
uProperties :: Lens' UpdateSpreadsheetPropertiesRequest (Maybe SpreadsheetProperties)
uProperties
  = lens _uProperties (\ s a -> s{_uProperties = a})

instance FromJSON UpdateSpreadsheetPropertiesRequest
         where
        parseJSON
          = withObject "UpdateSpreadsheetPropertiesRequest"
              (\ o ->
                 UpdateSpreadsheetPropertiesRequest' <$>
                   (o .:? "fields") <*> (o .:? "properties"))

instance ToJSON UpdateSpreadsheetPropertiesRequest
         where
        toJSON UpdateSpreadsheetPropertiesRequest'{..}
          = object
              (catMaybes
                 [("fields" .=) <$> _uFields,
                  ("properties" .=) <$> _uProperties])

-- | The domain of a CandlestickChart.
--
-- /See:/ 'candlestickDomain' smart constructor.
data CandlestickDomain =
  CandlestickDomain'
    { _cdReversed :: !(Maybe Bool)
    , _cdData     :: !(Maybe ChartData)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CandlestickDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdReversed'
--
-- * 'cdData'
candlestickDomain
    :: CandlestickDomain
candlestickDomain =
  CandlestickDomain' {_cdReversed = Nothing, _cdData = Nothing}


-- | True to reverse the order of the domain values (horizontal axis).
cdReversed :: Lens' CandlestickDomain (Maybe Bool)
cdReversed
  = lens _cdReversed (\ s a -> s{_cdReversed = a})

-- | The data of the CandlestickDomain.
cdData :: Lens' CandlestickDomain (Maybe ChartData)
cdData = lens _cdData (\ s a -> s{_cdData = a})

instance FromJSON CandlestickDomain where
        parseJSON
          = withObject "CandlestickDomain"
              (\ o ->
                 CandlestickDomain' <$>
                   (o .:? "reversed") <*> (o .:? "data"))

instance ToJSON CandlestickDomain where
        toJSON CandlestickDomain'{..}
          = object
              (catMaybes
                 [("reversed" .=) <$> _cdReversed,
                  ("data" .=) <$> _cdData])

-- | The result of adding a new protected range.
--
-- /See:/ 'addProtectedRangeResponse' smart constructor.
newtype AddProtectedRangeResponse =
  AddProtectedRangeResponse'
    { _aProtectedRange :: Maybe ProtectedRange
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddProtectedRangeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aProtectedRange'
addProtectedRangeResponse
    :: AddProtectedRangeResponse
addProtectedRangeResponse =
  AddProtectedRangeResponse' {_aProtectedRange = Nothing}


-- | The newly added protected range.
aProtectedRange :: Lens' AddProtectedRangeResponse (Maybe ProtectedRange)
aProtectedRange
  = lens _aProtectedRange
      (\ s a -> s{_aProtectedRange = a})

instance FromJSON AddProtectedRangeResponse where
        parseJSON
          = withObject "AddProtectedRangeResponse"
              (\ o ->
                 AddProtectedRangeResponse' <$>
                   (o .:? "protectedRange"))

instance ToJSON AddProtectedRangeResponse where
        toJSON AddProtectedRangeResponse'{..}
          = object
              (catMaybes
                 [("protectedRange" .=) <$> _aProtectedRange])

-- | Appends rows or columns to the end of a sheet.
--
-- /See:/ 'appendDimensionRequest' smart constructor.
data AppendDimensionRequest =
  AppendDimensionRequest'
    { _adrLength    :: !(Maybe (Textual Int32))
    , _adrDimension :: !(Maybe AppendDimensionRequestDimension)
    , _adrSheetId   :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AppendDimensionRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adrLength'
--
-- * 'adrDimension'
--
-- * 'adrSheetId'
appendDimensionRequest
    :: AppendDimensionRequest
appendDimensionRequest =
  AppendDimensionRequest'
    {_adrLength = Nothing, _adrDimension = Nothing, _adrSheetId = Nothing}


-- | The number of rows or columns to append.
adrLength :: Lens' AppendDimensionRequest (Maybe Int32)
adrLength
  = lens _adrLength (\ s a -> s{_adrLength = a}) .
      mapping _Coerce

-- | Whether rows or columns should be appended.
adrDimension :: Lens' AppendDimensionRequest (Maybe AppendDimensionRequestDimension)
adrDimension
  = lens _adrDimension (\ s a -> s{_adrDimension = a})

-- | The sheet to append rows or columns to.
adrSheetId :: Lens' AppendDimensionRequest (Maybe Int32)
adrSheetId
  = lens _adrSheetId (\ s a -> s{_adrSheetId = a}) .
      mapping _Coerce

instance FromJSON AppendDimensionRequest where
        parseJSON
          = withObject "AppendDimensionRequest"
              (\ o ->
                 AppendDimensionRequest' <$>
                   (o .:? "length") <*> (o .:? "dimension") <*>
                     (o .:? "sheetId"))

instance ToJSON AppendDimensionRequest where
        toJSON AppendDimensionRequest'{..}
          = object
              (catMaybes
                 [("length" .=) <$> _adrLength,
                  ("dimension" .=) <$> _adrDimension,
                  ("sheetId" .=) <$> _adrSheetId])

-- | The definition of how a value in a pivot table should be calculated.
--
-- /See:/ 'pivotValue' smart constructor.
data PivotValue =
  PivotValue'
    { _pvSourceColumnOffSet    :: !(Maybe (Textual Int32))
    , _pvFormula               :: !(Maybe Text)
    , _pvName                  :: !(Maybe Text)
    , _pvCalculatedDisplayType :: !(Maybe PivotValueCalculatedDisplayType)
    , _pvSummarizeFunction     :: !(Maybe PivotValueSummarizeFunction)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PivotValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvSourceColumnOffSet'
--
-- * 'pvFormula'
--
-- * 'pvName'
--
-- * 'pvCalculatedDisplayType'
--
-- * 'pvSummarizeFunction'
pivotValue
    :: PivotValue
pivotValue =
  PivotValue'
    { _pvSourceColumnOffSet = Nothing
    , _pvFormula = Nothing
    , _pvName = Nothing
    , _pvCalculatedDisplayType = Nothing
    , _pvSummarizeFunction = Nothing
    }


-- | The column offset of the source range that this value reads from. For
-- example, if the source was \`C10:E15\`, a \`sourceColumnOffset\` of
-- \`0\` means this value refers to column \`C\`, whereas the offset \`1\`
-- would refer to column \`D\`.
pvSourceColumnOffSet :: Lens' PivotValue (Maybe Int32)
pvSourceColumnOffSet
  = lens _pvSourceColumnOffSet
      (\ s a -> s{_pvSourceColumnOffSet = a})
      . mapping _Coerce

-- | A custom formula to calculate the value. The formula must start with an
-- \`=\` character.
pvFormula :: Lens' PivotValue (Maybe Text)
pvFormula
  = lens _pvFormula (\ s a -> s{_pvFormula = a})

-- | A name to use for the value.
pvName :: Lens' PivotValue (Maybe Text)
pvName = lens _pvName (\ s a -> s{_pvName = a})

-- | If specified, indicates that pivot values should be displayed as the
-- result of a calculation with another pivot value. For example, if
-- calculated_display_type is specified as PERCENT_OF_GRAND_TOTAL, all the
-- pivot values are displayed as the percentage of the grand total. In the
-- Sheets UI, this is referred to as \"Show As\" in the value section of a
-- pivot table.
pvCalculatedDisplayType :: Lens' PivotValue (Maybe PivotValueCalculatedDisplayType)
pvCalculatedDisplayType
  = lens _pvCalculatedDisplayType
      (\ s a -> s{_pvCalculatedDisplayType = a})

-- | A function to summarize the value. If formula is set, the only supported
-- values are SUM and CUSTOM. If sourceColumnOffset is set, then \`CUSTOM\`
-- is not supported.
pvSummarizeFunction :: Lens' PivotValue (Maybe PivotValueSummarizeFunction)
pvSummarizeFunction
  = lens _pvSummarizeFunction
      (\ s a -> s{_pvSummarizeFunction = a})

instance FromJSON PivotValue where
        parseJSON
          = withObject "PivotValue"
              (\ o ->
                 PivotValue' <$>
                   (o .:? "sourceColumnOffset") <*> (o .:? "formula")
                     <*> (o .:? "name")
                     <*> (o .:? "calculatedDisplayType")
                     <*> (o .:? "summarizeFunction"))

instance ToJSON PivotValue where
        toJSON PivotValue'{..}
          = object
              (catMaybes
                 [("sourceColumnOffset" .=) <$> _pvSourceColumnOffSet,
                  ("formula" .=) <$> _pvFormula,
                  ("name" .=) <$> _pvName,
                  ("calculatedDisplayType" .=) <$>
                    _pvCalculatedDisplayType,
                  ("summarizeFunction" .=) <$> _pvSummarizeFunction])

-- | Unmerges cells in the given range.
--
-- /See:/ 'unmergeCellsRequest' smart constructor.
newtype UnmergeCellsRequest =
  UnmergeCellsRequest'
    { _ucrRange :: Maybe GridRange
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UnmergeCellsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucrRange'
unmergeCellsRequest
    :: UnmergeCellsRequest
unmergeCellsRequest = UnmergeCellsRequest' {_ucrRange = Nothing}


-- | The range within which all cells should be unmerged. If the range spans
-- multiple merges, all will be unmerged. The range must not partially span
-- any merge.
ucrRange :: Lens' UnmergeCellsRequest (Maybe GridRange)
ucrRange = lens _ucrRange (\ s a -> s{_ucrRange = a})

instance FromJSON UnmergeCellsRequest where
        parseJSON
          = withObject "UnmergeCellsRequest"
              (\ o -> UnmergeCellsRequest' <$> (o .:? "range"))

instance ToJSON UnmergeCellsRequest where
        toJSON UnmergeCellsRequest'{..}
          = object (catMaybes [("range" .=) <$> _ucrRange])

-- | Deletes the requested sheet.
--
-- /See:/ 'deleteSheetRequest' smart constructor.
newtype DeleteSheetRequest =
  DeleteSheetRequest'
    { _dsrSheetId :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteSheetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrSheetId'
deleteSheetRequest
    :: DeleteSheetRequest
deleteSheetRequest = DeleteSheetRequest' {_dsrSheetId = Nothing}


-- | The ID of the sheet to delete.
dsrSheetId :: Lens' DeleteSheetRequest (Maybe Int32)
dsrSheetId
  = lens _dsrSheetId (\ s a -> s{_dsrSheetId = a}) .
      mapping _Coerce

instance FromJSON DeleteSheetRequest where
        parseJSON
          = withObject "DeleteSheetRequest"
              (\ o -> DeleteSheetRequest' <$> (o .:? "sheetId"))

instance ToJSON DeleteSheetRequest where
        toJSON DeleteSheetRequest'{..}
          = object (catMaybes [("sheetId" .=) <$> _dsrSheetId])

-- | Creates a group over the specified range. If the requested range is a
-- superset of the range of an existing group G, then the depth of G is
-- incremented and this new group G\' has the depth of that group. For
-- example, a group [C:D, depth 1] + [B:E] results in groups [B:E, depth 1]
-- and [C:D, depth 2]. If the requested range is a subset of the range of
-- an existing group G, then the depth of the new group G\' becomes one
-- greater than the depth of G. For example, a group [B:E, depth 1] + [C:D]
-- results in groups [B:E, depth 1] and [C:D, depth 2]. If the requested
-- range starts before and ends within, or starts within and ends after,
-- the range of an existing group G, then the range of the existing group G
-- becomes the union of the ranges, and the new group G\' has depth one
-- greater than the depth of G and range as the intersection of the ranges.
-- For example, a group [B:D, depth 1] + [C:E] results in groups [B:E,
-- depth 1] and [C:D, depth 2].
--
-- /See:/ 'addDimensionGroupRequest' smart constructor.
newtype AddDimensionGroupRequest =
  AddDimensionGroupRequest'
    { _adgrRange :: Maybe DimensionRange
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddDimensionGroupRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adgrRange'
addDimensionGroupRequest
    :: AddDimensionGroupRequest
addDimensionGroupRequest = AddDimensionGroupRequest' {_adgrRange = Nothing}


-- | The range over which to create a group.
adgrRange :: Lens' AddDimensionGroupRequest (Maybe DimensionRange)
adgrRange
  = lens _adgrRange (\ s a -> s{_adgrRange = a})

instance FromJSON AddDimensionGroupRequest where
        parseJSON
          = withObject "AddDimensionGroupRequest"
              (\ o ->
                 AddDimensionGroupRequest' <$> (o .:? "range"))

instance ToJSON AddDimensionGroupRequest where
        toJSON AddDimensionGroupRequest'{..}
          = object (catMaybes [("range" .=) <$> _adgrRange])

-- | Styles for a waterfall chart column.
--
-- /See:/ 'waterfallChartColumnStyle' smart constructor.
data WaterfallChartColumnStyle =
  WaterfallChartColumnStyle'
    { _wColor :: !(Maybe Color)
    , _wLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WaterfallChartColumnStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wColor'
--
-- * 'wLabel'
waterfallChartColumnStyle
    :: WaterfallChartColumnStyle
waterfallChartColumnStyle =
  WaterfallChartColumnStyle' {_wColor = Nothing, _wLabel = Nothing}


-- | The color of the column.
wColor :: Lens' WaterfallChartColumnStyle (Maybe Color)
wColor = lens _wColor (\ s a -> s{_wColor = a})

-- | The label of the column\'s legend.
wLabel :: Lens' WaterfallChartColumnStyle (Maybe Text)
wLabel = lens _wLabel (\ s a -> s{_wLabel = a})

instance FromJSON WaterfallChartColumnStyle where
        parseJSON
          = withObject "WaterfallChartColumnStyle"
              (\ o ->
                 WaterfallChartColumnStyle' <$>
                   (o .:? "color") <*> (o .:? "label"))

instance ToJSON WaterfallChartColumnStyle where
        toJSON WaterfallChartColumnStyle'{..}
          = object
              (catMaybes
                 [("color" .=) <$> _wColor, ("label" .=) <$> _wLabel])

-- | The Candlestick chart data, each containing the low, open, close, and
-- high values for a series.
--
-- /See:/ 'candlestickData' smart constructor.
data CandlestickData =
  CandlestickData'
    { _cdLowSeries   :: !(Maybe CandlestickSeries)
    , _cdHighSeries  :: !(Maybe CandlestickSeries)
    , _cdOpenSeries  :: !(Maybe CandlestickSeries)
    , _cdCloseSeries :: !(Maybe CandlestickSeries)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CandlestickData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdLowSeries'
--
-- * 'cdHighSeries'
--
-- * 'cdOpenSeries'
--
-- * 'cdCloseSeries'
candlestickData
    :: CandlestickData
candlestickData =
  CandlestickData'
    { _cdLowSeries = Nothing
    , _cdHighSeries = Nothing
    , _cdOpenSeries = Nothing
    , _cdCloseSeries = Nothing
    }


-- | The range data (vertical axis) for the low\/minimum value for each
-- candle. This is the bottom of the candle\'s center line.
cdLowSeries :: Lens' CandlestickData (Maybe CandlestickSeries)
cdLowSeries
  = lens _cdLowSeries (\ s a -> s{_cdLowSeries = a})

-- | The range data (vertical axis) for the high\/maximum value for each
-- candle. This is the top of the candle\'s center line.
cdHighSeries :: Lens' CandlestickData (Maybe CandlestickSeries)
cdHighSeries
  = lens _cdHighSeries (\ s a -> s{_cdHighSeries = a})

-- | The range data (vertical axis) for the open\/initial value for each
-- candle. This is the bottom of the candle body. If less than the close
-- value the candle will be filled. Otherwise the candle will be hollow.
cdOpenSeries :: Lens' CandlestickData (Maybe CandlestickSeries)
cdOpenSeries
  = lens _cdOpenSeries (\ s a -> s{_cdOpenSeries = a})

-- | The range data (vertical axis) for the close\/final value for each
-- candle. This is the top of the candle body. If greater than the open
-- value the candle will be filled. Otherwise the candle will be hollow.
cdCloseSeries :: Lens' CandlestickData (Maybe CandlestickSeries)
cdCloseSeries
  = lens _cdCloseSeries
      (\ s a -> s{_cdCloseSeries = a})

instance FromJSON CandlestickData where
        parseJSON
          = withObject "CandlestickData"
              (\ o ->
                 CandlestickData' <$>
                   (o .:? "lowSeries") <*> (o .:? "highSeries") <*>
                     (o .:? "openSeries")
                     <*> (o .:? "closeSeries"))

instance ToJSON CandlestickData where
        toJSON CandlestickData'{..}
          = object
              (catMaybes
                 [("lowSeries" .=) <$> _cdLowSeries,
                  ("highSeries" .=) <$> _cdHighSeries,
                  ("openSeries" .=) <$> _cdOpenSeries,
                  ("closeSeries" .=) <$> _cdCloseSeries])

-- | A banded (alternating colors) range in a sheet.
--
-- /See:/ 'bandedRange' smart constructor.
data BandedRange =
  BandedRange'
    { _brBandedRangeId    :: !(Maybe (Textual Int32))
    , _brRowProperties    :: !(Maybe BandingProperties)
    , _brRange            :: !(Maybe GridRange)
    , _brColumnProperties :: !(Maybe BandingProperties)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BandedRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'brBandedRangeId'
--
-- * 'brRowProperties'
--
-- * 'brRange'
--
-- * 'brColumnProperties'
bandedRange
    :: BandedRange
bandedRange =
  BandedRange'
    { _brBandedRangeId = Nothing
    , _brRowProperties = Nothing
    , _brRange = Nothing
    , _brColumnProperties = Nothing
    }


-- | The id of the banded range.
brBandedRangeId :: Lens' BandedRange (Maybe Int32)
brBandedRangeId
  = lens _brBandedRangeId
      (\ s a -> s{_brBandedRangeId = a})
      . mapping _Coerce

-- | Properties for row bands. These properties are applied on a row-by-row
-- basis throughout all the rows in the range. At least one of
-- row_properties or column_properties must be specified.
brRowProperties :: Lens' BandedRange (Maybe BandingProperties)
brRowProperties
  = lens _brRowProperties
      (\ s a -> s{_brRowProperties = a})

-- | The range over which these properties are applied.
brRange :: Lens' BandedRange (Maybe GridRange)
brRange = lens _brRange (\ s a -> s{_brRange = a})

-- | Properties for column bands. These properties are applied on a column-
-- by-column basis throughout all the columns in the range. At least one of
-- row_properties or column_properties must be specified.
brColumnProperties :: Lens' BandedRange (Maybe BandingProperties)
brColumnProperties
  = lens _brColumnProperties
      (\ s a -> s{_brColumnProperties = a})

instance FromJSON BandedRange where
        parseJSON
          = withObject "BandedRange"
              (\ o ->
                 BandedRange' <$>
                   (o .:? "bandedRangeId") <*> (o .:? "rowProperties")
                     <*> (o .:? "range")
                     <*> (o .:? "columnProperties"))

instance ToJSON BandedRange where
        toJSON BandedRange'{..}
          = object
              (catMaybes
                 [("bandedRangeId" .=) <$> _brBandedRangeId,
                  ("rowProperties" .=) <$> _brRowProperties,
                  ("range" .=) <$> _brRange,
                  ("columnProperties" .=) <$> _brColumnProperties])

-- | Updates the borders of a range. If a field is not set in the request,
-- that means the border remains as-is. For example, with two subsequent
-- UpdateBordersRequest: 1. range: A1:A5 \`{ top: RED, bottom: WHITE }\` 2.
-- range: A1:A5 \`{ left: BLUE }\` That would result in A1:A5 having a
-- borders of \`{ top: RED, bottom: WHITE, left: BLUE }\`. If you want to
-- clear a border, explicitly set the style to NONE.
--
-- /See:/ 'updateBOrdersRequest' smart constructor.
data UpdateBOrdersRequest =
  UpdateBOrdersRequest'
    { _uborBottom          :: !(Maybe BOrder)
    , _uborInnerHorizontal :: !(Maybe BOrder)
    , _uborLeft            :: !(Maybe BOrder)
    , _uborInnerVertical   :: !(Maybe BOrder)
    , _uborRange           :: !(Maybe GridRange)
    , _uborRight           :: !(Maybe BOrder)
    , _uborTop             :: !(Maybe BOrder)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateBOrdersRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uborBottom'
--
-- * 'uborInnerHorizontal'
--
-- * 'uborLeft'
--
-- * 'uborInnerVertical'
--
-- * 'uborRange'
--
-- * 'uborRight'
--
-- * 'uborTop'
updateBOrdersRequest
    :: UpdateBOrdersRequest
updateBOrdersRequest =
  UpdateBOrdersRequest'
    { _uborBottom = Nothing
    , _uborInnerHorizontal = Nothing
    , _uborLeft = Nothing
    , _uborInnerVertical = Nothing
    , _uborRange = Nothing
    , _uborRight = Nothing
    , _uborTop = Nothing
    }


-- | The border to put at the bottom of the range.
uborBottom :: Lens' UpdateBOrdersRequest (Maybe BOrder)
uborBottom
  = lens _uborBottom (\ s a -> s{_uborBottom = a})

-- | The horizontal border to put within the range.
uborInnerHorizontal :: Lens' UpdateBOrdersRequest (Maybe BOrder)
uborInnerHorizontal
  = lens _uborInnerHorizontal
      (\ s a -> s{_uborInnerHorizontal = a})

-- | The border to put at the left of the range.
uborLeft :: Lens' UpdateBOrdersRequest (Maybe BOrder)
uborLeft = lens _uborLeft (\ s a -> s{_uborLeft = a})

-- | The vertical border to put within the range.
uborInnerVertical :: Lens' UpdateBOrdersRequest (Maybe BOrder)
uborInnerVertical
  = lens _uborInnerVertical
      (\ s a -> s{_uborInnerVertical = a})

-- | The range whose borders should be updated.
uborRange :: Lens' UpdateBOrdersRequest (Maybe GridRange)
uborRange
  = lens _uborRange (\ s a -> s{_uborRange = a})

-- | The border to put at the right of the range.
uborRight :: Lens' UpdateBOrdersRequest (Maybe BOrder)
uborRight
  = lens _uborRight (\ s a -> s{_uborRight = a})

-- | The border to put at the top of the range.
uborTop :: Lens' UpdateBOrdersRequest (Maybe BOrder)
uborTop = lens _uborTop (\ s a -> s{_uborTop = a})

instance FromJSON UpdateBOrdersRequest where
        parseJSON
          = withObject "UpdateBOrdersRequest"
              (\ o ->
                 UpdateBOrdersRequest' <$>
                   (o .:? "bottom") <*> (o .:? "innerHorizontal") <*>
                     (o .:? "left")
                     <*> (o .:? "innerVertical")
                     <*> (o .:? "range")
                     <*> (o .:? "right")
                     <*> (o .:? "top"))

instance ToJSON UpdateBOrdersRequest where
        toJSON UpdateBOrdersRequest'{..}
          = object
              (catMaybes
                 [("bottom" .=) <$> _uborBottom,
                  ("innerHorizontal" .=) <$> _uborInnerHorizontal,
                  ("left" .=) <$> _uborLeft,
                  ("innerVertical" .=) <$> _uborInnerVertical,
                  ("range" .=) <$> _uborRange,
                  ("right" .=) <$> _uborRight,
                  ("top" .=) <$> _uborTop])

-- | The request for updating more than one range of values in a spreadsheet.
--
-- /See:/ 'batchUpdateValuesByDataFilterRequest' smart constructor.
data BatchUpdateValuesByDataFilterRequest =
  BatchUpdateValuesByDataFilterRequest'
    { _buvbdfrData                         :: !(Maybe [DataFilterValueRange])
    , _buvbdfrValueInputOption             :: !(Maybe BatchUpdateValuesByDataFilterRequestValueInputOption)
    , _buvbdfrIncludeValuesInResponse      :: !(Maybe Bool)
    , _buvbdfrResponseDateTimeRenderOption :: !(Maybe BatchUpdateValuesByDataFilterRequestResponseDateTimeRenderOption)
    , _buvbdfrResponseValueRenderOption    :: !(Maybe BatchUpdateValuesByDataFilterRequestResponseValueRenderOption)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUpdateValuesByDataFilterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buvbdfrData'
--
-- * 'buvbdfrValueInputOption'
--
-- * 'buvbdfrIncludeValuesInResponse'
--
-- * 'buvbdfrResponseDateTimeRenderOption'
--
-- * 'buvbdfrResponseValueRenderOption'
batchUpdateValuesByDataFilterRequest
    :: BatchUpdateValuesByDataFilterRequest
batchUpdateValuesByDataFilterRequest =
  BatchUpdateValuesByDataFilterRequest'
    { _buvbdfrData = Nothing
    , _buvbdfrValueInputOption = Nothing
    , _buvbdfrIncludeValuesInResponse = Nothing
    , _buvbdfrResponseDateTimeRenderOption = Nothing
    , _buvbdfrResponseValueRenderOption = Nothing
    }


-- | The new values to apply to the spreadsheet. If more than one range is
-- matched by the specified DataFilter the specified values will be applied
-- to all of those ranges.
buvbdfrData :: Lens' BatchUpdateValuesByDataFilterRequest [DataFilterValueRange]
buvbdfrData
  = lens _buvbdfrData (\ s a -> s{_buvbdfrData = a}) .
      _Default
      . _Coerce

-- | How the input data should be interpreted.
buvbdfrValueInputOption :: Lens' BatchUpdateValuesByDataFilterRequest (Maybe BatchUpdateValuesByDataFilterRequestValueInputOption)
buvbdfrValueInputOption
  = lens _buvbdfrValueInputOption
      (\ s a -> s{_buvbdfrValueInputOption = a})

-- | Determines if the update response should include the values of the cells
-- that were updated. By default, responses do not include the updated
-- values. The \`updatedData\` field within each of the
-- BatchUpdateValuesResponse.responses will contain the updated values. If
-- the range to write was larger than than the range actually written, the
-- response will include all values in the requested range (excluding
-- trailing empty rows and columns).
buvbdfrIncludeValuesInResponse :: Lens' BatchUpdateValuesByDataFilterRequest (Maybe Bool)
buvbdfrIncludeValuesInResponse
  = lens _buvbdfrIncludeValuesInResponse
      (\ s a -> s{_buvbdfrIncludeValuesInResponse = a})

-- | Determines how dates, times, and durations in the response should be
-- rendered. This is ignored if response_value_render_option is
-- FORMATTED_VALUE. The default dateTime render option is
-- DateTimeRenderOption.SERIAL_NUMBER.
buvbdfrResponseDateTimeRenderOption :: Lens' BatchUpdateValuesByDataFilterRequest (Maybe BatchUpdateValuesByDataFilterRequestResponseDateTimeRenderOption)
buvbdfrResponseDateTimeRenderOption
  = lens _buvbdfrResponseDateTimeRenderOption
      (\ s a ->
         s{_buvbdfrResponseDateTimeRenderOption = a})

-- | Determines how values in the response should be rendered. The default
-- render option is ValueRenderOption.FORMATTED_VALUE.
buvbdfrResponseValueRenderOption :: Lens' BatchUpdateValuesByDataFilterRequest (Maybe BatchUpdateValuesByDataFilterRequestResponseValueRenderOption)
buvbdfrResponseValueRenderOption
  = lens _buvbdfrResponseValueRenderOption
      (\ s a -> s{_buvbdfrResponseValueRenderOption = a})

instance FromJSON
           BatchUpdateValuesByDataFilterRequest
         where
        parseJSON
          = withObject "BatchUpdateValuesByDataFilterRequest"
              (\ o ->
                 BatchUpdateValuesByDataFilterRequest' <$>
                   (o .:? "data" .!= mempty) <*>
                     (o .:? "valueInputOption")
                     <*> (o .:? "includeValuesInResponse")
                     <*> (o .:? "responseDateTimeRenderOption")
                     <*> (o .:? "responseValueRenderOption"))

instance ToJSON BatchUpdateValuesByDataFilterRequest
         where
        toJSON BatchUpdateValuesByDataFilterRequest'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _buvbdfrData,
                  ("valueInputOption" .=) <$> _buvbdfrValueInputOption,
                  ("includeValuesInResponse" .=) <$>
                    _buvbdfrIncludeValuesInResponse,
                  ("responseDateTimeRenderOption" .=) <$>
                    _buvbdfrResponseDateTimeRenderOption,
                  ("responseValueRenderOption" .=) <$>
                    _buvbdfrResponseValueRenderOption])

-- | A chart embedded in a sheet.
--
-- /See:/ 'embeddedChart' smart constructor.
data EmbeddedChart =
  EmbeddedChart'
    { _ecSpec     :: !(Maybe ChartSpec)
    , _ecPosition :: !(Maybe EmbeddedObjectPosition)
    , _ecChartId  :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EmbeddedChart' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecSpec'
--
-- * 'ecPosition'
--
-- * 'ecChartId'
embeddedChart
    :: EmbeddedChart
embeddedChart =
  EmbeddedChart'
    {_ecSpec = Nothing, _ecPosition = Nothing, _ecChartId = Nothing}


-- | The specification of the chart.
ecSpec :: Lens' EmbeddedChart (Maybe ChartSpec)
ecSpec = lens _ecSpec (\ s a -> s{_ecSpec = a})

-- | The position of the chart.
ecPosition :: Lens' EmbeddedChart (Maybe EmbeddedObjectPosition)
ecPosition
  = lens _ecPosition (\ s a -> s{_ecPosition = a})

-- | The ID of the chart.
ecChartId :: Lens' EmbeddedChart (Maybe Int32)
ecChartId
  = lens _ecChartId (\ s a -> s{_ecChartId = a}) .
      mapping _Coerce

instance FromJSON EmbeddedChart where
        parseJSON
          = withObject "EmbeddedChart"
              (\ o ->
                 EmbeddedChart' <$>
                   (o .:? "spec") <*> (o .:? "position") <*>
                     (o .:? "chartId"))

instance ToJSON EmbeddedChart where
        toJSON EmbeddedChart'{..}
          = object
              (catMaybes
                 [("spec" .=) <$> _ecSpec,
                  ("position" .=) <$> _ecPosition,
                  ("chartId" .=) <$> _ecChartId])

-- | Data about each cell in a row.
--
-- /See:/ 'rowData' smart constructor.
newtype RowData =
  RowData'
    { _rdValues :: Maybe [CellData]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RowData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdValues'
rowData
    :: RowData
rowData = RowData' {_rdValues = Nothing}


-- | The values in the row, one per column.
rdValues :: Lens' RowData [CellData]
rdValues
  = lens _rdValues (\ s a -> s{_rdValues = a}) .
      _Default
      . _Coerce

instance FromJSON RowData where
        parseJSON
          = withObject "RowData"
              (\ o -> RowData' <$> (o .:? "values" .!= mempty))

instance ToJSON RowData where
        toJSON RowData'{..}
          = object (catMaybes [("values" .=) <$> _rdValues])

-- | The editors of a protected range.
--
-- /See:/ 'editors' smart constructor.
data Editors =
  Editors'
    { _eGroups             :: !(Maybe [Text])
    , _eUsers              :: !(Maybe [Text])
    , _eDomainUsersCanEdit :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Editors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eGroups'
--
-- * 'eUsers'
--
-- * 'eDomainUsersCanEdit'
editors
    :: Editors
editors =
  Editors'
    {_eGroups = Nothing, _eUsers = Nothing, _eDomainUsersCanEdit = Nothing}


-- | The email addresses of groups with edit access to the protected range.
eGroups :: Lens' Editors [Text]
eGroups
  = lens _eGroups (\ s a -> s{_eGroups = a}) . _Default
      . _Coerce

-- | The email addresses of users with edit access to the protected range.
eUsers :: Lens' Editors [Text]
eUsers
  = lens _eUsers (\ s a -> s{_eUsers = a}) . _Default .
      _Coerce

-- | True if anyone in the document\'s domain has edit access to the
-- protected range. Domain protection is only supported on documents within
-- a domain.
eDomainUsersCanEdit :: Lens' Editors (Maybe Bool)
eDomainUsersCanEdit
  = lens _eDomainUsersCanEdit
      (\ s a -> s{_eDomainUsersCanEdit = a})

instance FromJSON Editors where
        parseJSON
          = withObject "Editors"
              (\ o ->
                 Editors' <$>
                   (o .:? "groups" .!= mempty) <*>
                     (o .:? "users" .!= mempty)
                     <*> (o .:? "domainUsersCanEdit"))

instance ToJSON Editors where
        toJSON Editors'{..}
          = object
              (catMaybes
                 [("groups" .=) <$> _eGroups,
                  ("users" .=) <$> _eUsers,
                  ("domainUsersCanEdit" .=) <$> _eDomainUsersCanEdit])

-- | A pivot table.
--
-- /See:/ 'pivotTable' smart constructor.
data PivotTable =
  PivotTable'
    { _ptValues      :: !(Maybe [PivotValue])
    , _ptValueLayout :: !(Maybe PivotTableValueLayout)
    , _ptRows        :: !(Maybe [PivotGroup])
    , _ptSource      :: !(Maybe GridRange)
    , _ptColumns     :: !(Maybe [PivotGroup])
    , _ptCriteria    :: !(Maybe PivotTableCriteria)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PivotTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptValues'
--
-- * 'ptValueLayout'
--
-- * 'ptRows'
--
-- * 'ptSource'
--
-- * 'ptColumns'
--
-- * 'ptCriteria'
pivotTable
    :: PivotTable
pivotTable =
  PivotTable'
    { _ptValues = Nothing
    , _ptValueLayout = Nothing
    , _ptRows = Nothing
    , _ptSource = Nothing
    , _ptColumns = Nothing
    , _ptCriteria = Nothing
    }


-- | A list of values to include in the pivot table.
ptValues :: Lens' PivotTable [PivotValue]
ptValues
  = lens _ptValues (\ s a -> s{_ptValues = a}) .
      _Default
      . _Coerce

-- | Whether values should be listed horizontally (as columns) or vertically
-- (as rows).
ptValueLayout :: Lens' PivotTable (Maybe PivotTableValueLayout)
ptValueLayout
  = lens _ptValueLayout
      (\ s a -> s{_ptValueLayout = a})

-- | Each row grouping in the pivot table.
ptRows :: Lens' PivotTable [PivotGroup]
ptRows
  = lens _ptRows (\ s a -> s{_ptRows = a}) . _Default .
      _Coerce

-- | The range the pivot table is reading data from.
ptSource :: Lens' PivotTable (Maybe GridRange)
ptSource = lens _ptSource (\ s a -> s{_ptSource = a})

-- | Each column grouping in the pivot table.
ptColumns :: Lens' PivotTable [PivotGroup]
ptColumns
  = lens _ptColumns (\ s a -> s{_ptColumns = a}) .
      _Default
      . _Coerce

-- | An optional mapping of filters per source column offset. The filters are
-- applied before aggregating data into the pivot table. The map\'s key is
-- the column offset of the source range that you want to filter, and the
-- value is the criteria for that column. For example, if the source was
-- \`C10:E15\`, a key of \`0\` will have the filter for column \`C\`,
-- whereas the key \`1\` is for column \`D\`.
ptCriteria :: Lens' PivotTable (Maybe PivotTableCriteria)
ptCriteria
  = lens _ptCriteria (\ s a -> s{_ptCriteria = a})

instance FromJSON PivotTable where
        parseJSON
          = withObject "PivotTable"
              (\ o ->
                 PivotTable' <$>
                   (o .:? "values" .!= mempty) <*> (o .:? "valueLayout")
                     <*> (o .:? "rows" .!= mempty)
                     <*> (o .:? "source")
                     <*> (o .:? "columns" .!= mempty)
                     <*> (o .:? "criteria"))

instance ToJSON PivotTable where
        toJSON PivotTable'{..}
          = object
              (catMaybes
                 [("values" .=) <$> _ptValues,
                  ("valueLayout" .=) <$> _ptValueLayout,
                  ("rows" .=) <$> _ptRows, ("source" .=) <$> _ptSource,
                  ("columns" .=) <$> _ptColumns,
                  ("criteria" .=) <$> _ptCriteria])

-- | The position of an embedded object such as a chart.
--
-- /See:/ 'embeddedObjectPosition' smart constructor.
data EmbeddedObjectPosition =
  EmbeddedObjectPosition'
    { _eopOverlayPosition :: !(Maybe OverlayPosition)
    , _eopSheetId         :: !(Maybe (Textual Int32))
    , _eopNewSheet        :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EmbeddedObjectPosition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eopOverlayPosition'
--
-- * 'eopSheetId'
--
-- * 'eopNewSheet'
embeddedObjectPosition
    :: EmbeddedObjectPosition
embeddedObjectPosition =
  EmbeddedObjectPosition'
    { _eopOverlayPosition = Nothing
    , _eopSheetId = Nothing
    , _eopNewSheet = Nothing
    }


-- | The position at which the object is overlaid on top of a grid.
eopOverlayPosition :: Lens' EmbeddedObjectPosition (Maybe OverlayPosition)
eopOverlayPosition
  = lens _eopOverlayPosition
      (\ s a -> s{_eopOverlayPosition = a})

-- | The sheet this is on. Set only if the embedded object is on its own
-- sheet. Must be non-negative.
eopSheetId :: Lens' EmbeddedObjectPosition (Maybe Int32)
eopSheetId
  = lens _eopSheetId (\ s a -> s{_eopSheetId = a}) .
      mapping _Coerce

-- | If true, the embedded object is put on a new sheet whose ID is chosen
-- for you. Used only when writing.
eopNewSheet :: Lens' EmbeddedObjectPosition (Maybe Bool)
eopNewSheet
  = lens _eopNewSheet (\ s a -> s{_eopNewSheet = a})

instance FromJSON EmbeddedObjectPosition where
        parseJSON
          = withObject "EmbeddedObjectPosition"
              (\ o ->
                 EmbeddedObjectPosition' <$>
                   (o .:? "overlayPosition") <*> (o .:? "sheetId") <*>
                     (o .:? "newSheet"))

instance ToJSON EmbeddedObjectPosition where
        toJSON EmbeddedObjectPosition'{..}
          = object
              (catMaybes
                 [("overlayPosition" .=) <$> _eopOverlayPosition,
                  ("sheetId" .=) <$> _eopSheetId,
                  ("newSheet" .=) <$> _eopNewSheet])

-- | The default filter associated with a sheet.
--
-- /See:/ 'basicFilter' smart constructor.
data BasicFilter =
  BasicFilter'
    { _bfSortSpecs :: !(Maybe [SortSpec])
    , _bfRange     :: !(Maybe GridRange)
    , _bfCriteria  :: !(Maybe BasicFilterCriteria)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BasicFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfSortSpecs'
--
-- * 'bfRange'
--
-- * 'bfCriteria'
basicFilter
    :: BasicFilter
basicFilter =
  BasicFilter'
    {_bfSortSpecs = Nothing, _bfRange = Nothing, _bfCriteria = Nothing}


-- | The sort order per column. Later specifications are used when values are
-- equal in the earlier specifications.
bfSortSpecs :: Lens' BasicFilter [SortSpec]
bfSortSpecs
  = lens _bfSortSpecs (\ s a -> s{_bfSortSpecs = a}) .
      _Default
      . _Coerce

-- | The range the filter covers.
bfRange :: Lens' BasicFilter (Maybe GridRange)
bfRange = lens _bfRange (\ s a -> s{_bfRange = a})

-- | The criteria for showing\/hiding values per column. The map\'s key is
-- the column index, and the value is the criteria for that column.
bfCriteria :: Lens' BasicFilter (Maybe BasicFilterCriteria)
bfCriteria
  = lens _bfCriteria (\ s a -> s{_bfCriteria = a})

instance FromJSON BasicFilter where
        parseJSON
          = withObject "BasicFilter"
              (\ o ->
                 BasicFilter' <$>
                   (o .:? "sortSpecs" .!= mempty) <*> (o .:? "range")
                     <*> (o .:? "criteria"))

instance ToJSON BasicFilter where
        toJSON BasicFilter'{..}
          = object
              (catMaybes
                 [("sortSpecs" .=) <$> _bfSortSpecs,
                  ("range" .=) <$> _bfRange,
                  ("criteria" .=) <$> _bfCriteria])

-- | Splits a column of text into multiple columns, based on a delimiter in
-- each cell.
--
-- /See:/ 'textToColumnsRequest' smart constructor.
data TextToColumnsRequest =
  TextToColumnsRequest'
    { _ttcrDelimiterType :: !(Maybe TextToColumnsRequestDelimiterType)
    , _ttcrSource        :: !(Maybe GridRange)
    , _ttcrDelimiter     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextToColumnsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttcrDelimiterType'
--
-- * 'ttcrSource'
--
-- * 'ttcrDelimiter'
textToColumnsRequest
    :: TextToColumnsRequest
textToColumnsRequest =
  TextToColumnsRequest'
    { _ttcrDelimiterType = Nothing
    , _ttcrSource = Nothing
    , _ttcrDelimiter = Nothing
    }


-- | The delimiter type to use.
ttcrDelimiterType :: Lens' TextToColumnsRequest (Maybe TextToColumnsRequestDelimiterType)
ttcrDelimiterType
  = lens _ttcrDelimiterType
      (\ s a -> s{_ttcrDelimiterType = a})

-- | The source data range. This must span exactly one column.
ttcrSource :: Lens' TextToColumnsRequest (Maybe GridRange)
ttcrSource
  = lens _ttcrSource (\ s a -> s{_ttcrSource = a})

-- | The delimiter to use. Used only if delimiterType is CUSTOM.
ttcrDelimiter :: Lens' TextToColumnsRequest (Maybe Text)
ttcrDelimiter
  = lens _ttcrDelimiter
      (\ s a -> s{_ttcrDelimiter = a})

instance FromJSON TextToColumnsRequest where
        parseJSON
          = withObject "TextToColumnsRequest"
              (\ o ->
                 TextToColumnsRequest' <$>
                   (o .:? "delimiterType") <*> (o .:? "source") <*>
                     (o .:? "delimiter"))

instance ToJSON TextToColumnsRequest where
        toJSON TextToColumnsRequest'{..}
          = object
              (catMaybes
                 [("delimiterType" .=) <$> _ttcrDelimiterType,
                  ("source" .=) <$> _ttcrSource,
                  ("delimiter" .=) <$> _ttcrDelimiter])

-- | The request for retrieving a Spreadsheet.
--
-- /See:/ 'getSpreadsheetByDataFilterRequest' smart constructor.
data GetSpreadsheetByDataFilterRequest =
  GetSpreadsheetByDataFilterRequest'
    { _gsbdfrDataFilters     :: !(Maybe [DataFilter])
    , _gsbdfrIncludeGridData :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GetSpreadsheetByDataFilterRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsbdfrDataFilters'
--
-- * 'gsbdfrIncludeGridData'
getSpreadsheetByDataFilterRequest
    :: GetSpreadsheetByDataFilterRequest
getSpreadsheetByDataFilterRequest =
  GetSpreadsheetByDataFilterRequest'
    {_gsbdfrDataFilters = Nothing, _gsbdfrIncludeGridData = Nothing}


-- | The DataFilters used to select which ranges to retrieve from the
-- spreadsheet.
gsbdfrDataFilters :: Lens' GetSpreadsheetByDataFilterRequest [DataFilter]
gsbdfrDataFilters
  = lens _gsbdfrDataFilters
      (\ s a -> s{_gsbdfrDataFilters = a})
      . _Default
      . _Coerce

-- | True if grid data should be returned. This parameter is ignored if a
-- field mask was set in the request.
gsbdfrIncludeGridData :: Lens' GetSpreadsheetByDataFilterRequest (Maybe Bool)
gsbdfrIncludeGridData
  = lens _gsbdfrIncludeGridData
      (\ s a -> s{_gsbdfrIncludeGridData = a})

instance FromJSON GetSpreadsheetByDataFilterRequest
         where
        parseJSON
          = withObject "GetSpreadsheetByDataFilterRequest"
              (\ o ->
                 GetSpreadsheetByDataFilterRequest' <$>
                   (o .:? "dataFilters" .!= mempty) <*>
                     (o .:? "includeGridData"))

instance ToJSON GetSpreadsheetByDataFilterRequest
         where
        toJSON GetSpreadsheetByDataFilterRequest'{..}
          = object
              (catMaybes
                 [("dataFilters" .=) <$> _gsbdfrDataFilters,
                  ("includeGridData" .=) <$> _gsbdfrIncludeGridData])

-- | The request for updating any aspect of a spreadsheet.
--
-- /See:/ 'batchUpdateSpreadsheetRequest' smart constructor.
data BatchUpdateSpreadsheetRequest =
  BatchUpdateSpreadsheetRequest'
    { _busrResponseIncludeGridData      :: !(Maybe Bool)
    , _busrResponseRanges               :: !(Maybe [Text])
    , _busrRequests                     :: !(Maybe [Request'])
    , _busrIncludeSpreadsheetInResponse :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUpdateSpreadsheetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'busrResponseIncludeGridData'
--
-- * 'busrResponseRanges'
--
-- * 'busrRequests'
--
-- * 'busrIncludeSpreadsheetInResponse'
batchUpdateSpreadsheetRequest
    :: BatchUpdateSpreadsheetRequest
batchUpdateSpreadsheetRequest =
  BatchUpdateSpreadsheetRequest'
    { _busrResponseIncludeGridData = Nothing
    , _busrResponseRanges = Nothing
    , _busrRequests = Nothing
    , _busrIncludeSpreadsheetInResponse = Nothing
    }


-- | True if grid data should be returned. Meaningful only if if
-- include_spreadsheet_in_response is \'true\'. This parameter is ignored
-- if a field mask was set in the request.
busrResponseIncludeGridData :: Lens' BatchUpdateSpreadsheetRequest (Maybe Bool)
busrResponseIncludeGridData
  = lens _busrResponseIncludeGridData
      (\ s a -> s{_busrResponseIncludeGridData = a})

-- | Limits the ranges included in the response spreadsheet. Meaningful only
-- if include_spreadsheet_response is \'true\'.
busrResponseRanges :: Lens' BatchUpdateSpreadsheetRequest [Text]
busrResponseRanges
  = lens _busrResponseRanges
      (\ s a -> s{_busrResponseRanges = a})
      . _Default
      . _Coerce

-- | A list of updates to apply to the spreadsheet. Requests will be applied
-- in the order they are specified. If any request is not valid, no
-- requests will be applied.
busrRequests :: Lens' BatchUpdateSpreadsheetRequest [Request']
busrRequests
  = lens _busrRequests (\ s a -> s{_busrRequests = a})
      . _Default
      . _Coerce

-- | Determines if the update response should include the spreadsheet
-- resource.
busrIncludeSpreadsheetInResponse :: Lens' BatchUpdateSpreadsheetRequest (Maybe Bool)
busrIncludeSpreadsheetInResponse
  = lens _busrIncludeSpreadsheetInResponse
      (\ s a -> s{_busrIncludeSpreadsheetInResponse = a})

instance FromJSON BatchUpdateSpreadsheetRequest where
        parseJSON
          = withObject "BatchUpdateSpreadsheetRequest"
              (\ o ->
                 BatchUpdateSpreadsheetRequest' <$>
                   (o .:? "responseIncludeGridData") <*>
                     (o .:? "responseRanges" .!= mempty)
                     <*> (o .:? "requests" .!= mempty)
                     <*> (o .:? "includeSpreadsheetInResponse"))

instance ToJSON BatchUpdateSpreadsheetRequest where
        toJSON BatchUpdateSpreadsheetRequest'{..}
          = object
              (catMaybes
                 [("responseIncludeGridData" .=) <$>
                    _busrResponseIncludeGridData,
                  ("responseRanges" .=) <$> _busrResponseRanges,
                  ("requests" .=) <$> _busrRequests,
                  ("includeSpreadsheetInResponse" .=) <$>
                    _busrIncludeSpreadsheetInResponse])

-- | The response when updating a range of values in a spreadsheet.
--
-- /See:/ 'updateValuesResponse' smart constructor.
data UpdateValuesResponse =
  UpdateValuesResponse'
    { _uvrUpdatedCells   :: !(Maybe (Textual Int32))
    , _uvrSpreadsheetId  :: !(Maybe Text)
    , _uvrUpdatedRows    :: !(Maybe (Textual Int32))
    , _uvrUpdatedRange   :: !(Maybe Text)
    , _uvrUpdatedData    :: !(Maybe ValueRange)
    , _uvrUpdatedColumns :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateValuesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uvrUpdatedCells'
--
-- * 'uvrSpreadsheetId'
--
-- * 'uvrUpdatedRows'
--
-- * 'uvrUpdatedRange'
--
-- * 'uvrUpdatedData'
--
-- * 'uvrUpdatedColumns'
updateValuesResponse
    :: UpdateValuesResponse
updateValuesResponse =
  UpdateValuesResponse'
    { _uvrUpdatedCells = Nothing
    , _uvrSpreadsheetId = Nothing
    , _uvrUpdatedRows = Nothing
    , _uvrUpdatedRange = Nothing
    , _uvrUpdatedData = Nothing
    , _uvrUpdatedColumns = Nothing
    }


-- | The number of cells updated.
uvrUpdatedCells :: Lens' UpdateValuesResponse (Maybe Int32)
uvrUpdatedCells
  = lens _uvrUpdatedCells
      (\ s a -> s{_uvrUpdatedCells = a})
      . mapping _Coerce

-- | The spreadsheet the updates were applied to.
uvrSpreadsheetId :: Lens' UpdateValuesResponse (Maybe Text)
uvrSpreadsheetId
  = lens _uvrSpreadsheetId
      (\ s a -> s{_uvrSpreadsheetId = a})

-- | The number of rows where at least one cell in the row was updated.
uvrUpdatedRows :: Lens' UpdateValuesResponse (Maybe Int32)
uvrUpdatedRows
  = lens _uvrUpdatedRows
      (\ s a -> s{_uvrUpdatedRows = a})
      . mapping _Coerce

-- | The range (in A1 notation) that updates were applied to.
uvrUpdatedRange :: Lens' UpdateValuesResponse (Maybe Text)
uvrUpdatedRange
  = lens _uvrUpdatedRange
      (\ s a -> s{_uvrUpdatedRange = a})

-- | The values of the cells after updates were applied. This is only
-- included if the request\'s \`includeValuesInResponse\` field was
-- \`true\`.
uvrUpdatedData :: Lens' UpdateValuesResponse (Maybe ValueRange)
uvrUpdatedData
  = lens _uvrUpdatedData
      (\ s a -> s{_uvrUpdatedData = a})

-- | The number of columns where at least one cell in the column was updated.
uvrUpdatedColumns :: Lens' UpdateValuesResponse (Maybe Int32)
uvrUpdatedColumns
  = lens _uvrUpdatedColumns
      (\ s a -> s{_uvrUpdatedColumns = a})
      . mapping _Coerce

instance FromJSON UpdateValuesResponse where
        parseJSON
          = withObject "UpdateValuesResponse"
              (\ o ->
                 UpdateValuesResponse' <$>
                   (o .:? "updatedCells") <*> (o .:? "spreadsheetId")
                     <*> (o .:? "updatedRows")
                     <*> (o .:? "updatedRange")
                     <*> (o .:? "updatedData")
                     <*> (o .:? "updatedColumns"))

instance ToJSON UpdateValuesResponse where
        toJSON UpdateValuesResponse'{..}
          = object
              (catMaybes
                 [("updatedCells" .=) <$> _uvrUpdatedCells,
                  ("spreadsheetId" .=) <$> _uvrSpreadsheetId,
                  ("updatedRows" .=) <$> _uvrUpdatedRows,
                  ("updatedRange" .=) <$> _uvrUpdatedRange,
                  ("updatedData" .=) <$> _uvrUpdatedData,
                  ("updatedColumns" .=) <$> _uvrUpdatedColumns])

-- | The result of deleting a group.
--
-- /See:/ 'deleteDimensionGroupResponse' smart constructor.
newtype DeleteDimensionGroupResponse =
  DeleteDimensionGroupResponse'
    { _ddgrDimensionGroups :: Maybe [DimensionGroup]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteDimensionGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddgrDimensionGroups'
deleteDimensionGroupResponse
    :: DeleteDimensionGroupResponse
deleteDimensionGroupResponse =
  DeleteDimensionGroupResponse' {_ddgrDimensionGroups = Nothing}


-- | All groups of a dimension after deleting a group from that dimension.
ddgrDimensionGroups :: Lens' DeleteDimensionGroupResponse [DimensionGroup]
ddgrDimensionGroups
  = lens _ddgrDimensionGroups
      (\ s a -> s{_ddgrDimensionGroups = a})
      . _Default
      . _Coerce

instance FromJSON DeleteDimensionGroupResponse where
        parseJSON
          = withObject "DeleteDimensionGroupResponse"
              (\ o ->
                 DeleteDimensionGroupResponse' <$>
                   (o .:? "dimensionGroups" .!= mempty))

instance ToJSON DeleteDimensionGroupResponse where
        toJSON DeleteDimensionGroupResponse'{..}
          = object
              (catMaybes
                 [("dimensionGroups" .=) <$> _ddgrDimensionGroups])

-- | The request to copy a sheet across spreadsheets.
--
-- /See:/ 'copySheetToAnotherSpreadsheetRequest' smart constructor.
newtype CopySheetToAnotherSpreadsheetRequest =
  CopySheetToAnotherSpreadsheetRequest'
    { _cstasrDestinationSpreadsheetId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CopySheetToAnotherSpreadsheetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cstasrDestinationSpreadsheetId'
copySheetToAnotherSpreadsheetRequest
    :: CopySheetToAnotherSpreadsheetRequest
copySheetToAnotherSpreadsheetRequest =
  CopySheetToAnotherSpreadsheetRequest'
    {_cstasrDestinationSpreadsheetId = Nothing}


-- | The ID of the spreadsheet to copy the sheet to.
cstasrDestinationSpreadsheetId :: Lens' CopySheetToAnotherSpreadsheetRequest (Maybe Text)
cstasrDestinationSpreadsheetId
  = lens _cstasrDestinationSpreadsheetId
      (\ s a -> s{_cstasrDestinationSpreadsheetId = a})

instance FromJSON
           CopySheetToAnotherSpreadsheetRequest
         where
        parseJSON
          = withObject "CopySheetToAnotherSpreadsheetRequest"
              (\ o ->
                 CopySheetToAnotherSpreadsheetRequest' <$>
                   (o .:? "destinationSpreadsheetId"))

instance ToJSON CopySheetToAnotherSpreadsheetRequest
         where
        toJSON CopySheetToAnotherSpreadsheetRequest'{..}
          = object
              (catMaybes
                 [("destinationSpreadsheetId" .=) <$>
                    _cstasrDestinationSpreadsheetId])

-- | Adds a filter view.
--
-- /See:/ 'addFilterViewRequest' smart constructor.
newtype AddFilterViewRequest =
  AddFilterViewRequest'
    { _aFilter :: Maybe FilterView
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddFilterViewRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aFilter'
addFilterViewRequest
    :: AddFilterViewRequest
addFilterViewRequest = AddFilterViewRequest' {_aFilter = Nothing}


-- | The filter to add. The filterViewId field is optional; if one is not
-- set, an id will be randomly generated. (It is an error to specify the ID
-- of a filter that already exists.)
aFilter :: Lens' AddFilterViewRequest (Maybe FilterView)
aFilter = lens _aFilter (\ s a -> s{_aFilter = a})

instance FromJSON AddFilterViewRequest where
        parseJSON
          = withObject "AddFilterViewRequest"
              (\ o -> AddFilterViewRequest' <$> (o .:? "filter"))

instance ToJSON AddFilterViewRequest where
        toJSON AddFilterViewRequest'{..}
          = object (catMaybes [("filter" .=) <$> _aFilter])

-- | Metadata about a value in a pivot grouping.
--
-- /See:/ 'pivotGroupValueMetadata' smart constructor.
data PivotGroupValueMetadata =
  PivotGroupValueMetadata'
    { _pgvmValue     :: !(Maybe ExtendedValue)
    , _pgvmCollapsed :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PivotGroupValueMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgvmValue'
--
-- * 'pgvmCollapsed'
pivotGroupValueMetadata
    :: PivotGroupValueMetadata
pivotGroupValueMetadata =
  PivotGroupValueMetadata' {_pgvmValue = Nothing, _pgvmCollapsed = Nothing}


-- | The calculated value the metadata corresponds to. (Note that
-- formulaValue is not valid, because the values will be calculated.)
pgvmValue :: Lens' PivotGroupValueMetadata (Maybe ExtendedValue)
pgvmValue
  = lens _pgvmValue (\ s a -> s{_pgvmValue = a})

-- | True if the data corresponding to the value is collapsed.
pgvmCollapsed :: Lens' PivotGroupValueMetadata (Maybe Bool)
pgvmCollapsed
  = lens _pgvmCollapsed
      (\ s a -> s{_pgvmCollapsed = a})

instance FromJSON PivotGroupValueMetadata where
        parseJSON
          = withObject "PivotGroupValueMetadata"
              (\ o ->
                 PivotGroupValueMetadata' <$>
                   (o .:? "value") <*> (o .:? "collapsed"))

instance ToJSON PivotGroupValueMetadata where
        toJSON PivotGroupValueMetadata'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pgvmValue,
                  ("collapsed" .=) <$> _pgvmCollapsed])

-- | The response when clearing a range of values selected with DataFilters
-- in a spreadsheet.
--
-- /See:/ 'batchClearValuesByDataFilterResponse' smart constructor.
data BatchClearValuesByDataFilterResponse =
  BatchClearValuesByDataFilterResponse'
    { _bcvbdfrClearedRanges :: !(Maybe [Text])
    , _bcvbdfrSpreadsheetId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchClearValuesByDataFilterResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcvbdfrClearedRanges'
--
-- * 'bcvbdfrSpreadsheetId'
batchClearValuesByDataFilterResponse
    :: BatchClearValuesByDataFilterResponse
batchClearValuesByDataFilterResponse =
  BatchClearValuesByDataFilterResponse'
    {_bcvbdfrClearedRanges = Nothing, _bcvbdfrSpreadsheetId = Nothing}


-- | The ranges that were cleared, in A1 notation. (If the requests were for
-- an unbounded range or a ranger larger than the bounds of the sheet, this
-- will be the actual ranges that were cleared, bounded to the sheet\'s
-- limits.)
bcvbdfrClearedRanges :: Lens' BatchClearValuesByDataFilterResponse [Text]
bcvbdfrClearedRanges
  = lens _bcvbdfrClearedRanges
      (\ s a -> s{_bcvbdfrClearedRanges = a})
      . _Default
      . _Coerce

-- | The spreadsheet the updates were applied to.
bcvbdfrSpreadsheetId :: Lens' BatchClearValuesByDataFilterResponse (Maybe Text)
bcvbdfrSpreadsheetId
  = lens _bcvbdfrSpreadsheetId
      (\ s a -> s{_bcvbdfrSpreadsheetId = a})

instance FromJSON
           BatchClearValuesByDataFilterResponse
         where
        parseJSON
          = withObject "BatchClearValuesByDataFilterResponse"
              (\ o ->
                 BatchClearValuesByDataFilterResponse' <$>
                   (o .:? "clearedRanges" .!= mempty) <*>
                     (o .:? "spreadsheetId"))

instance ToJSON BatchClearValuesByDataFilterResponse
         where
        toJSON BatchClearValuesByDataFilterResponse'{..}
          = object
              (catMaybes
                 [("clearedRanges" .=) <$> _bcvbdfrClearedRanges,
                  ("spreadsheetId" .=) <$> _bcvbdfrSpreadsheetId])

-- | A single series of data for a waterfall chart.
--
-- /See:/ 'waterfallChartSeries' smart constructor.
data WaterfallChartSeries =
  WaterfallChartSeries'
    { _wcsData                 :: !(Maybe ChartData)
    , _wcsCustomSubtotals      :: !(Maybe [WaterfallChartCustomSubtotal])
    , _wcsNegativeColumnsStyle :: !(Maybe WaterfallChartColumnStyle)
    , _wcsHideTrailingSubtotal :: !(Maybe Bool)
    , _wcsSubtotalColumnsStyle :: !(Maybe WaterfallChartColumnStyle)
    , _wcsPositiveColumnsStyle :: !(Maybe WaterfallChartColumnStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'WaterfallChartSeries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wcsData'
--
-- * 'wcsCustomSubtotals'
--
-- * 'wcsNegativeColumnsStyle'
--
-- * 'wcsHideTrailingSubtotal'
--
-- * 'wcsSubtotalColumnsStyle'
--
-- * 'wcsPositiveColumnsStyle'
waterfallChartSeries
    :: WaterfallChartSeries
waterfallChartSeries =
  WaterfallChartSeries'
    { _wcsData = Nothing
    , _wcsCustomSubtotals = Nothing
    , _wcsNegativeColumnsStyle = Nothing
    , _wcsHideTrailingSubtotal = Nothing
    , _wcsSubtotalColumnsStyle = Nothing
    , _wcsPositiveColumnsStyle = Nothing
    }


-- | The data being visualized in this series.
wcsData :: Lens' WaterfallChartSeries (Maybe ChartData)
wcsData = lens _wcsData (\ s a -> s{_wcsData = a})

-- | Custom subtotal columns appearing in this series. The order in which
-- subtotals are defined is not significant. Only one subtotal may be
-- defined for each data point.
wcsCustomSubtotals :: Lens' WaterfallChartSeries [WaterfallChartCustomSubtotal]
wcsCustomSubtotals
  = lens _wcsCustomSubtotals
      (\ s a -> s{_wcsCustomSubtotals = a})
      . _Default
      . _Coerce

-- | Styles for all columns in this series with negative values.
wcsNegativeColumnsStyle :: Lens' WaterfallChartSeries (Maybe WaterfallChartColumnStyle)
wcsNegativeColumnsStyle
  = lens _wcsNegativeColumnsStyle
      (\ s a -> s{_wcsNegativeColumnsStyle = a})

-- | True to hide the subtotal column from the end of the series. By default,
-- a subtotal column will appear at the end of each series. Setting this
-- field to true will hide that subtotal column for this series.
wcsHideTrailingSubtotal :: Lens' WaterfallChartSeries (Maybe Bool)
wcsHideTrailingSubtotal
  = lens _wcsHideTrailingSubtotal
      (\ s a -> s{_wcsHideTrailingSubtotal = a})

-- | Styles for all subtotal columns in this series.
wcsSubtotalColumnsStyle :: Lens' WaterfallChartSeries (Maybe WaterfallChartColumnStyle)
wcsSubtotalColumnsStyle
  = lens _wcsSubtotalColumnsStyle
      (\ s a -> s{_wcsSubtotalColumnsStyle = a})

-- | Styles for all columns in this series with positive values.
wcsPositiveColumnsStyle :: Lens' WaterfallChartSeries (Maybe WaterfallChartColumnStyle)
wcsPositiveColumnsStyle
  = lens _wcsPositiveColumnsStyle
      (\ s a -> s{_wcsPositiveColumnsStyle = a})

instance FromJSON WaterfallChartSeries where
        parseJSON
          = withObject "WaterfallChartSeries"
              (\ o ->
                 WaterfallChartSeries' <$>
                   (o .:? "data") <*>
                     (o .:? "customSubtotals" .!= mempty)
                     <*> (o .:? "negativeColumnsStyle")
                     <*> (o .:? "hideTrailingSubtotal")
                     <*> (o .:? "subtotalColumnsStyle")
                     <*> (o .:? "positiveColumnsStyle"))

instance ToJSON WaterfallChartSeries where
        toJSON WaterfallChartSeries'{..}
          = object
              (catMaybes
                 [("data" .=) <$> _wcsData,
                  ("customSubtotals" .=) <$> _wcsCustomSubtotals,
                  ("negativeColumnsStyle" .=) <$>
                    _wcsNegativeColumnsStyle,
                  ("hideTrailingSubtotal" .=) <$>
                    _wcsHideTrailingSubtotal,
                  ("subtotalColumnsStyle" .=) <$>
                    _wcsSubtotalColumnsStyle,
                  ("positiveColumnsStyle" .=) <$>
                    _wcsPositiveColumnsStyle])

-- | Updates all cells in a range with new data.
--
-- /See:/ 'updateCellsRequest' smart constructor.
data UpdateCellsRequest =
  UpdateCellsRequest'
    { _updStart  :: !(Maybe GridCoordinate)
    , _updRows   :: !(Maybe [RowData])
    , _updRange  :: !(Maybe GridRange)
    , _updFields :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateCellsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'updStart'
--
-- * 'updRows'
--
-- * 'updRange'
--
-- * 'updFields'
updateCellsRequest
    :: UpdateCellsRequest
updateCellsRequest =
  UpdateCellsRequest'
    { _updStart = Nothing
    , _updRows = Nothing
    , _updRange = Nothing
    , _updFields = Nothing
    }


-- | The coordinate to start writing data at. Any number of rows and columns
-- (including a different number of columns per row) may be written.
updStart :: Lens' UpdateCellsRequest (Maybe GridCoordinate)
updStart = lens _updStart (\ s a -> s{_updStart = a})

-- | The data to write.
updRows :: Lens' UpdateCellsRequest [RowData]
updRows
  = lens _updRows (\ s a -> s{_updRows = a}) . _Default
      . _Coerce

-- | The range to write data to. If the data in rows does not cover the
-- entire requested range, the fields matching those set in fields will be
-- cleared.
updRange :: Lens' UpdateCellsRequest (Maybe GridRange)
updRange = lens _updRange (\ s a -> s{_updRange = a})

-- | The fields of CellData that should be updated. At least one field must
-- be specified. The root is the CellData; \'row.values.\' should not be
-- specified. A single \`\"*\"\` can be used as short-hand for listing
-- every field.
updFields :: Lens' UpdateCellsRequest (Maybe GFieldMask)
updFields
  = lens _updFields (\ s a -> s{_updFields = a})

instance FromJSON UpdateCellsRequest where
        parseJSON
          = withObject "UpdateCellsRequest"
              (\ o ->
                 UpdateCellsRequest' <$>
                   (o .:? "start") <*> (o .:? "rows" .!= mempty) <*>
                     (o .:? "range")
                     <*> (o .:? "fields"))

instance ToJSON UpdateCellsRequest where
        toJSON UpdateCellsRequest'{..}
          = object
              (catMaybes
                 [("start" .=) <$> _updStart,
                  ("rows" .=) <$> _updRows, ("range" .=) <$> _updRange,
                  ("fields" .=) <$> _updFields])

-- | The format of a cell.
--
-- /See:/ 'cellFormat' smart constructor.
data CellFormat =
  CellFormat'
    { _cfBOrders              :: !(Maybe BOrders)
    , _cfVerticalAlignment    :: !(Maybe CellFormatVerticalAlignment)
    , _cfBackgRoundColor      :: !(Maybe Color)
    , _cfTextRotation         :: !(Maybe TextRotation)
    , _cfHyperlinkDisplayType :: !(Maybe CellFormatHyperlinkDisplayType)
    , _cfWrapStrategy         :: !(Maybe CellFormatWrapStrategy)
    , _cfNumberFormat         :: !(Maybe NumberFormat)
    , _cfTextDirection        :: !(Maybe CellFormatTextDirection)
    , _cfTextFormat           :: !(Maybe TextFormat)
    , _cfHorizontalAlignment  :: !(Maybe CellFormatHorizontalAlignment)
    , _cfPadding              :: !(Maybe Padding)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CellFormat' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfBOrders'
--
-- * 'cfVerticalAlignment'
--
-- * 'cfBackgRoundColor'
--
-- * 'cfTextRotation'
--
-- * 'cfHyperlinkDisplayType'
--
-- * 'cfWrapStrategy'
--
-- * 'cfNumberFormat'
--
-- * 'cfTextDirection'
--
-- * 'cfTextFormat'
--
-- * 'cfHorizontalAlignment'
--
-- * 'cfPadding'
cellFormat
    :: CellFormat
cellFormat =
  CellFormat'
    { _cfBOrders = Nothing
    , _cfVerticalAlignment = Nothing
    , _cfBackgRoundColor = Nothing
    , _cfTextRotation = Nothing
    , _cfHyperlinkDisplayType = Nothing
    , _cfWrapStrategy = Nothing
    , _cfNumberFormat = Nothing
    , _cfTextDirection = Nothing
    , _cfTextFormat = Nothing
    , _cfHorizontalAlignment = Nothing
    , _cfPadding = Nothing
    }


-- | The borders of the cell.
cfBOrders :: Lens' CellFormat (Maybe BOrders)
cfBOrders
  = lens _cfBOrders (\ s a -> s{_cfBOrders = a})

-- | The vertical alignment of the value in the cell.
cfVerticalAlignment :: Lens' CellFormat (Maybe CellFormatVerticalAlignment)
cfVerticalAlignment
  = lens _cfVerticalAlignment
      (\ s a -> s{_cfVerticalAlignment = a})

-- | The background color of the cell.
cfBackgRoundColor :: Lens' CellFormat (Maybe Color)
cfBackgRoundColor
  = lens _cfBackgRoundColor
      (\ s a -> s{_cfBackgRoundColor = a})

-- | The rotation applied to text in a cell
cfTextRotation :: Lens' CellFormat (Maybe TextRotation)
cfTextRotation
  = lens _cfTextRotation
      (\ s a -> s{_cfTextRotation = a})

-- | How a hyperlink, if it exists, should be displayed in the cell.
cfHyperlinkDisplayType :: Lens' CellFormat (Maybe CellFormatHyperlinkDisplayType)
cfHyperlinkDisplayType
  = lens _cfHyperlinkDisplayType
      (\ s a -> s{_cfHyperlinkDisplayType = a})

-- | The wrap strategy for the value in the cell.
cfWrapStrategy :: Lens' CellFormat (Maybe CellFormatWrapStrategy)
cfWrapStrategy
  = lens _cfWrapStrategy
      (\ s a -> s{_cfWrapStrategy = a})

-- | A format describing how number values should be represented to the user.
cfNumberFormat :: Lens' CellFormat (Maybe NumberFormat)
cfNumberFormat
  = lens _cfNumberFormat
      (\ s a -> s{_cfNumberFormat = a})

-- | The direction of the text in the cell.
cfTextDirection :: Lens' CellFormat (Maybe CellFormatTextDirection)
cfTextDirection
  = lens _cfTextDirection
      (\ s a -> s{_cfTextDirection = a})

-- | The format of the text in the cell (unless overridden by a format run).
cfTextFormat :: Lens' CellFormat (Maybe TextFormat)
cfTextFormat
  = lens _cfTextFormat (\ s a -> s{_cfTextFormat = a})

-- | The horizontal alignment of the value in the cell.
cfHorizontalAlignment :: Lens' CellFormat (Maybe CellFormatHorizontalAlignment)
cfHorizontalAlignment
  = lens _cfHorizontalAlignment
      (\ s a -> s{_cfHorizontalAlignment = a})

-- | The padding of the cell.
cfPadding :: Lens' CellFormat (Maybe Padding)
cfPadding
  = lens _cfPadding (\ s a -> s{_cfPadding = a})

instance FromJSON CellFormat where
        parseJSON
          = withObject "CellFormat"
              (\ o ->
                 CellFormat' <$>
                   (o .:? "borders") <*> (o .:? "verticalAlignment") <*>
                     (o .:? "backgroundColor")
                     <*> (o .:? "textRotation")
                     <*> (o .:? "hyperlinkDisplayType")
                     <*> (o .:? "wrapStrategy")
                     <*> (o .:? "numberFormat")
                     <*> (o .:? "textDirection")
                     <*> (o .:? "textFormat")
                     <*> (o .:? "horizontalAlignment")
                     <*> (o .:? "padding"))

instance ToJSON CellFormat where
        toJSON CellFormat'{..}
          = object
              (catMaybes
                 [("borders" .=) <$> _cfBOrders,
                  ("verticalAlignment" .=) <$> _cfVerticalAlignment,
                  ("backgroundColor" .=) <$> _cfBackgRoundColor,
                  ("textRotation" .=) <$> _cfTextRotation,
                  ("hyperlinkDisplayType" .=) <$>
                    _cfHyperlinkDisplayType,
                  ("wrapStrategy" .=) <$> _cfWrapStrategy,
                  ("numberFormat" .=) <$> _cfNumberFormat,
                  ("textDirection" .=) <$> _cfTextDirection,
                  ("textFormat" .=) <$> _cfTextFormat,
                  ("horizontalAlignment" .=) <$>
                    _cfHorizontalAlignment,
                  ("padding" .=) <$> _cfPadding])

-- | Deletes the protected range with the given ID.
--
-- /See:/ 'deleteProtectedRangeRequest' smart constructor.
newtype DeleteProtectedRangeRequest =
  DeleteProtectedRangeRequest'
    { _dprrProtectedRangeId :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteProtectedRangeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dprrProtectedRangeId'
deleteProtectedRangeRequest
    :: DeleteProtectedRangeRequest
deleteProtectedRangeRequest =
  DeleteProtectedRangeRequest' {_dprrProtectedRangeId = Nothing}


-- | The ID of the protected range to delete.
dprrProtectedRangeId :: Lens' DeleteProtectedRangeRequest (Maybe Int32)
dprrProtectedRangeId
  = lens _dprrProtectedRangeId
      (\ s a -> s{_dprrProtectedRangeId = a})
      . mapping _Coerce

instance FromJSON DeleteProtectedRangeRequest where
        parseJSON
          = withObject "DeleteProtectedRangeRequest"
              (\ o ->
                 DeleteProtectedRangeRequest' <$>
                   (o .:? "protectedRangeId"))

instance ToJSON DeleteProtectedRangeRequest where
        toJSON DeleteProtectedRangeRequest'{..}
          = object
              (catMaybes
                 [("protectedRangeId" .=) <$> _dprrProtectedRangeId])

-- | Updates an existing protected range with the specified protectedRangeId.
--
-- /See:/ 'updateProtectedRangeRequest' smart constructor.
data UpdateProtectedRangeRequest =
  UpdateProtectedRangeRequest'
    { _uprrProtectedRange :: !(Maybe ProtectedRange)
    , _uprrFields         :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateProtectedRangeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uprrProtectedRange'
--
-- * 'uprrFields'
updateProtectedRangeRequest
    :: UpdateProtectedRangeRequest
updateProtectedRangeRequest =
  UpdateProtectedRangeRequest'
    {_uprrProtectedRange = Nothing, _uprrFields = Nothing}


-- | The protected range to update with the new properties.
uprrProtectedRange :: Lens' UpdateProtectedRangeRequest (Maybe ProtectedRange)
uprrProtectedRange
  = lens _uprrProtectedRange
      (\ s a -> s{_uprrProtectedRange = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`protectedRange\` is implied and should not be specified. A
-- single \`\"*\"\` can be used as short-hand for listing every field.
uprrFields :: Lens' UpdateProtectedRangeRequest (Maybe GFieldMask)
uprrFields
  = lens _uprrFields (\ s a -> s{_uprrFields = a})

instance FromJSON UpdateProtectedRangeRequest where
        parseJSON
          = withObject "UpdateProtectedRangeRequest"
              (\ o ->
                 UpdateProtectedRangeRequest' <$>
                   (o .:? "protectedRange") <*> (o .:? "fields"))

instance ToJSON UpdateProtectedRangeRequest where
        toJSON UpdateProtectedRangeRequest'{..}
          = object
              (catMaybes
                 [("protectedRange" .=) <$> _uprrProtectedRange,
                  ("fields" .=) <$> _uprrFields])

-- | The result of adding a sheet.
--
-- /See:/ 'addSheetResponse' smart constructor.
newtype AddSheetResponse =
  AddSheetResponse'
    { _aProperties :: Maybe SheetProperties
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddSheetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aProperties'
addSheetResponse
    :: AddSheetResponse
addSheetResponse = AddSheetResponse' {_aProperties = Nothing}


-- | The properties of the newly added sheet.
aProperties :: Lens' AddSheetResponse (Maybe SheetProperties)
aProperties
  = lens _aProperties (\ s a -> s{_aProperties = a})

instance FromJSON AddSheetResponse where
        parseJSON
          = withObject "AddSheetResponse"
              (\ o -> AddSheetResponse' <$> (o .:? "properties"))

instance ToJSON AddSheetResponse where
        toJSON AddSheetResponse'{..}
          = object
              (catMaybes [("properties" .=) <$> _aProperties])

-- | A protected range.
--
-- /See:/ 'protectedRange' smart constructor.
data ProtectedRange =
  ProtectedRange'
    { _prProtectedRangeId      :: !(Maybe (Textual Int32))
    , _prWarningOnly           :: !(Maybe Bool)
    , _prNamedRangeId          :: !(Maybe Text)
    , _prRange                 :: !(Maybe GridRange)
    , _prEditors               :: !(Maybe Editors)
    , _prUnprotectedRanges     :: !(Maybe [GridRange])
    , _prRequestingUserCanEdit :: !(Maybe Bool)
    , _prDescription           :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProtectedRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prProtectedRangeId'
--
-- * 'prWarningOnly'
--
-- * 'prNamedRangeId'
--
-- * 'prRange'
--
-- * 'prEditors'
--
-- * 'prUnprotectedRanges'
--
-- * 'prRequestingUserCanEdit'
--
-- * 'prDescription'
protectedRange
    :: ProtectedRange
protectedRange =
  ProtectedRange'
    { _prProtectedRangeId = Nothing
    , _prWarningOnly = Nothing
    , _prNamedRangeId = Nothing
    , _prRange = Nothing
    , _prEditors = Nothing
    , _prUnprotectedRanges = Nothing
    , _prRequestingUserCanEdit = Nothing
    , _prDescription = Nothing
    }


-- | The ID of the protected range. This field is read-only.
prProtectedRangeId :: Lens' ProtectedRange (Maybe Int32)
prProtectedRangeId
  = lens _prProtectedRangeId
      (\ s a -> s{_prProtectedRangeId = a})
      . mapping _Coerce

-- | True if this protected range will show a warning when editing.
-- Warning-based protection means that every user can edit data in the
-- protected range, except editing will prompt a warning asking the user to
-- confirm the edit. When writing: if this field is true, then editors is
-- ignored. Additionally, if this field is changed from true to false and
-- the \`editors\` field is not set (nor included in the field mask), then
-- the editors will be set to all the editors in the document.
prWarningOnly :: Lens' ProtectedRange (Maybe Bool)
prWarningOnly
  = lens _prWarningOnly
      (\ s a -> s{_prWarningOnly = a})

-- | The named range this protected range is backed by, if any. When writing,
-- only one of range or named_range_id may be set.
prNamedRangeId :: Lens' ProtectedRange (Maybe Text)
prNamedRangeId
  = lens _prNamedRangeId
      (\ s a -> s{_prNamedRangeId = a})

-- | The range that is being protected. The range may be fully unbounded, in
-- which case this is considered a protected sheet. When writing, only one
-- of range or named_range_id may be set.
prRange :: Lens' ProtectedRange (Maybe GridRange)
prRange = lens _prRange (\ s a -> s{_prRange = a})

-- | The users and groups with edit access to the protected range. This field
-- is only visible to users with edit access to the protected range and the
-- document. Editors are not supported with warning_only protection.
prEditors :: Lens' ProtectedRange (Maybe Editors)
prEditors
  = lens _prEditors (\ s a -> s{_prEditors = a})

-- | The list of unprotected ranges within a protected sheet. Unprotected
-- ranges are only supported on protected sheets.
prUnprotectedRanges :: Lens' ProtectedRange [GridRange]
prUnprotectedRanges
  = lens _prUnprotectedRanges
      (\ s a -> s{_prUnprotectedRanges = a})
      . _Default
      . _Coerce

-- | True if the user who requested this protected range can edit the
-- protected area. This field is read-only.
prRequestingUserCanEdit :: Lens' ProtectedRange (Maybe Bool)
prRequestingUserCanEdit
  = lens _prRequestingUserCanEdit
      (\ s a -> s{_prRequestingUserCanEdit = a})

-- | The description of this protected range.
prDescription :: Lens' ProtectedRange (Maybe Text)
prDescription
  = lens _prDescription
      (\ s a -> s{_prDescription = a})

instance FromJSON ProtectedRange where
        parseJSON
          = withObject "ProtectedRange"
              (\ o ->
                 ProtectedRange' <$>
                   (o .:? "protectedRangeId") <*> (o .:? "warningOnly")
                     <*> (o .:? "namedRangeId")
                     <*> (o .:? "range")
                     <*> (o .:? "editors")
                     <*> (o .:? "unprotectedRanges" .!= mempty)
                     <*> (o .:? "requestingUserCanEdit")
                     <*> (o .:? "description"))

instance ToJSON ProtectedRange where
        toJSON ProtectedRange'{..}
          = object
              (catMaybes
                 [("protectedRangeId" .=) <$> _prProtectedRangeId,
                  ("warningOnly" .=) <$> _prWarningOnly,
                  ("namedRangeId" .=) <$> _prNamedRangeId,
                  ("range" .=) <$> _prRange,
                  ("editors" .=) <$> _prEditors,
                  ("unprotectedRanges" .=) <$> _prUnprotectedRanges,
                  ("requestingUserCanEdit" .=) <$>
                    _prRequestingUserCanEdit,
                  ("description" .=) <$> _prDescription])

-- | An axis of the chart. A chart may not have more than one axis per axis
-- position.
--
-- /See:/ 'basicChartAxis' smart constructor.
data BasicChartAxis =
  BasicChartAxis'
    { _bcaTitleTextPosition :: !(Maybe TextPosition)
    , _bcaFormat            :: !(Maybe TextFormat)
    , _bcaTitle             :: !(Maybe Text)
    , _bcaPosition          :: !(Maybe BasicChartAxisPosition)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BasicChartAxis' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcaTitleTextPosition'
--
-- * 'bcaFormat'
--
-- * 'bcaTitle'
--
-- * 'bcaPosition'
basicChartAxis
    :: BasicChartAxis
basicChartAxis =
  BasicChartAxis'
    { _bcaTitleTextPosition = Nothing
    , _bcaFormat = Nothing
    , _bcaTitle = Nothing
    , _bcaPosition = Nothing
    }


-- | The axis title text position.
bcaTitleTextPosition :: Lens' BasicChartAxis (Maybe TextPosition)
bcaTitleTextPosition
  = lens _bcaTitleTextPosition
      (\ s a -> s{_bcaTitleTextPosition = a})

-- | The format of the title. Only valid if the axis is not associated with
-- the domain.
bcaFormat :: Lens' BasicChartAxis (Maybe TextFormat)
bcaFormat
  = lens _bcaFormat (\ s a -> s{_bcaFormat = a})

-- | The title of this axis. If set, this overrides any title inferred from
-- headers of the data.
bcaTitle :: Lens' BasicChartAxis (Maybe Text)
bcaTitle = lens _bcaTitle (\ s a -> s{_bcaTitle = a})

-- | The position of this axis.
bcaPosition :: Lens' BasicChartAxis (Maybe BasicChartAxisPosition)
bcaPosition
  = lens _bcaPosition (\ s a -> s{_bcaPosition = a})

instance FromJSON BasicChartAxis where
        parseJSON
          = withObject "BasicChartAxis"
              (\ o ->
                 BasicChartAxis' <$>
                   (o .:? "titleTextPosition") <*> (o .:? "format") <*>
                     (o .:? "title")
                     <*> (o .:? "position"))

instance ToJSON BasicChartAxis where
        toJSON BasicChartAxis'{..}
          = object
              (catMaybes
                 [("titleTextPosition" .=) <$> _bcaTitleTextPosition,
                  ("format" .=) <$> _bcaFormat,
                  ("title" .=) <$> _bcaTitle,
                  ("position" .=) <$> _bcaPosition])

-- | Data in the grid, as well as metadata about the dimensions.
--
-- /See:/ 'gridData' smart constructor.
data GridData =
  GridData'
    { _gdRowMetadata    :: !(Maybe [DimensionProperties])
    , _gdStartRow       :: !(Maybe (Textual Int32))
    , _gdRowData        :: !(Maybe [RowData])
    , _gdColumnMetadata :: !(Maybe [DimensionProperties])
    , _gdStartColumn    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GridData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdRowMetadata'
--
-- * 'gdStartRow'
--
-- * 'gdRowData'
--
-- * 'gdColumnMetadata'
--
-- * 'gdStartColumn'
gridData
    :: GridData
gridData =
  GridData'
    { _gdRowMetadata = Nothing
    , _gdStartRow = Nothing
    , _gdRowData = Nothing
    , _gdColumnMetadata = Nothing
    , _gdStartColumn = Nothing
    }


-- | Metadata about the requested rows in the grid, starting with the row in
-- start_row.
gdRowMetadata :: Lens' GridData [DimensionProperties]
gdRowMetadata
  = lens _gdRowMetadata
      (\ s a -> s{_gdRowMetadata = a})
      . _Default
      . _Coerce

-- | The first row this GridData refers to, zero-based.
gdStartRow :: Lens' GridData (Maybe Int32)
gdStartRow
  = lens _gdStartRow (\ s a -> s{_gdStartRow = a}) .
      mapping _Coerce

-- | The data in the grid, one entry per row, starting with the row in
-- startRow. The values in RowData will correspond to columns starting at
-- start_column.
gdRowData :: Lens' GridData [RowData]
gdRowData
  = lens _gdRowData (\ s a -> s{_gdRowData = a}) .
      _Default
      . _Coerce

-- | Metadata about the requested columns in the grid, starting with the
-- column in start_column.
gdColumnMetadata :: Lens' GridData [DimensionProperties]
gdColumnMetadata
  = lens _gdColumnMetadata
      (\ s a -> s{_gdColumnMetadata = a})
      . _Default
      . _Coerce

-- | The first column this GridData refers to, zero-based.
gdStartColumn :: Lens' GridData (Maybe Int32)
gdStartColumn
  = lens _gdStartColumn
      (\ s a -> s{_gdStartColumn = a})
      . mapping _Coerce

instance FromJSON GridData where
        parseJSON
          = withObject "GridData"
              (\ o ->
                 GridData' <$>
                   (o .:? "rowMetadata" .!= mempty) <*>
                     (o .:? "startRow")
                     <*> (o .:? "rowData" .!= mempty)
                     <*> (o .:? "columnMetadata" .!= mempty)
                     <*> (o .:? "startColumn"))

instance ToJSON GridData where
        toJSON GridData'{..}
          = object
              (catMaybes
                 [("rowMetadata" .=) <$> _gdRowMetadata,
                  ("startRow" .=) <$> _gdStartRow,
                  ("rowData" .=) <$> _gdRowData,
                  ("columnMetadata" .=) <$> _gdColumnMetadata,
                  ("startColumn" .=) <$> _gdStartColumn])

-- | The number format of a cell.
--
-- /See:/ 'numberFormat' smart constructor.
data NumberFormat =
  NumberFormat'
    { _nfPattern :: !(Maybe Text)
    , _nfType    :: !(Maybe NumberFormatType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NumberFormat' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nfPattern'
--
-- * 'nfType'
numberFormat
    :: NumberFormat
numberFormat = NumberFormat' {_nfPattern = Nothing, _nfType = Nothing}


-- | Pattern string used for formatting. If not set, a default pattern based
-- on the user\'s locale will be used if necessary for the given type. See
-- the [Date and Number Formats guide](\/sheets\/api\/guides\/formats) for
-- more information about the supported patterns.
nfPattern :: Lens' NumberFormat (Maybe Text)
nfPattern
  = lens _nfPattern (\ s a -> s{_nfPattern = a})

-- | The type of the number format. When writing, this field must be set.
nfType :: Lens' NumberFormat (Maybe NumberFormatType)
nfType = lens _nfType (\ s a -> s{_nfType = a})

instance FromJSON NumberFormat where
        parseJSON
          = withObject "NumberFormat"
              (\ o ->
                 NumberFormat' <$>
                   (o .:? "pattern") <*> (o .:? "type"))

instance ToJSON NumberFormat where
        toJSON NumberFormat'{..}
          = object
              (catMaybes
                 [("pattern" .=) <$> _nfPattern,
                  ("type" .=) <$> _nfType])

-- | The reply for batch updating a spreadsheet.
--
-- /See:/ 'batchUpdateSpreadsheetResponse' smart constructor.
data BatchUpdateSpreadsheetResponse =
  BatchUpdateSpreadsheetResponse'
    { _busrSpreadsheetId      :: !(Maybe Text)
    , _busrReplies            :: !(Maybe [Response])
    , _busrUpdatedSpreadsheet :: !(Maybe Spreadsheet)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchUpdateSpreadsheetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'busrSpreadsheetId'
--
-- * 'busrReplies'
--
-- * 'busrUpdatedSpreadsheet'
batchUpdateSpreadsheetResponse
    :: BatchUpdateSpreadsheetResponse
batchUpdateSpreadsheetResponse =
  BatchUpdateSpreadsheetResponse'
    { _busrSpreadsheetId = Nothing
    , _busrReplies = Nothing
    , _busrUpdatedSpreadsheet = Nothing
    }


-- | The spreadsheet the updates were applied to.
busrSpreadsheetId :: Lens' BatchUpdateSpreadsheetResponse (Maybe Text)
busrSpreadsheetId
  = lens _busrSpreadsheetId
      (\ s a -> s{_busrSpreadsheetId = a})

-- | The reply of the updates. This maps 1:1 with the updates, although
-- replies to some requests may be empty.
busrReplies :: Lens' BatchUpdateSpreadsheetResponse [Response]
busrReplies
  = lens _busrReplies (\ s a -> s{_busrReplies = a}) .
      _Default
      . _Coerce

-- | The spreadsheet after updates were applied. This is only set if
-- [BatchUpdateSpreadsheetRequest.include_spreadsheet_in_response] is
-- \`true\`.
busrUpdatedSpreadsheet :: Lens' BatchUpdateSpreadsheetResponse (Maybe Spreadsheet)
busrUpdatedSpreadsheet
  = lens _busrUpdatedSpreadsheet
      (\ s a -> s{_busrUpdatedSpreadsheet = a})

instance FromJSON BatchUpdateSpreadsheetResponse
         where
        parseJSON
          = withObject "BatchUpdateSpreadsheetResponse"
              (\ o ->
                 BatchUpdateSpreadsheetResponse' <$>
                   (o .:? "spreadsheetId") <*>
                     (o .:? "replies" .!= mempty)
                     <*> (o .:? "updatedSpreadsheet"))

instance ToJSON BatchUpdateSpreadsheetResponse where
        toJSON BatchUpdateSpreadsheetResponse'{..}
          = object
              (catMaybes
                 [("spreadsheetId" .=) <$> _busrSpreadsheetId,
                  ("replies" .=) <$> _busrReplies,
                  ("updatedSpreadsheet" .=) <$>
                    _busrUpdatedSpreadsheet])

-- | Filter that describes what data should be selected or returned from a
-- request.
--
-- /See:/ 'dataFilter' smart constructor.
data DataFilter =
  DataFilter'
    { _dfGridRange               :: !(Maybe GridRange)
    , _dfA1Range                 :: !(Maybe Text)
    , _dfDeveloperMetadataLookup :: !(Maybe DeveloperMetadataLookup)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfGridRange'
--
-- * 'dfA1Range'
--
-- * 'dfDeveloperMetadataLookup'
dataFilter
    :: DataFilter
dataFilter =
  DataFilter'
    { _dfGridRange = Nothing
    , _dfA1Range = Nothing
    , _dfDeveloperMetadataLookup = Nothing
    }


-- | Selects data that matches the range described by the GridRange.
dfGridRange :: Lens' DataFilter (Maybe GridRange)
dfGridRange
  = lens _dfGridRange (\ s a -> s{_dfGridRange = a})

-- | Selects data that matches the specified A1 range.
dfA1Range :: Lens' DataFilter (Maybe Text)
dfA1Range
  = lens _dfA1Range (\ s a -> s{_dfA1Range = a})

-- | Selects data associated with the developer metadata matching the
-- criteria described by this DeveloperMetadataLookup.
dfDeveloperMetadataLookup :: Lens' DataFilter (Maybe DeveloperMetadataLookup)
dfDeveloperMetadataLookup
  = lens _dfDeveloperMetadataLookup
      (\ s a -> s{_dfDeveloperMetadataLookup = a})

instance FromJSON DataFilter where
        parseJSON
          = withObject "DataFilter"
              (\ o ->
                 DataFilter' <$>
                   (o .:? "gridRange") <*> (o .:? "a1Range") <*>
                     (o .:? "developerMetadataLookup"))

instance ToJSON DataFilter where
        toJSON DataFilter'{..}
          = object
              (catMaybes
                 [("gridRange" .=) <$> _dfGridRange,
                  ("a1Range" .=) <$> _dfA1Range,
                  ("developerMetadataLookup" .=) <$>
                    _dfDeveloperMetadataLookup])

-- | Sets a data validation rule to every cell in the range. To clear
-- validation in a range, call this with no rule specified.
--
-- /See:/ 'setDataValidationRequest' smart constructor.
data SetDataValidationRequest =
  SetDataValidationRequest'
    { _sdvrRule  :: !(Maybe DataValidationRule)
    , _sdvrRange :: !(Maybe GridRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetDataValidationRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdvrRule'
--
-- * 'sdvrRange'
setDataValidationRequest
    :: SetDataValidationRequest
setDataValidationRequest =
  SetDataValidationRequest' {_sdvrRule = Nothing, _sdvrRange = Nothing}


-- | The data validation rule to set on each cell in the range, or empty to
-- clear the data validation in the range.
sdvrRule :: Lens' SetDataValidationRequest (Maybe DataValidationRule)
sdvrRule = lens _sdvrRule (\ s a -> s{_sdvrRule = a})

-- | The range the data validation rule should apply to.
sdvrRange :: Lens' SetDataValidationRequest (Maybe GridRange)
sdvrRange
  = lens _sdvrRange (\ s a -> s{_sdvrRange = a})

instance FromJSON SetDataValidationRequest where
        parseJSON
          = withObject "SetDataValidationRequest"
              (\ o ->
                 SetDataValidationRequest' <$>
                   (o .:? "rule") <*> (o .:? "range"))

instance ToJSON SetDataValidationRequest where
        toJSON SetDataValidationRequest'{..}
          = object
              (catMaybes
                 [("rule" .=) <$> _sdvrRule,
                  ("range" .=) <$> _sdvrRange])

-- | Properties referring a single dimension (either row or column). If both
-- BandedRange.row_properties and BandedRange.column_properties are set,
-- the fill colors are applied to cells according to the following rules: *
-- header_color and footer_color take priority over band colors. *
-- first_band_color takes priority over second_band_color. * row_properties
-- takes priority over column_properties. For example, the first row color
-- takes priority over the first column color, but the first column color
-- takes priority over the second row color. Similarly, the row header
-- takes priority over the column header in the top left cell, but the
-- column header takes priority over the first row color if the row header
-- is not set.
--
-- /See:/ 'bandingProperties' smart constructor.
data BandingProperties =
  BandingProperties'
    { _bpSecondBandColor :: !(Maybe Color)
    , _bpHeaderColor     :: !(Maybe Color)
    , _bpFooterColor     :: !(Maybe Color)
    , _bpFirstBandColor  :: !(Maybe Color)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BandingProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bpSecondBandColor'
--
-- * 'bpHeaderColor'
--
-- * 'bpFooterColor'
--
-- * 'bpFirstBandColor'
bandingProperties
    :: BandingProperties
bandingProperties =
  BandingProperties'
    { _bpSecondBandColor = Nothing
    , _bpHeaderColor = Nothing
    , _bpFooterColor = Nothing
    , _bpFirstBandColor = Nothing
    }


-- | The second color that is alternating. (Required)
bpSecondBandColor :: Lens' BandingProperties (Maybe Color)
bpSecondBandColor
  = lens _bpSecondBandColor
      (\ s a -> s{_bpSecondBandColor = a})

-- | The color of the first row or column. If this field is set, the first
-- row or column will be filled with this color and the colors will
-- alternate between first_band_color and second_band_color starting from
-- the second row or column. Otherwise, the first row or column will be
-- filled with first_band_color and the colors will proceed to alternate as
-- they normally would.
bpHeaderColor :: Lens' BandingProperties (Maybe Color)
bpHeaderColor
  = lens _bpHeaderColor
      (\ s a -> s{_bpHeaderColor = a})

-- | The color of the last row or column. If this field is not set, the last
-- row or column will be filled with either first_band_color or
-- second_band_color, depending on the color of the previous row or column.
bpFooterColor :: Lens' BandingProperties (Maybe Color)
bpFooterColor
  = lens _bpFooterColor
      (\ s a -> s{_bpFooterColor = a})

-- | The first color that is alternating. (Required)
bpFirstBandColor :: Lens' BandingProperties (Maybe Color)
bpFirstBandColor
  = lens _bpFirstBandColor
      (\ s a -> s{_bpFirstBandColor = a})

instance FromJSON BandingProperties where
        parseJSON
          = withObject "BandingProperties"
              (\ o ->
                 BandingProperties' <$>
                   (o .:? "secondBandColor") <*> (o .:? "headerColor")
                     <*> (o .:? "footerColor")
                     <*> (o .:? "firstBandColor"))

instance ToJSON BandingProperties where
        toJSON BandingProperties'{..}
          = object
              (catMaybes
                 [("secondBandColor" .=) <$> _bpSecondBandColor,
                  ("headerColor" .=) <$> _bpHeaderColor,
                  ("footerColor" .=) <$> _bpFooterColor,
                  ("firstBandColor" .=) <$> _bpFirstBandColor])

-- | Duplicates a particular filter view.
--
-- /See:/ 'duplicateFilterViewRequest' smart constructor.
newtype DuplicateFilterViewRequest =
  DuplicateFilterViewRequest'
    { _dFilterId :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DuplicateFilterViewRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dFilterId'
duplicateFilterViewRequest
    :: DuplicateFilterViewRequest
duplicateFilterViewRequest = DuplicateFilterViewRequest' {_dFilterId = Nothing}


-- | The ID of the filter being duplicated.
dFilterId :: Lens' DuplicateFilterViewRequest (Maybe Int32)
dFilterId
  = lens _dFilterId (\ s a -> s{_dFilterId = a}) .
      mapping _Coerce

instance FromJSON DuplicateFilterViewRequest where
        parseJSON
          = withObject "DuplicateFilterViewRequest"
              (\ o ->
                 DuplicateFilterViewRequest' <$> (o .:? "filterId"))

instance ToJSON DuplicateFilterViewRequest where
        toJSON DuplicateFilterViewRequest'{..}
          = object (catMaybes [("filterId" .=) <$> _dFilterId])

-- | A single grouping (either row or column) in a pivot table.
--
-- /See:/ 'pivotGroup' smart constructor.
data PivotGroup =
  PivotGroup'
    { _pgRepeatHeadings     :: !(Maybe Bool)
    , _pgValueMetadata      :: !(Maybe [PivotGroupValueMetadata])
    , _pgSourceColumnOffSet :: !(Maybe (Textual Int32))
    , _pgSortOrder          :: !(Maybe PivotGroupSortOrder)
    , _pgShowTotals         :: !(Maybe Bool)
    , _pgValueBucket        :: !(Maybe PivotGroupSortValueBucket)
    , _pgLabel              :: !(Maybe Text)
    , _pgGroupRule          :: !(Maybe PivotGroupRule)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PivotGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgRepeatHeadings'
--
-- * 'pgValueMetadata'
--
-- * 'pgSourceColumnOffSet'
--
-- * 'pgSortOrder'
--
-- * 'pgShowTotals'
--
-- * 'pgValueBucket'
--
-- * 'pgLabel'
--
-- * 'pgGroupRule'
pivotGroup
    :: PivotGroup
pivotGroup =
  PivotGroup'
    { _pgRepeatHeadings = Nothing
    , _pgValueMetadata = Nothing
    , _pgSourceColumnOffSet = Nothing
    , _pgSortOrder = Nothing
    , _pgShowTotals = Nothing
    , _pgValueBucket = Nothing
    , _pgLabel = Nothing
    , _pgGroupRule = Nothing
    }


-- | True if the headings in this pivot group should be repeated. This is
-- only valid for row groupings and is ignored by columns. By default, we
-- minimize repitition of headings by not showing higher level headings
-- where they are the same. For example, even though the third row below
-- corresponds to \"Q1 Mar\", \"Q1\" is not shown because it is redundant
-- with previous rows. Setting repeat_headings to true would cause \"Q1\"
-- to be repeated for \"Feb\" and \"Mar\". +--------------+ | Q1 | Jan | |
-- | Feb | | | Mar | +--------+-----+ | Q1 Total | +--------------+
pgRepeatHeadings :: Lens' PivotGroup (Maybe Bool)
pgRepeatHeadings
  = lens _pgRepeatHeadings
      (\ s a -> s{_pgRepeatHeadings = a})

-- | Metadata about values in the grouping.
pgValueMetadata :: Lens' PivotGroup [PivotGroupValueMetadata]
pgValueMetadata
  = lens _pgValueMetadata
      (\ s a -> s{_pgValueMetadata = a})
      . _Default
      . _Coerce

-- | The column offset of the source range that this grouping is based on.
-- For example, if the source was \`C10:E15\`, a \`sourceColumnOffset\` of
-- \`0\` means this group refers to column \`C\`, whereas the offset \`1\`
-- would refer to column \`D\`.
pgSourceColumnOffSet :: Lens' PivotGroup (Maybe Int32)
pgSourceColumnOffSet
  = lens _pgSourceColumnOffSet
      (\ s a -> s{_pgSourceColumnOffSet = a})
      . mapping _Coerce

-- | The order the values in this group should be sorted.
pgSortOrder :: Lens' PivotGroup (Maybe PivotGroupSortOrder)
pgSortOrder
  = lens _pgSortOrder (\ s a -> s{_pgSortOrder = a})

-- | True if the pivot table should include the totals for this grouping.
pgShowTotals :: Lens' PivotGroup (Maybe Bool)
pgShowTotals
  = lens _pgShowTotals (\ s a -> s{_pgShowTotals = a})

-- | The bucket of the opposite pivot group to sort by. If not specified,
-- sorting is alphabetical by this group\'s values.
pgValueBucket :: Lens' PivotGroup (Maybe PivotGroupSortValueBucket)
pgValueBucket
  = lens _pgValueBucket
      (\ s a -> s{_pgValueBucket = a})

-- | The labels to use for the row\/column groups which can be customized.
-- For example, in the following pivot table, the row label is \`Region\`
-- (which could be renamed to \`State\`) and the column label is
-- \`Product\` (which could be renamed \`Item\`). Pivot tables created
-- before December 2017 do not have header labels. If you\'d like to add
-- header labels to an existing pivot table, please delete the existing
-- pivot table and then create a new pivot table with same parameters.
-- +--------------+---------+-------+ | SUM of Units | Product | | | Region
-- | Pen | Paper | +--------------+---------+-------+ | New York | 345 | 98
-- | | Oregon | 234 | 123 | | Tennessee | 531 | 415 |
-- +--------------+---------+-------+ | Grand Total | 1110 | 636 |
-- +--------------+---------+-------+
pgLabel :: Lens' PivotGroup (Maybe Text)
pgLabel = lens _pgLabel (\ s a -> s{_pgLabel = a})

-- | The group rule to apply to this row\/column group.
pgGroupRule :: Lens' PivotGroup (Maybe PivotGroupRule)
pgGroupRule
  = lens _pgGroupRule (\ s a -> s{_pgGroupRule = a})

instance FromJSON PivotGroup where
        parseJSON
          = withObject "PivotGroup"
              (\ o ->
                 PivotGroup' <$>
                   (o .:? "repeatHeadings") <*>
                     (o .:? "valueMetadata" .!= mempty)
                     <*> (o .:? "sourceColumnOffset")
                     <*> (o .:? "sortOrder")
                     <*> (o .:? "showTotals")
                     <*> (o .:? "valueBucket")
                     <*> (o .:? "label")
                     <*> (o .:? "groupRule"))

instance ToJSON PivotGroup where
        toJSON PivotGroup'{..}
          = object
              (catMaybes
                 [("repeatHeadings" .=) <$> _pgRepeatHeadings,
                  ("valueMetadata" .=) <$> _pgValueMetadata,
                  ("sourceColumnOffset" .=) <$> _pgSourceColumnOffSet,
                  ("sortOrder" .=) <$> _pgSortOrder,
                  ("showTotals" .=) <$> _pgShowTotals,
                  ("valueBucket" .=) <$> _pgValueBucket,
                  ("label" .=) <$> _pgLabel,
                  ("groupRule" .=) <$> _pgGroupRule])

-- | The result of adding a banded range.
--
-- /See:/ 'addBandingResponse' smart constructor.
newtype AddBandingResponse =
  AddBandingResponse'
    { _aBandedRange :: Maybe BandedRange
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddBandingResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aBandedRange'
addBandingResponse
    :: AddBandingResponse
addBandingResponse = AddBandingResponse' {_aBandedRange = Nothing}


-- | The banded range that was added.
aBandedRange :: Lens' AddBandingResponse (Maybe BandedRange)
aBandedRange
  = lens _aBandedRange (\ s a -> s{_aBandedRange = a})

instance FromJSON AddBandingResponse where
        parseJSON
          = withObject "AddBandingResponse"
              (\ o ->
                 AddBandingResponse' <$> (o .:? "bandedRange"))

instance ToJSON AddBandingResponse where
        toJSON AddBandingResponse'{..}
          = object
              (catMaybes [("bandedRange" .=) <$> _aBandedRange])

-- | An </chart/interactive/docs/gallery/orgchart org chart>. Org charts
-- require a unique set of labels in labels and may optionally include
-- parent_labels and tooltips. parent_labels contain, for each node, the
-- label identifying the parent node. tooltips contain, for each node, an
-- optional tooltip. For example, to describe an OrgChart with Alice as the
-- CEO, Bob as the President (reporting to Alice) and Cathy as VP of Sales
-- (also reporting to Alice), have labels contain \"Alice\", \"Bob\",
-- \"Cathy\", parent_labels contain \"\", \"Alice\", \"Alice\" and tooltips
-- contain \"CEO\", \"President\", \"VP Sales\".
--
-- /See:/ 'orgChartSpec' smart constructor.
data OrgChartSpec =
  OrgChartSpec'
    { _ocsNodeColor         :: !(Maybe Color)
    , _ocsNodeSize          :: !(Maybe OrgChartSpecNodeSize)
    , _ocsTooltips          :: !(Maybe ChartData)
    , _ocsSelectedNodeColor :: !(Maybe Color)
    , _ocsLabels            :: !(Maybe ChartData)
    , _ocsParentLabels      :: !(Maybe ChartData)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrgChartSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocsNodeColor'
--
-- * 'ocsNodeSize'
--
-- * 'ocsTooltips'
--
-- * 'ocsSelectedNodeColor'
--
-- * 'ocsLabels'
--
-- * 'ocsParentLabels'
orgChartSpec
    :: OrgChartSpec
orgChartSpec =
  OrgChartSpec'
    { _ocsNodeColor = Nothing
    , _ocsNodeSize = Nothing
    , _ocsTooltips = Nothing
    , _ocsSelectedNodeColor = Nothing
    , _ocsLabels = Nothing
    , _ocsParentLabels = Nothing
    }


-- | The color of the org chart nodes.
ocsNodeColor :: Lens' OrgChartSpec (Maybe Color)
ocsNodeColor
  = lens _ocsNodeColor (\ s a -> s{_ocsNodeColor = a})

-- | The size of the org chart nodes.
ocsNodeSize :: Lens' OrgChartSpec (Maybe OrgChartSpecNodeSize)
ocsNodeSize
  = lens _ocsNodeSize (\ s a -> s{_ocsNodeSize = a})

-- | The data containing the tooltip for the corresponding node. A blank
-- value results in no tooltip being displayed for the node. This field is
-- optional.
ocsTooltips :: Lens' OrgChartSpec (Maybe ChartData)
ocsTooltips
  = lens _ocsTooltips (\ s a -> s{_ocsTooltips = a})

-- | The color of the selected org chart nodes.
ocsSelectedNodeColor :: Lens' OrgChartSpec (Maybe Color)
ocsSelectedNodeColor
  = lens _ocsSelectedNodeColor
      (\ s a -> s{_ocsSelectedNodeColor = a})

-- | The data containing the labels for all the nodes in the chart. Labels
-- must be unique.
ocsLabels :: Lens' OrgChartSpec (Maybe ChartData)
ocsLabels
  = lens _ocsLabels (\ s a -> s{_ocsLabels = a})

-- | The data containing the label of the parent for the corresponding node.
-- A blank value indicates that the node has no parent and is a top-level
-- node. This field is optional.
ocsParentLabels :: Lens' OrgChartSpec (Maybe ChartData)
ocsParentLabels
  = lens _ocsParentLabels
      (\ s a -> s{_ocsParentLabels = a})

instance FromJSON OrgChartSpec where
        parseJSON
          = withObject "OrgChartSpec"
              (\ o ->
                 OrgChartSpec' <$>
                   (o .:? "nodeColor") <*> (o .:? "nodeSize") <*>
                     (o .:? "tooltips")
                     <*> (o .:? "selectedNodeColor")
                     <*> (o .:? "labels")
                     <*> (o .:? "parentLabels"))

instance ToJSON OrgChartSpec where
        toJSON OrgChartSpec'{..}
          = object
              (catMaybes
                 [("nodeColor" .=) <$> _ocsNodeColor,
                  ("nodeSize" .=) <$> _ocsNodeSize,
                  ("tooltips" .=) <$> _ocsTooltips,
                  ("selectedNodeColor" .=) <$> _ocsSelectedNodeColor,
                  ("labels" .=) <$> _ocsLabels,
                  ("parentLabels" .=) <$> _ocsParentLabels])

-- | Randomizes the order of the rows in a range.
--
-- /See:/ 'randomizeRangeRequest' smart constructor.
newtype RandomizeRangeRequest =
  RandomizeRangeRequest'
    { _rrrRange :: Maybe GridRange
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RandomizeRangeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrrRange'
randomizeRangeRequest
    :: RandomizeRangeRequest
randomizeRangeRequest = RandomizeRangeRequest' {_rrrRange = Nothing}


-- | The range to randomize.
rrrRange :: Lens' RandomizeRangeRequest (Maybe GridRange)
rrrRange = lens _rrrRange (\ s a -> s{_rrrRange = a})

instance FromJSON RandomizeRangeRequest where
        parseJSON
          = withObject "RandomizeRangeRequest"
              (\ o -> RandomizeRangeRequest' <$> (o .:? "range"))

instance ToJSON RandomizeRangeRequest where
        toJSON RandomizeRangeRequest'{..}
          = object (catMaybes [("range" .=) <$> _rrrRange])

-- | A histogram series containing the series color and data.
--
-- /See:/ 'histogramSeries' smart constructor.
data HistogramSeries =
  HistogramSeries'
    { _hsBarColor :: !(Maybe Color)
    , _hsData     :: !(Maybe ChartData)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HistogramSeries' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hsBarColor'
--
-- * 'hsData'
histogramSeries
    :: HistogramSeries
histogramSeries = HistogramSeries' {_hsBarColor = Nothing, _hsData = Nothing}


-- | The color of the column representing this series in each bucket. This
-- field is optional.
hsBarColor :: Lens' HistogramSeries (Maybe Color)
hsBarColor
  = lens _hsBarColor (\ s a -> s{_hsBarColor = a})

-- | The data for this histogram series.
hsData :: Lens' HistogramSeries (Maybe ChartData)
hsData = lens _hsData (\ s a -> s{_hsData = a})

instance FromJSON HistogramSeries where
        parseJSON
          = withObject "HistogramSeries"
              (\ o ->
                 HistogramSeries' <$>
                   (o .:? "barColor") <*> (o .:? "data"))

instance ToJSON HistogramSeries where
        toJSON HistogramSeries'{..}
          = object
              (catMaybes
                 [("barColor" .=) <$> _hsBarColor,
                  ("data" .=) <$> _hsData])

-- | A </chart/interactive/docs/gallery/treemap Treemap chart>.
--
-- /See:/ 'treemapChartSpec' smart constructor.
data TreemapChartSpec =
  TreemapChartSpec'
    { _tcsHintedLevels :: !(Maybe (Textual Int32))
    , _tcsMaxValue     :: !(Maybe (Textual Double))
    , _tcsHeaderColor  :: !(Maybe Color)
    , _tcsSizeData     :: !(Maybe ChartData)
    , _tcsColorData    :: !(Maybe ChartData)
    , _tcsHideTooltips :: !(Maybe Bool)
    , _tcsLevels       :: !(Maybe (Textual Int32))
    , _tcsLabels       :: !(Maybe ChartData)
    , _tcsColorScale   :: !(Maybe TreemapChartColorScale)
    , _tcsTextFormat   :: !(Maybe TextFormat)
    , _tcsMinValue     :: !(Maybe (Textual Double))
    , _tcsParentLabels :: !(Maybe ChartData)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TreemapChartSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcsHintedLevels'
--
-- * 'tcsMaxValue'
--
-- * 'tcsHeaderColor'
--
-- * 'tcsSizeData'
--
-- * 'tcsColorData'
--
-- * 'tcsHideTooltips'
--
-- * 'tcsLevels'
--
-- * 'tcsLabels'
--
-- * 'tcsColorScale'
--
-- * 'tcsTextFormat'
--
-- * 'tcsMinValue'
--
-- * 'tcsParentLabels'
treemapChartSpec
    :: TreemapChartSpec
treemapChartSpec =
  TreemapChartSpec'
    { _tcsHintedLevels = Nothing
    , _tcsMaxValue = Nothing
    , _tcsHeaderColor = Nothing
    , _tcsSizeData = Nothing
    , _tcsColorData = Nothing
    , _tcsHideTooltips = Nothing
    , _tcsLevels = Nothing
    , _tcsLabels = Nothing
    , _tcsColorScale = Nothing
    , _tcsTextFormat = Nothing
    , _tcsMinValue = Nothing
    , _tcsParentLabels = Nothing
    }


-- | The number of additional data levels beyond the labeled levels to be
-- shown on the treemap chart. These levels are not interactive and are
-- shown without their labels. Defaults to 0 if not specified.
tcsHintedLevels :: Lens' TreemapChartSpec (Maybe Int32)
tcsHintedLevels
  = lens _tcsHintedLevels
      (\ s a -> s{_tcsHintedLevels = a})
      . mapping _Coerce

-- | The maximum possible data value. Cells with values greater than this
-- will have the same color as cells with this value. If not specified,
-- defaults to the actual maximum value from color_data, or the maximum
-- value from size_data if color_data is not specified.
tcsMaxValue :: Lens' TreemapChartSpec (Maybe Double)
tcsMaxValue
  = lens _tcsMaxValue (\ s a -> s{_tcsMaxValue = a}) .
      mapping _Coerce

-- | The background color for header cells.
tcsHeaderColor :: Lens' TreemapChartSpec (Maybe Color)
tcsHeaderColor
  = lens _tcsHeaderColor
      (\ s a -> s{_tcsHeaderColor = a})

-- | The data that determines the size of each treemap data cell. This data
-- is expected to be numeric. The cells corresponding to non-numeric or
-- missing data will not be rendered. If color_data is not specified, this
-- data is used to determine data cell background colors as well.
tcsSizeData :: Lens' TreemapChartSpec (Maybe ChartData)
tcsSizeData
  = lens _tcsSizeData (\ s a -> s{_tcsSizeData = a})

-- | The data that determines the background color of each treemap data cell.
-- This field is optional. If not specified, size_data is used to determine
-- background colors. If specified, the data is expected to be numeric.
-- color_scale will determine how the values in this data map to data cell
-- background colors.
tcsColorData :: Lens' TreemapChartSpec (Maybe ChartData)
tcsColorData
  = lens _tcsColorData (\ s a -> s{_tcsColorData = a})

-- | True to hide tooltips.
tcsHideTooltips :: Lens' TreemapChartSpec (Maybe Bool)
tcsHideTooltips
  = lens _tcsHideTooltips
      (\ s a -> s{_tcsHideTooltips = a})

-- | The number of data levels to show on the treemap chart. These levels are
-- interactive and are shown with their labels. Defaults to 2 if not
-- specified.
tcsLevels :: Lens' TreemapChartSpec (Maybe Int32)
tcsLevels
  = lens _tcsLevels (\ s a -> s{_tcsLevels = a}) .
      mapping _Coerce

-- | The data that contains the treemap cell labels.
tcsLabels :: Lens' TreemapChartSpec (Maybe ChartData)
tcsLabels
  = lens _tcsLabels (\ s a -> s{_tcsLabels = a})

-- | The color scale for data cells in the treemap chart. Data cells are
-- assigned colors based on their color values. These color values come
-- from color_data, or from size_data if color_data is not specified. Cells
-- with color values less than or equal to min_value will have
-- minValueColor as their background color. Cells with color values greater
-- than or equal to max_value will have maxValueColor as their background
-- color. Cells with color values between min_value and max_value will have
-- background colors on a gradient between minValueColor and maxValueColor,
-- the midpoint of the gradient being midValueColor. Cells with missing or
-- non-numeric color values will have noDataColor as their background
-- color.
tcsColorScale :: Lens' TreemapChartSpec (Maybe TreemapChartColorScale)
tcsColorScale
  = lens _tcsColorScale
      (\ s a -> s{_tcsColorScale = a})

-- | The text format for all labels on the chart.
tcsTextFormat :: Lens' TreemapChartSpec (Maybe TextFormat)
tcsTextFormat
  = lens _tcsTextFormat
      (\ s a -> s{_tcsTextFormat = a})

-- | The minimum possible data value. Cells with values less than this will
-- have the same color as cells with this value. If not specified, defaults
-- to the actual minimum value from color_data, or the minimum value from
-- size_data if color_data is not specified.
tcsMinValue :: Lens' TreemapChartSpec (Maybe Double)
tcsMinValue
  = lens _tcsMinValue (\ s a -> s{_tcsMinValue = a}) .
      mapping _Coerce

-- | The data the contains the treemap cells\' parent labels.
tcsParentLabels :: Lens' TreemapChartSpec (Maybe ChartData)
tcsParentLabels
  = lens _tcsParentLabels
      (\ s a -> s{_tcsParentLabels = a})

instance FromJSON TreemapChartSpec where
        parseJSON
          = withObject "TreemapChartSpec"
              (\ o ->
                 TreemapChartSpec' <$>
                   (o .:? "hintedLevels") <*> (o .:? "maxValue") <*>
                     (o .:? "headerColor")
                     <*> (o .:? "sizeData")
                     <*> (o .:? "colorData")
                     <*> (o .:? "hideTooltips")
                     <*> (o .:? "levels")
                     <*> (o .:? "labels")
                     <*> (o .:? "colorScale")
                     <*> (o .:? "textFormat")
                     <*> (o .:? "minValue")
                     <*> (o .:? "parentLabels"))

instance ToJSON TreemapChartSpec where
        toJSON TreemapChartSpec'{..}
          = object
              (catMaybes
                 [("hintedLevels" .=) <$> _tcsHintedLevels,
                  ("maxValue" .=) <$> _tcsMaxValue,
                  ("headerColor" .=) <$> _tcsHeaderColor,
                  ("sizeData" .=) <$> _tcsSizeData,
                  ("colorData" .=) <$> _tcsColorData,
                  ("hideTooltips" .=) <$> _tcsHideTooltips,
                  ("levels" .=) <$> _tcsLevels,
                  ("labels" .=) <$> _tcsLabels,
                  ("colorScale" .=) <$> _tcsColorScale,
                  ("textFormat" .=) <$> _tcsTextFormat,
                  ("minValue" .=) <$> _tcsMinValue,
                  ("parentLabels" .=) <$> _tcsParentLabels])

-- | A rule describing a conditional format.
--
-- /See:/ 'conditionalFormatRule' smart constructor.
data ConditionalFormatRule =
  ConditionalFormatRule'
    { _cfrBooleanRule  :: !(Maybe BooleanRule)
    , _cfrGradientRule :: !(Maybe GradientRule)
    , _cfrRanges       :: !(Maybe [GridRange])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConditionalFormatRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfrBooleanRule'
--
-- * 'cfrGradientRule'
--
-- * 'cfrRanges'
conditionalFormatRule
    :: ConditionalFormatRule
conditionalFormatRule =
  ConditionalFormatRule'
    { _cfrBooleanRule = Nothing
    , _cfrGradientRule = Nothing
    , _cfrRanges = Nothing
    }


-- | The formatting is either \"on\" or \"off\" according to the rule.
cfrBooleanRule :: Lens' ConditionalFormatRule (Maybe BooleanRule)
cfrBooleanRule
  = lens _cfrBooleanRule
      (\ s a -> s{_cfrBooleanRule = a})

-- | The formatting will vary based on the gradients in the rule.
cfrGradientRule :: Lens' ConditionalFormatRule (Maybe GradientRule)
cfrGradientRule
  = lens _cfrGradientRule
      (\ s a -> s{_cfrGradientRule = a})

-- | The ranges that are formatted if the condition is true. All the ranges
-- must be on the same grid.
cfrRanges :: Lens' ConditionalFormatRule [GridRange]
cfrRanges
  = lens _cfrRanges (\ s a -> s{_cfrRanges = a}) .
      _Default
      . _Coerce

instance FromJSON ConditionalFormatRule where
        parseJSON
          = withObject "ConditionalFormatRule"
              (\ o ->
                 ConditionalFormatRule' <$>
                   (o .:? "booleanRule") <*> (o .:? "gradientRule") <*>
                     (o .:? "ranges" .!= mempty))

instance ToJSON ConditionalFormatRule where
        toJSON ConditionalFormatRule'{..}
          = object
              (catMaybes
                 [("booleanRule" .=) <$> _cfrBooleanRule,
                  ("gradientRule" .=) <$> _cfrGradientRule,
                  ("ranges" .=) <$> _cfrRanges])

-- | The specification for a basic chart. See BasicChartType for the list of
-- charts this supports.
--
-- /See:/ 'basicChartSpec' smart constructor.
data BasicChartSpec =
  BasicChartSpec'
    { _basHeaderCount      :: !(Maybe (Textual Int32))
    , _basLineSmoothing    :: !(Maybe Bool)
    , _basInterpolateNulls :: !(Maybe Bool)
    , _basStackedType      :: !(Maybe BasicChartSpecStackedType)
    , _basLegendPosition   :: !(Maybe BasicChartSpecLegendPosition)
    , _basSeries           :: !(Maybe [BasicChartSeries])
    , _basCompareMode      :: !(Maybe BasicChartSpecCompareMode)
    , _basChartType        :: !(Maybe BasicChartSpecChartType)
    , _basThreeDimensional :: !(Maybe Bool)
    , _basDomains          :: !(Maybe [BasicChartDomain])
    , _basAxis             :: !(Maybe [BasicChartAxis])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BasicChartSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'basHeaderCount'
--
-- * 'basLineSmoothing'
--
-- * 'basInterpolateNulls'
--
-- * 'basStackedType'
--
-- * 'basLegendPosition'
--
-- * 'basSeries'
--
-- * 'basCompareMode'
--
-- * 'basChartType'
--
-- * 'basThreeDimensional'
--
-- * 'basDomains'
--
-- * 'basAxis'
basicChartSpec
    :: BasicChartSpec
basicChartSpec =
  BasicChartSpec'
    { _basHeaderCount = Nothing
    , _basLineSmoothing = Nothing
    , _basInterpolateNulls = Nothing
    , _basStackedType = Nothing
    , _basLegendPosition = Nothing
    , _basSeries = Nothing
    , _basCompareMode = Nothing
    , _basChartType = Nothing
    , _basThreeDimensional = Nothing
    , _basDomains = Nothing
    , _basAxis = Nothing
    }


-- | The number of rows or columns in the data that are \"headers\". If not
-- set, Google Sheets will guess how many rows are headers based on the
-- data. (Note that BasicChartAxis.title may override the axis title
-- inferred from the header values.)
basHeaderCount :: Lens' BasicChartSpec (Maybe Int32)
basHeaderCount
  = lens _basHeaderCount
      (\ s a -> s{_basHeaderCount = a})
      . mapping _Coerce

-- | Gets whether all lines should be rendered smooth or straight by default.
-- Applies to Line charts.
basLineSmoothing :: Lens' BasicChartSpec (Maybe Bool)
basLineSmoothing
  = lens _basLineSmoothing
      (\ s a -> s{_basLineSmoothing = a})

-- | If some values in a series are missing, gaps may appear in the chart
-- (e.g, segments of lines in a line chart will be missing). To eliminate
-- these gaps set this to true. Applies to Line, Area, and Combo charts.
basInterpolateNulls :: Lens' BasicChartSpec (Maybe Bool)
basInterpolateNulls
  = lens _basInterpolateNulls
      (\ s a -> s{_basInterpolateNulls = a})

-- | The stacked type for charts that support vertical stacking. Applies to
-- Area, Bar, Column, Combo, and Stepped Area charts.
basStackedType :: Lens' BasicChartSpec (Maybe BasicChartSpecStackedType)
basStackedType
  = lens _basStackedType
      (\ s a -> s{_basStackedType = a})

-- | The position of the chart legend.
basLegendPosition :: Lens' BasicChartSpec (Maybe BasicChartSpecLegendPosition)
basLegendPosition
  = lens _basLegendPosition
      (\ s a -> s{_basLegendPosition = a})

-- | The data this chart is visualizing.
basSeries :: Lens' BasicChartSpec [BasicChartSeries]
basSeries
  = lens _basSeries (\ s a -> s{_basSeries = a}) .
      _Default
      . _Coerce

-- | The behavior of tooltips and data highlighting when hovering on data and
-- chart area.
basCompareMode :: Lens' BasicChartSpec (Maybe BasicChartSpecCompareMode)
basCompareMode
  = lens _basCompareMode
      (\ s a -> s{_basCompareMode = a})

-- | The type of the chart.
basChartType :: Lens' BasicChartSpec (Maybe BasicChartSpecChartType)
basChartType
  = lens _basChartType (\ s a -> s{_basChartType = a})

-- | True to make the chart 3D. Applies to Bar and Column charts.
basThreeDimensional :: Lens' BasicChartSpec (Maybe Bool)
basThreeDimensional
  = lens _basThreeDimensional
      (\ s a -> s{_basThreeDimensional = a})

-- | The domain of data this is charting. Only a single domain is supported.
basDomains :: Lens' BasicChartSpec [BasicChartDomain]
basDomains
  = lens _basDomains (\ s a -> s{_basDomains = a}) .
      _Default
      . _Coerce

-- | The axis on the chart.
basAxis :: Lens' BasicChartSpec [BasicChartAxis]
basAxis
  = lens _basAxis (\ s a -> s{_basAxis = a}) . _Default
      . _Coerce

instance FromJSON BasicChartSpec where
        parseJSON
          = withObject "BasicChartSpec"
              (\ o ->
                 BasicChartSpec' <$>
                   (o .:? "headerCount") <*> (o .:? "lineSmoothing") <*>
                     (o .:? "interpolateNulls")
                     <*> (o .:? "stackedType")
                     <*> (o .:? "legendPosition")
                     <*> (o .:? "series" .!= mempty)
                     <*> (o .:? "compareMode")
                     <*> (o .:? "chartType")
                     <*> (o .:? "threeDimensional")
                     <*> (o .:? "domains" .!= mempty)
                     <*> (o .:? "axis" .!= mempty))

instance ToJSON BasicChartSpec where
        toJSON BasicChartSpec'{..}
          = object
              (catMaybes
                 [("headerCount" .=) <$> _basHeaderCount,
                  ("lineSmoothing" .=) <$> _basLineSmoothing,
                  ("interpolateNulls" .=) <$> _basInterpolateNulls,
                  ("stackedType" .=) <$> _basStackedType,
                  ("legendPosition" .=) <$> _basLegendPosition,
                  ("series" .=) <$> _basSeries,
                  ("compareMode" .=) <$> _basCompareMode,
                  ("chartType" .=) <$> _basChartType,
                  ("threeDimensional" .=) <$> _basThreeDimensional,
                  ("domains" .=) <$> _basDomains,
                  ("axis" .=) <$> _basAxis])

-- | A group name and a list of items from the source data that should be
-- placed in the group with this name.
--
-- /See:/ 'manualRuleGroup' smart constructor.
data ManualRuleGroup =
  ManualRuleGroup'
    { _mrgItems     :: !(Maybe [ExtendedValue])
    , _mrgGroupName :: !(Maybe ExtendedValue)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManualRuleGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrgItems'
--
-- * 'mrgGroupName'
manualRuleGroup
    :: ManualRuleGroup
manualRuleGroup =
  ManualRuleGroup' {_mrgItems = Nothing, _mrgGroupName = Nothing}


-- | The items in the source data that should be placed into this group. Each
-- item may be a string, number, or boolean. Items may appear in at most
-- one group within a given ManualRule. Items that do not appear in any
-- group will appear on their own.
mrgItems :: Lens' ManualRuleGroup [ExtendedValue]
mrgItems
  = lens _mrgItems (\ s a -> s{_mrgItems = a}) .
      _Default
      . _Coerce

-- | The group name, which must be a string. Each group in a given ManualRule
-- must have a unique group name.
mrgGroupName :: Lens' ManualRuleGroup (Maybe ExtendedValue)
mrgGroupName
  = lens _mrgGroupName (\ s a -> s{_mrgGroupName = a})

instance FromJSON ManualRuleGroup where
        parseJSON
          = withObject "ManualRuleGroup"
              (\ o ->
                 ManualRuleGroup' <$>
                   (o .:? "items" .!= mempty) <*> (o .:? "groupName"))

instance ToJSON ManualRuleGroup where
        toJSON ManualRuleGroup'{..}
          = object
              (catMaybes
                 [("items" .=) <$> _mrgItems,
                  ("groupName" .=) <$> _mrgGroupName])

-- | Adds a new conditional format rule at the given index. All subsequent
-- rules\' indexes are incremented.
--
-- /See:/ 'addConditionalFormatRuleRequest' smart constructor.
data AddConditionalFormatRuleRequest =
  AddConditionalFormatRuleRequest'
    { _acfrrRule  :: !(Maybe ConditionalFormatRule)
    , _acfrrIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AddConditionalFormatRuleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acfrrRule'
--
-- * 'acfrrIndex'
addConditionalFormatRuleRequest
    :: AddConditionalFormatRuleRequest
addConditionalFormatRuleRequest =
  AddConditionalFormatRuleRequest' {_acfrrRule = Nothing, _acfrrIndex = Nothing}


-- | The rule to add.
acfrrRule :: Lens' AddConditionalFormatRuleRequest (Maybe ConditionalFormatRule)
acfrrRule
  = lens _acfrrRule (\ s a -> s{_acfrrRule = a})

-- | The zero-based index where the rule should be inserted.
acfrrIndex :: Lens' AddConditionalFormatRuleRequest (Maybe Int32)
acfrrIndex
  = lens _acfrrIndex (\ s a -> s{_acfrrIndex = a}) .
      mapping _Coerce

instance FromJSON AddConditionalFormatRuleRequest
         where
        parseJSON
          = withObject "AddConditionalFormatRuleRequest"
              (\ o ->
                 AddConditionalFormatRuleRequest' <$>
                   (o .:? "rule") <*> (o .:? "index"))

instance ToJSON AddConditionalFormatRuleRequest where
        toJSON AddConditionalFormatRuleRequest'{..}
          = object
              (catMaybes
                 [("rule" .=) <$> _acfrrRule,
                  ("index" .=) <$> _acfrrIndex])

-- | Developer metadata associated with a location or object in a
-- spreadsheet. Developer metadata may be used to associate arbitrary data
-- with various parts of a spreadsheet and will remain associated at those
-- locations as they move around and the spreadsheet is edited. For
-- example, if developer metadata is associated with row 5 and another row
-- is then subsequently inserted above row 5, that original metadata will
-- still be associated with the row it was first associated with (what is
-- now row 6). If the associated object is deleted its metadata is deleted
-- too.
--
-- /See:/ 'developerMetadata' smart constructor.
data DeveloperMetadata =
  DeveloperMetadata'
    { _dmLocation      :: !(Maybe DeveloperMetadataLocation)
    , _dmMetadataId    :: !(Maybe (Textual Int32))
    , _dmVisibility    :: !(Maybe DeveloperMetadataVisibility)
    , _dmMetadataKey   :: !(Maybe Text)
    , _dmMetadataValue :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeveloperMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmLocation'
--
-- * 'dmMetadataId'
--
-- * 'dmVisibility'
--
-- * 'dmMetadataKey'
--
-- * 'dmMetadataValue'
developerMetadata
    :: DeveloperMetadata
developerMetadata =
  DeveloperMetadata'
    { _dmLocation = Nothing
    , _dmMetadataId = Nothing
    , _dmVisibility = Nothing
    , _dmMetadataKey = Nothing
    , _dmMetadataValue = Nothing
    }


-- | The location where the metadata is associated.
dmLocation :: Lens' DeveloperMetadata (Maybe DeveloperMetadataLocation)
dmLocation
  = lens _dmLocation (\ s a -> s{_dmLocation = a})

-- | The spreadsheet-scoped unique ID that identifies the metadata. IDs may
-- be specified when metadata is created, otherwise one will be randomly
-- generated and assigned. Must be positive.
dmMetadataId :: Lens' DeveloperMetadata (Maybe Int32)
dmMetadataId
  = lens _dmMetadataId (\ s a -> s{_dmMetadataId = a})
      . mapping _Coerce

-- | The metadata visibility. Developer metadata must always have a
-- visibility specified.
dmVisibility :: Lens' DeveloperMetadata (Maybe DeveloperMetadataVisibility)
dmVisibility
  = lens _dmVisibility (\ s a -> s{_dmVisibility = a})

-- | The metadata key. There may be multiple metadata in a spreadsheet with
-- the same key. Developer metadata must always have a key specified.
dmMetadataKey :: Lens' DeveloperMetadata (Maybe Text)
dmMetadataKey
  = lens _dmMetadataKey
      (\ s a -> s{_dmMetadataKey = a})

-- | Data associated with the metadata\'s key.
dmMetadataValue :: Lens' DeveloperMetadata (Maybe Text)
dmMetadataValue
  = lens _dmMetadataValue
      (\ s a -> s{_dmMetadataValue = a})

instance FromJSON DeveloperMetadata where
        parseJSON
          = withObject "DeveloperMetadata"
              (\ o ->
                 DeveloperMetadata' <$>
                   (o .:? "location") <*> (o .:? "metadataId") <*>
                     (o .:? "visibility")
                     <*> (o .:? "metadataKey")
                     <*> (o .:? "metadataValue"))

instance ToJSON DeveloperMetadata where
        toJSON DeveloperMetadata'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _dmLocation,
                  ("metadataId" .=) <$> _dmMetadataId,
                  ("visibility" .=) <$> _dmVisibility,
                  ("metadataKey" .=) <$> _dmMetadataKey,
                  ("metadataValue" .=) <$> _dmMetadataValue])

-- | A color scale for a treemap chart.
--
-- /See:/ 'treemapChartColorScale' smart constructor.
data TreemapChartColorScale =
  TreemapChartColorScale'
    { _tccsMinValueColor :: !(Maybe Color)
    , _tccsNoDataColor   :: !(Maybe Color)
    , _tccsMaxValueColor :: !(Maybe Color)
    , _tccsMidValueColor :: !(Maybe Color)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TreemapChartColorScale' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tccsMinValueColor'
--
-- * 'tccsNoDataColor'
--
-- * 'tccsMaxValueColor'
--
-- * 'tccsMidValueColor'
treemapChartColorScale
    :: TreemapChartColorScale
treemapChartColorScale =
  TreemapChartColorScale'
    { _tccsMinValueColor = Nothing
    , _tccsNoDataColor = Nothing
    , _tccsMaxValueColor = Nothing
    , _tccsMidValueColor = Nothing
    }


-- | The background color for cells with a color value less than or equal to
-- minValue. Defaults to #dc3912 if not specified.
tccsMinValueColor :: Lens' TreemapChartColorScale (Maybe Color)
tccsMinValueColor
  = lens _tccsMinValueColor
      (\ s a -> s{_tccsMinValueColor = a})

-- | The background color for cells that have no color data associated with
-- them. Defaults to #000000 if not specified.
tccsNoDataColor :: Lens' TreemapChartColorScale (Maybe Color)
tccsNoDataColor
  = lens _tccsNoDataColor
      (\ s a -> s{_tccsNoDataColor = a})

-- | The background color for cells with a color value greater than or equal
-- to maxValue. Defaults to #109618 if not specified.
tccsMaxValueColor :: Lens' TreemapChartColorScale (Maybe Color)
tccsMaxValueColor
  = lens _tccsMaxValueColor
      (\ s a -> s{_tccsMaxValueColor = a})

-- | The background color for cells with a color value at the midpoint
-- between minValue and maxValue. Defaults to #efe6dc if not specified.
tccsMidValueColor :: Lens' TreemapChartColorScale (Maybe Color)
tccsMidValueColor
  = lens _tccsMidValueColor
      (\ s a -> s{_tccsMidValueColor = a})

instance FromJSON TreemapChartColorScale where
        parseJSON
          = withObject "TreemapChartColorScale"
              (\ o ->
                 TreemapChartColorScale' <$>
                   (o .:? "minValueColor") <*> (o .:? "noDataColor") <*>
                     (o .:? "maxValueColor")
                     <*> (o .:? "midValueColor"))

instance ToJSON TreemapChartColorScale where
        toJSON TreemapChartColorScale'{..}
          = object
              (catMaybes
                 [("minValueColor" .=) <$> _tccsMinValueColor,
                  ("noDataColor" .=) <$> _tccsNoDataColor,
                  ("maxValueColor" .=) <$> _tccsMaxValueColor,
                  ("midValueColor" .=) <$> _tccsMidValueColor])

-- | The result of duplicating a sheet.
--
-- /See:/ 'duplicateSheetResponse' smart constructor.
newtype DuplicateSheetResponse =
  DuplicateSheetResponse'
    { _dsrProperties :: Maybe SheetProperties
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DuplicateSheetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrProperties'
duplicateSheetResponse
    :: DuplicateSheetResponse
duplicateSheetResponse = DuplicateSheetResponse' {_dsrProperties = Nothing}


-- | The properties of the duplicate sheet.
dsrProperties :: Lens' DuplicateSheetResponse (Maybe SheetProperties)
dsrProperties
  = lens _dsrProperties
      (\ s a -> s{_dsrProperties = a})

instance FromJSON DuplicateSheetResponse where
        parseJSON
          = withObject "DuplicateSheetResponse"
              (\ o ->
                 DuplicateSheetResponse' <$> (o .:? "properties"))

instance ToJSON DuplicateSheetResponse where
        toJSON DuplicateSheetResponse'{..}
          = object
              (catMaybes [("properties" .=) <$> _dsrProperties])

-- | The format of a run of text in a cell. Absent values indicate that the
-- field isn\'t specified.
--
-- /See:/ 'textFormat' smart constructor.
data TextFormat =
  TextFormat'
    { _tfFontFamily      :: !(Maybe Text)
    , _tfForegRoundColor :: !(Maybe Color)
    , _tfFontSize        :: !(Maybe (Textual Int32))
    , _tfUnderline       :: !(Maybe Bool)
    , _tfItalic          :: !(Maybe Bool)
    , _tfBold            :: !(Maybe Bool)
    , _tfStrikethrough   :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextFormat' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfFontFamily'
--
-- * 'tfForegRoundColor'
--
-- * 'tfFontSize'
--
-- * 'tfUnderline'
--
-- * 'tfItalic'
--
-- * 'tfBold'
--
-- * 'tfStrikethrough'
textFormat
    :: TextFormat
textFormat =
  TextFormat'
    { _tfFontFamily = Nothing
    , _tfForegRoundColor = Nothing
    , _tfFontSize = Nothing
    , _tfUnderline = Nothing
    , _tfItalic = Nothing
    , _tfBold = Nothing
    , _tfStrikethrough = Nothing
    }


-- | The font family.
tfFontFamily :: Lens' TextFormat (Maybe Text)
tfFontFamily
  = lens _tfFontFamily (\ s a -> s{_tfFontFamily = a})

-- | The foreground color of the text.
tfForegRoundColor :: Lens' TextFormat (Maybe Color)
tfForegRoundColor
  = lens _tfForegRoundColor
      (\ s a -> s{_tfForegRoundColor = a})

-- | The size of the font.
tfFontSize :: Lens' TextFormat (Maybe Int32)
tfFontSize
  = lens _tfFontSize (\ s a -> s{_tfFontSize = a}) .
      mapping _Coerce

-- | True if the text is underlined.
tfUnderline :: Lens' TextFormat (Maybe Bool)
tfUnderline
  = lens _tfUnderline (\ s a -> s{_tfUnderline = a})

-- | True if the text is italicized.
tfItalic :: Lens' TextFormat (Maybe Bool)
tfItalic = lens _tfItalic (\ s a -> s{_tfItalic = a})

-- | True if the text is bold.
tfBold :: Lens' TextFormat (Maybe Bool)
tfBold = lens _tfBold (\ s a -> s{_tfBold = a})

-- | True if the text has a strikethrough.
tfStrikethrough :: Lens' TextFormat (Maybe Bool)
tfStrikethrough
  = lens _tfStrikethrough
      (\ s a -> s{_tfStrikethrough = a})

instance FromJSON TextFormat where
        parseJSON
          = withObject "TextFormat"
              (\ o ->
                 TextFormat' <$>
                   (o .:? "fontFamily") <*> (o .:? "foregroundColor")
                     <*> (o .:? "fontSize")
                     <*> (o .:? "underline")
                     <*> (o .:? "italic")
                     <*> (o .:? "bold")
                     <*> (o .:? "strikethrough"))

instance ToJSON TextFormat where
        toJSON TextFormat'{..}
          = object
              (catMaybes
                 [("fontFamily" .=) <$> _tfFontFamily,
                  ("foregroundColor" .=) <$> _tfForegRoundColor,
                  ("fontSize" .=) <$> _tfFontSize,
                  ("underline" .=) <$> _tfUnderline,
                  ("italic" .=) <$> _tfItalic, ("bold" .=) <$> _tfBold,
                  ("strikethrough" .=) <$> _tfStrikethrough])

-- | A request to create developer metadata.
--
-- /See:/ 'createDeveloperMetadataRequest' smart constructor.
newtype CreateDeveloperMetadataRequest =
  CreateDeveloperMetadataRequest'
    { _cDeveloperMetadata :: Maybe DeveloperMetadata
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CreateDeveloperMetadataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cDeveloperMetadata'
createDeveloperMetadataRequest
    :: CreateDeveloperMetadataRequest
createDeveloperMetadataRequest =
  CreateDeveloperMetadataRequest' {_cDeveloperMetadata = Nothing}


-- | The developer metadata to create.
cDeveloperMetadata :: Lens' CreateDeveloperMetadataRequest (Maybe DeveloperMetadata)
cDeveloperMetadata
  = lens _cDeveloperMetadata
      (\ s a -> s{_cDeveloperMetadata = a})

instance FromJSON CreateDeveloperMetadataRequest
         where
        parseJSON
          = withObject "CreateDeveloperMetadataRequest"
              (\ o ->
                 CreateDeveloperMetadataRequest' <$>
                   (o .:? "developerMetadata"))

instance ToJSON CreateDeveloperMetadataRequest where
        toJSON CreateDeveloperMetadataRequest'{..}
          = object
              (catMaybes
                 [("developerMetadata" .=) <$> _cDeveloperMetadata])

-- | The response when clearing a range of values in a spreadsheet.
--
-- /See:/ 'batchClearValuesResponse' smart constructor.
data BatchClearValuesResponse =
  BatchClearValuesResponse'
    { _bcvrClearedRanges :: !(Maybe [Text])
    , _bcvrSpreadsheetId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchClearValuesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcvrClearedRanges'
--
-- * 'bcvrSpreadsheetId'
batchClearValuesResponse
    :: BatchClearValuesResponse
batchClearValuesResponse =
  BatchClearValuesResponse'
    {_bcvrClearedRanges = Nothing, _bcvrSpreadsheetId = Nothing}


-- | The ranges that were cleared, in A1 notation. (If the requests were for
-- an unbounded range or a ranger larger than the bounds of the sheet, this
-- will be the actual ranges that were cleared, bounded to the sheet\'s
-- limits.)
bcvrClearedRanges :: Lens' BatchClearValuesResponse [Text]
bcvrClearedRanges
  = lens _bcvrClearedRanges
      (\ s a -> s{_bcvrClearedRanges = a})
      . _Default
      . _Coerce

-- | The spreadsheet the updates were applied to.
bcvrSpreadsheetId :: Lens' BatchClearValuesResponse (Maybe Text)
bcvrSpreadsheetId
  = lens _bcvrSpreadsheetId
      (\ s a -> s{_bcvrSpreadsheetId = a})

instance FromJSON BatchClearValuesResponse where
        parseJSON
          = withObject "BatchClearValuesResponse"
              (\ o ->
                 BatchClearValuesResponse' <$>
                   (o .:? "clearedRanges" .!= mempty) <*>
                     (o .:? "spreadsheetId"))

instance ToJSON BatchClearValuesResponse where
        toJSON BatchClearValuesResponse'{..}
          = object
              (catMaybes
                 [("clearedRanges" .=) <$> _bcvrClearedRanges,
                  ("spreadsheetId" .=) <$> _bcvrSpreadsheetId])

-- | A value range that was matched by one or more data filers.
--
-- /See:/ 'matchedValueRange' smart constructor.
data MatchedValueRange =
  MatchedValueRange'
    { _mvrValueRange  :: !(Maybe ValueRange)
    , _mvrDataFilters :: !(Maybe [DataFilter])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MatchedValueRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mvrValueRange'
--
-- * 'mvrDataFilters'
matchedValueRange
    :: MatchedValueRange
matchedValueRange =
  MatchedValueRange' {_mvrValueRange = Nothing, _mvrDataFilters = Nothing}


-- | The values matched by the DataFilter.
mvrValueRange :: Lens' MatchedValueRange (Maybe ValueRange)
mvrValueRange
  = lens _mvrValueRange
      (\ s a -> s{_mvrValueRange = a})

-- | The DataFilters from the request that matched the range of values.
mvrDataFilters :: Lens' MatchedValueRange [DataFilter]
mvrDataFilters
  = lens _mvrDataFilters
      (\ s a -> s{_mvrDataFilters = a})
      . _Default
      . _Coerce

instance FromJSON MatchedValueRange where
        parseJSON
          = withObject "MatchedValueRange"
              (\ o ->
                 MatchedValueRange' <$>
                   (o .:? "valueRange") <*>
                     (o .:? "dataFilters" .!= mempty))

instance ToJSON MatchedValueRange where
        toJSON MatchedValueRange'{..}
          = object
              (catMaybes
                 [("valueRange" .=) <$> _mvrValueRange,
                  ("dataFilters" .=) <$> _mvrDataFilters])

-- | The domain of a chart. For example, if charting stock prices over time,
-- this would be the date.
--
-- /See:/ 'basicChartDomain' smart constructor.
data BasicChartDomain =
  BasicChartDomain'
    { _bcdReversed :: !(Maybe Bool)
    , _bcdDomain   :: !(Maybe ChartData)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BasicChartDomain' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bcdReversed'
--
-- * 'bcdDomain'
basicChartDomain
    :: BasicChartDomain
basicChartDomain =
  BasicChartDomain' {_bcdReversed = Nothing, _bcdDomain = Nothing}


-- | True to reverse the order of the domain values (horizontal axis).
bcdReversed :: Lens' BasicChartDomain (Maybe Bool)
bcdReversed
  = lens _bcdReversed (\ s a -> s{_bcdReversed = a})

-- | The data of the domain. For example, if charting stock prices over time,
-- this is the data representing the dates.
bcdDomain :: Lens' BasicChartDomain (Maybe ChartData)
bcdDomain
  = lens _bcdDomain (\ s a -> s{_bcdDomain = a})

instance FromJSON BasicChartDomain where
        parseJSON
          = withObject "BasicChartDomain"
              (\ o ->
                 BasicChartDomain' <$>
                   (o .:? "reversed") <*> (o .:? "domain"))

instance ToJSON BasicChartDomain where
        toJSON BasicChartDomain'{..}
          = object
              (catMaybes
                 [("reversed" .=) <$> _bcdReversed,
                  ("domain" .=) <$> _bcdDomain])

-- | Allows you to organize the numeric values in a source data column into
-- buckets of a constant size. All values from HistogramRule.start to
-- HistogramRule.end are placed into groups of size HistogramRule.interval.
-- In addition, all values below HistogramRule.start are placed in one
-- group, and all values above HistogramRule.end are placed in another.
-- Only HistogramRule.interval is required, though if HistogramRule.start
-- and HistogramRule.end are both provided, HistogramRule.start must be
-- less than HistogramRule.end. For example, a pivot table showing average
-- purchase amount by age that has 50+ rows: +-----+-------------------+ |
-- Age | AVERAGE of Amount | +-----+-------------------+ | 16 | $27.13 | |
-- 17 | $5.24 | | 18 | $20.15 | ... +-----+-------------------+ could be
-- turned into a pivot table that looks like the one below by applying a
-- histogram group rule with a HistogramRule.start of 25, an
-- HistogramRule.interval of 20, and an HistogramRule.end of 65.
-- +-------------+-------------------+ | Grouped Age | AVERAGE of Amount |
-- +-------------+-------------------+ | \< 25 | $19.34 | | 25-45 | $31.43
-- | | 45-65 | $35.87 | | > 65 | $27.55 |
-- +-------------+-------------------+ | Grand Total | $29.12 |
-- +-------------+-------------------+
--
-- /See:/ 'histogramRule' smart constructor.
data HistogramRule =
  HistogramRule'
    { _hrStart    :: !(Maybe (Textual Double))
    , _hrInterval :: !(Maybe (Textual Double))
    , _hrEnd      :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HistogramRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hrStart'
--
-- * 'hrInterval'
--
-- * 'hrEnd'
histogramRule
    :: HistogramRule
histogramRule =
  HistogramRule' {_hrStart = Nothing, _hrInterval = Nothing, _hrEnd = Nothing}


-- | The minimum value at which items are placed into buckets of constant
-- size. Values below start are lumped into a single bucket. This field is
-- optional.
hrStart :: Lens' HistogramRule (Maybe Double)
hrStart
  = lens _hrStart (\ s a -> s{_hrStart = a}) .
      mapping _Coerce

-- | The size of the buckets that are created. Must be positive.
hrInterval :: Lens' HistogramRule (Maybe Double)
hrInterval
  = lens _hrInterval (\ s a -> s{_hrInterval = a}) .
      mapping _Coerce

-- | The maximum value at which items are placed into buckets of constant
-- size. Values above end are lumped into a single bucket. This field is
-- optional.
hrEnd :: Lens' HistogramRule (Maybe Double)
hrEnd
  = lens _hrEnd (\ s a -> s{_hrEnd = a}) .
      mapping _Coerce

instance FromJSON HistogramRule where
        parseJSON
          = withObject "HistogramRule"
              (\ o ->
                 HistogramRule' <$>
                   (o .:? "start") <*> (o .:? "interval") <*>
                     (o .:? "end"))

instance ToJSON HistogramRule where
        toJSON HistogramRule'{..}
          = object
              (catMaybes
                 [("start" .=) <$> _hrStart,
                  ("interval" .=) <$> _hrInterval,
                  ("end" .=) <$> _hrEnd])

-- | A developer metadata entry and the data filters specified in the
-- original request that matched it.
--
-- /See:/ 'matchedDeveloperMetadata' smart constructor.
data MatchedDeveloperMetadata =
  MatchedDeveloperMetadata'
    { _mdmDataFilters       :: !(Maybe [DataFilter])
    , _mdmDeveloperMetadata :: !(Maybe DeveloperMetadata)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MatchedDeveloperMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdmDataFilters'
--
-- * 'mdmDeveloperMetadata'
matchedDeveloperMetadata
    :: MatchedDeveloperMetadata
matchedDeveloperMetadata =
  MatchedDeveloperMetadata'
    {_mdmDataFilters = Nothing, _mdmDeveloperMetadata = Nothing}


-- | All filters matching the returned developer metadata.
mdmDataFilters :: Lens' MatchedDeveloperMetadata [DataFilter]
mdmDataFilters
  = lens _mdmDataFilters
      (\ s a -> s{_mdmDataFilters = a})
      . _Default
      . _Coerce

-- | The developer metadata matching the specified filters.
mdmDeveloperMetadata :: Lens' MatchedDeveloperMetadata (Maybe DeveloperMetadata)
mdmDeveloperMetadata
  = lens _mdmDeveloperMetadata
      (\ s a -> s{_mdmDeveloperMetadata = a})

instance FromJSON MatchedDeveloperMetadata where
        parseJSON
          = withObject "MatchedDeveloperMetadata"
              (\ o ->
                 MatchedDeveloperMetadata' <$>
                   (o .:? "dataFilters" .!= mempty) <*>
                     (o .:? "developerMetadata"))

instance ToJSON MatchedDeveloperMetadata where
        toJSON MatchedDeveloperMetadata'{..}
          = object
              (catMaybes
                 [("dataFilters" .=) <$> _mdmDataFilters,
                  ("developerMetadata" .=) <$> _mdmDeveloperMetadata])

-- | Inserts cells into a range, shifting the existing cells over or down.
--
-- /See:/ 'insertRangeRequest' smart constructor.
data InsertRangeRequest =
  InsertRangeRequest'
    { _irrShiftDimension :: !(Maybe InsertRangeRequestShiftDimension)
    , _irrRange          :: !(Maybe GridRange)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InsertRangeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irrShiftDimension'
--
-- * 'irrRange'
insertRangeRequest
    :: InsertRangeRequest
insertRangeRequest =
  InsertRangeRequest' {_irrShiftDimension = Nothing, _irrRange = Nothing}


-- | The dimension which will be shifted when inserting cells. If ROWS,
-- existing cells will be shifted down. If COLUMNS, existing cells will be
-- shifted right.
irrShiftDimension :: Lens' InsertRangeRequest (Maybe InsertRangeRequestShiftDimension)
irrShiftDimension
  = lens _irrShiftDimension
      (\ s a -> s{_irrShiftDimension = a})

-- | The range to insert new cells into.
irrRange :: Lens' InsertRangeRequest (Maybe GridRange)
irrRange = lens _irrRange (\ s a -> s{_irrRange = a})

instance FromJSON InsertRangeRequest where
        parseJSON
          = withObject "InsertRangeRequest"
              (\ o ->
                 InsertRangeRequest' <$>
                   (o .:? "shiftDimension") <*> (o .:? "range"))

instance ToJSON InsertRangeRequest where
        toJSON InsertRangeRequest'{..}
          = object
              (catMaybes
                 [("shiftDimension" .=) <$> _irrShiftDimension,
                  ("range" .=) <$> _irrRange])

-- | The amount of padding around the cell, in pixels. When updating padding,
-- every field must be specified.
--
-- /See:/ 'padding' smart constructor.
data Padding =
  Padding'
    { _pBottom :: !(Maybe (Textual Int32))
    , _pLeft   :: !(Maybe (Textual Int32))
    , _pRight  :: !(Maybe (Textual Int32))
    , _pTop    :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Padding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pBottom'
--
-- * 'pLeft'
--
-- * 'pRight'
--
-- * 'pTop'
padding
    :: Padding
padding =
  Padding'
    {_pBottom = Nothing, _pLeft = Nothing, _pRight = Nothing, _pTop = Nothing}


-- | The bottom padding of the cell.
pBottom :: Lens' Padding (Maybe Int32)
pBottom
  = lens _pBottom (\ s a -> s{_pBottom = a}) .
      mapping _Coerce

-- | The left padding of the cell.
pLeft :: Lens' Padding (Maybe Int32)
pLeft
  = lens _pLeft (\ s a -> s{_pLeft = a}) .
      mapping _Coerce

-- | The right padding of the cell.
pRight :: Lens' Padding (Maybe Int32)
pRight
  = lens _pRight (\ s a -> s{_pRight = a}) .
      mapping _Coerce

-- | The top padding of the cell.
pTop :: Lens' Padding (Maybe Int32)
pTop
  = lens _pTop (\ s a -> s{_pTop = a}) .
      mapping _Coerce

instance FromJSON Padding where
        parseJSON
          = withObject "Padding"
              (\ o ->
                 Padding' <$>
                   (o .:? "bottom") <*> (o .:? "left") <*>
                     (o .:? "right")
                     <*> (o .:? "top"))

instance ToJSON Padding where
        toJSON Padding'{..}
          = object
              (catMaybes
                 [("bottom" .=) <$> _pBottom, ("left" .=) <$> _pLeft,
                  ("right" .=) <$> _pRight, ("top" .=) <$> _pTop])

-- | The specifications of a chart.
--
-- /See:/ 'chartSpec' smart constructor.
data ChartSpec =
  ChartSpec'
    { _csTitleTextPosition       :: !(Maybe TextPosition)
    , _csFontName                :: !(Maybe Text)
    , _csSubtitleTextPosition    :: !(Maybe TextPosition)
    , _csBackgRoundColor         :: !(Maybe Color)
    , _csCandlestickChart        :: !(Maybe CandlestickChartSpec)
    , _csWaterfallChart          :: !(Maybe WaterfallChartSpec)
    , _csTitleTextFormat         :: !(Maybe TextFormat)
    , _csSubtitle                :: !(Maybe Text)
    , _csAltText                 :: !(Maybe Text)
    , _csHistogramChart          :: !(Maybe HistogramChartSpec)
    , _csBubbleChart             :: !(Maybe BubbleChartSpec)
    , _csMaximized               :: !(Maybe Bool)
    , _csSubtitleTextFormat      :: !(Maybe TextFormat)
    , _csTitle                   :: !(Maybe Text)
    , _csPieChart                :: !(Maybe PieChartSpec)
    , _csOrgChart                :: !(Maybe OrgChartSpec)
    , _csTreemapChart            :: !(Maybe TreemapChartSpec)
    , _csBasicChart              :: !(Maybe BasicChartSpec)
    , _csHiddenDimensionStrategy :: !(Maybe ChartSpecHiddenDimensionStrategy)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChartSpec' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csTitleTextPosition'
--
-- * 'csFontName'
--
-- * 'csSubtitleTextPosition'
--
-- * 'csBackgRoundColor'
--
-- * 'csCandlestickChart'
--
-- * 'csWaterfallChart'
--
-- * 'csTitleTextFormat'
--
-- * 'csSubtitle'
--
-- * 'csAltText'
--
-- * 'csHistogramChart'
--
-- * 'csBubbleChart'
--
-- * 'csMaximized'
--
-- * 'csSubtitleTextFormat'
--
-- * 'csTitle'
--
-- * 'csPieChart'
--
-- * 'csOrgChart'
--
-- * 'csTreemapChart'
--
-- * 'csBasicChart'
--
-- * 'csHiddenDimensionStrategy'
chartSpec
    :: ChartSpec
chartSpec =
  ChartSpec'
    { _csTitleTextPosition = Nothing
    , _csFontName = Nothing
    , _csSubtitleTextPosition = Nothing
    , _csBackgRoundColor = Nothing
    , _csCandlestickChart = Nothing
    , _csWaterfallChart = Nothing
    , _csTitleTextFormat = Nothing
    , _csSubtitle = Nothing
    , _csAltText = Nothing
    , _csHistogramChart = Nothing
    , _csBubbleChart = Nothing
    , _csMaximized = Nothing
    , _csSubtitleTextFormat = Nothing
    , _csTitle = Nothing
    , _csPieChart = Nothing
    , _csOrgChart = Nothing
    , _csTreemapChart = Nothing
    , _csBasicChart = Nothing
    , _csHiddenDimensionStrategy = Nothing
    }


-- | The title text position. This field is optional.
csTitleTextPosition :: Lens' ChartSpec (Maybe TextPosition)
csTitleTextPosition
  = lens _csTitleTextPosition
      (\ s a -> s{_csTitleTextPosition = a})

-- | The name of the font to use by default for all chart text (e.g. title,
-- axis labels, legend). If a font is specified for a specific part of the
-- chart it will override this font name.
csFontName :: Lens' ChartSpec (Maybe Text)
csFontName
  = lens _csFontName (\ s a -> s{_csFontName = a})

-- | The subtitle text position. This field is optional.
csSubtitleTextPosition :: Lens' ChartSpec (Maybe TextPosition)
csSubtitleTextPosition
  = lens _csSubtitleTextPosition
      (\ s a -> s{_csSubtitleTextPosition = a})

-- | The background color of the entire chart. Not applicable to Org charts.
csBackgRoundColor :: Lens' ChartSpec (Maybe Color)
csBackgRoundColor
  = lens _csBackgRoundColor
      (\ s a -> s{_csBackgRoundColor = a})

-- | A candlestick chart specification.
csCandlestickChart :: Lens' ChartSpec (Maybe CandlestickChartSpec)
csCandlestickChart
  = lens _csCandlestickChart
      (\ s a -> s{_csCandlestickChart = a})

-- | A waterfall chart specification.
csWaterfallChart :: Lens' ChartSpec (Maybe WaterfallChartSpec)
csWaterfallChart
  = lens _csWaterfallChart
      (\ s a -> s{_csWaterfallChart = a})

-- | The title text format. Strikethrough and underline are not supported.
csTitleTextFormat :: Lens' ChartSpec (Maybe TextFormat)
csTitleTextFormat
  = lens _csTitleTextFormat
      (\ s a -> s{_csTitleTextFormat = a})

-- | The subtitle of the chart.
csSubtitle :: Lens' ChartSpec (Maybe Text)
csSubtitle
  = lens _csSubtitle (\ s a -> s{_csSubtitle = a})

-- | The alternative text that describes the chart. This is often used for
-- accessibility.
csAltText :: Lens' ChartSpec (Maybe Text)
csAltText
  = lens _csAltText (\ s a -> s{_csAltText = a})

-- | A histogram chart specification.
csHistogramChart :: Lens' ChartSpec (Maybe HistogramChartSpec)
csHistogramChart
  = lens _csHistogramChart
      (\ s a -> s{_csHistogramChart = a})

-- | A bubble chart specification.
csBubbleChart :: Lens' ChartSpec (Maybe BubbleChartSpec)
csBubbleChart
  = lens _csBubbleChart
      (\ s a -> s{_csBubbleChart = a})

-- | True to make a chart fill the entire space in which it\'s rendered with
-- minimum padding. False to use the default padding. (Not applicable to
-- Geo and Org charts.)
csMaximized :: Lens' ChartSpec (Maybe Bool)
csMaximized
  = lens _csMaximized (\ s a -> s{_csMaximized = a})

-- | The subtitle text format. Strikethrough and underline are not supported.
csSubtitleTextFormat :: Lens' ChartSpec (Maybe TextFormat)
csSubtitleTextFormat
  = lens _csSubtitleTextFormat
      (\ s a -> s{_csSubtitleTextFormat = a})

-- | The title of the chart.
csTitle :: Lens' ChartSpec (Maybe Text)
csTitle = lens _csTitle (\ s a -> s{_csTitle = a})

-- | A pie chart specification.
csPieChart :: Lens' ChartSpec (Maybe PieChartSpec)
csPieChart
  = lens _csPieChart (\ s a -> s{_csPieChart = a})

-- | An org chart specification.
csOrgChart :: Lens' ChartSpec (Maybe OrgChartSpec)
csOrgChart
  = lens _csOrgChart (\ s a -> s{_csOrgChart = a})

-- | A treemap chart specification.
csTreemapChart :: Lens' ChartSpec (Maybe TreemapChartSpec)
csTreemapChart
  = lens _csTreemapChart
      (\ s a -> s{_csTreemapChart = a})

-- | A basic chart specification, can be one of many kinds of charts. See
-- BasicChartType for the list of all charts this supports.
csBasicChart :: Lens' ChartSpec (Maybe BasicChartSpec)
csBasicChart
  = lens _csBasicChart (\ s a -> s{_csBasicChart = a})

-- | Determines how the charts will use hidden rows or columns.
csHiddenDimensionStrategy :: Lens' ChartSpec (Maybe ChartSpecHiddenDimensionStrategy)
csHiddenDimensionStrategy
  = lens _csHiddenDimensionStrategy
      (\ s a -> s{_csHiddenDimensionStrategy = a})

instance FromJSON ChartSpec where
        parseJSON
          = withObject "ChartSpec"
              (\ o ->
                 ChartSpec' <$>
                   (o .:? "titleTextPosition") <*> (o .:? "fontName")
                     <*> (o .:? "subtitleTextPosition")
                     <*> (o .:? "backgroundColor")
                     <*> (o .:? "candlestickChart")
                     <*> (o .:? "waterfallChart")
                     <*> (o .:? "titleTextFormat")
                     <*> (o .:? "subtitle")
                     <*> (o .:? "altText")
                     <*> (o .:? "histogramChart")
                     <*> (o .:? "bubbleChart")
                     <*> (o .:? "maximized")
                     <*> (o .:? "subtitleTextFormat")
                     <*> (o .:? "title")
                     <*> (o .:? "pieChart")
                     <*> (o .:? "orgChart")
                     <*> (o .:? "treemapChart")
                     <*> (o .:? "basicChart")
                     <*> (o .:? "hiddenDimensionStrategy"))

instance ToJSON ChartSpec where
        toJSON ChartSpec'{..}
          = object
              (catMaybes
                 [("titleTextPosition" .=) <$> _csTitleTextPosition,
                  ("fontName" .=) <$> _csFontName,
                  ("subtitleTextPosition" .=) <$>
                    _csSubtitleTextPosition,
                  ("backgroundColor" .=) <$> _csBackgRoundColor,
                  ("candlestickChart" .=) <$> _csCandlestickChart,
                  ("waterfallChart" .=) <$> _csWaterfallChart,
                  ("titleTextFormat" .=) <$> _csTitleTextFormat,
                  ("subtitle" .=) <$> _csSubtitle,
                  ("altText" .=) <$> _csAltText,
                  ("histogramChart" .=) <$> _csHistogramChart,
                  ("bubbleChart" .=) <$> _csBubbleChart,
                  ("maximized" .=) <$> _csMaximized,
                  ("subtitleTextFormat" .=) <$> _csSubtitleTextFormat,
                  ("title" .=) <$> _csTitle,
                  ("pieChart" .=) <$> _csPieChart,
                  ("orgChart" .=) <$> _csOrgChart,
                  ("treemapChart" .=) <$> _csTreemapChart,
                  ("basicChart" .=) <$> _csBasicChart,
                  ("hiddenDimensionStrategy" .=) <$>
                    _csHiddenDimensionStrategy])

-- | Properties about a dimension.
--
-- /See:/ 'dimensionProperties' smart constructor.
data DimensionProperties =
  DimensionProperties'
    { _dpHiddenByFilter    :: !(Maybe Bool)
    , _dpPixelSize         :: !(Maybe (Textual Int32))
    , _dpHiddenByUser      :: !(Maybe Bool)
    , _dpDeveloperMetadata :: !(Maybe [DeveloperMetadata])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DimensionProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpHiddenByFilter'
--
-- * 'dpPixelSize'
--
-- * 'dpHiddenByUser'
--
-- * 'dpDeveloperMetadata'
dimensionProperties
    :: DimensionProperties
dimensionProperties =
  DimensionProperties'
    { _dpHiddenByFilter = Nothing
    , _dpPixelSize = Nothing
    , _dpHiddenByUser = Nothing
    , _dpDeveloperMetadata = Nothing
    }


-- | True if this dimension is being filtered. This field is read-only.
dpHiddenByFilter :: Lens' DimensionProperties (Maybe Bool)
dpHiddenByFilter
  = lens _dpHiddenByFilter
      (\ s a -> s{_dpHiddenByFilter = a})

-- | The height (if a row) or width (if a column) of the dimension in pixels.
dpPixelSize :: Lens' DimensionProperties (Maybe Int32)
dpPixelSize
  = lens _dpPixelSize (\ s a -> s{_dpPixelSize = a}) .
      mapping _Coerce

-- | True if this dimension is explicitly hidden.
dpHiddenByUser :: Lens' DimensionProperties (Maybe Bool)
dpHiddenByUser
  = lens _dpHiddenByUser
      (\ s a -> s{_dpHiddenByUser = a})

-- | The developer metadata associated with a single row or column.
dpDeveloperMetadata :: Lens' DimensionProperties [DeveloperMetadata]
dpDeveloperMetadata
  = lens _dpDeveloperMetadata
      (\ s a -> s{_dpDeveloperMetadata = a})
      . _Default
      . _Coerce

instance FromJSON DimensionProperties where
        parseJSON
          = withObject "DimensionProperties"
              (\ o ->
                 DimensionProperties' <$>
                   (o .:? "hiddenByFilter") <*> (o .:? "pixelSize") <*>
                     (o .:? "hiddenByUser")
                     <*> (o .:? "developerMetadata" .!= mempty))

instance ToJSON DimensionProperties where
        toJSON DimensionProperties'{..}
          = object
              (catMaybes
                 [("hiddenByFilter" .=) <$> _dpHiddenByFilter,
                  ("pixelSize" .=) <$> _dpPixelSize,
                  ("hiddenByUser" .=) <$> _dpHiddenByUser,
                  ("developerMetadata" .=) <$> _dpDeveloperMetadata])

-- | Updates properties of the supplied banded range.
--
-- /See:/ 'updateBandingRequest' smart constructor.
data UpdateBandingRequest =
  UpdateBandingRequest'
    { _ubrBandedRange :: !(Maybe BandedRange)
    , _ubrFields      :: !(Maybe GFieldMask)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateBandingRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ubrBandedRange'
--
-- * 'ubrFields'
updateBandingRequest
    :: UpdateBandingRequest
updateBandingRequest =
  UpdateBandingRequest' {_ubrBandedRange = Nothing, _ubrFields = Nothing}


-- | The banded range to update with the new properties.
ubrBandedRange :: Lens' UpdateBandingRequest (Maybe BandedRange)
ubrBandedRange
  = lens _ubrBandedRange
      (\ s a -> s{_ubrBandedRange = a})

-- | The fields that should be updated. At least one field must be specified.
-- The root \`bandedRange\` is implied and should not be specified. A
-- single \`\"*\"\` can be used as short-hand for listing every field.
ubrFields :: Lens' UpdateBandingRequest (Maybe GFieldMask)
ubrFields
  = lens _ubrFields (\ s a -> s{_ubrFields = a})

instance FromJSON UpdateBandingRequest where
        parseJSON
          = withObject "UpdateBandingRequest"
              (\ o ->
                 UpdateBandingRequest' <$>
                   (o .:? "bandedRange") <*> (o .:? "fields"))

instance ToJSON UpdateBandingRequest where
        toJSON UpdateBandingRequest'{..}
          = object
              (catMaybes
                 [("bandedRange" .=) <$> _ubrBandedRange,
                  ("fields" .=) <$> _ubrFields])

-- | The response when retrieving more than one range of values in a
-- spreadsheet.
--
-- /See:/ 'batchGetValuesResponse' smart constructor.
data BatchGetValuesResponse =
  BatchGetValuesResponse'
    { _bgvrSpreadsheetId :: !(Maybe Text)
    , _bgvrValueRanges   :: !(Maybe [ValueRange])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BatchGetValuesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgvrSpreadsheetId'
--
-- * 'bgvrValueRanges'
batchGetValuesResponse
    :: BatchGetValuesResponse
batchGetValuesResponse =
  BatchGetValuesResponse'
    {_bgvrSpreadsheetId = Nothing, _bgvrValueRanges = Nothing}


-- | The ID of the spreadsheet the data was retrieved from.
bgvrSpreadsheetId :: Lens' BatchGetValuesResponse (Maybe Text)
bgvrSpreadsheetId
  = lens _bgvrSpreadsheetId
      (\ s a -> s{_bgvrSpreadsheetId = a})

-- | The requested values. The order of the ValueRanges is the same as the
-- order of the requested ranges.
bgvrValueRanges :: Lens' BatchGetValuesResponse [ValueRange]
bgvrValueRanges
  = lens _bgvrValueRanges
      (\ s a -> s{_bgvrValueRanges = a})
      . _Default
      . _Coerce

instance FromJSON BatchGetValuesResponse where
        parseJSON
          = withObject "BatchGetValuesResponse"
              (\ o ->
                 BatchGetValuesResponse' <$>
                   (o .:? "spreadsheetId") <*>
                     (o .:? "valueRanges" .!= mempty))

instance ToJSON BatchGetValuesResponse where
        toJSON BatchGetValuesResponse'{..}
          = object
              (catMaybes
                 [("spreadsheetId" .=) <$> _bgvrSpreadsheetId,
                  ("valueRanges" .=) <$> _bgvrValueRanges])

-- | Removes the banded range with the given ID from the spreadsheet.
--
-- /See:/ 'deleteBandingRequest' smart constructor.
newtype DeleteBandingRequest =
  DeleteBandingRequest'
    { _dbrBandedRangeId :: Maybe (Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteBandingRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbrBandedRangeId'
deleteBandingRequest
    :: DeleteBandingRequest
deleteBandingRequest = DeleteBandingRequest' {_dbrBandedRangeId = Nothing}


-- | The ID of the banded range to delete.
dbrBandedRangeId :: Lens' DeleteBandingRequest (Maybe Int32)
dbrBandedRangeId
  = lens _dbrBandedRangeId
      (\ s a -> s{_dbrBandedRangeId = a})
      . mapping _Coerce

instance FromJSON DeleteBandingRequest where
        parseJSON
          = withObject "DeleteBandingRequest"
              (\ o ->
                 DeleteBandingRequest' <$> (o .:? "bandedRangeId"))

instance ToJSON DeleteBandingRequest where
        toJSON DeleteBandingRequest'{..}
          = object
              (catMaybes
                 [("bandedRangeId" .=) <$> _dbrBandedRangeId])

-- | The response from deleting developer metadata.
--
-- /See:/ 'deleteDeveloperMetadataResponse' smart constructor.
newtype DeleteDeveloperMetadataResponse =
  DeleteDeveloperMetadataResponse'
    { _ddmrDeletedDeveloperMetadata :: Maybe [DeveloperMetadata]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteDeveloperMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddmrDeletedDeveloperMetadata'
deleteDeveloperMetadataResponse
    :: DeleteDeveloperMetadataResponse
deleteDeveloperMetadataResponse =
  DeleteDeveloperMetadataResponse' {_ddmrDeletedDeveloperMetadata = Nothing}


-- | The metadata that was deleted.
ddmrDeletedDeveloperMetadata :: Lens' DeleteDeveloperMetadataResponse [DeveloperMetadata]
ddmrDeletedDeveloperMetadata
  = lens _ddmrDeletedDeveloperMetadata
      (\ s a -> s{_ddmrDeletedDeveloperMetadata = a})
      . _Default
      . _Coerce

instance FromJSON DeleteDeveloperMetadataResponse
         where
        parseJSON
          = withObject "DeleteDeveloperMetadataResponse"
              (\ o ->
                 DeleteDeveloperMetadataResponse' <$>
                   (o .:? "deletedDeveloperMetadata" .!= mempty))

instance ToJSON DeleteDeveloperMetadataResponse where
        toJSON DeleteDeveloperMetadataResponse'{..}
          = object
              (catMaybes
                 [("deletedDeveloperMetadata" .=) <$>
                    _ddmrDeletedDeveloperMetadata])

-- | The response from updating developer metadata.
--
-- /See:/ 'updateDeveloperMetadataResponse' smart constructor.
newtype UpdateDeveloperMetadataResponse =
  UpdateDeveloperMetadataResponse'
    { _uDeveloperMetadata :: Maybe [DeveloperMetadata]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateDeveloperMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uDeveloperMetadata'
updateDeveloperMetadataResponse
    :: UpdateDeveloperMetadataResponse
updateDeveloperMetadataResponse =
  UpdateDeveloperMetadataResponse' {_uDeveloperMetadata = Nothing}


-- | The updated developer metadata.
uDeveloperMetadata :: Lens' UpdateDeveloperMetadataResponse [DeveloperMetadata]
uDeveloperMetadata
  = lens _uDeveloperMetadata
      (\ s a -> s{_uDeveloperMetadata = a})
      . _Default
      . _Coerce

instance FromJSON UpdateDeveloperMetadataResponse
         where
        parseJSON
          = withObject "UpdateDeveloperMetadataResponse"
              (\ o ->
                 UpdateDeveloperMetadataResponse' <$>
                   (o .:? "developerMetadata" .!= mempty))

instance ToJSON UpdateDeveloperMetadataResponse where
        toJSON UpdateDeveloperMetadataResponse'{..}
          = object
              (catMaybes
                 [("developerMetadata" .=) <$> _uDeveloperMetadata])

-- | A single kind of update to apply to a spreadsheet.
--
-- /See:/ 'request'' smart constructor.
data Request' =
  Request''
    { _reqAddFilterView                :: !(Maybe AddFilterViewRequest)
    , _reqDeleteProtectedRange         :: !(Maybe DeleteProtectedRangeRequest)
    , _reqUpdateProtectedRange         :: !(Maybe UpdateProtectedRangeRequest)
    , _reqUpdateCells                  :: !(Maybe UpdateCellsRequest)
    , _reqCreateDeveloperMetadata      :: !(Maybe CreateDeveloperMetadataRequest)
    , _reqDuplicateFilterView          :: !(Maybe DuplicateFilterViewRequest)
    , _reqAddConditionalFormatRule     :: !(Maybe AddConditionalFormatRuleRequest)
    , _reqRandomizeRange               :: !(Maybe RandomizeRangeRequest)
    , _reqSortRange                    :: !(Maybe SortRangeRequest)
    , _reqUpdateNamedRange             :: !(Maybe UpdateNamedRangeRequest)
    , _reqDeleteNamedRange             :: !(Maybe DeleteNamedRangeRequest)
    , _reqInsertRange                  :: !(Maybe InsertRangeRequest)
    , _reqDeleteBanding                :: !(Maybe DeleteBandingRequest)
    , _reqUpdateBanding                :: !(Maybe UpdateBandingRequest)
    , _reqClearBasicFilter             :: !(Maybe ClearBasicFilterRequest)
    , _reqAppendCells                  :: !(Maybe AppendCellsRequest)
    , _reqPasteData                    :: !(Maybe PasteDataRequest)
    , _reqUpdateEmbeddedObjectPosition :: !(Maybe UpdateEmbeddedObjectPositionRequest)
    , _reqDeleteRange                  :: !(Maybe DeleteRangeRequest)
    , _reqCopyPaste                    :: !(Maybe CopyPasteRequest)
    , _reqUpdateDimensionGroup         :: !(Maybe UpdateDimensionGroupRequest)
    , _reqDeleteDimensionGroup         :: !(Maybe DeleteDimensionGroupRequest)
    , _reqAutoResizeDimensions         :: !(Maybe AutoResizeDimensionsRequest)
    , _reqAddSheet                     :: !(Maybe AddSheetRequest)
    , _reqFindReplace                  :: !(Maybe FindReplaceRequest)
    , _reqDeleteDimension              :: !(Maybe DeleteDimensionRequest)
    , _reqCutPaste                     :: !(Maybe CutPasteRequest)
    , _reqMoveDimension                :: !(Maybe MoveDimensionRequest)
    , _reqRepeatCell                   :: !(Maybe RepeatCellRequest)
    , _reqAddProtectedRange            :: !(Maybe AddProtectedRangeRequest)
    , _reqUpdateFilterView             :: !(Maybe UpdateFilterViewRequest)
    , _reqDeleteFilterView             :: !(Maybe DeleteFilterViewRequest)
    , _reqInsertDimension              :: !(Maybe InsertDimensionRequest)
    , _reqUpdateSheetProperties        :: !(Maybe UpdateSheetPropertiesRequest)
    , _reqDeleteConditionalFormatRule  :: !(Maybe DeleteConditionalFormatRuleRequest)
    , _reqUpdateConditionalFormatRule  :: !(Maybe UpdateConditionalFormatRuleRequest)
    , _reqDeleteEmbeddedObject         :: !(Maybe DeleteEmbeddedObjectRequest)
    , _reqDeleteDeveloperMetadata      :: !(Maybe DeleteDeveloperMetadataRequest)
    , _reqUpdateDeveloperMetadata      :: !(Maybe UpdateDeveloperMetadataRequest)
    , _reqMergeCells                   :: !(Maybe MergeCellsRequest)
    , _reqAddNamedRange                :: !(Maybe AddNamedRangeRequest)
    , _reqAddChart                     :: !(Maybe AddChartRequest)
    , _reqAddBanding                   :: !(Maybe AddBandingRequest)
    , _reqDuplicateSheet               :: !(Maybe DuplicateSheetRequest)
    , _reqAutoFill                     :: !(Maybe AutoFillRequest)
    , _reqUpdateDimensionProperties    :: !(Maybe UpdateDimensionPropertiesRequest)
    , _reqUpdateChartSpec              :: !(Maybe UpdateChartSpecRequest)
    , _reqSetBasicFilter               :: !(Maybe SetBasicFilterRequest)
    , _reqTextToColumns                :: !(Maybe TextToColumnsRequest)
    , _reqAddDimensionGroup            :: !(Maybe AddDimensionGroupRequest)
    , _reqUpdateSpreadsheetProperties  :: !(Maybe UpdateSpreadsheetPropertiesRequest)
    , _reqDeleteSheet                  :: !(Maybe DeleteSheetRequest)
    , _reqUnmergeCells                 :: !(Maybe UnmergeCellsRequest)
    , _reqUpdateBOrders                :: !(Maybe UpdateBOrdersRequest)
    , _reqAppendDimension              :: !(Maybe AppendDimensionRequest)
    , _reqSetDataValidation            :: !(Maybe SetDataValidationRequest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Request' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reqAddFilterView'
--
-- * 'reqDeleteProtectedRange'
--
-- * 'reqUpdateProtectedRange'
--
-- * 'reqUpdateCells'
--
-- * 'reqCreateDeveloperMetadata'
--
-- * 'reqDuplicateFilterView'
--
-- * 'reqAddConditionalFormatRule'
--
-- * 'reqRandomizeRange'
--
-- * 'reqSortRange'
--
-- * 'reqUpdateNamedRange'
--
-- * 'reqDeleteNamedRange'
--
-- * 'reqInsertRange'
--
-- * 'reqDeleteBanding'
--
-- * 'reqUpdateBanding'
--
-- * 'reqClearBasicFilter'
--
-- * 'reqAppendCells'
--
-- * 'reqPasteData'
--
-- * 'reqUpdateEmbeddedObjectPosition'
--
-- * 'reqDeleteRange'
--
-- * 'reqCopyPaste'
--
-- * 'reqUpdateDimensionGroup'
--
-- * 'reqDeleteDimensionGroup'
--
-- * 'reqAutoResizeDimensions'
--
-- * 'reqAddSheet'
--
-- * 'reqFindReplace'
--
-- * 'reqDeleteDimension'
--
-- * 'reqCutPaste'
--
-- * 'reqMoveDimension'
--
-- * 'reqRepeatCell'
--
-- * 'reqAddProtectedRange'
--
-- * 'reqUpdateFilterView'
--
-- * 'reqDeleteFilterView'
--
-- * 'reqInsertDimension'
--
-- * 'reqUpdateSheetProperties'
--
-- * 'reqDeleteConditionalFormatRule'
--
-- * 'reqUpdateConditionalFormatRule'
--
-- * 'reqDeleteEmbeddedObject'
--
-- * 'reqDeleteDeveloperMetadata'
--
-- * 'reqUpdateDeveloperMetadata'
--
-- * 'reqMergeCells'
--
-- * 'reqAddNamedRange'
--
-- * 'reqAddChart'
--
-- * 'reqAddBanding'
--
-- * 'reqDuplicateSheet'
--
-- * 'reqAutoFill'
--
-- * 'reqUpdateDimensionProperties'
--
-- * 'reqUpdateChartSpec'
--
-- * 'reqSetBasicFilter'
--
-- * 'reqTextToColumns'
--
-- * 'reqAddDimensionGroup'
--
-- * 'reqUpdateSpreadsheetProperties'
--
-- * 'reqDeleteSheet'
--
-- * 'reqUnmergeCells'
--
-- * 'reqUpdateBOrders'
--
-- * 'reqAppendDimension'
--
-- * 'reqSetDataValidation'
request'
    :: Request'
request' =
  Request''
    { _reqAddFilterView = Nothing
    , _reqDeleteProtectedRange = Nothing
    , _reqUpdateProtectedRange = Nothing
    , _reqUpdateCells = Nothing
    , _reqCreateDeveloperMetadata = Nothing
    , _reqDuplicateFilterView = Nothing
    , _reqAddConditionalFormatRule = Nothing
    , _reqRandomizeRange = Nothing
    , _reqSortRange = Nothing
    , _reqUpdateNamedRange = Nothing
    , _reqDeleteNamedRange = Nothing
    , _reqInsertRange = Nothing
    , _reqDeleteBanding = Nothing
    , _reqUpdateBanding = Nothing
    , _reqClearBasicFilter = Nothing
    , _reqAppendCells = Nothing
    , _reqPasteData = Nothing
    , _reqUpdateEmbeddedObjectPosition = Nothing
    , _reqDeleteRange = Nothing
    , _reqCopyPaste = Nothing
    , _reqUpdateDimensionGroup = Nothing
    , _reqDeleteDimensionGroup = Nothing
    , _reqAutoResizeDimensions = Nothing
    , _reqAddSheet = Nothing
    , _reqFindReplace = Nothing
    , _reqDeleteDimension = Nothing
    , _reqCutPaste = Nothing
    , _reqMoveDimension = Nothing
    , _reqRepeatCell = Nothing
    , _reqAddProtectedRange = Nothing
    , _reqUpdateFilterView = Nothing
    , _reqDeleteFilterView = Nothing
    , _reqInsertDimension = Nothing
    , _reqUpdateSheetProperties = Nothing
    , _reqDeleteConditionalFormatRule = Nothing
    , _reqUpdateConditionalFormatRule = Nothing
    , _reqDeleteEmbeddedObject = Nothing
    , _reqDeleteDeveloperMetadata = Nothing
    , _reqUpdateDeveloperMetadata = Nothing
    , _reqMergeCells = Nothing
    , _reqAddNamedRange = Nothing
    , _reqAddChart = Nothing
    , _reqAddBanding = Nothing
    , _reqDuplicateSheet = Nothing
    , _reqAutoFill = Nothing
    , _reqUpdateDimensionProperties = Nothing
    , _reqUpdateChartSpec = Nothing
    , _reqSetBasicFilter = Nothing
    , _reqTextToColumns = Nothing
    , _reqAddDimensionGroup = Nothing
    , _reqUpdateSpreadsheetProperties = Nothing
    , _reqDeleteSheet = Nothing
    , _reqUnmergeCells = Nothing
    , _reqUpdateBOrders = Nothing
    , _reqAppendDimension = Nothing
    , _reqSetDataValidation = Nothing
    }


-- | Adds a filter view.
reqAddFilterView :: Lens' Request' (Maybe AddFilterViewRequest)
reqAddFilterView
  = lens _reqAddFilterView
      (\ s a -> s{_reqAddFilterView = a})

-- | Deletes a protected range.
reqDeleteProtectedRange :: Lens' Request' (Maybe DeleteProtectedRangeRequest)
reqDeleteProtectedRange
  = lens _reqDeleteProtectedRange
      (\ s a -> s{_reqDeleteProtectedRange = a})

-- | Updates a protected range.
reqUpdateProtectedRange :: Lens' Request' (Maybe UpdateProtectedRangeRequest)
reqUpdateProtectedRange
  = lens _reqUpdateProtectedRange
      (\ s a -> s{_reqUpdateProtectedRange = a})

-- | Updates many cells at once.
reqUpdateCells :: Lens' Request' (Maybe UpdateCellsRequest)
reqUpdateCells
  = lens _reqUpdateCells
      (\ s a -> s{_reqUpdateCells = a})

-- | Creates new developer metadata
reqCreateDeveloperMetadata :: Lens' Request' (Maybe CreateDeveloperMetadataRequest)
reqCreateDeveloperMetadata
  = lens _reqCreateDeveloperMetadata
      (\ s a -> s{_reqCreateDeveloperMetadata = a})

-- | Duplicates a filter view.
reqDuplicateFilterView :: Lens' Request' (Maybe DuplicateFilterViewRequest)
reqDuplicateFilterView
  = lens _reqDuplicateFilterView
      (\ s a -> s{_reqDuplicateFilterView = a})

-- | Adds a new conditional format rule.
reqAddConditionalFormatRule :: Lens' Request' (Maybe AddConditionalFormatRuleRequest)
reqAddConditionalFormatRule
  = lens _reqAddConditionalFormatRule
      (\ s a -> s{_reqAddConditionalFormatRule = a})

-- | Randomizes the order of the rows in a range.
reqRandomizeRange :: Lens' Request' (Maybe RandomizeRangeRequest)
reqRandomizeRange
  = lens _reqRandomizeRange
      (\ s a -> s{_reqRandomizeRange = a})

-- | Sorts data in a range.
reqSortRange :: Lens' Request' (Maybe SortRangeRequest)
reqSortRange
  = lens _reqSortRange (\ s a -> s{_reqSortRange = a})

-- | Updates a named range.
reqUpdateNamedRange :: Lens' Request' (Maybe UpdateNamedRangeRequest)
reqUpdateNamedRange
  = lens _reqUpdateNamedRange
      (\ s a -> s{_reqUpdateNamedRange = a})

-- | Deletes a named range.
reqDeleteNamedRange :: Lens' Request' (Maybe DeleteNamedRangeRequest)
reqDeleteNamedRange
  = lens _reqDeleteNamedRange
      (\ s a -> s{_reqDeleteNamedRange = a})

-- | Inserts new cells in a sheet, shifting the existing cells.
reqInsertRange :: Lens' Request' (Maybe InsertRangeRequest)
reqInsertRange
  = lens _reqInsertRange
      (\ s a -> s{_reqInsertRange = a})

-- | Removes a banded range
reqDeleteBanding :: Lens' Request' (Maybe DeleteBandingRequest)
reqDeleteBanding
  = lens _reqDeleteBanding
      (\ s a -> s{_reqDeleteBanding = a})

-- | Updates a banded range
reqUpdateBanding :: Lens' Request' (Maybe UpdateBandingRequest)
reqUpdateBanding
  = lens _reqUpdateBanding
      (\ s a -> s{_reqUpdateBanding = a})

-- | Clears the basic filter on a sheet.
reqClearBasicFilter :: Lens' Request' (Maybe ClearBasicFilterRequest)
reqClearBasicFilter
  = lens _reqClearBasicFilter
      (\ s a -> s{_reqClearBasicFilter = a})

-- | Appends cells after the last row with data in a sheet.
reqAppendCells :: Lens' Request' (Maybe AppendCellsRequest)
reqAppendCells
  = lens _reqAppendCells
      (\ s a -> s{_reqAppendCells = a})

-- | Pastes data (HTML or delimited) into a sheet.
reqPasteData :: Lens' Request' (Maybe PasteDataRequest)
reqPasteData
  = lens _reqPasteData (\ s a -> s{_reqPasteData = a})

-- | Updates an embedded object\'s (e.g. chart, image) position.
reqUpdateEmbeddedObjectPosition :: Lens' Request' (Maybe UpdateEmbeddedObjectPositionRequest)
reqUpdateEmbeddedObjectPosition
  = lens _reqUpdateEmbeddedObjectPosition
      (\ s a -> s{_reqUpdateEmbeddedObjectPosition = a})

-- | Deletes a range of cells from a sheet, shifting the remaining cells.
reqDeleteRange :: Lens' Request' (Maybe DeleteRangeRequest)
reqDeleteRange
  = lens _reqDeleteRange
      (\ s a -> s{_reqDeleteRange = a})

-- | Copies data from one area and pastes it to another.
reqCopyPaste :: Lens' Request' (Maybe CopyPasteRequest)
reqCopyPaste
  = lens _reqCopyPaste (\ s a -> s{_reqCopyPaste = a})

-- | Updates the state of the specified group.
reqUpdateDimensionGroup :: Lens' Request' (Maybe UpdateDimensionGroupRequest)
reqUpdateDimensionGroup
  = lens _reqUpdateDimensionGroup
      (\ s a -> s{_reqUpdateDimensionGroup = a})

-- | Deletes a group over the specified range.
reqDeleteDimensionGroup :: Lens' Request' (Maybe DeleteDimensionGroupRequest)
reqDeleteDimensionGroup
  = lens _reqDeleteDimensionGroup
      (\ s a -> s{_reqDeleteDimensionGroup = a})

-- | Automatically resizes one or more dimensions based on the contents of
-- the cells in that dimension.
reqAutoResizeDimensions :: Lens' Request' (Maybe AutoResizeDimensionsRequest)
reqAutoResizeDimensions
  = lens _reqAutoResizeDimensions
      (\ s a -> s{_reqAutoResizeDimensions = a})

-- | Adds a sheet.
reqAddSheet :: Lens' Request' (Maybe AddSheetRequest)
reqAddSheet
  = lens _reqAddSheet (\ s a -> s{_reqAddSheet = a})

-- | Finds and replaces occurrences of some text with other text.
reqFindReplace :: Lens' Request' (Maybe FindReplaceRequest)
reqFindReplace
  = lens _reqFindReplace
      (\ s a -> s{_reqFindReplace = a})

-- | Deletes rows or columns in a sheet.
reqDeleteDimension :: Lens' Request' (Maybe DeleteDimensionRequest)
reqDeleteDimension
  = lens _reqDeleteDimension
      (\ s a -> s{_reqDeleteDimension = a})

-- | Cuts data from one area and pastes it to another.
reqCutPaste :: Lens' Request' (Maybe CutPasteRequest)
reqCutPaste
  = lens _reqCutPaste (\ s a -> s{_reqCutPaste = a})

-- | Moves rows or columns to another location in a sheet.
reqMoveDimension :: Lens' Request' (Maybe MoveDimensionRequest)
reqMoveDimension
  = lens _reqMoveDimension
      (\ s a -> s{_reqMoveDimension = a})

-- | Repeats a single cell across a range.
reqRepeatCell :: Lens' Request' (Maybe RepeatCellRequest)
reqRepeatCell
  = lens _reqRepeatCell
      (\ s a -> s{_reqRepeatCell = a})

-- | Adds a protected range.
reqAddProtectedRange :: Lens' Request' (Maybe AddProtectedRangeRequest)
reqAddProtectedRange
  = lens _reqAddProtectedRange
      (\ s a -> s{_reqAddProtectedRange = a})

-- | Updates the properties of a filter view.
reqUpdateFilterView :: Lens' Request' (Maybe UpdateFilterViewRequest)
reqUpdateFilterView
  = lens _reqUpdateFilterView
      (\ s a -> s{_reqUpdateFilterView = a})

-- | Deletes a filter view from a sheet.
reqDeleteFilterView :: Lens' Request' (Maybe DeleteFilterViewRequest)
reqDeleteFilterView
  = lens _reqDeleteFilterView
      (\ s a -> s{_reqDeleteFilterView = a})

-- | Inserts new rows or columns in a sheet.
reqInsertDimension :: Lens' Request' (Maybe InsertDimensionRequest)
reqInsertDimension
  = lens _reqInsertDimension
      (\ s a -> s{_reqInsertDimension = a})

-- | Updates a sheet\'s properties.
reqUpdateSheetProperties :: Lens' Request' (Maybe UpdateSheetPropertiesRequest)
reqUpdateSheetProperties
  = lens _reqUpdateSheetProperties
      (\ s a -> s{_reqUpdateSheetProperties = a})

-- | Deletes an existing conditional format rule.
reqDeleteConditionalFormatRule :: Lens' Request' (Maybe DeleteConditionalFormatRuleRequest)
reqDeleteConditionalFormatRule
  = lens _reqDeleteConditionalFormatRule
      (\ s a -> s{_reqDeleteConditionalFormatRule = a})

-- | Updates an existing conditional format rule.
reqUpdateConditionalFormatRule :: Lens' Request' (Maybe UpdateConditionalFormatRuleRequest)
reqUpdateConditionalFormatRule
  = lens _reqUpdateConditionalFormatRule
      (\ s a -> s{_reqUpdateConditionalFormatRule = a})

-- | Deletes an embedded object (e.g, chart, image) in a sheet.
reqDeleteEmbeddedObject :: Lens' Request' (Maybe DeleteEmbeddedObjectRequest)
reqDeleteEmbeddedObject
  = lens _reqDeleteEmbeddedObject
      (\ s a -> s{_reqDeleteEmbeddedObject = a})

-- | Deletes developer metadata
reqDeleteDeveloperMetadata :: Lens' Request' (Maybe DeleteDeveloperMetadataRequest)
reqDeleteDeveloperMetadata
  = lens _reqDeleteDeveloperMetadata
      (\ s a -> s{_reqDeleteDeveloperMetadata = a})

-- | Updates an existing developer metadata entry
reqUpdateDeveloperMetadata :: Lens' Request' (Maybe UpdateDeveloperMetadataRequest)
reqUpdateDeveloperMetadata
  = lens _reqUpdateDeveloperMetadata
      (\ s a -> s{_reqUpdateDeveloperMetadata = a})

-- | Merges cells together.
reqMergeCells :: Lens' Request' (Maybe MergeCellsRequest)
reqMergeCells
  = lens _reqMergeCells
      (\ s a -> s{_reqMergeCells = a})

-- | Adds a named range.
reqAddNamedRange :: Lens' Request' (Maybe AddNamedRangeRequest)
reqAddNamedRange
  = lens _reqAddNamedRange
      (\ s a -> s{_reqAddNamedRange = a})

-- | Adds a chart.
reqAddChart :: Lens' Request' (Maybe AddChartRequest)
reqAddChart
  = lens _reqAddChart (\ s a -> s{_reqAddChart = a})

-- | Adds a new banded range
reqAddBanding :: Lens' Request' (Maybe AddBandingRequest)
reqAddBanding
  = lens _reqAddBanding
      (\ s a -> s{_reqAddBanding = a})

-- | Duplicates a sheet.
reqDuplicateSheet :: Lens' Request' (Maybe DuplicateSheetRequest)
reqDuplicateSheet
  = lens _reqDuplicateSheet
      (\ s a -> s{_reqDuplicateSheet = a})

-- | Automatically fills in more data based on existing data.
reqAutoFill :: Lens' Request' (Maybe AutoFillRequest)
reqAutoFill
  = lens _reqAutoFill (\ s a -> s{_reqAutoFill = a})

-- | Updates dimensions\' properties.
reqUpdateDimensionProperties :: Lens' Request' (Maybe UpdateDimensionPropertiesRequest)
reqUpdateDimensionProperties
  = lens _reqUpdateDimensionProperties
      (\ s a -> s{_reqUpdateDimensionProperties = a})

-- | Updates a chart\'s specifications.
reqUpdateChartSpec :: Lens' Request' (Maybe UpdateChartSpecRequest)
reqUpdateChartSpec
  = lens _reqUpdateChartSpec
      (\ s a -> s{_reqUpdateChartSpec = a})

-- | Sets the basic filter on a sheet.
reqSetBasicFilter :: Lens' Request' (Maybe SetBasicFilterRequest)
reqSetBasicFilter
  = lens _reqSetBasicFilter
      (\ s a -> s{_reqSetBasicFilter = a})

-- | Converts a column of text into many columns of text.
reqTextToColumns :: Lens' Request' (Maybe TextToColumnsRequest)
reqTextToColumns
  = lens _reqTextToColumns
      (\ s a -> s{_reqTextToColumns = a})

-- | Creates a group over the specified range.
reqAddDimensionGroup :: Lens' Request' (Maybe AddDimensionGroupRequest)
reqAddDimensionGroup
  = lens _reqAddDimensionGroup
      (\ s a -> s{_reqAddDimensionGroup = a})

-- | Updates the spreadsheet\'s properties.
reqUpdateSpreadsheetProperties :: Lens' Request' (Maybe UpdateSpreadsheetPropertiesRequest)
reqUpdateSpreadsheetProperties
  = lens _reqUpdateSpreadsheetProperties
      (\ s a -> s{_reqUpdateSpreadsheetProperties = a})

-- | Deletes a sheet.
reqDeleteSheet :: Lens' Request' (Maybe DeleteSheetRequest)
reqDeleteSheet
  = lens _reqDeleteSheet
      (\ s a -> s{_reqDeleteSheet = a})

-- | Unmerges merged cells.
reqUnmergeCells :: Lens' Request' (Maybe UnmergeCellsRequest)
reqUnmergeCells
  = lens _reqUnmergeCells
      (\ s a -> s{_reqUnmergeCells = a})

-- | Updates the borders in a range of cells.
reqUpdateBOrders :: Lens' Request' (Maybe UpdateBOrdersRequest)
reqUpdateBOrders
  = lens _reqUpdateBOrders
      (\ s a -> s{_reqUpdateBOrders = a})

-- | Appends dimensions to the end of a sheet.
reqAppendDimension :: Lens' Request' (Maybe AppendDimensionRequest)
reqAppendDimension
  = lens _reqAppendDimension
      (\ s a -> s{_reqAppendDimension = a})

-- | Sets data validation for one or more cells.
reqSetDataValidation :: Lens' Request' (Maybe SetDataValidationRequest)
reqSetDataValidation
  = lens _reqSetDataValidation
      (\ s a -> s{_reqSetDataValidation = a})

instance FromJSON Request' where
        parseJSON
          = withObject "Request"
              (\ o ->
                 Request'' <$>
                   (o .:? "addFilterView") <*>
                     (o .:? "deleteProtectedRange")
                     <*> (o .:? "updateProtectedRange")
                     <*> (o .:? "updateCells")
                     <*> (o .:? "createDeveloperMetadata")
                     <*> (o .:? "duplicateFilterView")
                     <*> (o .:? "addConditionalFormatRule")
                     <*> (o .:? "randomizeRange")
                     <*> (o .:? "sortRange")
                     <*> (o .:? "updateNamedRange")
                     <*> (o .:? "deleteNamedRange")
                     <*> (o .:? "insertRange")
                     <*> (o .:? "deleteBanding")
                     <*> (o .:? "updateBanding")
                     <*> (o .:? "clearBasicFilter")
                     <*> (o .:? "appendCells")
                     <*> (o .:? "pasteData")
                     <*> (o .:? "updateEmbeddedObjectPosition")
                     <*> (o .:? "deleteRange")
                     <*> (o .:? "copyPaste")
                     <*> (o .:? "updateDimensionGroup")
                     <*> (o .:? "deleteDimensionGroup")
                     <*> (o .:? "autoResizeDimensions")
                     <*> (o .:? "addSheet")
                     <*> (o .:? "findReplace")
                     <*> (o .:? "deleteDimension")
                     <*> (o .:? "cutPaste")
                     <*> (o .:? "moveDimension")
                     <*> (o .:? "repeatCell")
                     <*> (o .:? "addProtectedRange")
                     <*> (o .:? "updateFilterView")
                     <*> (o .:? "deleteFilterView")
                     <*> (o .:? "insertDimension")
                     <*> (o .:? "updateSheetProperties")
                     <*> (o .:? "deleteConditionalFormatRule")
                     <*> (o .:? "updateConditionalFormatRule")
                     <*> (o .:? "deleteEmbeddedObject")
                     <*> (o .:? "deleteDeveloperMetadata")
                     <*> (o .:? "updateDeveloperMetadata")
                     <*> (o .:? "mergeCells")
                     <*> (o .:? "addNamedRange")
                     <*> (o .:? "addChart")
                     <*> (o .:? "addBanding")
                     <*> (o .:? "duplicateSheet")
                     <*> (o .:? "autoFill")
                     <*> (o .:? "updateDimensionProperties")
                     <*> (o .:? "updateChartSpec")
                     <*> (o .:? "setBasicFilter")
                     <*> (o .:? "textToColumns")
                     <*> (o .:? "addDimensionGroup")
                     <*> (o .:? "updateSpreadsheetProperties")
                     <*> (o .:? "deleteSheet")
                     <*> (o .:? "unmergeCells")
                     <*> (o .:? "updateBorders")
                     <*> (o .:? "appendDimension")
                     <*> (o .:? "setDataValidation"))

instance ToJSON Request' where
        toJSON Request''{..}
          = object
              (catMaybes
                 [("addFilterView" .=) <$> _reqAddFilterView,
                  ("deleteProtectedRange" .=) <$>
                    _reqDeleteProtectedRange,
                  ("updateProtectedRange" .=) <$>
                    _reqUpdateProtectedRange,
                  ("updateCells" .=) <$> _reqUpdateCells,
                  ("createDeveloperMetadata" .=) <$>
                    _reqCreateDeveloperMetadata,
                  ("duplicateFilterView" .=) <$>
                    _reqDuplicateFilterView,
                  ("addConditionalFormatRule" .=) <$>
                    _reqAddConditionalFormatRule,
                  ("randomizeRange" .=) <$> _reqRandomizeRange,
                  ("sortRange" .=) <$> _reqSortRange,
                  ("updateNamedRange" .=) <$> _reqUpdateNamedRange,
                  ("deleteNamedRange" .=) <$> _reqDeleteNamedRange,
                  ("insertRange" .=) <$> _reqInsertRange,
                  ("deleteBanding" .=) <$> _reqDeleteBanding,
                  ("updateBanding" .=) <$> _reqUpdateBanding,
                  ("clearBasicFilter" .=) <$> _reqClearBasicFilter,
                  ("appendCells" .=) <$> _reqAppendCells,
                  ("pasteData" .=) <$> _reqPasteData,
                  ("updateEmbeddedObjectPosition" .=) <$>
                    _reqUpdateEmbeddedObjectPosition,
                  ("deleteRange" .=) <$> _reqDeleteRange,
                  ("copyPaste" .=) <$> _reqCopyPaste,
                  ("updateDimensionGroup" .=) <$>
                    _reqUpdateDimensionGroup,
                  ("deleteDimensionGroup" .=) <$>
                    _reqDeleteDimensionGroup,
                  ("autoResizeDimensions" .=) <$>
                    _reqAutoResizeDimensions,
                  ("addSheet" .=) <$> _reqAddSheet,
                  ("findReplace" .=) <$> _reqFindReplace,
                  ("deleteDimension" .=) <$> _reqDeleteDimension,
                  ("cutPaste" .=) <$> _reqCutPaste,
                  ("moveDimension" .=) <$> _reqMoveDimension,
                  ("repeatCell" .=) <$> _reqRepeatCell,
                  ("addProtectedRange" .=) <$> _reqAddProtectedRange,
                  ("updateFilterView" .=) <$> _reqUpdateFilterView,
                  ("deleteFilterView" .=) <$> _reqDeleteFilterView,
                  ("insertDimension" .=) <$> _reqInsertDimension,
                  ("updateSheetProperties" .=) <$>
                    _reqUpdateSheetProperties,
                  ("deleteConditionalFormatRule" .=) <$>
                    _reqDeleteConditionalFormatRule,
                  ("updateConditionalFormatRule" .=) <$>
                    _reqUpdateConditionalFormatRule,
                  ("deleteEmbeddedObject" .=) <$>
                    _reqDeleteEmbeddedObject,
                  ("deleteDeveloperMetadata" .=) <$>
                    _reqDeleteDeveloperMetadata,
                  ("updateDeveloperMetadata" .=) <$>
                    _reqUpdateDeveloperMetadata,
                  ("mergeCells" .=) <$> _reqMergeCells,
                  ("addNamedRange" .=) <$> _reqAddNamedRange,
                  ("addChart" .=) <$> _reqAddChart,
                  ("addBanding" .=) <$> _reqAddBanding,
                  ("duplicateSheet" .=) <$> _reqDuplicateSheet,
                  ("autoFill" .=) <$> _reqAutoFill,
                  ("updateDimensionProperties" .=) <$>
                    _reqUpdateDimensionProperties,
                  ("updateChartSpec" .=) <$> _reqUpdateChartSpec,
                  ("setBasicFilter" .=) <$> _reqSetBasicFilter,
                  ("textToColumns" .=) <$> _reqTextToColumns,
                  ("addDimensionGroup" .=) <$> _reqAddDimensionGroup,
                  ("updateSpreadsheetProperties" .=) <$>
                    _reqUpdateSpreadsheetProperties,
                  ("deleteSheet" .=) <$> _reqDeleteSheet,
                  ("unmergeCells" .=) <$> _reqUnmergeCells,
                  ("updateBorders" .=) <$> _reqUpdateBOrders,
                  ("appendDimension" .=) <$> _reqAppendDimension,
                  ("setDataValidation" .=) <$> _reqSetDataValidation])

-- | Properties that describe the style of a line.
--
-- /See:/ 'lineStyle' smart constructor.
data LineStyle =
  LineStyle'
    { _lsWidth :: !(Maybe (Textual Int32))
    , _lsType  :: !(Maybe LineStyleType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LineStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsWidth'
--
-- * 'lsType'
lineStyle
    :: LineStyle
lineStyle = LineStyle' {_lsWidth = Nothing, _lsType = Nothing}


-- | The thickness of the line, in px.
lsWidth :: Lens' LineStyle (Maybe Int32)
lsWidth
  = lens _lsWidth (\ s a -> s{_lsWidth = a}) .
      mapping _Coerce

-- | The dash type of the line.
lsType :: Lens' LineStyle (Maybe LineStyleType)
lsType = lens _lsType (\ s a -> s{_lsType = a})

instance FromJSON LineStyle where
        parseJSON
          = withObject "LineStyle"
              (\ o ->
                 LineStyle' <$> (o .:? "width") <*> (o .:? "type"))

instance ToJSON LineStyle where
        toJSON LineStyle'{..}
          = object
              (catMaybes
                 [("width" .=) <$> _lsWidth, ("type" .=) <$> _lsType])

-- | The result of deleting a conditional format rule.
--
-- /See:/ 'deleteConditionalFormatRuleResponse' smart constructor.
newtype DeleteConditionalFormatRuleResponse =
  DeleteConditionalFormatRuleResponse'
    { _dcfrrRule :: Maybe ConditionalFormatRule
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeleteConditionalFormatRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcfrrRule'
deleteConditionalFormatRuleResponse
    :: DeleteConditionalFormatRuleResponse
deleteConditionalFormatRuleResponse =
  DeleteConditionalFormatRuleResponse' {_dcfrrRule = Nothing}


-- | The rule that was deleted.
dcfrrRule :: Lens' DeleteConditionalFormatRuleResponse (Maybe ConditionalFormatRule)
dcfrrRule
  = lens _dcfrrRule (\ s a -> s{_dcfrrRule = a})

instance FromJSON DeleteConditionalFormatRuleResponse
         where
        parseJSON
          = withObject "DeleteConditionalFormatRuleResponse"
              (\ o ->
                 DeleteConditionalFormatRuleResponse' <$>
                   (o .:? "rule"))

instance ToJSON DeleteConditionalFormatRuleResponse
         where
        toJSON DeleteConditionalFormatRuleResponse'{..}
          = object (catMaybes [("rule" .=) <$> _dcfrrRule])

-- | The result of updating a conditional format rule.
--
-- /See:/ 'updateConditionalFormatRuleResponse' smart constructor.
data UpdateConditionalFormatRuleResponse =
  UpdateConditionalFormatRuleResponse'
    { _uNewRule  :: !(Maybe ConditionalFormatRule)
    , _uNewIndex :: !(Maybe (Textual Int32))
    , _uOldIndex :: !(Maybe (Textual Int32))
    , _uOldRule  :: !(Maybe ConditionalFormatRule)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UpdateConditionalFormatRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uNewRule'
--
-- * 'uNewIndex'
--
-- * 'uOldIndex'
--
-- * 'uOldRule'
updateConditionalFormatRuleResponse
    :: UpdateConditionalFormatRuleResponse
updateConditionalFormatRuleResponse =
  UpdateConditionalFormatRuleResponse'
    { _uNewRule = Nothing
    , _uNewIndex = Nothing
    , _uOldIndex = Nothing
    , _uOldRule = Nothing
    }


-- | The new rule that replaced the old rule (if replacing), or the rule that
-- was moved (if moved)
uNewRule :: Lens' UpdateConditionalFormatRuleResponse (Maybe ConditionalFormatRule)
uNewRule = lens _uNewRule (\ s a -> s{_uNewRule = a})

-- | The index of the new rule.
uNewIndex :: Lens' UpdateConditionalFormatRuleResponse (Maybe Int32)
uNewIndex
  = lens _uNewIndex (\ s a -> s{_uNewIndex = a}) .
      mapping _Coerce

-- | The old index of the rule. Not set if a rule was replaced (because it is
-- the same as new_index).
uOldIndex :: Lens' UpdateConditionalFormatRuleResponse (Maybe Int32)
uOldIndex
  = lens _uOldIndex (\ s a -> s{_uOldIndex = a}) .
      mapping _Coerce

-- | The old (deleted) rule. Not set if a rule was moved (because it is the
-- same as new_rule).
uOldRule :: Lens' UpdateConditionalFormatRuleResponse (Maybe ConditionalFormatRule)
uOldRule = lens _uOldRule (\ s a -> s{_uOldRule = a})

instance FromJSON UpdateConditionalFormatRuleResponse
         where
        parseJSON
          = withObject "UpdateConditionalFormatRuleResponse"
              (\ o ->
                 UpdateConditionalFormatRuleResponse' <$>
                   (o .:? "newRule") <*> (o .:? "newIndex") <*>
                     (o .:? "oldIndex")
                     <*> (o .:? "oldRule"))

instance ToJSON UpdateConditionalFormatRuleResponse
         where
        toJSON UpdateConditionalFormatRuleResponse'{..}
          = object
              (catMaybes
                 [("newRule" .=) <$> _uNewRule,
                  ("newIndex" .=) <$> _uNewIndex,
                  ("oldIndex" .=) <$> _uOldIndex,
                  ("oldRule" .=) <$> _uOldRule])
