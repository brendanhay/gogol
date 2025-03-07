{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FusionTables.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.FusionTables.Internal.Product
  ( -- * Bucket
    Bucket (..),
    newBucket,

    -- * Column
    Column (..),
    newColumn,

    -- * Column_BaseColumn
    Column_BaseColumn (..),
    newColumn_BaseColumn,

    -- * ColumnList
    ColumnList (..),
    newColumnList,

    -- * Geometry
    Geometry (..),
    newGeometry,

    -- * Import
    Import (..),
    newImport,

    -- * Line
    Line (..),
    newLine,

    -- * LineStyle
    LineStyle (..),
    newLineStyle,

    -- * Point
    Point (..),
    newPoint,

    -- * PointStyle
    PointStyle (..),
    newPointStyle,

    -- * Polygon
    Polygon (..),
    newPolygon,

    -- * PolygonStyle
    PolygonStyle (..),
    newPolygonStyle,

    -- * Sqlresponse
    Sqlresponse (..),
    newSqlresponse,

    -- * StyleFunction
    StyleFunction (..),
    newStyleFunction,

    -- * StyleFunction_Gradient
    StyleFunction_Gradient (..),
    newStyleFunction_Gradient,

    -- * StyleFunction_Gradient_ColorsItem
    StyleFunction_Gradient_ColorsItem (..),
    newStyleFunction_Gradient_ColorsItem,

    -- * StyleSetting
    StyleSetting (..),
    newStyleSetting,

    -- * StyleSettingList
    StyleSettingList (..),
    newStyleSettingList,

    -- * Table
    Table (..),
    newTable,

    -- * TableList
    TableList (..),
    newTableList,

    -- * Task
    Task (..),
    newTask,

    -- * TaskList
    TaskList (..),
    newTaskList,

    -- * Template
    Template (..),
    newTemplate,

    -- * TemplateList
    TemplateList (..),
    newTemplateList,
  )
where

import Gogol.FusionTables.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Specifies the minimum and maximum values, the color, opacity, icon and weight of a bucket within a StyleSetting.
--
-- /See:/ 'newBucket' smart constructor.
data Bucket = Bucket
  { -- | Color of line or the interior of a polygon in #RRGGBB format.
    color :: (Core.Maybe Core.Text),
    -- | Icon name used for a point.
    icon :: (Core.Maybe Core.Text),
    -- | Maximum value in the selected column for a row to be styled according to the bucket color, opacity, icon, or weight.
    max :: (Core.Maybe Core.Double),
    -- | Minimum value in the selected column for a row to be styled according to the bucket color, opacity, icon, or weight.
    min :: (Core.Maybe Core.Double),
    -- | Opacity of the color: 0.0 (transparent) to 1.0 (opaque).
    opacity :: (Core.Maybe Core.Double),
    -- | Width of a line (in pixels).
    weight :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Bucket' with the minimum fields required to make a request.
newBucket ::
  Bucket
newBucket =
  Bucket
    { color = Core.Nothing,
      icon = Core.Nothing,
      max = Core.Nothing,
      min = Core.Nothing,
      opacity = Core.Nothing,
      weight = Core.Nothing
    }

instance Core.FromJSON Bucket where
  parseJSON =
    Core.withObject
      "Bucket"
      ( \o ->
          Bucket
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "icon")
            Core.<*> (o Core..:? "max")
            Core.<*> (o Core..:? "min")
            Core.<*> (o Core..:? "opacity")
            Core.<*> (o Core..:? "weight")
      )

instance Core.ToJSON Bucket where
  toJSON Bucket {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("icon" Core..=) Core.<$> icon,
            ("max" Core..=) Core.<$> max,
            ("min" Core..=) Core.<$> min,
            ("opacity" Core..=) Core.<$> opacity,
            ("weight" Core..=) Core.<$> weight
          ]
      )

-- | Specifies the details of a column in a table.
--
-- /See:/ 'newColumn' smart constructor.
data Column = Column
  { -- | Identifier of the base column. If present, this column is derived from the specified base column.
    baseColumn :: (Core.Maybe Column_BaseColumn),
    -- | Identifier for the column.
    columnId :: (Core.Maybe Core.Int32),
    -- | JSON schema for interpreting JSON in this column.
    columnJsonSchema :: (Core.Maybe Core.Text),
    -- | JSON object containing custom column properties.
    columnPropertiesJson :: (Core.Maybe Core.Text),
    -- | Column description.
    description :: (Core.Maybe Core.Text),
    -- | Format pattern. Acceptable values are DT/DATE/MEDIUMe.g Dec 24, 2008 DT/DATE/SHORTfor example 12\/24\/08 DT/DATE/TIME/MEDIUMfor example Dec 24, 2008 8:30:45 PM DT/DATE/TIME/SHORTfor example 12\/24\/08 8:30 PM DT/DAY/MONTH/2/DIGIT/YEARfor example 24\/12\/08 DT/DAY/MONTH/2/DIGIT/YEAR/TIMEfor example 24\/12\/08 20:30 DT/DAY/MONTH/2/DIGIT/YEAR/TIME/MERIDIANfor example 24\/12\/08 8:30 PM DT/DAY/MONTH/4/DIGIT/YEARfor example 24\/12\/2008 DT/DAY/MONTH/4/DIGIT/YEAR/TIMEfor example 24\/12\/2008 20:30 DT/DAY/MONTH/4/DIGIT/YEAR/TIME/MERIDIANfor example 24\/12\/2008 8:30 PM DT/ISO/YEAR/MONTH/DAYfor example 2008-12-24 DT/ISO/YEAR/MONTH/DAY/TIMEfor example 2008-12-24 20:30:45 DT/MONTH/DAY/4/DIGIT/YEARfor example 12\/24\/2008 DT/TIME/LONGfor example 8:30:45 PM UTC-6 DT/TIME/MEDIUMfor example 8:30:45 PM DT/TIME/SHORTfor example 8:30 PM DT/YEAR/ONLYfor example 2008 HIGHLIGHT/UNTYPED/CELLSHighlight cell data that does not match the data type NONENo formatting (default) NUMBER/CURRENCYfor example $1234.56 NUMBER/DEFAULTfor
    -- example 1,234.56 NUMBER/INTEGERfor example 1235 NUMBER/NO/SEPARATORfor example 1234.56 NUMBER/PERCENTfor example 123,456% NUMBER/SCIENTIFICfor example 1E3 STRING/EIGHT/LINE/IMAGEDisplays thumbnail images as tall as eight lines of text STRING/FOUR/LINE/IMAGEDisplays thumbnail images as tall as four lines of text STRING/JSON/TEXTAllows editing of text as JSON in UI STRING/JSON/LISTAllows editing of text as a JSON list in UI STRING/LINKTreats cell as a link (must start with http:\/\/ or https:\/\/) STRING/ONE/LINE/IMAGEDisplays thumbnail images as tall as one line of text STRING/VIDEO/OR/MAPDisplay a video or map thumbnail
    formatPattern :: (Core.Maybe Core.Text),
    -- | Column graph predicate. Used to map table to graph data model (subject,predicate,object) See W3C Graph-based Data Model.
    graphPredicate :: (Core.Maybe Core.Text),
    -- | The kind of item this is. For a column, this is always fusiontables#column.
    kind :: Core.Text,
    -- | Name of the column.
    name :: (Core.Maybe Core.Text),
    -- | Type of the column.
    type' :: (Core.Maybe Core.Text),
    -- | List of valid values used to validate data and supply a drop-down list of values in the web application.
    validValues :: (Core.Maybe [Core.Text]),
    -- | If true, data entered via the web application is validated.
    validateData :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Column' with the minimum fields required to make a request.
newColumn ::
  Column
newColumn =
  Column
    { baseColumn = Core.Nothing,
      columnId = Core.Nothing,
      columnJsonSchema = Core.Nothing,
      columnPropertiesJson = Core.Nothing,
      description = Core.Nothing,
      formatPattern = Core.Nothing,
      graphPredicate = Core.Nothing,
      kind = "fusiontables#column",
      name = Core.Nothing,
      type' = Core.Nothing,
      validValues = Core.Nothing,
      validateData = Core.Nothing
    }

instance Core.FromJSON Column where
  parseJSON =
    Core.withObject
      "Column"
      ( \o ->
          Column
            Core.<$> (o Core..:? "baseColumn")
            Core.<*> (o Core..:? "columnId")
            Core.<*> (o Core..:? "columnJsonSchema")
            Core.<*> (o Core..:? "columnPropertiesJson")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "formatPattern")
            Core.<*> (o Core..:? "graphPredicate")
            Core.<*> (o Core..:? "kind" Core..!= "fusiontables#column")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "validValues")
            Core.<*> (o Core..:? "validateData")
      )

instance Core.ToJSON Column where
  toJSON Column {..} =
    Core.object
      ( Core.catMaybes
          [ ("baseColumn" Core..=) Core.<$> baseColumn,
            ("columnId" Core..=) Core.<$> columnId,
            ("columnJsonSchema" Core..=) Core.<$> columnJsonSchema,
            ("columnPropertiesJson" Core..=) Core.<$> columnPropertiesJson,
            ("description" Core..=) Core.<$> description,
            ("formatPattern" Core..=) Core.<$> formatPattern,
            ("graphPredicate" Core..=) Core.<$> graphPredicate,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type',
            ("validValues" Core..=) Core.<$> validValues,
            ("validateData" Core..=) Core.<$> validateData
          ]
      )

-- | Identifier of the base column. If present, this column is derived from the specified base column.
--
-- /See:/ 'newColumn_BaseColumn' smart constructor.
data Column_BaseColumn = Column_BaseColumn
  { -- | The id of the column in the base table from which this column is derived.
    columnId :: (Core.Maybe Core.Int32),
    -- | Offset to the entry in the list of base tables in the table definition.
    tableIndex :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Column_BaseColumn' with the minimum fields required to make a request.
newColumn_BaseColumn ::
  Column_BaseColumn
newColumn_BaseColumn =
  Column_BaseColumn
    { columnId = Core.Nothing,
      tableIndex = Core.Nothing
    }

instance Core.FromJSON Column_BaseColumn where
  parseJSON =
    Core.withObject
      "Column_BaseColumn"
      ( \o ->
          Column_BaseColumn
            Core.<$> (o Core..:? "columnId")
            Core.<*> (o Core..:? "tableIndex")
      )

instance Core.ToJSON Column_BaseColumn where
  toJSON Column_BaseColumn {..} =
    Core.object
      ( Core.catMaybes
          [ ("columnId" Core..=) Core.<$> columnId,
            ("tableIndex" Core..=) Core.<$> tableIndex
          ]
      )

-- | Represents a list of columns in a table.
--
-- /See:/ 'newColumnList' smart constructor.
data ColumnList = ColumnList
  { -- | List of all requested columns.
    items :: (Core.Maybe [Column]),
    -- | The kind of item this is. For a column list, this is always fusiontables#columnList.
    kind :: Core.Text,
    -- | Token used to access the next page of this result. No token is displayed if there are no more pages left.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Total number of columns for the table.
    totalItems :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ColumnList' with the minimum fields required to make a request.
newColumnList ::
  ColumnList
newColumnList =
  ColumnList
    { items = Core.Nothing,
      kind = "fusiontables#columnList",
      nextPageToken = Core.Nothing,
      totalItems = Core.Nothing
    }

instance Core.FromJSON ColumnList where
  parseJSON =
    Core.withObject
      "ColumnList"
      ( \o ->
          ColumnList
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind" Core..!= "fusiontables#columnList")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalItems")
      )

instance Core.ToJSON ColumnList where
  toJSON ColumnList {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalItems" Core..=) Core.<$> totalItems
          ]
      )

-- | Represents a Geometry object.
--
-- /See:/ 'newGeometry' smart constructor.
data Geometry = Geometry
  { -- | The list of geometries in this geometry collection.
    geometries :: (Core.Maybe [Core.Value]),
    geometry :: (Core.Maybe Core.Value),
    -- | Type: A collection of geometries.
    type' :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Geometry' with the minimum fields required to make a request.
newGeometry ::
  Geometry
newGeometry =
  Geometry
    { geometries = Core.Nothing,
      geometry = Core.Nothing,
      type' = "GeometryCollection"
    }

instance Core.FromJSON Geometry where
  parseJSON =
    Core.withObject
      "Geometry"
      ( \o ->
          Geometry
            Core.<$> (o Core..:? "geometries")
            Core.<*> (o Core..:? "geometry")
            Core.<*> (o Core..:? "type" Core..!= "GeometryCollection")
      )

instance Core.ToJSON Geometry where
  toJSON Geometry {..} =
    Core.object
      ( Core.catMaybes
          [ ("geometries" Core..=) Core.<$> geometries,
            ("geometry" Core..=) Core.<$> geometry,
            Core.Just ("type" Core..= type')
          ]
      )

-- | Represents an import request.
--
-- /See:/ 'newImport' smart constructor.
data Import = Import
  { -- | The kind of item this is. For an import, this is always fusiontables#import.
    kind :: Core.Text,
    -- | The number of rows received from the import request.
    numRowsReceived :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Import' with the minimum fields required to make a request.
newImport ::
  Import
newImport =
  Import
    { kind = "fusiontables#import",
      numRowsReceived = Core.Nothing
    }

instance Core.FromJSON Import where
  parseJSON =
    Core.withObject
      "Import"
      ( \o ->
          Import
            Core.<$> (o Core..:? "kind" Core..!= "fusiontables#import")
            Core.<*> (o Core..:? "numRowsReceived" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON Import where
  toJSON Import {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("numRowsReceived" Core..=)
              Core.. Core.AsText
              Core.<$> numRowsReceived
          ]
      )

-- | Represents a line geometry.
--
-- /See:/ 'newLine' smart constructor.
data Line = Line
  { -- | The coordinates that define the line.
    coordinates :: (Core.Maybe [[Core.Double]]),
    -- | Type: A line geometry.
    type' :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Line' with the minimum fields required to make a request.
newLine ::
  Line
newLine = Line {coordinates = Core.Nothing, type' = "LineString"}

instance Core.FromJSON Line where
  parseJSON =
    Core.withObject
      "Line"
      ( \o ->
          Line
            Core.<$> (o Core..:? "coordinates")
            Core.<*> (o Core..:? "type" Core..!= "LineString")
      )

instance Core.ToJSON Line where
  toJSON Line {..} =
    Core.object
      ( Core.catMaybes
          [ ("coordinates" Core..=) Core.<$> coordinates,
            Core.Just ("type" Core..= type')
          ]
      )

-- | Represents a LineStyle within a StyleSetting
--
-- /See:/ 'newLineStyle' smart constructor.
data LineStyle = LineStyle
  { -- | Color of the line in #RRGGBB format.
    strokeColor :: (Core.Maybe Core.Text),
    -- | Column-value, gradient or buckets styler that is used to determine the line color and opacity.
    strokeColorStyler :: (Core.Maybe StyleFunction),
    -- | Opacity of the line : 0.0 (transparent) to 1.0 (opaque).
    strokeOpacity :: (Core.Maybe Core.Double),
    -- | Width of the line in pixels.
    strokeWeight :: (Core.Maybe Core.Int32),
    -- | Column-value or bucket styler that is used to determine the width of the line.
    strokeWeightStyler :: (Core.Maybe StyleFunction)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LineStyle' with the minimum fields required to make a request.
newLineStyle ::
  LineStyle
newLineStyle =
  LineStyle
    { strokeColor = Core.Nothing,
      strokeColorStyler = Core.Nothing,
      strokeOpacity = Core.Nothing,
      strokeWeight = Core.Nothing,
      strokeWeightStyler = Core.Nothing
    }

instance Core.FromJSON LineStyle where
  parseJSON =
    Core.withObject
      "LineStyle"
      ( \o ->
          LineStyle
            Core.<$> (o Core..:? "strokeColor")
            Core.<*> (o Core..:? "strokeColorStyler")
            Core.<*> (o Core..:? "strokeOpacity")
            Core.<*> (o Core..:? "strokeWeight")
            Core.<*> (o Core..:? "strokeWeightStyler")
      )

instance Core.ToJSON LineStyle where
  toJSON LineStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("strokeColor" Core..=) Core.<$> strokeColor,
            ("strokeColorStyler" Core..=) Core.<$> strokeColorStyler,
            ("strokeOpacity" Core..=) Core.<$> strokeOpacity,
            ("strokeWeight" Core..=) Core.<$> strokeWeight,
            ("strokeWeightStyler" Core..=) Core.<$> strokeWeightStyler
          ]
      )

-- | Represents a point object.
--
-- /See:/ 'newPoint' smart constructor.
data Point = Point
  { -- | The coordinates that define the point.
    coordinates :: (Core.Maybe [Core.Double]),
    -- | Point: A point geometry.
    type' :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Point' with the minimum fields required to make a request.
newPoint ::
  Point
newPoint = Point {coordinates = Core.Nothing, type' = "Point"}

instance Core.FromJSON Point where
  parseJSON =
    Core.withObject
      "Point"
      ( \o ->
          Point
            Core.<$> (o Core..:? "coordinates")
            Core.<*> (o Core..:? "type" Core..!= "Point")
      )

instance Core.ToJSON Point where
  toJSON Point {..} =
    Core.object
      ( Core.catMaybes
          [ ("coordinates" Core..=) Core.<$> coordinates,
            Core.Just ("type" Core..= type')
          ]
      )

-- | Represents a PointStyle within a StyleSetting
--
-- /See:/ 'newPointStyle' smart constructor.
data PointStyle = PointStyle
  { -- | Name of the icon. Use values defined in http:\/\/www.google.com\/fusiontables\/DataSource?dsrcid=308519
    iconName :: (Core.Maybe Core.Text),
    -- | Column or a bucket value from which the icon name is to be determined.
    iconStyler :: (Core.Maybe StyleFunction)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PointStyle' with the minimum fields required to make a request.
newPointStyle ::
  PointStyle
newPointStyle =
  PointStyle {iconName = Core.Nothing, iconStyler = Core.Nothing}

instance Core.FromJSON PointStyle where
  parseJSON =
    Core.withObject
      "PointStyle"
      ( \o ->
          PointStyle
            Core.<$> (o Core..:? "iconName")
            Core.<*> (o Core..:? "iconStyler")
      )

instance Core.ToJSON PointStyle where
  toJSON PointStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("iconName" Core..=) Core.<$> iconName,
            ("iconStyler" Core..=) Core.<$> iconStyler
          ]
      )

-- | Represents a polygon object.
--
-- /See:/ 'newPolygon' smart constructor.
data Polygon = Polygon
  { -- | The coordinates that define the polygon.
    coordinates :: (Core.Maybe [[[Core.Double]]]),
    -- | Type: A polygon geometry.
    type' :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Polygon' with the minimum fields required to make a request.
newPolygon ::
  Polygon
newPolygon = Polygon {coordinates = Core.Nothing, type' = "Polygon"}

instance Core.FromJSON Polygon where
  parseJSON =
    Core.withObject
      "Polygon"
      ( \o ->
          Polygon
            Core.<$> (o Core..:? "coordinates")
            Core.<*> (o Core..:? "type" Core..!= "Polygon")
      )

instance Core.ToJSON Polygon where
  toJSON Polygon {..} =
    Core.object
      ( Core.catMaybes
          [ ("coordinates" Core..=) Core.<$> coordinates,
            Core.Just ("type" Core..= type')
          ]
      )

-- | Represents a PolygonStyle within a StyleSetting
--
-- /See:/ 'newPolygonStyle' smart constructor.
data PolygonStyle = PolygonStyle
  { -- | Color of the interior of the polygon in #RRGGBB format.
    fillColor :: (Core.Maybe Core.Text),
    -- | Column-value, gradient, or bucket styler that is used to determine the interior color and opacity of the polygon.
    fillColorStyler :: (Core.Maybe StyleFunction),
    -- | Opacity of the interior of the polygon: 0.0 (transparent) to 1.0 (opaque).
    fillOpacity :: (Core.Maybe Core.Double),
    -- | Color of the polygon border in #RRGGBB format.
    strokeColor :: (Core.Maybe Core.Text),
    -- | Column-value, gradient or buckets styler that is used to determine the border color and opacity.
    strokeColorStyler :: (Core.Maybe StyleFunction),
    -- | Opacity of the polygon border: 0.0 (transparent) to 1.0 (opaque).
    strokeOpacity :: (Core.Maybe Core.Double),
    -- | Width of the polyon border in pixels.
    strokeWeight :: (Core.Maybe Core.Int32),
    -- | Column-value or bucket styler that is used to determine the width of the polygon border.
    strokeWeightStyler :: (Core.Maybe StyleFunction)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PolygonStyle' with the minimum fields required to make a request.
newPolygonStyle ::
  PolygonStyle
newPolygonStyle =
  PolygonStyle
    { fillColor = Core.Nothing,
      fillColorStyler = Core.Nothing,
      fillOpacity = Core.Nothing,
      strokeColor = Core.Nothing,
      strokeColorStyler = Core.Nothing,
      strokeOpacity = Core.Nothing,
      strokeWeight = Core.Nothing,
      strokeWeightStyler = Core.Nothing
    }

instance Core.FromJSON PolygonStyle where
  parseJSON =
    Core.withObject
      "PolygonStyle"
      ( \o ->
          PolygonStyle
            Core.<$> (o Core..:? "fillColor")
            Core.<*> (o Core..:? "fillColorStyler")
            Core.<*> (o Core..:? "fillOpacity")
            Core.<*> (o Core..:? "strokeColor")
            Core.<*> (o Core..:? "strokeColorStyler")
            Core.<*> (o Core..:? "strokeOpacity")
            Core.<*> (o Core..:? "strokeWeight")
            Core.<*> (o Core..:? "strokeWeightStyler")
      )

instance Core.ToJSON PolygonStyle where
  toJSON PolygonStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("fillColor" Core..=) Core.<$> fillColor,
            ("fillColorStyler" Core..=) Core.<$> fillColorStyler,
            ("fillOpacity" Core..=) Core.<$> fillOpacity,
            ("strokeColor" Core..=) Core.<$> strokeColor,
            ("strokeColorStyler" Core..=) Core.<$> strokeColorStyler,
            ("strokeOpacity" Core..=) Core.<$> strokeOpacity,
            ("strokeWeight" Core..=) Core.<$> strokeWeight,
            ("strokeWeightStyler" Core..=) Core.<$> strokeWeightStyler
          ]
      )

-- | Represents a response to a SQL statement.
--
-- /See:/ 'newSqlresponse' smart constructor.
data Sqlresponse = Sqlresponse
  { -- | Columns in the table.
    columns :: (Core.Maybe [Core.Text]),
    -- | The kind of item this is. For responses to SQL queries, this is always fusiontables#sqlresponse.
    kind :: Core.Text,
    -- | The rows in the table. For each cell we print out whatever cell value (e.g., numeric, string) exists. Thus it is important that each cell contains only one value.
    rows :: (Core.Maybe [[Core.Value]])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Sqlresponse' with the minimum fields required to make a request.
newSqlresponse ::
  Sqlresponse
newSqlresponse =
  Sqlresponse
    { columns = Core.Nothing,
      kind = "fusiontables#sqlresponse",
      rows = Core.Nothing
    }

instance Core.FromJSON Sqlresponse where
  parseJSON =
    Core.withObject
      "Sqlresponse"
      ( \o ->
          Sqlresponse
            Core.<$> (o Core..:? "columns")
            Core.<*> (o Core..:? "kind" Core..!= "fusiontables#sqlresponse")
            Core.<*> (o Core..:? "rows")
      )

instance Core.ToJSON Sqlresponse where
  toJSON Sqlresponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("columns" Core..=) Core.<$> columns,
            Core.Just ("kind" Core..= kind),
            ("rows" Core..=) Core.<$> rows
          ]
      )

-- | Represents a StyleFunction within a StyleSetting
--
-- /See:/ 'newStyleFunction' smart constructor.
data StyleFunction = StyleFunction
  { -- | Bucket function that assigns a style based on the range a column value falls into.
    buckets :: (Core.Maybe [Bucket]),
    -- | Name of the column whose value is used in the style.
    columnName :: (Core.Maybe Core.Text),
    -- | Gradient function that interpolates a range of colors based on column value.
    gradient :: (Core.Maybe StyleFunction_Gradient),
    -- | Stylers can be one of three kinds: \"fusiontables#fromColumn if the column value is to be used as is, i.e., the column values can have colors in #RRGGBBAA format or integer line widths or icon names; fusiontables#gradient if the styling of the row is to be based on applying the gradient function on the column value; or fusiontables#buckets if the styling is to based on the bucket into which the the column value falls.
    kind :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StyleFunction' with the minimum fields required to make a request.
newStyleFunction ::
  StyleFunction
newStyleFunction =
  StyleFunction
    { buckets = Core.Nothing,
      columnName = Core.Nothing,
      gradient = Core.Nothing,
      kind = Core.Nothing
    }

instance Core.FromJSON StyleFunction where
  parseJSON =
    Core.withObject
      "StyleFunction"
      ( \o ->
          StyleFunction
            Core.<$> (o Core..:? "buckets")
            Core.<*> (o Core..:? "columnName")
            Core.<*> (o Core..:? "gradient")
            Core.<*> (o Core..:? "kind")
      )

instance Core.ToJSON StyleFunction where
  toJSON StyleFunction {..} =
    Core.object
      ( Core.catMaybes
          [ ("buckets" Core..=) Core.<$> buckets,
            ("columnName" Core..=) Core.<$> columnName,
            ("gradient" Core..=) Core.<$> gradient,
            ("kind" Core..=) Core.<$> kind
          ]
      )

-- | Gradient function that interpolates a range of colors based on column value.
--
-- /See:/ 'newStyleFunction_Gradient' smart constructor.
data StyleFunction_Gradient = StyleFunction_Gradient
  { -- | Array with two or more colors.
    colors :: (Core.Maybe [StyleFunction_Gradient_ColorsItem]),
    -- | Higher-end of the interpolation range: rows with this value will be assigned to colors[n-1].
    max :: (Core.Maybe Core.Double),
    -- | Lower-end of the interpolation range: rows with this value will be assigned to colors[0].
    min :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StyleFunction_Gradient' with the minimum fields required to make a request.
newStyleFunction_Gradient ::
  StyleFunction_Gradient
newStyleFunction_Gradient =
  StyleFunction_Gradient
    { colors = Core.Nothing,
      max = Core.Nothing,
      min = Core.Nothing
    }

instance Core.FromJSON StyleFunction_Gradient where
  parseJSON =
    Core.withObject
      "StyleFunction_Gradient"
      ( \o ->
          StyleFunction_Gradient
            Core.<$> (o Core..:? "colors")
            Core.<*> (o Core..:? "max")
            Core.<*> (o Core..:? "min")
      )

instance Core.ToJSON StyleFunction_Gradient where
  toJSON StyleFunction_Gradient {..} =
    Core.object
      ( Core.catMaybes
          [ ("colors" Core..=) Core.<$> colors,
            ("max" Core..=) Core.<$> max,
            ("min" Core..=) Core.<$> min
          ]
      )

--
-- /See:/ 'newStyleFunction_Gradient_ColorsItem' smart constructor.
data StyleFunction_Gradient_ColorsItem = StyleFunction_Gradient_ColorsItem
  { -- | Color in #RRGGBB format.
    color :: (Core.Maybe Core.Text),
    -- | Opacity of the color: 0.0 (transparent) to 1.0 (opaque).
    opacity :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StyleFunction_Gradient_ColorsItem' with the minimum fields required to make a request.
newStyleFunction_Gradient_ColorsItem ::
  StyleFunction_Gradient_ColorsItem
newStyleFunction_Gradient_ColorsItem =
  StyleFunction_Gradient_ColorsItem
    { color = Core.Nothing,
      opacity = Core.Nothing
    }

instance Core.FromJSON StyleFunction_Gradient_ColorsItem where
  parseJSON =
    Core.withObject
      "StyleFunction_Gradient_ColorsItem"
      ( \o ->
          StyleFunction_Gradient_ColorsItem
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "opacity")
      )

instance Core.ToJSON StyleFunction_Gradient_ColorsItem where
  toJSON StyleFunction_Gradient_ColorsItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("opacity" Core..=) Core.<$> opacity
          ]
      )

-- | Represents a complete StyleSettings object. The primary key is a combination of the tableId and a styleId.
--
-- /See:/ 'newStyleSetting' smart constructor.
data StyleSetting = StyleSetting
  { -- | The kind of item this is. A StyleSetting contains the style definitions for points, lines, and polygons in a table. Since a table can have any one or all of them, a style definition can have point, line and polygon style definitions.
    kind :: Core.Text,
    -- | Style definition for points in the table.
    markerOptions :: (Core.Maybe PointStyle),
    -- | Optional name for the style setting.
    name :: (Core.Maybe Core.Text),
    -- | Style definition for polygons in the table.
    polygonOptions :: (Core.Maybe PolygonStyle),
    -- | Style definition for lines in the table.
    polylineOptions :: (Core.Maybe LineStyle),
    -- | Identifier for the style setting (unique only within tables).
    styleId :: (Core.Maybe Core.Int32),
    -- | Identifier for the table.
    tableId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StyleSetting' with the minimum fields required to make a request.
newStyleSetting ::
  StyleSetting
newStyleSetting =
  StyleSetting
    { kind = "fusiontables#styleSetting",
      markerOptions = Core.Nothing,
      name = Core.Nothing,
      polygonOptions = Core.Nothing,
      polylineOptions = Core.Nothing,
      styleId = Core.Nothing,
      tableId = Core.Nothing
    }

instance Core.FromJSON StyleSetting where
  parseJSON =
    Core.withObject
      "StyleSetting"
      ( \o ->
          StyleSetting
            Core.<$> (o Core..:? "kind" Core..!= "fusiontables#styleSetting")
            Core.<*> (o Core..:? "markerOptions")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "polygonOptions")
            Core.<*> (o Core..:? "polylineOptions")
            Core.<*> (o Core..:? "styleId")
            Core.<*> (o Core..:? "tableId")
      )

instance Core.ToJSON StyleSetting where
  toJSON StyleSetting {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("markerOptions" Core..=) Core.<$> markerOptions,
            ("name" Core..=) Core.<$> name,
            ("polygonOptions" Core..=) Core.<$> polygonOptions,
            ("polylineOptions" Core..=) Core.<$> polylineOptions,
            ("styleId" Core..=) Core.<$> styleId,
            ("tableId" Core..=) Core.<$> tableId
          ]
      )

-- | Represents a list of styles for a given table.
--
-- /See:/ 'newStyleSettingList' smart constructor.
data StyleSettingList = StyleSettingList
  { -- | All requested style settings.
    items :: (Core.Maybe [StyleSetting]),
    -- | The kind of item this is. For a style list, this is always fusiontables#styleSettingList .
    kind :: Core.Text,
    -- | Token used to access the next page of this result. No token is displayed if there are no more styles left.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Total number of styles for the table.
    totalItems :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StyleSettingList' with the minimum fields required to make a request.
newStyleSettingList ::
  StyleSettingList
newStyleSettingList =
  StyleSettingList
    { items = Core.Nothing,
      kind = "fusiontables#styleSettingList",
      nextPageToken = Core.Nothing,
      totalItems = Core.Nothing
    }

instance Core.FromJSON StyleSettingList where
  parseJSON =
    Core.withObject
      "StyleSettingList"
      ( \o ->
          StyleSettingList
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind" Core..!= "fusiontables#styleSettingList")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalItems")
      )

instance Core.ToJSON StyleSettingList where
  toJSON StyleSettingList {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalItems" Core..=) Core.<$> totalItems
          ]
      )

-- | Represents a table.
--
-- /See:/ 'newTable' smart constructor.
data Table = Table
  { -- | Attribution assigned to the table.
    attribution :: (Core.Maybe Core.Text),
    -- | Optional link for attribution.
    attributionLink :: (Core.Maybe Core.Text),
    -- | Base table identifier if this table is a view or merged table.
    baseTableIds :: (Core.Maybe [Core.Text]),
    -- | Default JSON schema for validating all JSON column properties.
    columnPropertiesJsonSchema :: (Core.Maybe Core.Text),
    -- | Columns in the table.
    columns :: (Core.Maybe [Column]),
    -- | Description assigned to the table.
    description :: (Core.Maybe Core.Text),
    -- | Variable for whether table is exportable.
    isExportable :: (Core.Maybe Core.Bool),
    -- | The kind of item this is. For a table, this is always fusiontables#table.
    kind :: Core.Text,
    -- | Name assigned to a table.
    name :: (Core.Maybe Core.Text),
    -- | SQL that encodes the table definition for derived tables.
    sql :: (Core.Maybe Core.Text),
    -- | Encrypted unique alphanumeric identifier for the table.
    tableId :: (Core.Maybe Core.Text),
    -- | JSON object containing custom table properties.
    tablePropertiesJson :: (Core.Maybe Core.Text),
    -- | JSON schema for validating the JSON table properties.
    tablePropertiesJsonSchema :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Table' with the minimum fields required to make a request.
newTable ::
  Table
newTable =
  Table
    { attribution = Core.Nothing,
      attributionLink = Core.Nothing,
      baseTableIds = Core.Nothing,
      columnPropertiesJsonSchema = Core.Nothing,
      columns = Core.Nothing,
      description = Core.Nothing,
      isExportable = Core.Nothing,
      kind = "fusiontables#table",
      name = Core.Nothing,
      sql = Core.Nothing,
      tableId = Core.Nothing,
      tablePropertiesJson = Core.Nothing,
      tablePropertiesJsonSchema = Core.Nothing
    }

instance Core.FromJSON Table where
  parseJSON =
    Core.withObject
      "Table"
      ( \o ->
          Table
            Core.<$> (o Core..:? "attribution")
            Core.<*> (o Core..:? "attributionLink")
            Core.<*> (o Core..:? "baseTableIds")
            Core.<*> (o Core..:? "columnPropertiesJsonSchema")
            Core.<*> (o Core..:? "columns")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "isExportable")
            Core.<*> (o Core..:? "kind" Core..!= "fusiontables#table")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "sql")
            Core.<*> (o Core..:? "tableId")
            Core.<*> (o Core..:? "tablePropertiesJson")
            Core.<*> (o Core..:? "tablePropertiesJsonSchema")
      )

instance Core.ToJSON Table where
  toJSON Table {..} =
    Core.object
      ( Core.catMaybes
          [ ("attribution" Core..=) Core.<$> attribution,
            ("attributionLink" Core..=) Core.<$> attributionLink,
            ("baseTableIds" Core..=) Core.<$> baseTableIds,
            ("columnPropertiesJsonSchema" Core..=)
              Core.<$> columnPropertiesJsonSchema,
            ("columns" Core..=) Core.<$> columns,
            ("description" Core..=) Core.<$> description,
            ("isExportable" Core..=) Core.<$> isExportable,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("sql" Core..=) Core.<$> sql,
            ("tableId" Core..=) Core.<$> tableId,
            ("tablePropertiesJson" Core..=) Core.<$> tablePropertiesJson,
            ("tablePropertiesJsonSchema" Core..=)
              Core.<$> tablePropertiesJsonSchema
          ]
      )

-- | Represents a list of tables.
--
-- /See:/ 'newTableList' smart constructor.
data TableList = TableList
  { -- | List of all requested tables.
    items :: (Core.Maybe [Table]),
    -- | The kind of item this is. For table list, this is always fusiontables#tableList.
    kind :: Core.Text,
    -- | Token used to access the next page of this result. No token is displayed if there are no more pages left.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TableList' with the minimum fields required to make a request.
newTableList ::
  TableList
newTableList =
  TableList
    { items = Core.Nothing,
      kind = "fusiontables#tableList",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON TableList where
  parseJSON =
    Core.withObject
      "TableList"
      ( \o ->
          TableList
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind" Core..!= "fusiontables#tableList")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON TableList where
  toJSON TableList {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A background task on a table, initiated for time- or resource-consuming operations such as changing column types or deleting all rows.
--
-- /See:/ 'newTask' smart constructor.
data Task = Task
  { -- | Type of the resource. This is always \"fusiontables#task\".
    kind :: Core.Text,
    -- | Task percentage completion.
    progress :: (Core.Maybe Core.Text),
    -- | false while the table is busy with some other task. true if this background task is currently running.
    started :: (Core.Maybe Core.Bool),
    -- | Identifier for the task.
    taskId :: (Core.Maybe Core.Int64),
    -- | Type of background task.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Task' with the minimum fields required to make a request.
newTask ::
  Task
newTask =
  Task
    { kind = "fusiontables#task",
      progress = Core.Nothing,
      started = Core.Nothing,
      taskId = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Task where
  parseJSON =
    Core.withObject
      "Task"
      ( \o ->
          Task
            Core.<$> (o Core..:? "kind" Core..!= "fusiontables#task")
            Core.<*> (o Core..:? "progress")
            Core.<*> (o Core..:? "started")
            Core.<*> (o Core..:? "taskId" Core.<&> Core.fmap Core.fromAsText)
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Task where
  toJSON Task {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("kind" Core..= kind),
            ("progress" Core..=) Core.<$> progress,
            ("started" Core..=) Core.<$> started,
            ("taskId" Core..=) Core.. Core.AsText Core.<$> taskId,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Represents a list of tasks for a table.
--
-- /See:/ 'newTaskList' smart constructor.
data TaskList = TaskList
  { -- | List of all requested tasks.
    items :: (Core.Maybe [Task]),
    -- | Type of the resource. This is always \"fusiontables#taskList\".
    kind :: Core.Text,
    -- | Token used to access the next page of this result. No token is displayed if there are no more pages left.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Total number of tasks for the table.
    totalItems :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaskList' with the minimum fields required to make a request.
newTaskList ::
  TaskList
newTaskList =
  TaskList
    { items = Core.Nothing,
      kind = "fusiontables#taskList",
      nextPageToken = Core.Nothing,
      totalItems = Core.Nothing
    }

instance Core.FromJSON TaskList where
  parseJSON =
    Core.withObject
      "TaskList"
      ( \o ->
          TaskList
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind" Core..!= "fusiontables#taskList")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalItems")
      )

instance Core.ToJSON TaskList where
  toJSON TaskList {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalItems" Core..=) Core.<$> totalItems
          ]
      )

-- | Represents the contents of InfoWindow templates.
--
-- /See:/ 'newTemplate' smart constructor.
data Template = Template
  { -- | List of columns from which the template is to be automatically constructed. Only one of body or automaticColumns can be specified.
    automaticColumnNames :: (Core.Maybe [Core.Text]),
    -- | Body of the template. It contains HTML with {column_name} to insert values from a particular column. The body is sanitized to remove certain tags, e.g., script. Only one of body or automaticColumns can be specified.
    body :: (Core.Maybe Core.Text),
    -- | The kind of item this is. For a template, this is always fusiontables#template.
    kind :: Core.Text,
    -- | Optional name assigned to a template.
    name :: (Core.Maybe Core.Text),
    -- | Identifier for the table for which the template is defined.
    tableId :: (Core.Maybe Core.Text),
    -- | Identifier for the template, unique within the context of a particular table.
    templateId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Template' with the minimum fields required to make a request.
newTemplate ::
  Template
newTemplate =
  Template
    { automaticColumnNames = Core.Nothing,
      body = Core.Nothing,
      kind = "fusiontables#template",
      name = Core.Nothing,
      tableId = Core.Nothing,
      templateId = Core.Nothing
    }

instance Core.FromJSON Template where
  parseJSON =
    Core.withObject
      "Template"
      ( \o ->
          Template
            Core.<$> (o Core..:? "automaticColumnNames")
            Core.<*> (o Core..:? "body")
            Core.<*> (o Core..:? "kind" Core..!= "fusiontables#template")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "tableId")
            Core.<*> (o Core..:? "templateId")
      )

instance Core.ToJSON Template where
  toJSON Template {..} =
    Core.object
      ( Core.catMaybes
          [ ("automaticColumnNames" Core..=) Core.<$> automaticColumnNames,
            ("body" Core..=) Core.<$> body,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("tableId" Core..=) Core.<$> tableId,
            ("templateId" Core..=) Core.<$> templateId
          ]
      )

-- | Represents a list of templates for a given table.
--
-- /See:/ 'newTemplateList' smart constructor.
data TemplateList = TemplateList
  { -- | List of all requested templates.
    items :: (Core.Maybe [Template]),
    -- | The kind of item this is. For a template list, this is always fusiontables#templateList .
    kind :: Core.Text,
    -- | Token used to access the next page of this result. No token is displayed if there are no more pages left.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Total number of templates for the table.
    totalItems :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TemplateList' with the minimum fields required to make a request.
newTemplateList ::
  TemplateList
newTemplateList =
  TemplateList
    { items = Core.Nothing,
      kind = "fusiontables#templateList",
      nextPageToken = Core.Nothing,
      totalItems = Core.Nothing
    }

instance Core.FromJSON TemplateList where
  parseJSON =
    Core.withObject
      "TemplateList"
      ( \o ->
          TemplateList
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind" Core..!= "fusiontables#templateList")
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "totalItems")
      )

instance Core.ToJSON TemplateList where
  toJSON TemplateList {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("totalItems" Core..=) Core.<$> totalItems
          ]
      )
