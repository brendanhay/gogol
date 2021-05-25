{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.FusionTables
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for working with Fusion Tables data.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference>
module Network.Google.FusionTables
    (
    -- * Service Configuration
      fusionTablesService

    -- * OAuth Scopes
    , fusionTablesReadOnlyScope
    , fusionTablesScope

    -- * API Declaration
    , FusionTablesAPI

    -- * Resources

    -- ** fusiontables.column.delete
    , module Network.Google.Resource.FusionTables.Column.Delete

    -- ** fusiontables.column.get
    , module Network.Google.Resource.FusionTables.Column.Get

    -- ** fusiontables.column.insert
    , module Network.Google.Resource.FusionTables.Column.Insert

    -- ** fusiontables.column.list
    , module Network.Google.Resource.FusionTables.Column.List

    -- ** fusiontables.column.patch
    , module Network.Google.Resource.FusionTables.Column.Patch

    -- ** fusiontables.column.update
    , module Network.Google.Resource.FusionTables.Column.Update

    -- ** fusiontables.query.sql
    , module Network.Google.Resource.FusionTables.Query.SQL

    -- ** fusiontables.query.sqlGet
    , module Network.Google.Resource.FusionTables.Query.SQLGet

    -- ** fusiontables.style.delete
    , module Network.Google.Resource.FusionTables.Style.Delete

    -- ** fusiontables.style.get
    , module Network.Google.Resource.FusionTables.Style.Get

    -- ** fusiontables.style.insert
    , module Network.Google.Resource.FusionTables.Style.Insert

    -- ** fusiontables.style.list
    , module Network.Google.Resource.FusionTables.Style.List

    -- ** fusiontables.style.patch
    , module Network.Google.Resource.FusionTables.Style.Patch

    -- ** fusiontables.style.update
    , module Network.Google.Resource.FusionTables.Style.Update

    -- ** fusiontables.table.copy
    , module Network.Google.Resource.FusionTables.Table.Copy

    -- ** fusiontables.table.delete
    , module Network.Google.Resource.FusionTables.Table.Delete

    -- ** fusiontables.table.get
    , module Network.Google.Resource.FusionTables.Table.Get

    -- ** fusiontables.table.importRows
    , module Network.Google.Resource.FusionTables.Table.ImportRows

    -- ** fusiontables.table.importTable
    , module Network.Google.Resource.FusionTables.Table.ImportTable

    -- ** fusiontables.table.insert
    , module Network.Google.Resource.FusionTables.Table.Insert

    -- ** fusiontables.table.list
    , module Network.Google.Resource.FusionTables.Table.List

    -- ** fusiontables.table.patch
    , module Network.Google.Resource.FusionTables.Table.Patch

    -- ** fusiontables.table.refetchSheet
    , module Network.Google.Resource.FusionTables.Table.RefetchSheet

    -- ** fusiontables.table.replaceRows
    , module Network.Google.Resource.FusionTables.Table.ReplaceRows

    -- ** fusiontables.table.update
    , module Network.Google.Resource.FusionTables.Table.Update

    -- ** fusiontables.task.delete
    , module Network.Google.Resource.FusionTables.Task.Delete

    -- ** fusiontables.task.get
    , module Network.Google.Resource.FusionTables.Task.Get

    -- ** fusiontables.task.list
    , module Network.Google.Resource.FusionTables.Task.List

    -- ** fusiontables.template.delete
    , module Network.Google.Resource.FusionTables.Template.Delete

    -- ** fusiontables.template.get
    , module Network.Google.Resource.FusionTables.Template.Get

    -- ** fusiontables.template.insert
    , module Network.Google.Resource.FusionTables.Template.Insert

    -- ** fusiontables.template.list
    , module Network.Google.Resource.FusionTables.Template.List

    -- ** fusiontables.template.patch
    , module Network.Google.Resource.FusionTables.Template.Patch

    -- ** fusiontables.template.update
    , module Network.Google.Resource.FusionTables.Template.Update

    -- * Types

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
    , tlNextPageToken
    , tlKind
    , tlItems

    -- ** StyleFunction
    , StyleFunction
    , styleFunction
    , sfBuckets
    , sfKind
    , sfGradient
    , sfColumnName

    -- ** ColumnBaseColumn
    , ColumnBaseColumn
    , columnBaseColumn
    , cbcTableIndex
    , cbcColumnId

    -- ** SQLresponse
    , SQLresponse
    , sQLresponse
    , sqlKind
    , sqlRows
    , sqlColumns

    -- ** StyleFunctionGradientColorsItem
    , StyleFunctionGradientColorsItem
    , styleFunctionGradientColorsItem
    , sfgciColor
    , sfgciOpacity

    -- ** StyleSettingList
    , StyleSettingList
    , styleSettingList
    , sslTotalItems
    , sslNextPageToken
    , sslKind
    , sslItems

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

    -- ** Point
    , Point
    , point
    , pCoordinates
    , pType

    -- ** Polygon
    , Polygon
    , polygon
    , polCoordinates
    , polType

    -- ** TaskList
    , TaskList
    , taskList
    , tTotalItems
    , tNextPageToken
    , tKind
    , tItems

    -- ** Geometry
    , Geometry
    , geometry
    , gGeometries
    , gGeometry
    , gType

    -- ** TemplateList
    , TemplateList
    , templateList
    , temTotalItems
    , temNextPageToken
    , temKind
    , temItems

    -- ** Import
    , Import
    , import'
    , iKind
    , iNumRowsReceived

    -- ** Task
    , Task
    , task
    , tasProgress
    , tasTaskId
    , tasKind
    , tasType
    , tasStarted

    -- ** Template
    , Template
    , template
    , ttAutomaticColumnNames
    , ttTemplateId
    , ttKind
    , ttBody
    , ttName
    , ttTableId

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

    -- ** StyleFunctionGradient
    , StyleFunctionGradient
    , styleFunctionGradient
    , sfgMax
    , sfgMin
    , sfgColors

    -- ** Column
    , Column
    , column
    , cColumnJSONSchema
    , cGraphPredicate
    , cKind
    , cBaseColumn
    , cColumnPropertiesJSON
    , cName
    , cType
    , cFormatPattern
    , cColumnId
    , cValidValues
    , cValidateData
    , cDescription

    -- ** Table
    , Table
    , table
    , tabaIsExportable
    , tabaKind
    , tabaColumnPropertiesJSONSchema
    , tabaTablePropertiesJSONSchema
    , tabaName
    , tabaTablePropertiesJSON
    , tabaColumns
    , tabaBaseTableIds
    , tabaTableId
    , tabaSQL
    , tabaDescription
    , tabaAttribution
    , tabaAttributionLink

    -- ** LineStyle
    , LineStyle
    , lineStyle
    , lsStrokeColorStyler
    , lsStrokeWeight
    , lsStrokeOpacity
    , lsStrokeWeightStyler
    , lsStrokeColor
    ) where

import Network.Google.Prelude
import Network.Google.FusionTables.Types
import Network.Google.Resource.FusionTables.Column.Delete
import Network.Google.Resource.FusionTables.Column.Get
import Network.Google.Resource.FusionTables.Column.Insert
import Network.Google.Resource.FusionTables.Column.List
import Network.Google.Resource.FusionTables.Column.Patch
import Network.Google.Resource.FusionTables.Column.Update
import Network.Google.Resource.FusionTables.Query.SQL
import Network.Google.Resource.FusionTables.Query.SQLGet
import Network.Google.Resource.FusionTables.Style.Delete
import Network.Google.Resource.FusionTables.Style.Get
import Network.Google.Resource.FusionTables.Style.Insert
import Network.Google.Resource.FusionTables.Style.List
import Network.Google.Resource.FusionTables.Style.Patch
import Network.Google.Resource.FusionTables.Style.Update
import Network.Google.Resource.FusionTables.Table.Copy
import Network.Google.Resource.FusionTables.Table.Delete
import Network.Google.Resource.FusionTables.Table.Get
import Network.Google.Resource.FusionTables.Table.ImportRows
import Network.Google.Resource.FusionTables.Table.ImportTable
import Network.Google.Resource.FusionTables.Table.Insert
import Network.Google.Resource.FusionTables.Table.List
import Network.Google.Resource.FusionTables.Table.Patch
import Network.Google.Resource.FusionTables.Table.RefetchSheet
import Network.Google.Resource.FusionTables.Table.ReplaceRows
import Network.Google.Resource.FusionTables.Table.Update
import Network.Google.Resource.FusionTables.Task.Delete
import Network.Google.Resource.FusionTables.Task.Get
import Network.Google.Resource.FusionTables.Task.List
import Network.Google.Resource.FusionTables.Template.Delete
import Network.Google.Resource.FusionTables.Template.Get
import Network.Google.Resource.FusionTables.Template.Insert
import Network.Google.Resource.FusionTables.Template.List
import Network.Google.Resource.FusionTables.Template.Patch
import Network.Google.Resource.FusionTables.Template.Update

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Fusion Tables API service.
type FusionTablesAPI =
     StyleInsertResource :<|> StyleListResource :<|>
       StylePatchResource
       :<|> StyleGetResource
       :<|> StyleDeleteResource
       :<|> StyleUpdateResource
       :<|> QuerySQLGetResource
       :<|> QuerySQLResource
       :<|> TaskListResource
       :<|> TaskGetResource
       :<|> TaskDeleteResource
       :<|> TemplateInsertResource
       :<|> TemplateListResource
       :<|> TemplatePatchResource
       :<|> TemplateGetResource
       :<|> TemplateDeleteResource
       :<|> TemplateUpdateResource
       :<|> ColumnInsertResource
       :<|> ColumnListResource
       :<|> ColumnPatchResource
       :<|> ColumnGetResource
       :<|> ColumnDeleteResource
       :<|> ColumnUpdateResource
       :<|> TableRefetchSheetResource
       :<|> TableInsertResource
       :<|> TableListResource
       :<|> TableCopyResource
       :<|> TableReplaceRowsResource
       :<|> TableImportTableResource
       :<|> TablePatchResource
       :<|> TableGetResource
       :<|> TableImportRowsResource
       :<|> TableDeleteResource
       :<|> TableUpdateResource
