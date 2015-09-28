{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.FusionTables
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | API for working with Fusion Tables data.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference>
module Network.Google.FusionTables
    (
    -- * REST Resources

    -- ** Fusion Tables API
      FusionTables
    , fusionTables
    , fusionTablesURL

    -- ** fusiontables.column.delete
    , module Network.Google.API.FusionTables.Column.Delete

    -- ** fusiontables.column.get
    , module Network.Google.API.FusionTables.Column.Get

    -- ** fusiontables.column.insert
    , module Network.Google.API.FusionTables.Column.Insert

    -- ** fusiontables.column.list
    , module Network.Google.API.FusionTables.Column.List

    -- ** fusiontables.column.patch
    , module Network.Google.API.FusionTables.Column.Patch

    -- ** fusiontables.column.update
    , module Network.Google.API.FusionTables.Column.Update

    -- ** fusiontables.query.sql
    , module Network.Google.API.FusionTables.Query.Sql

    -- ** fusiontables.query.sqlGet
    , module Network.Google.API.FusionTables.Query.SqlGet

    -- ** fusiontables.style.delete
    , module Network.Google.API.FusionTables.Style.Delete

    -- ** fusiontables.style.get
    , module Network.Google.API.FusionTables.Style.Get

    -- ** fusiontables.style.insert
    , module Network.Google.API.FusionTables.Style.Insert

    -- ** fusiontables.style.list
    , module Network.Google.API.FusionTables.Style.List

    -- ** fusiontables.style.patch
    , module Network.Google.API.FusionTables.Style.Patch

    -- ** fusiontables.style.update
    , module Network.Google.API.FusionTables.Style.Update

    -- ** fusiontables.table.copy
    , module Network.Google.API.FusionTables.Table.Copy

    -- ** fusiontables.table.delete
    , module Network.Google.API.FusionTables.Table.Delete

    -- ** fusiontables.table.get
    , module Network.Google.API.FusionTables.Table.Get

    -- ** fusiontables.table.importRows
    , module Network.Google.API.FusionTables.Table.ImportRows

    -- ** fusiontables.table.importTable
    , module Network.Google.API.FusionTables.Table.ImportTable

    -- ** fusiontables.table.insert
    , module Network.Google.API.FusionTables.Table.Insert

    -- ** fusiontables.table.list
    , module Network.Google.API.FusionTables.Table.List

    -- ** fusiontables.table.patch
    , module Network.Google.API.FusionTables.Table.Patch

    -- ** fusiontables.table.replaceRows
    , module Network.Google.API.FusionTables.Table.ReplaceRows

    -- ** fusiontables.table.update
    , module Network.Google.API.FusionTables.Table.Update

    -- ** fusiontables.task.delete
    , module Network.Google.API.FusionTables.Task.Delete

    -- ** fusiontables.task.get
    , module Network.Google.API.FusionTables.Task.Get

    -- ** fusiontables.task.list
    , module Network.Google.API.FusionTables.Task.List

    -- ** fusiontables.template.delete
    , module Network.Google.API.FusionTables.Template.Delete

    -- ** fusiontables.template.get
    , module Network.Google.API.FusionTables.Template.Get

    -- ** fusiontables.template.insert
    , module Network.Google.API.FusionTables.Template.Insert

    -- ** fusiontables.template.list
    , module Network.Google.API.FusionTables.Template.List

    -- ** fusiontables.template.patch
    , module Network.Google.API.FusionTables.Template.Patch

    -- ** fusiontables.template.update
    , module Network.Google.API.FusionTables.Template.Update

    -- * Types

    -- ** Polygon
    , Polygon
    , polygon
    , pCoordinates
    , pType

    -- ** Point
    , Point
    , point
    , poiCoordinates
    , poiType

    -- ** TaskList
    , TaskList
    , taskList
    , tlTotalItems
    , tlNextPageToken
    , tlKind
    , tlItems

    -- ** Alt
    , Alt (..)

    -- ** Import
    , Import
    , import'
    , iKind
    , iNumRowsReceived

    -- ** Task
    , Task
    , task
    , tProgress
    , tTaskId
    , tKind
    , tType
    , tStarted

    -- ** Template
    , Template
    , template
    , temAutomaticColumnNames
    , temTemplateId
    , temKind
    , temBody
    , temName
    , temTableId

    -- ** StyleFunctionItemColorsGradient
    , StyleFunctionItemColorsGradient
    , styleFunctionItemColorsGradient
    , sficgColor
    , sficgOpacity

    -- ** PointStyle
    , PointStyle
    , pointStyle
    , psIconName
    , psIconStyler

    -- ** PolygonStyle
    , PolygonStyle
    , polygonStyle
    , psFillColorStyler
    , psFillColor
    , psStrokeColorStyler
    , psStrokeWeight
    , psStrokeOpacity
    , psFillOpacity
    , psStrokeWeightStyler
    , psStrokeColor

    -- ** Bucket
    , Bucket
    , bucket
    , bMax
    , bColor
    , bWeight
    , bIcon
    , bOpacity
    , bMin

    -- ** Line
    , Line
    , line
    , lCoordinates
    , lType

    -- ** LineStyle
    , LineStyle
    , lineStyle
    , lsStrokeColorStyler
    , lsStrokeWeight
    , lsStrokeOpacity
    , lsStrokeWeightStyler
    , lsStrokeColor

    -- ** ColumnList
    , ColumnList
    , columnList
    , clTotalItems
    , clNextPageToken
    , clKind
    , clItems

    -- ** TableList
    , TableList
    , tableList
    , tabNextPageToken
    , tabKind
    , tabItems

    -- ** TemplateList
    , TemplateList
    , templateList
    , tllTotalItems
    , tllNextPageToken
    , tllKind
    , tllItems

    -- ** Geometry
    , Geometry
    , geometry
    , gGeometries
    , gGeometry
    , gType

    -- ** StyleFunction
    , StyleFunction
    , styleFunction
    , sfBuckets
    , sfKind
    , sfGradient
    , sfColumnName

    -- ** Sqlresponse
    , Sqlresponse
    , sqlresponse
    , sKind
    , sRows
    , sColumns

    -- ** StyleFunctionGradient
    , StyleFunctionGradient
    , styleFunctionGradient
    , sfgMax
    , sfgMin
    , sfgColors

    -- ** StyleSettingList
    , StyleSettingList
    , styleSettingList
    , sslTotalItems
    , sslNextPageToken
    , sslKind
    , sslItems

    -- ** Table
    , Table
    , table
    , ttIsExportable
    , ttKind
    , ttColumnPropertiesJsonSchema
    , ttTablePropertiesJsonSchema
    , ttName
    , ttTablePropertiesJson
    , ttColumns
    , ttBaseTableIds
    , ttTableId
    , ttSql
    , ttDescription
    , ttAttribution
    , ttAttributionLink

    -- ** ColumnBaseColumn
    , ColumnBaseColumn
    , columnBaseColumn
    , cbcTableIndex
    , cbcColumnId

    -- ** Column
    , Column
    , column
    , cColumnJsonSchema
    , cGraphPredicate
    , cKind
    , cBaseColumn
    , cColumnPropertiesJson
    , cName
    , cType
    , cFormatPattern
    , cColumnId
    , cValidValues
    , cValidateData
    , cDescription

    -- ** StyleSetting
    , StyleSetting
    , styleSetting
    , ssPolylineOptions
    , ssPolygonOptions
    , ssMarkerOptions
    , ssKind
    , ssName
    , ssStyleId
    , ssTableId
    ) where

import           Network.Google.API.FusionTables.Column.Delete
import           Network.Google.API.FusionTables.Column.Get
import           Network.Google.API.FusionTables.Column.Insert
import           Network.Google.API.FusionTables.Column.List
import           Network.Google.API.FusionTables.Column.Patch
import           Network.Google.API.FusionTables.Column.Update
import           Network.Google.API.FusionTables.Query.Sql
import           Network.Google.API.FusionTables.Query.SqlGet
import           Network.Google.API.FusionTables.Style.Delete
import           Network.Google.API.FusionTables.Style.Get
import           Network.Google.API.FusionTables.Style.Insert
import           Network.Google.API.FusionTables.Style.List
import           Network.Google.API.FusionTables.Style.Patch
import           Network.Google.API.FusionTables.Style.Update
import           Network.Google.API.FusionTables.Table.Copy
import           Network.Google.API.FusionTables.Table.Delete
import           Network.Google.API.FusionTables.Table.Get
import           Network.Google.API.FusionTables.Table.ImportRows
import           Network.Google.API.FusionTables.Table.ImportTable
import           Network.Google.API.FusionTables.Table.Insert
import           Network.Google.API.FusionTables.Table.List
import           Network.Google.API.FusionTables.Table.Patch
import           Network.Google.API.FusionTables.Table.ReplaceRows
import           Network.Google.API.FusionTables.Table.Update
import           Network.Google.API.FusionTables.Task.Delete
import           Network.Google.API.FusionTables.Task.Get
import           Network.Google.API.FusionTables.Task.List
import           Network.Google.API.FusionTables.Template.Delete
import           Network.Google.API.FusionTables.Template.Get
import           Network.Google.API.FusionTables.Template.Insert
import           Network.Google.API.FusionTables.Template.List
import           Network.Google.API.FusionTables.Template.Patch
import           Network.Google.API.FusionTables.Template.Update
import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type FusionTables =
     QuerySqlGetAPI :<|> TableListAPI :<|>
       TableImportRowsAPI
       :<|> TemplateDeleteAPI
       :<|> ColumnDeleteAPI
       :<|> TableUpdateAPI
       :<|> TaskGetAPI
       :<|> StyleGetAPI
       :<|> StyleInsertAPI
       :<|> TableInsertAPI
       :<|> TaskListAPI
       :<|> TableReplaceRowsAPI
       :<|> StyleListAPI
       :<|> TaskDeleteAPI
       :<|> StyleDeleteAPI
       :<|> TemplateUpdateAPI
       :<|> TemplateInsertAPI
       :<|> TableImportTableAPI
       :<|> ColumnInsertAPI
       :<|> ColumnUpdateAPI
       :<|> StyleUpdateAPI
       :<|> ColumnGetAPI
       :<|> TemplateListAPI
       :<|> TemplateGetAPI
       :<|> ColumnListAPI
       :<|> TableDeleteAPI
       :<|> QuerySqlAPI
       :<|> TableGetAPI
       :<|> TemplatePatchAPI
       :<|> ColumnPatchAPI
       :<|> TableCopyAPI
       :<|> StylePatchAPI
       :<|> TablePatchAPI

fusionTables :: Proxy FusionTables
fusionTables = Proxy
