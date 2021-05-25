{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FusionTables.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FusionTables.Types.Product where

import Network.Google.FusionTables.Types.Sum
import Network.Google.Prelude

-- | Represents a list of columns in a table.
--
-- /See:/ 'columnList' smart constructor.
data ColumnList =
  ColumnList'
    { _clTotalItems :: !(Maybe (Textual Int32))
    , _clNextPageToken :: !(Maybe Text)
    , _clKind :: !Text
    , _clItems :: !(Maybe [Column])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ColumnList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clTotalItems'
--
-- * 'clNextPageToken'
--
-- * 'clKind'
--
-- * 'clItems'
columnList
    :: ColumnList
columnList =
  ColumnList'
    { _clTotalItems = Nothing
    , _clNextPageToken = Nothing
    , _clKind = "fusiontables#columnList"
    , _clItems = Nothing
    }


-- | Total number of columns for the table.
clTotalItems :: Lens' ColumnList (Maybe Int32)
clTotalItems
  = lens _clTotalItems (\ s a -> s{_clTotalItems = a})
      . mapping _Coerce

-- | Token used to access the next page of this result. No token is displayed
-- if there are no more pages left.
clNextPageToken :: Lens' ColumnList (Maybe Text)
clNextPageToken
  = lens _clNextPageToken
      (\ s a -> s{_clNextPageToken = a})

-- | The kind of item this is. For a column list, this is always
-- fusiontables#columnList.
clKind :: Lens' ColumnList Text
clKind = lens _clKind (\ s a -> s{_clKind = a})

-- | List of all requested columns.
clItems :: Lens' ColumnList [Column]
clItems
  = lens _clItems (\ s a -> s{_clItems = a}) . _Default
      . _Coerce

instance FromJSON ColumnList where
        parseJSON
          = withObject "ColumnList"
              (\ o ->
                 ColumnList' <$>
                   (o .:? "totalItems") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "fusiontables#columnList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON ColumnList where
        toJSON ColumnList'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _clTotalItems,
                  ("nextPageToken" .=) <$> _clNextPageToken,
                  Just ("kind" .= _clKind), ("items" .=) <$> _clItems])

-- | Represents a list of tables.
--
-- /See:/ 'tableList' smart constructor.
data TableList =
  TableList'
    { _tlNextPageToken :: !(Maybe Text)
    , _tlKind :: !Text
    , _tlItems :: !(Maybe [Table])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TableList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlNextPageToken'
--
-- * 'tlKind'
--
-- * 'tlItems'
tableList
    :: TableList
tableList =
  TableList'
    { _tlNextPageToken = Nothing
    , _tlKind = "fusiontables#tableList"
    , _tlItems = Nothing
    }


-- | Token used to access the next page of this result. No token is displayed
-- if there are no more pages left.
tlNextPageToken :: Lens' TableList (Maybe Text)
tlNextPageToken
  = lens _tlNextPageToken
      (\ s a -> s{_tlNextPageToken = a})

-- | The kind of item this is. For table list, this is always
-- fusiontables#tableList.
tlKind :: Lens' TableList Text
tlKind = lens _tlKind (\ s a -> s{_tlKind = a})

-- | List of all requested tables.
tlItems :: Lens' TableList [Table]
tlItems
  = lens _tlItems (\ s a -> s{_tlItems = a}) . _Default
      . _Coerce

instance FromJSON TableList where
        parseJSON
          = withObject "TableList"
              (\ o ->
                 TableList' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "fusiontables#tableList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON TableList where
        toJSON TableList'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _tlNextPageToken,
                  Just ("kind" .= _tlKind), ("items" .=) <$> _tlItems])

-- | Represents a StyleFunction within a StyleSetting
--
-- /See:/ 'styleFunction' smart constructor.
data StyleFunction =
  StyleFunction'
    { _sfBuckets :: !(Maybe [Bucket])
    , _sfKind :: !(Maybe Text)
    , _sfGradient :: !(Maybe StyleFunctionGradient)
    , _sfColumnName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StyleFunction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfBuckets'
--
-- * 'sfKind'
--
-- * 'sfGradient'
--
-- * 'sfColumnName'
styleFunction
    :: StyleFunction
styleFunction =
  StyleFunction'
    { _sfBuckets = Nothing
    , _sfKind = Nothing
    , _sfGradient = Nothing
    , _sfColumnName = Nothing
    }


-- | Bucket function that assigns a style based on the range a column value
-- falls into.
sfBuckets :: Lens' StyleFunction [Bucket]
sfBuckets
  = lens _sfBuckets (\ s a -> s{_sfBuckets = a}) .
      _Default
      . _Coerce

-- | Stylers can be one of three kinds: \"fusiontables#fromColumn if the
-- column value is to be used as is, i.e., the column values can have
-- colors in #RRGGBBAA format or integer line widths or icon names;
-- fusiontables#gradient if the styling of the row is to be based on
-- applying the gradient function on the column value; or
-- fusiontables#buckets if the styling is to based on the bucket into which
-- the the column value falls.
sfKind :: Lens' StyleFunction (Maybe Text)
sfKind = lens _sfKind (\ s a -> s{_sfKind = a})

-- | Gradient function that interpolates a range of colors based on column
-- value.
sfGradient :: Lens' StyleFunction (Maybe StyleFunctionGradient)
sfGradient
  = lens _sfGradient (\ s a -> s{_sfGradient = a})

-- | Name of the column whose value is used in the style.
sfColumnName :: Lens' StyleFunction (Maybe Text)
sfColumnName
  = lens _sfColumnName (\ s a -> s{_sfColumnName = a})

instance FromJSON StyleFunction where
        parseJSON
          = withObject "StyleFunction"
              (\ o ->
                 StyleFunction' <$>
                   (o .:? "buckets" .!= mempty) <*> (o .:? "kind") <*>
                     (o .:? "gradient")
                     <*> (o .:? "columnName"))

instance ToJSON StyleFunction where
        toJSON StyleFunction'{..}
          = object
              (catMaybes
                 [("buckets" .=) <$> _sfBuckets,
                  ("kind" .=) <$> _sfKind,
                  ("gradient" .=) <$> _sfGradient,
                  ("columnName" .=) <$> _sfColumnName])

-- | Identifier of the base column. If present, this column is derived from
-- the specified base column.
--
-- /See:/ 'columnBaseColumn' smart constructor.
data ColumnBaseColumn =
  ColumnBaseColumn'
    { _cbcTableIndex :: !(Maybe (Textual Int32))
    , _cbcColumnId :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ColumnBaseColumn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbcTableIndex'
--
-- * 'cbcColumnId'
columnBaseColumn
    :: ColumnBaseColumn
columnBaseColumn =
  ColumnBaseColumn' {_cbcTableIndex = Nothing, _cbcColumnId = Nothing}


-- | Offset to the entry in the list of base tables in the table definition.
cbcTableIndex :: Lens' ColumnBaseColumn (Maybe Int32)
cbcTableIndex
  = lens _cbcTableIndex
      (\ s a -> s{_cbcTableIndex = a})
      . mapping _Coerce

-- | The id of the column in the base table from which this column is
-- derived.
cbcColumnId :: Lens' ColumnBaseColumn (Maybe Int32)
cbcColumnId
  = lens _cbcColumnId (\ s a -> s{_cbcColumnId = a}) .
      mapping _Coerce

instance FromJSON ColumnBaseColumn where
        parseJSON
          = withObject "ColumnBaseColumn"
              (\ o ->
                 ColumnBaseColumn' <$>
                   (o .:? "tableIndex") <*> (o .:? "columnId"))

instance ToJSON ColumnBaseColumn where
        toJSON ColumnBaseColumn'{..}
          = object
              (catMaybes
                 [("tableIndex" .=) <$> _cbcTableIndex,
                  ("columnId" .=) <$> _cbcColumnId])

-- | Represents a response to a SQL statement.
--
-- /See:/ 'sQLresponse' smart constructor.
data SQLresponse =
  SQLresponse'
    { _sqlKind :: !Text
    , _sqlRows :: !(Maybe [[JSONValue]])
    , _sqlColumns :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SQLresponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqlKind'
--
-- * 'sqlRows'
--
-- * 'sqlColumns'
sQLresponse
    :: SQLresponse
sQLresponse =
  SQLresponse'
    { _sqlKind = "fusiontables#sqlresponse"
    , _sqlRows = Nothing
    , _sqlColumns = Nothing
    }


-- | The kind of item this is. For responses to SQL queries, this is always
-- fusiontables#sqlresponse.
sqlKind :: Lens' SQLresponse Text
sqlKind = lens _sqlKind (\ s a -> s{_sqlKind = a})

-- | The rows in the table. For each cell we print out whatever cell value
-- (e.g., numeric, string) exists. Thus it is important that each cell
-- contains only one value.
sqlRows :: Lens' SQLresponse [[JSONValue]]
sqlRows
  = lens _sqlRows (\ s a -> s{_sqlRows = a}) . _Default
      . _Coerce

-- | Columns in the table.
sqlColumns :: Lens' SQLresponse [Text]
sqlColumns
  = lens _sqlColumns (\ s a -> s{_sqlColumns = a}) .
      _Default
      . _Coerce

instance FromJSON SQLresponse where
        parseJSON
          = withObject "SQLresponse"
              (\ o ->
                 SQLresponse' <$>
                   (o .:? "kind" .!= "fusiontables#sqlresponse") <*>
                     (o .:? "rows" .!= mempty)
                     <*> (o .:? "columns" .!= mempty))

instance ToJSON SQLresponse where
        toJSON SQLresponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _sqlKind), ("rows" .=) <$> _sqlRows,
                  ("columns" .=) <$> _sqlColumns])

--
-- /See:/ 'styleFunctionGradientColorsItem' smart constructor.
data StyleFunctionGradientColorsItem =
  StyleFunctionGradientColorsItem'
    { _sfgciColor :: !(Maybe Text)
    , _sfgciOpacity :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StyleFunctionGradientColorsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfgciColor'
--
-- * 'sfgciOpacity'
styleFunctionGradientColorsItem
    :: StyleFunctionGradientColorsItem
styleFunctionGradientColorsItem =
  StyleFunctionGradientColorsItem'
    {_sfgciColor = Nothing, _sfgciOpacity = Nothing}


-- | Color in #RRGGBB format.
sfgciColor :: Lens' StyleFunctionGradientColorsItem (Maybe Text)
sfgciColor
  = lens _sfgciColor (\ s a -> s{_sfgciColor = a})

-- | Opacity of the color: 0.0 (transparent) to 1.0 (opaque).
sfgciOpacity :: Lens' StyleFunctionGradientColorsItem (Maybe Double)
sfgciOpacity
  = lens _sfgciOpacity (\ s a -> s{_sfgciOpacity = a})
      . mapping _Coerce

instance FromJSON StyleFunctionGradientColorsItem
         where
        parseJSON
          = withObject "StyleFunctionGradientColorsItem"
              (\ o ->
                 StyleFunctionGradientColorsItem' <$>
                   (o .:? "color") <*> (o .:? "opacity"))

instance ToJSON StyleFunctionGradientColorsItem where
        toJSON StyleFunctionGradientColorsItem'{..}
          = object
              (catMaybes
                 [("color" .=) <$> _sfgciColor,
                  ("opacity" .=) <$> _sfgciOpacity])

-- | Represents a list of styles for a given table.
--
-- /See:/ 'styleSettingList' smart constructor.
data StyleSettingList =
  StyleSettingList'
    { _sslTotalItems :: !(Maybe (Textual Int32))
    , _sslNextPageToken :: !(Maybe Text)
    , _sslKind :: !Text
    , _sslItems :: !(Maybe [StyleSetting])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StyleSettingList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslTotalItems'
--
-- * 'sslNextPageToken'
--
-- * 'sslKind'
--
-- * 'sslItems'
styleSettingList
    :: StyleSettingList
styleSettingList =
  StyleSettingList'
    { _sslTotalItems = Nothing
    , _sslNextPageToken = Nothing
    , _sslKind = "fusiontables#styleSettingList"
    , _sslItems = Nothing
    }


-- | Total number of styles for the table.
sslTotalItems :: Lens' StyleSettingList (Maybe Int32)
sslTotalItems
  = lens _sslTotalItems
      (\ s a -> s{_sslTotalItems = a})
      . mapping _Coerce

-- | Token used to access the next page of this result. No token is displayed
-- if there are no more styles left.
sslNextPageToken :: Lens' StyleSettingList (Maybe Text)
sslNextPageToken
  = lens _sslNextPageToken
      (\ s a -> s{_sslNextPageToken = a})

-- | The kind of item this is. For a style list, this is always
-- fusiontables#styleSettingList .
sslKind :: Lens' StyleSettingList Text
sslKind = lens _sslKind (\ s a -> s{_sslKind = a})

-- | All requested style settings.
sslItems :: Lens' StyleSettingList [StyleSetting]
sslItems
  = lens _sslItems (\ s a -> s{_sslItems = a}) .
      _Default
      . _Coerce

instance FromJSON StyleSettingList where
        parseJSON
          = withObject "StyleSettingList"
              (\ o ->
                 StyleSettingList' <$>
                   (o .:? "totalItems") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "fusiontables#styleSettingList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON StyleSettingList where
        toJSON StyleSettingList'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _sslTotalItems,
                  ("nextPageToken" .=) <$> _sslNextPageToken,
                  Just ("kind" .= _sslKind),
                  ("items" .=) <$> _sslItems])

-- | Specifies the minimum and maximum values, the color, opacity, icon and
-- weight of a bucket within a StyleSetting.
--
-- /See:/ 'bucket' smart constructor.
data Bucket =
  Bucket'
    { _bMax :: !(Maybe (Textual Double))
    , _bColor :: !(Maybe Text)
    , _bWeight :: !(Maybe (Textual Int32))
    , _bIcon :: !(Maybe Text)
    , _bOpacity :: !(Maybe (Textual Double))
    , _bMin :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Bucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMax'
--
-- * 'bColor'
--
-- * 'bWeight'
--
-- * 'bIcon'
--
-- * 'bOpacity'
--
-- * 'bMin'
bucket
    :: Bucket
bucket =
  Bucket'
    { _bMax = Nothing
    , _bColor = Nothing
    , _bWeight = Nothing
    , _bIcon = Nothing
    , _bOpacity = Nothing
    , _bMin = Nothing
    }


-- | Maximum value in the selected column for a row to be styled according to
-- the bucket color, opacity, icon, or weight.
bMax :: Lens' Bucket (Maybe Double)
bMax
  = lens _bMax (\ s a -> s{_bMax = a}) .
      mapping _Coerce

-- | Color of line or the interior of a polygon in #RRGGBB format.
bColor :: Lens' Bucket (Maybe Text)
bColor = lens _bColor (\ s a -> s{_bColor = a})

-- | Width of a line (in pixels).
bWeight :: Lens' Bucket (Maybe Int32)
bWeight
  = lens _bWeight (\ s a -> s{_bWeight = a}) .
      mapping _Coerce

-- | Icon name used for a point.
bIcon :: Lens' Bucket (Maybe Text)
bIcon = lens _bIcon (\ s a -> s{_bIcon = a})

-- | Opacity of the color: 0.0 (transparent) to 1.0 (opaque).
bOpacity :: Lens' Bucket (Maybe Double)
bOpacity
  = lens _bOpacity (\ s a -> s{_bOpacity = a}) .
      mapping _Coerce

-- | Minimum value in the selected column for a row to be styled according to
-- the bucket color, opacity, icon, or weight.
bMin :: Lens' Bucket (Maybe Double)
bMin
  = lens _bMin (\ s a -> s{_bMin = a}) .
      mapping _Coerce

instance FromJSON Bucket where
        parseJSON
          = withObject "Bucket"
              (\ o ->
                 Bucket' <$>
                   (o .:? "max") <*> (o .:? "color") <*>
                     (o .:? "weight")
                     <*> (o .:? "icon")
                     <*> (o .:? "opacity")
                     <*> (o .:? "min"))

instance ToJSON Bucket where
        toJSON Bucket'{..}
          = object
              (catMaybes
                 [("max" .=) <$> _bMax, ("color" .=) <$> _bColor,
                  ("weight" .=) <$> _bWeight, ("icon" .=) <$> _bIcon,
                  ("opacity" .=) <$> _bOpacity, ("min" .=) <$> _bMin])

-- | Represents a line geometry.
--
-- /See:/ 'line' smart constructor.
data Line =
  Line'
    { _lCoordinates :: !(Maybe [[Textual Double]])
    , _lType :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Line' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lCoordinates'
--
-- * 'lType'
line
    :: Line
line = Line' {_lCoordinates = Nothing, _lType = "LineString"}


-- | The coordinates that define the line.
lCoordinates :: Lens' Line [[Double]]
lCoordinates
  = lens _lCoordinates (\ s a -> s{_lCoordinates = a})
      . _Default
      . _Coerce

-- | Type: A line geometry.
lType :: Lens' Line Text
lType = lens _lType (\ s a -> s{_lType = a})

instance FromJSON Line where
        parseJSON
          = withObject "Line"
              (\ o ->
                 Line' <$>
                   (o .:? "coordinates" .!= mempty) <*>
                     (o .:? "type" .!= "LineString"))

instance ToJSON Line where
        toJSON Line'{..}
          = object
              (catMaybes
                 [("coordinates" .=) <$> _lCoordinates,
                  Just ("type" .= _lType)])

-- | Represents a complete StyleSettings object. The primary key is a
-- combination of the tableId and a styleId.
--
-- /See:/ 'styleSetting' smart constructor.
data StyleSetting =
  StyleSetting'
    { _ssPolylineOptions :: !(Maybe LineStyle)
    , _ssPolygonOptions :: !(Maybe PolygonStyle)
    , _ssMarkerOptions :: !(Maybe PointStyle)
    , _ssKind :: !Text
    , _ssName :: !(Maybe Text)
    , _ssStyleId :: !(Maybe (Textual Int32))
    , _ssTableId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StyleSetting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssPolylineOptions'
--
-- * 'ssPolygonOptions'
--
-- * 'ssMarkerOptions'
--
-- * 'ssKind'
--
-- * 'ssName'
--
-- * 'ssStyleId'
--
-- * 'ssTableId'
styleSetting
    :: StyleSetting
styleSetting =
  StyleSetting'
    { _ssPolylineOptions = Nothing
    , _ssPolygonOptions = Nothing
    , _ssMarkerOptions = Nothing
    , _ssKind = "fusiontables#styleSetting"
    , _ssName = Nothing
    , _ssStyleId = Nothing
    , _ssTableId = Nothing
    }


-- | Style definition for lines in the table.
ssPolylineOptions :: Lens' StyleSetting (Maybe LineStyle)
ssPolylineOptions
  = lens _ssPolylineOptions
      (\ s a -> s{_ssPolylineOptions = a})

-- | Style definition for polygons in the table.
ssPolygonOptions :: Lens' StyleSetting (Maybe PolygonStyle)
ssPolygonOptions
  = lens _ssPolygonOptions
      (\ s a -> s{_ssPolygonOptions = a})

-- | Style definition for points in the table.
ssMarkerOptions :: Lens' StyleSetting (Maybe PointStyle)
ssMarkerOptions
  = lens _ssMarkerOptions
      (\ s a -> s{_ssMarkerOptions = a})

-- | The kind of item this is. A StyleSetting contains the style definitions
-- for points, lines, and polygons in a table. Since a table can have any
-- one or all of them, a style definition can have point, line and polygon
-- style definitions.
ssKind :: Lens' StyleSetting Text
ssKind = lens _ssKind (\ s a -> s{_ssKind = a})

-- | Optional name for the style setting.
ssName :: Lens' StyleSetting (Maybe Text)
ssName = lens _ssName (\ s a -> s{_ssName = a})

-- | Identifier for the style setting (unique only within tables).
ssStyleId :: Lens' StyleSetting (Maybe Int32)
ssStyleId
  = lens _ssStyleId (\ s a -> s{_ssStyleId = a}) .
      mapping _Coerce

-- | Identifier for the table.
ssTableId :: Lens' StyleSetting (Maybe Text)
ssTableId
  = lens _ssTableId (\ s a -> s{_ssTableId = a})

instance FromJSON StyleSetting where
        parseJSON
          = withObject "StyleSetting"
              (\ o ->
                 StyleSetting' <$>
                   (o .:? "polylineOptions") <*>
                     (o .:? "polygonOptions")
                     <*> (o .:? "markerOptions")
                     <*> (o .:? "kind" .!= "fusiontables#styleSetting")
                     <*> (o .:? "name")
                     <*> (o .:? "styleId")
                     <*> (o .:? "tableId"))

instance ToJSON StyleSetting where
        toJSON StyleSetting'{..}
          = object
              (catMaybes
                 [("polylineOptions" .=) <$> _ssPolylineOptions,
                  ("polygonOptions" .=) <$> _ssPolygonOptions,
                  ("markerOptions" .=) <$> _ssMarkerOptions,
                  Just ("kind" .= _ssKind), ("name" .=) <$> _ssName,
                  ("styleId" .=) <$> _ssStyleId,
                  ("tableId" .=) <$> _ssTableId])

-- | Represents a point object.
--
-- /See:/ 'point' smart constructor.
data Point =
  Point'
    { _pCoordinates :: !(Maybe [Textual Double])
    , _pType :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Point' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pCoordinates'
--
-- * 'pType'
point
    :: Point
point = Point' {_pCoordinates = Nothing, _pType = "Point"}


-- | The coordinates that define the point.
pCoordinates :: Lens' Point [Double]
pCoordinates
  = lens _pCoordinates (\ s a -> s{_pCoordinates = a})
      . _Default
      . _Coerce

-- | Point: A point geometry.
pType :: Lens' Point Text
pType = lens _pType (\ s a -> s{_pType = a})

instance FromJSON Point where
        parseJSON
          = withObject "Point"
              (\ o ->
                 Point' <$>
                   (o .:? "coordinates" .!= mempty) <*>
                     (o .:? "type" .!= "Point"))

instance ToJSON Point where
        toJSON Point'{..}
          = object
              (catMaybes
                 [("coordinates" .=) <$> _pCoordinates,
                  Just ("type" .= _pType)])

-- | Represents a polygon object.
--
-- /See:/ 'polygon' smart constructor.
data Polygon =
  Polygon'
    { _polCoordinates :: !(Maybe [[[Textual Double]]])
    , _polType :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Polygon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'polCoordinates'
--
-- * 'polType'
polygon
    :: Polygon
polygon = Polygon' {_polCoordinates = Nothing, _polType = "Polygon"}


-- | The coordinates that define the polygon.
polCoordinates :: Lens' Polygon [[[Double]]]
polCoordinates
  = lens _polCoordinates
      (\ s a -> s{_polCoordinates = a})
      . _Default
      . _Coerce

-- | Type: A polygon geometry.
polType :: Lens' Polygon Text
polType = lens _polType (\ s a -> s{_polType = a})

instance FromJSON Polygon where
        parseJSON
          = withObject "Polygon"
              (\ o ->
                 Polygon' <$>
                   (o .:? "coordinates" .!= mempty) <*>
                     (o .:? "type" .!= "Polygon"))

instance ToJSON Polygon where
        toJSON Polygon'{..}
          = object
              (catMaybes
                 [("coordinates" .=) <$> _polCoordinates,
                  Just ("type" .= _polType)])

-- | Represents a list of tasks for a table.
--
-- /See:/ 'taskList' smart constructor.
data TaskList =
  TaskList'
    { _tTotalItems :: !(Maybe (Textual Int32))
    , _tNextPageToken :: !(Maybe Text)
    , _tKind :: !Text
    , _tItems :: !(Maybe [Task])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TaskList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTotalItems'
--
-- * 'tNextPageToken'
--
-- * 'tKind'
--
-- * 'tItems'
taskList
    :: TaskList
taskList =
  TaskList'
    { _tTotalItems = Nothing
    , _tNextPageToken = Nothing
    , _tKind = "fusiontables#taskList"
    , _tItems = Nothing
    }


-- | Total number of tasks for the table.
tTotalItems :: Lens' TaskList (Maybe Int32)
tTotalItems
  = lens _tTotalItems (\ s a -> s{_tTotalItems = a}) .
      mapping _Coerce

-- | Token used to access the next page of this result. No token is displayed
-- if there are no more pages left.
tNextPageToken :: Lens' TaskList (Maybe Text)
tNextPageToken
  = lens _tNextPageToken
      (\ s a -> s{_tNextPageToken = a})

-- | Type of the resource. This is always \"fusiontables#taskList\".
tKind :: Lens' TaskList Text
tKind = lens _tKind (\ s a -> s{_tKind = a})

-- | List of all requested tasks.
tItems :: Lens' TaskList [Task]
tItems
  = lens _tItems (\ s a -> s{_tItems = a}) . _Default .
      _Coerce

instance FromJSON TaskList where
        parseJSON
          = withObject "TaskList"
              (\ o ->
                 TaskList' <$>
                   (o .:? "totalItems") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "fusiontables#taskList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON TaskList where
        toJSON TaskList'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _tTotalItems,
                  ("nextPageToken" .=) <$> _tNextPageToken,
                  Just ("kind" .= _tKind), ("items" .=) <$> _tItems])

-- | Represents a Geometry object.
--
-- /See:/ 'geometry' smart constructor.
data Geometry =
  Geometry'
    { _gGeometries :: !(Maybe [JSONValue])
    , _gGeometry :: !(Maybe JSONValue)
    , _gType :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Geometry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gGeometries'
--
-- * 'gGeometry'
--
-- * 'gType'
geometry
    :: Geometry
geometry =
  Geometry'
    { _gGeometries = Nothing
    , _gGeometry = Nothing
    , _gType = "GeometryCollection"
    }


-- | The list of geometries in this geometry collection.
gGeometries :: Lens' Geometry [JSONValue]
gGeometries
  = lens _gGeometries (\ s a -> s{_gGeometries = a}) .
      _Default
      . _Coerce

gGeometry :: Lens' Geometry (Maybe JSONValue)
gGeometry
  = lens _gGeometry (\ s a -> s{_gGeometry = a})

-- | Type: A collection of geometries.
gType :: Lens' Geometry Text
gType = lens _gType (\ s a -> s{_gType = a})

instance FromJSON Geometry where
        parseJSON
          = withObject "Geometry"
              (\ o ->
                 Geometry' <$>
                   (o .:? "geometries" .!= mempty) <*>
                     (o .:? "geometry")
                     <*> (o .:? "type" .!= "GeometryCollection"))

instance ToJSON Geometry where
        toJSON Geometry'{..}
          = object
              (catMaybes
                 [("geometries" .=) <$> _gGeometries,
                  ("geometry" .=) <$> _gGeometry,
                  Just ("type" .= _gType)])

-- | Represents a list of templates for a given table.
--
-- /See:/ 'templateList' smart constructor.
data TemplateList =
  TemplateList'
    { _temTotalItems :: !(Maybe (Textual Int32))
    , _temNextPageToken :: !(Maybe Text)
    , _temKind :: !Text
    , _temItems :: !(Maybe [Template])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TemplateList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'temTotalItems'
--
-- * 'temNextPageToken'
--
-- * 'temKind'
--
-- * 'temItems'
templateList
    :: TemplateList
templateList =
  TemplateList'
    { _temTotalItems = Nothing
    , _temNextPageToken = Nothing
    , _temKind = "fusiontables#templateList"
    , _temItems = Nothing
    }


-- | Total number of templates for the table.
temTotalItems :: Lens' TemplateList (Maybe Int32)
temTotalItems
  = lens _temTotalItems
      (\ s a -> s{_temTotalItems = a})
      . mapping _Coerce

-- | Token used to access the next page of this result. No token is displayed
-- if there are no more pages left.
temNextPageToken :: Lens' TemplateList (Maybe Text)
temNextPageToken
  = lens _temNextPageToken
      (\ s a -> s{_temNextPageToken = a})

-- | The kind of item this is. For a template list, this is always
-- fusiontables#templateList .
temKind :: Lens' TemplateList Text
temKind = lens _temKind (\ s a -> s{_temKind = a})

-- | List of all requested templates.
temItems :: Lens' TemplateList [Template]
temItems
  = lens _temItems (\ s a -> s{_temItems = a}) .
      _Default
      . _Coerce

instance FromJSON TemplateList where
        parseJSON
          = withObject "TemplateList"
              (\ o ->
                 TemplateList' <$>
                   (o .:? "totalItems") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "fusiontables#templateList")
                     <*> (o .:? "items" .!= mempty))

instance ToJSON TemplateList where
        toJSON TemplateList'{..}
          = object
              (catMaybes
                 [("totalItems" .=) <$> _temTotalItems,
                  ("nextPageToken" .=) <$> _temNextPageToken,
                  Just ("kind" .= _temKind),
                  ("items" .=) <$> _temItems])

-- | Represents an import request.
--
-- /See:/ 'import'' smart constructor.
data Import =
  Import'
    { _iKind :: !Text
    , _iNumRowsReceived :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Import' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iKind'
--
-- * 'iNumRowsReceived'
import'
    :: Import
import' = Import' {_iKind = "fusiontables#import", _iNumRowsReceived = Nothing}


-- | The kind of item this is. For an import, this is always
-- fusiontables#import.
iKind :: Lens' Import Text
iKind = lens _iKind (\ s a -> s{_iKind = a})

-- | The number of rows received from the import request.
iNumRowsReceived :: Lens' Import (Maybe Int64)
iNumRowsReceived
  = lens _iNumRowsReceived
      (\ s a -> s{_iNumRowsReceived = a})
      . mapping _Coerce

instance FromJSON Import where
        parseJSON
          = withObject "Import"
              (\ o ->
                 Import' <$>
                   (o .:? "kind" .!= "fusiontables#import") <*>
                     (o .:? "numRowsReceived"))

instance ToJSON Import where
        toJSON Import'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _iKind),
                  ("numRowsReceived" .=) <$> _iNumRowsReceived])

-- | A background task on a table, initiated for time- or resource-consuming
-- operations such as changing column types or deleting all rows.
--
-- /See:/ 'task' smart constructor.
data Task =
  Task'
    { _tasProgress :: !(Maybe Text)
    , _tasTaskId :: !(Maybe (Textual Int64))
    , _tasKind :: !Text
    , _tasType :: !(Maybe Text)
    , _tasStarted :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Task' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tasProgress'
--
-- * 'tasTaskId'
--
-- * 'tasKind'
--
-- * 'tasType'
--
-- * 'tasStarted'
task
    :: Task
task =
  Task'
    { _tasProgress = Nothing
    , _tasTaskId = Nothing
    , _tasKind = "fusiontables#task"
    , _tasType = Nothing
    , _tasStarted = Nothing
    }


-- | Task percentage completion.
tasProgress :: Lens' Task (Maybe Text)
tasProgress
  = lens _tasProgress (\ s a -> s{_tasProgress = a})

-- | Identifier for the task.
tasTaskId :: Lens' Task (Maybe Int64)
tasTaskId
  = lens _tasTaskId (\ s a -> s{_tasTaskId = a}) .
      mapping _Coerce

-- | Type of the resource. This is always \"fusiontables#task\".
tasKind :: Lens' Task Text
tasKind = lens _tasKind (\ s a -> s{_tasKind = a})

-- | Type of background task.
tasType :: Lens' Task (Maybe Text)
tasType = lens _tasType (\ s a -> s{_tasType = a})

-- | false while the table is busy with some other task. true if this
-- background task is currently running.
tasStarted :: Lens' Task (Maybe Bool)
tasStarted
  = lens _tasStarted (\ s a -> s{_tasStarted = a})

instance FromJSON Task where
        parseJSON
          = withObject "Task"
              (\ o ->
                 Task' <$>
                   (o .:? "progress") <*> (o .:? "taskId") <*>
                     (o .:? "kind" .!= "fusiontables#task")
                     <*> (o .:? "type")
                     <*> (o .:? "started"))

instance ToJSON Task where
        toJSON Task'{..}
          = object
              (catMaybes
                 [("progress" .=) <$> _tasProgress,
                  ("taskId" .=) <$> _tasTaskId,
                  Just ("kind" .= _tasKind), ("type" .=) <$> _tasType,
                  ("started" .=) <$> _tasStarted])

-- | Represents the contents of InfoWindow templates.
--
-- /See:/ 'template' smart constructor.
data Template =
  Template'
    { _ttAutomaticColumnNames :: !(Maybe [Text])
    , _ttTemplateId :: !(Maybe (Textual Int32))
    , _ttKind :: !Text
    , _ttBody :: !(Maybe Text)
    , _ttName :: !(Maybe Text)
    , _ttTableId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Template' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttAutomaticColumnNames'
--
-- * 'ttTemplateId'
--
-- * 'ttKind'
--
-- * 'ttBody'
--
-- * 'ttName'
--
-- * 'ttTableId'
template
    :: Template
template =
  Template'
    { _ttAutomaticColumnNames = Nothing
    , _ttTemplateId = Nothing
    , _ttKind = "fusiontables#template"
    , _ttBody = Nothing
    , _ttName = Nothing
    , _ttTableId = Nothing
    }


-- | List of columns from which the template is to be automatically
-- constructed. Only one of body or automaticColumns can be specified.
ttAutomaticColumnNames :: Lens' Template [Text]
ttAutomaticColumnNames
  = lens _ttAutomaticColumnNames
      (\ s a -> s{_ttAutomaticColumnNames = a})
      . _Default
      . _Coerce

-- | Identifier for the template, unique within the context of a particular
-- table.
ttTemplateId :: Lens' Template (Maybe Int32)
ttTemplateId
  = lens _ttTemplateId (\ s a -> s{_ttTemplateId = a})
      . mapping _Coerce

-- | The kind of item this is. For a template, this is always
-- fusiontables#template.
ttKind :: Lens' Template Text
ttKind = lens _ttKind (\ s a -> s{_ttKind = a})

-- | Body of the template. It contains HTML with {column_name} to insert
-- values from a particular column. The body is sanitized to remove certain
-- tags, e.g., script. Only one of body or automaticColumns can be
-- specified.
ttBody :: Lens' Template (Maybe Text)
ttBody = lens _ttBody (\ s a -> s{_ttBody = a})

-- | Optional name assigned to a template.
ttName :: Lens' Template (Maybe Text)
ttName = lens _ttName (\ s a -> s{_ttName = a})

-- | Identifier for the table for which the template is defined.
ttTableId :: Lens' Template (Maybe Text)
ttTableId
  = lens _ttTableId (\ s a -> s{_ttTableId = a})

instance FromJSON Template where
        parseJSON
          = withObject "Template"
              (\ o ->
                 Template' <$>
                   (o .:? "automaticColumnNames" .!= mempty) <*>
                     (o .:? "templateId")
                     <*> (o .:? "kind" .!= "fusiontables#template")
                     <*> (o .:? "body")
                     <*> (o .:? "name")
                     <*> (o .:? "tableId"))

instance ToJSON Template where
        toJSON Template'{..}
          = object
              (catMaybes
                 [("automaticColumnNames" .=) <$>
                    _ttAutomaticColumnNames,
                  ("templateId" .=) <$> _ttTemplateId,
                  Just ("kind" .= _ttKind), ("body" .=) <$> _ttBody,
                  ("name" .=) <$> _ttName,
                  ("tableId" .=) <$> _ttTableId])

-- | Represents a PointStyle within a StyleSetting
--
-- /See:/ 'pointStyle' smart constructor.
data PointStyle =
  PointStyle'
    { _psIconName :: !(Maybe Text)
    , _psIconStyler :: !(Maybe StyleFunction)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PointStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psIconName'
--
-- * 'psIconStyler'
pointStyle
    :: PointStyle
pointStyle = PointStyle' {_psIconName = Nothing, _psIconStyler = Nothing}


-- | Name of the icon. Use values defined in
-- http:\/\/www.google.com\/fusiontables\/DataSource?dsrcid=308519
psIconName :: Lens' PointStyle (Maybe Text)
psIconName
  = lens _psIconName (\ s a -> s{_psIconName = a})

-- | Column or a bucket value from which the icon name is to be determined.
psIconStyler :: Lens' PointStyle (Maybe StyleFunction)
psIconStyler
  = lens _psIconStyler (\ s a -> s{_psIconStyler = a})

instance FromJSON PointStyle where
        parseJSON
          = withObject "PointStyle"
              (\ o ->
                 PointStyle' <$>
                   (o .:? "iconName") <*> (o .:? "iconStyler"))

instance ToJSON PointStyle where
        toJSON PointStyle'{..}
          = object
              (catMaybes
                 [("iconName" .=) <$> _psIconName,
                  ("iconStyler" .=) <$> _psIconStyler])

-- | Represents a PolygonStyle within a StyleSetting
--
-- /See:/ 'polygonStyle' smart constructor.
data PolygonStyle =
  PolygonStyle'
    { _psFillColorStyler :: !(Maybe StyleFunction)
    , _psFillColor :: !(Maybe Text)
    , _psStrokeColorStyler :: !(Maybe StyleFunction)
    , _psStrokeWeight :: !(Maybe (Textual Int32))
    , _psStrokeOpacity :: !(Maybe (Textual Double))
    , _psFillOpacity :: !(Maybe (Textual Double))
    , _psStrokeWeightStyler :: !(Maybe StyleFunction)
    , _psStrokeColor :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PolygonStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psFillColorStyler'
--
-- * 'psFillColor'
--
-- * 'psStrokeColorStyler'
--
-- * 'psStrokeWeight'
--
-- * 'psStrokeOpacity'
--
-- * 'psFillOpacity'
--
-- * 'psStrokeWeightStyler'
--
-- * 'psStrokeColor'
polygonStyle
    :: PolygonStyle
polygonStyle =
  PolygonStyle'
    { _psFillColorStyler = Nothing
    , _psFillColor = Nothing
    , _psStrokeColorStyler = Nothing
    , _psStrokeWeight = Nothing
    , _psStrokeOpacity = Nothing
    , _psFillOpacity = Nothing
    , _psStrokeWeightStyler = Nothing
    , _psStrokeColor = Nothing
    }


-- | Column-value, gradient, or bucket styler that is used to determine the
-- interior color and opacity of the polygon.
psFillColorStyler :: Lens' PolygonStyle (Maybe StyleFunction)
psFillColorStyler
  = lens _psFillColorStyler
      (\ s a -> s{_psFillColorStyler = a})

-- | Color of the interior of the polygon in #RRGGBB format.
psFillColor :: Lens' PolygonStyle (Maybe Text)
psFillColor
  = lens _psFillColor (\ s a -> s{_psFillColor = a})

-- | Column-value, gradient or buckets styler that is used to determine the
-- border color and opacity.
psStrokeColorStyler :: Lens' PolygonStyle (Maybe StyleFunction)
psStrokeColorStyler
  = lens _psStrokeColorStyler
      (\ s a -> s{_psStrokeColorStyler = a})

-- | Width of the polyon border in pixels.
psStrokeWeight :: Lens' PolygonStyle (Maybe Int32)
psStrokeWeight
  = lens _psStrokeWeight
      (\ s a -> s{_psStrokeWeight = a})
      . mapping _Coerce

-- | Opacity of the polygon border: 0.0 (transparent) to 1.0 (opaque).
psStrokeOpacity :: Lens' PolygonStyle (Maybe Double)
psStrokeOpacity
  = lens _psStrokeOpacity
      (\ s a -> s{_psStrokeOpacity = a})
      . mapping _Coerce

-- | Opacity of the interior of the polygon: 0.0 (transparent) to 1.0
-- (opaque).
psFillOpacity :: Lens' PolygonStyle (Maybe Double)
psFillOpacity
  = lens _psFillOpacity
      (\ s a -> s{_psFillOpacity = a})
      . mapping _Coerce

-- | Column-value or bucket styler that is used to determine the width of the
-- polygon border.
psStrokeWeightStyler :: Lens' PolygonStyle (Maybe StyleFunction)
psStrokeWeightStyler
  = lens _psStrokeWeightStyler
      (\ s a -> s{_psStrokeWeightStyler = a})

-- | Color of the polygon border in #RRGGBB format.
psStrokeColor :: Lens' PolygonStyle (Maybe Text)
psStrokeColor
  = lens _psStrokeColor
      (\ s a -> s{_psStrokeColor = a})

instance FromJSON PolygonStyle where
        parseJSON
          = withObject "PolygonStyle"
              (\ o ->
                 PolygonStyle' <$>
                   (o .:? "fillColorStyler") <*> (o .:? "fillColor") <*>
                     (o .:? "strokeColorStyler")
                     <*> (o .:? "strokeWeight")
                     <*> (o .:? "strokeOpacity")
                     <*> (o .:? "fillOpacity")
                     <*> (o .:? "strokeWeightStyler")
                     <*> (o .:? "strokeColor"))

instance ToJSON PolygonStyle where
        toJSON PolygonStyle'{..}
          = object
              (catMaybes
                 [("fillColorStyler" .=) <$> _psFillColorStyler,
                  ("fillColor" .=) <$> _psFillColor,
                  ("strokeColorStyler" .=) <$> _psStrokeColorStyler,
                  ("strokeWeight" .=) <$> _psStrokeWeight,
                  ("strokeOpacity" .=) <$> _psStrokeOpacity,
                  ("fillOpacity" .=) <$> _psFillOpacity,
                  ("strokeWeightStyler" .=) <$> _psStrokeWeightStyler,
                  ("strokeColor" .=) <$> _psStrokeColor])

-- | Gradient function that interpolates a range of colors based on column
-- value.
--
-- /See:/ 'styleFunctionGradient' smart constructor.
data StyleFunctionGradient =
  StyleFunctionGradient'
    { _sfgMax :: !(Maybe (Textual Double))
    , _sfgMin :: !(Maybe (Textual Double))
    , _sfgColors :: !(Maybe [StyleFunctionGradientColorsItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StyleFunctionGradient' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sfgMax'
--
-- * 'sfgMin'
--
-- * 'sfgColors'
styleFunctionGradient
    :: StyleFunctionGradient
styleFunctionGradient =
  StyleFunctionGradient'
    {_sfgMax = Nothing, _sfgMin = Nothing, _sfgColors = Nothing}


-- | Higher-end of the interpolation range: rows with this value will be
-- assigned to colors[n-1].
sfgMax :: Lens' StyleFunctionGradient (Maybe Double)
sfgMax
  = lens _sfgMax (\ s a -> s{_sfgMax = a}) .
      mapping _Coerce

-- | Lower-end of the interpolation range: rows with this value will be
-- assigned to colors[0].
sfgMin :: Lens' StyleFunctionGradient (Maybe Double)
sfgMin
  = lens _sfgMin (\ s a -> s{_sfgMin = a}) .
      mapping _Coerce

-- | Array with two or more colors.
sfgColors :: Lens' StyleFunctionGradient [StyleFunctionGradientColorsItem]
sfgColors
  = lens _sfgColors (\ s a -> s{_sfgColors = a}) .
      _Default
      . _Coerce

instance FromJSON StyleFunctionGradient where
        parseJSON
          = withObject "StyleFunctionGradient"
              (\ o ->
                 StyleFunctionGradient' <$>
                   (o .:? "max") <*> (o .:? "min") <*>
                     (o .:? "colors" .!= mempty))

instance ToJSON StyleFunctionGradient where
        toJSON StyleFunctionGradient'{..}
          = object
              (catMaybes
                 [("max" .=) <$> _sfgMax, ("min" .=) <$> _sfgMin,
                  ("colors" .=) <$> _sfgColors])

-- | Specifies the details of a column in a table.
--
-- /See:/ 'column' smart constructor.
data Column =
  Column'
    { _cColumnJSONSchema :: !(Maybe Text)
    , _cGraphPredicate :: !(Maybe Text)
    , _cKind :: !Text
    , _cBaseColumn :: !(Maybe ColumnBaseColumn)
    , _cColumnPropertiesJSON :: !(Maybe Text)
    , _cName :: !(Maybe Text)
    , _cType :: !(Maybe Text)
    , _cFormatPattern :: !(Maybe Text)
    , _cColumnId :: !(Maybe (Textual Int32))
    , _cValidValues :: !(Maybe [Text])
    , _cValidateData :: !(Maybe Bool)
    , _cDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Column' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cColumnJSONSchema'
--
-- * 'cGraphPredicate'
--
-- * 'cKind'
--
-- * 'cBaseColumn'
--
-- * 'cColumnPropertiesJSON'
--
-- * 'cName'
--
-- * 'cType'
--
-- * 'cFormatPattern'
--
-- * 'cColumnId'
--
-- * 'cValidValues'
--
-- * 'cValidateData'
--
-- * 'cDescription'
column
    :: Column
column =
  Column'
    { _cColumnJSONSchema = Nothing
    , _cGraphPredicate = Nothing
    , _cKind = "fusiontables#column"
    , _cBaseColumn = Nothing
    , _cColumnPropertiesJSON = Nothing
    , _cName = Nothing
    , _cType = Nothing
    , _cFormatPattern = Nothing
    , _cColumnId = Nothing
    , _cValidValues = Nothing
    , _cValidateData = Nothing
    , _cDescription = Nothing
    }


-- | JSON schema for interpreting JSON in this column.
cColumnJSONSchema :: Lens' Column (Maybe Text)
cColumnJSONSchema
  = lens _cColumnJSONSchema
      (\ s a -> s{_cColumnJSONSchema = a})

-- | Column graph predicate. Used to map table to graph data model
-- (subject,predicate,object) See W3C Graph-based Data Model.
cGraphPredicate :: Lens' Column (Maybe Text)
cGraphPredicate
  = lens _cGraphPredicate
      (\ s a -> s{_cGraphPredicate = a})

-- | The kind of item this is. For a column, this is always
-- fusiontables#column.
cKind :: Lens' Column Text
cKind = lens _cKind (\ s a -> s{_cKind = a})

-- | Identifier of the base column. If present, this column is derived from
-- the specified base column.
cBaseColumn :: Lens' Column (Maybe ColumnBaseColumn)
cBaseColumn
  = lens _cBaseColumn (\ s a -> s{_cBaseColumn = a})

-- | JSON object containing custom column properties.
cColumnPropertiesJSON :: Lens' Column (Maybe Text)
cColumnPropertiesJSON
  = lens _cColumnPropertiesJSON
      (\ s a -> s{_cColumnPropertiesJSON = a})

-- | Name of the column.
cName :: Lens' Column (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | Type of the column.
cType :: Lens' Column (Maybe Text)
cType = lens _cType (\ s a -> s{_cType = a})

-- | Format pattern. Acceptable values are DT_DATE_MEDIUMe.g Dec 24, 2008
-- DT_DATE_SHORTfor example 12\/24\/08 DT_DATE_TIME_MEDIUMfor example Dec
-- 24, 2008 8:30:45 PM DT_DATE_TIME_SHORTfor example 12\/24\/08 8:30 PM
-- DT_DAY_MONTH_2_DIGIT_YEARfor example 24\/12\/08
-- DT_DAY_MONTH_2_DIGIT_YEAR_TIMEfor example 24\/12\/08 20:30
-- DT_DAY_MONTH_2_DIGIT_YEAR_TIME_MERIDIANfor example 24\/12\/08 8:30 PM
-- DT_DAY_MONTH_4_DIGIT_YEARfor example 24\/12\/2008
-- DT_DAY_MONTH_4_DIGIT_YEAR_TIMEfor example 24\/12\/2008 20:30
-- DT_DAY_MONTH_4_DIGIT_YEAR_TIME_MERIDIANfor example 24\/12\/2008 8:30 PM
-- DT_ISO_YEAR_MONTH_DAYfor example 2008-12-24
-- DT_ISO_YEAR_MONTH_DAY_TIMEfor example 2008-12-24 20:30:45
-- DT_MONTH_DAY_4_DIGIT_YEARfor example 12\/24\/2008 DT_TIME_LONGfor
-- example 8:30:45 PM UTC-6 DT_TIME_MEDIUMfor example 8:30:45 PM
-- DT_TIME_SHORTfor example 8:30 PM DT_YEAR_ONLYfor example 2008
-- HIGHLIGHT_UNTYPED_CELLSHighlight cell data that does not match the data
-- type NONENo formatting (default) NUMBER_CURRENCYfor example $1234.56
-- NUMBER_DEFAULTfor example 1,234.56 NUMBER_INTEGERfor example 1235
-- NUMBER_NO_SEPARATORfor example 1234.56 NUMBER_PERCENTfor example
-- 123,456% NUMBER_SCIENTIFICfor example 1E3
-- STRING_EIGHT_LINE_IMAGEDisplays thumbnail images as tall as eight lines
-- of text STRING_FOUR_LINE_IMAGEDisplays thumbnail images as tall as four
-- lines of text STRING_JSON_TEXTAllows editing of text as JSON in UI
-- STRING_JSON_LISTAllows editing of text as a JSON list in UI
-- STRING_LINKTreats cell as a link (must start with http:\/\/ or
-- https:\/\/) STRING_ONE_LINE_IMAGEDisplays thumbnail images as tall as
-- one line of text STRING_VIDEO_OR_MAPDisplay a video or map thumbnail
cFormatPattern :: Lens' Column (Maybe Text)
cFormatPattern
  = lens _cFormatPattern
      (\ s a -> s{_cFormatPattern = a})

-- | Identifier for the column.
cColumnId :: Lens' Column (Maybe Int32)
cColumnId
  = lens _cColumnId (\ s a -> s{_cColumnId = a}) .
      mapping _Coerce

-- | List of valid values used to validate data and supply a drop-down list
-- of values in the web application.
cValidValues :: Lens' Column [Text]
cValidValues
  = lens _cValidValues (\ s a -> s{_cValidValues = a})
      . _Default
      . _Coerce

-- | If true, data entered via the web application is validated.
cValidateData :: Lens' Column (Maybe Bool)
cValidateData
  = lens _cValidateData
      (\ s a -> s{_cValidateData = a})

-- | Column description.
cDescription :: Lens' Column (Maybe Text)
cDescription
  = lens _cDescription (\ s a -> s{_cDescription = a})

instance FromJSON Column where
        parseJSON
          = withObject "Column"
              (\ o ->
                 Column' <$>
                   (o .:? "columnJsonSchema") <*>
                     (o .:? "graphPredicate")
                     <*> (o .:? "kind" .!= "fusiontables#column")
                     <*> (o .:? "baseColumn")
                     <*> (o .:? "columnPropertiesJson")
                     <*> (o .:? "name")
                     <*> (o .:? "type")
                     <*> (o .:? "formatPattern")
                     <*> (o .:? "columnId")
                     <*> (o .:? "validValues" .!= mempty)
                     <*> (o .:? "validateData")
                     <*> (o .:? "description"))

instance ToJSON Column where
        toJSON Column'{..}
          = object
              (catMaybes
                 [("columnJsonSchema" .=) <$> _cColumnJSONSchema,
                  ("graphPredicate" .=) <$> _cGraphPredicate,
                  Just ("kind" .= _cKind),
                  ("baseColumn" .=) <$> _cBaseColumn,
                  ("columnPropertiesJson" .=) <$>
                    _cColumnPropertiesJSON,
                  ("name" .=) <$> _cName, ("type" .=) <$> _cType,
                  ("formatPattern" .=) <$> _cFormatPattern,
                  ("columnId" .=) <$> _cColumnId,
                  ("validValues" .=) <$> _cValidValues,
                  ("validateData" .=) <$> _cValidateData,
                  ("description" .=) <$> _cDescription])

-- | Represents a table.
--
-- /See:/ 'table' smart constructor.
data Table =
  Table'
    { _tabaIsExportable :: !(Maybe Bool)
    , _tabaKind :: !Text
    , _tabaColumnPropertiesJSONSchema :: !(Maybe Text)
    , _tabaTablePropertiesJSONSchema :: !(Maybe Text)
    , _tabaName :: !(Maybe Text)
    , _tabaTablePropertiesJSON :: !(Maybe Text)
    , _tabaColumns :: !(Maybe [Column])
    , _tabaBaseTableIds :: !(Maybe [Text])
    , _tabaTableId :: !(Maybe Text)
    , _tabaSQL :: !(Maybe Text)
    , _tabaDescription :: !(Maybe Text)
    , _tabaAttribution :: !(Maybe Text)
    , _tabaAttributionLink :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Table' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tabaIsExportable'
--
-- * 'tabaKind'
--
-- * 'tabaColumnPropertiesJSONSchema'
--
-- * 'tabaTablePropertiesJSONSchema'
--
-- * 'tabaName'
--
-- * 'tabaTablePropertiesJSON'
--
-- * 'tabaColumns'
--
-- * 'tabaBaseTableIds'
--
-- * 'tabaTableId'
--
-- * 'tabaSQL'
--
-- * 'tabaDescription'
--
-- * 'tabaAttribution'
--
-- * 'tabaAttributionLink'
table
    :: Table
table =
  Table'
    { _tabaIsExportable = Nothing
    , _tabaKind = "fusiontables#table"
    , _tabaColumnPropertiesJSONSchema = Nothing
    , _tabaTablePropertiesJSONSchema = Nothing
    , _tabaName = Nothing
    , _tabaTablePropertiesJSON = Nothing
    , _tabaColumns = Nothing
    , _tabaBaseTableIds = Nothing
    , _tabaTableId = Nothing
    , _tabaSQL = Nothing
    , _tabaDescription = Nothing
    , _tabaAttribution = Nothing
    , _tabaAttributionLink = Nothing
    }


-- | Variable for whether table is exportable.
tabaIsExportable :: Lens' Table (Maybe Bool)
tabaIsExportable
  = lens _tabaIsExportable
      (\ s a -> s{_tabaIsExportable = a})

-- | The kind of item this is. For a table, this is always
-- fusiontables#table.
tabaKind :: Lens' Table Text
tabaKind = lens _tabaKind (\ s a -> s{_tabaKind = a})

-- | Default JSON schema for validating all JSON column properties.
tabaColumnPropertiesJSONSchema :: Lens' Table (Maybe Text)
tabaColumnPropertiesJSONSchema
  = lens _tabaColumnPropertiesJSONSchema
      (\ s a -> s{_tabaColumnPropertiesJSONSchema = a})

-- | JSON schema for validating the JSON table properties.
tabaTablePropertiesJSONSchema :: Lens' Table (Maybe Text)
tabaTablePropertiesJSONSchema
  = lens _tabaTablePropertiesJSONSchema
      (\ s a -> s{_tabaTablePropertiesJSONSchema = a})

-- | Name assigned to a table.
tabaName :: Lens' Table (Maybe Text)
tabaName = lens _tabaName (\ s a -> s{_tabaName = a})

-- | JSON object containing custom table properties.
tabaTablePropertiesJSON :: Lens' Table (Maybe Text)
tabaTablePropertiesJSON
  = lens _tabaTablePropertiesJSON
      (\ s a -> s{_tabaTablePropertiesJSON = a})

-- | Columns in the table.
tabaColumns :: Lens' Table [Column]
tabaColumns
  = lens _tabaColumns (\ s a -> s{_tabaColumns = a}) .
      _Default
      . _Coerce

-- | Base table identifier if this table is a view or merged table.
tabaBaseTableIds :: Lens' Table [Text]
tabaBaseTableIds
  = lens _tabaBaseTableIds
      (\ s a -> s{_tabaBaseTableIds = a})
      . _Default
      . _Coerce

-- | Encrypted unique alphanumeric identifier for the table.
tabaTableId :: Lens' Table (Maybe Text)
tabaTableId
  = lens _tabaTableId (\ s a -> s{_tabaTableId = a})

-- | SQL that encodes the table definition for derived tables.
tabaSQL :: Lens' Table (Maybe Text)
tabaSQL = lens _tabaSQL (\ s a -> s{_tabaSQL = a})

-- | Description assigned to the table.
tabaDescription :: Lens' Table (Maybe Text)
tabaDescription
  = lens _tabaDescription
      (\ s a -> s{_tabaDescription = a})

-- | Attribution assigned to the table.
tabaAttribution :: Lens' Table (Maybe Text)
tabaAttribution
  = lens _tabaAttribution
      (\ s a -> s{_tabaAttribution = a})

-- | Optional link for attribution.
tabaAttributionLink :: Lens' Table (Maybe Text)
tabaAttributionLink
  = lens _tabaAttributionLink
      (\ s a -> s{_tabaAttributionLink = a})

instance FromJSON Table where
        parseJSON
          = withObject "Table"
              (\ o ->
                 Table' <$>
                   (o .:? "isExportable") <*>
                     (o .:? "kind" .!= "fusiontables#table")
                     <*> (o .:? "columnPropertiesJsonSchema")
                     <*> (o .:? "tablePropertiesJsonSchema")
                     <*> (o .:? "name")
                     <*> (o .:? "tablePropertiesJson")
                     <*> (o .:? "columns" .!= mempty)
                     <*> (o .:? "baseTableIds" .!= mempty)
                     <*> (o .:? "tableId")
                     <*> (o .:? "sql")
                     <*> (o .:? "description")
                     <*> (o .:? "attribution")
                     <*> (o .:? "attributionLink"))

instance ToJSON Table where
        toJSON Table'{..}
          = object
              (catMaybes
                 [("isExportable" .=) <$> _tabaIsExportable,
                  Just ("kind" .= _tabaKind),
                  ("columnPropertiesJsonSchema" .=) <$>
                    _tabaColumnPropertiesJSONSchema,
                  ("tablePropertiesJsonSchema" .=) <$>
                    _tabaTablePropertiesJSONSchema,
                  ("name" .=) <$> _tabaName,
                  ("tablePropertiesJson" .=) <$>
                    _tabaTablePropertiesJSON,
                  ("columns" .=) <$> _tabaColumns,
                  ("baseTableIds" .=) <$> _tabaBaseTableIds,
                  ("tableId" .=) <$> _tabaTableId,
                  ("sql" .=) <$> _tabaSQL,
                  ("description" .=) <$> _tabaDescription,
                  ("attribution" .=) <$> _tabaAttribution,
                  ("attributionLink" .=) <$> _tabaAttributionLink])

-- | Represents a LineStyle within a StyleSetting
--
-- /See:/ 'lineStyle' smart constructor.
data LineStyle =
  LineStyle'
    { _lsStrokeColorStyler :: !(Maybe StyleFunction)
    , _lsStrokeWeight :: !(Maybe (Textual Int32))
    , _lsStrokeOpacity :: !(Maybe (Textual Double))
    , _lsStrokeWeightStyler :: !(Maybe StyleFunction)
    , _lsStrokeColor :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LineStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsStrokeColorStyler'
--
-- * 'lsStrokeWeight'
--
-- * 'lsStrokeOpacity'
--
-- * 'lsStrokeWeightStyler'
--
-- * 'lsStrokeColor'
lineStyle
    :: LineStyle
lineStyle =
  LineStyle'
    { _lsStrokeColorStyler = Nothing
    , _lsStrokeWeight = Nothing
    , _lsStrokeOpacity = Nothing
    , _lsStrokeWeightStyler = Nothing
    , _lsStrokeColor = Nothing
    }


-- | Column-value, gradient or buckets styler that is used to determine the
-- line color and opacity.
lsStrokeColorStyler :: Lens' LineStyle (Maybe StyleFunction)
lsStrokeColorStyler
  = lens _lsStrokeColorStyler
      (\ s a -> s{_lsStrokeColorStyler = a})

-- | Width of the line in pixels.
lsStrokeWeight :: Lens' LineStyle (Maybe Int32)
lsStrokeWeight
  = lens _lsStrokeWeight
      (\ s a -> s{_lsStrokeWeight = a})
      . mapping _Coerce

-- | Opacity of the line : 0.0 (transparent) to 1.0 (opaque).
lsStrokeOpacity :: Lens' LineStyle (Maybe Double)
lsStrokeOpacity
  = lens _lsStrokeOpacity
      (\ s a -> s{_lsStrokeOpacity = a})
      . mapping _Coerce

-- | Column-value or bucket styler that is used to determine the width of the
-- line.
lsStrokeWeightStyler :: Lens' LineStyle (Maybe StyleFunction)
lsStrokeWeightStyler
  = lens _lsStrokeWeightStyler
      (\ s a -> s{_lsStrokeWeightStyler = a})

-- | Color of the line in #RRGGBB format.
lsStrokeColor :: Lens' LineStyle (Maybe Text)
lsStrokeColor
  = lens _lsStrokeColor
      (\ s a -> s{_lsStrokeColor = a})

instance FromJSON LineStyle where
        parseJSON
          = withObject "LineStyle"
              (\ o ->
                 LineStyle' <$>
                   (o .:? "strokeColorStyler") <*>
                     (o .:? "strokeWeight")
                     <*> (o .:? "strokeOpacity")
                     <*> (o .:? "strokeWeightStyler")
                     <*> (o .:? "strokeColor"))

instance ToJSON LineStyle where
        toJSON LineStyle'{..}
          = object
              (catMaybes
                 [("strokeColorStyler" .=) <$> _lsStrokeColorStyler,
                  ("strokeWeight" .=) <$> _lsStrokeWeight,
                  ("strokeOpacity" .=) <$> _lsStrokeOpacity,
                  ("strokeWeightStyler" .=) <$> _lsStrokeWeightStyler,
                  ("strokeColor" .=) <$> _lsStrokeColor])
