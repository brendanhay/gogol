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
    -- * API
      FusionTablesAPI
    , fusionTablesAPI
    , fusionTablesURL

    -- * Service Methods

    -- * REST Resources

    -- ** FusiontablesColumnDelete
    , module Network.Google.Resource.FusionTables.Column.Delete

    -- ** FusiontablesColumnGet
    , module Network.Google.Resource.FusionTables.Column.Get

    -- ** FusiontablesColumnInsert
    , module Network.Google.Resource.FusionTables.Column.Insert

    -- ** FusiontablesColumnList
    , module Network.Google.Resource.FusionTables.Column.List

    -- ** FusiontablesColumnPatch
    , module Network.Google.Resource.FusionTables.Column.Patch

    -- ** FusiontablesColumnUpdate
    , module Network.Google.Resource.FusionTables.Column.Update

    -- ** FusiontablesQuerySql
    , module Network.Google.Resource.FusionTables.Query.Sql

    -- ** FusiontablesQuerySqlGet
    , module Network.Google.Resource.FusionTables.Query.SqlGet

    -- ** FusiontablesStyleDelete
    , module Network.Google.Resource.FusionTables.Style.Delete

    -- ** FusiontablesStyleGet
    , module Network.Google.Resource.FusionTables.Style.Get

    -- ** FusiontablesStyleInsert
    , module Network.Google.Resource.FusionTables.Style.Insert

    -- ** FusiontablesStyleList
    , module Network.Google.Resource.FusionTables.Style.List

    -- ** FusiontablesStylePatch
    , module Network.Google.Resource.FusionTables.Style.Patch

    -- ** FusiontablesStyleUpdate
    , module Network.Google.Resource.FusionTables.Style.Update

    -- ** FusiontablesTableCopy
    , module Network.Google.Resource.FusionTables.Table.Copy

    -- ** FusiontablesTableDelete
    , module Network.Google.Resource.FusionTables.Table.Delete

    -- ** FusiontablesTableGet
    , module Network.Google.Resource.FusionTables.Table.Get

    -- ** FusiontablesTableImportRows
    , module Network.Google.Resource.FusionTables.Table.ImportRows

    -- ** FusiontablesTableImportTable
    , module Network.Google.Resource.FusionTables.Table.ImportTable

    -- ** FusiontablesTableInsert
    , module Network.Google.Resource.FusionTables.Table.Insert

    -- ** FusiontablesTableList
    , module Network.Google.Resource.FusionTables.Table.List

    -- ** FusiontablesTablePatch
    , module Network.Google.Resource.FusionTables.Table.Patch

    -- ** FusiontablesTableReplaceRows
    , module Network.Google.Resource.FusionTables.Table.ReplaceRows

    -- ** FusiontablesTableUpdate
    , module Network.Google.Resource.FusionTables.Table.Update

    -- ** FusiontablesTaskDelete
    , module Network.Google.Resource.FusionTables.Task.Delete

    -- ** FusiontablesTaskGet
    , module Network.Google.Resource.FusionTables.Task.Get

    -- ** FusiontablesTaskList
    , module Network.Google.Resource.FusionTables.Task.List

    -- ** FusiontablesTemplateDelete
    , module Network.Google.Resource.FusionTables.Template.Delete

    -- ** FusiontablesTemplateGet
    , module Network.Google.Resource.FusionTables.Template.Get

    -- ** FusiontablesTemplateInsert
    , module Network.Google.Resource.FusionTables.Template.Insert

    -- ** FusiontablesTemplateList
    , module Network.Google.Resource.FusionTables.Template.List

    -- ** FusiontablesTemplatePatch
    , module Network.Google.Resource.FusionTables.Template.Patch

    -- ** FusiontablesTemplateUpdate
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

    -- ** Sqlresponse
    , Sqlresponse
    , sqlresponse
    , sKind
    , sRows
    , sColumns

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
    , tTotalItems
    , tNextPageToken
    , tKind
    , tItems

    -- ** TemplateList
    , TemplateList
    , templateList
    , temTotalItems
    , temNextPageToken
    , temKind
    , temItems

    -- ** Geometry
    , Geometry
    , geometry
    , gGeometries
    , gGeometry
    , gType

    -- ** StyleFunctionGradientColors
    , StyleFunctionGradientColors
    , styleFunctionGradientColors
    , sfgcColor
    , sfgcOpacity

    -- ** Task
    , Task
    , task
    , tasProgress
    , tasTaskId
    , tasKind
    , tasType
    , tasStarted

    -- ** Import
    , Import
    , import'
    , iKind
    , iNumRowsReceived

    -- ** Template
    , Template
    , template
    , temeAutomaticColumnNames
    , temeTemplateId
    , temeKind
    , temeBody
    , temeName
    , temeTableId

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

    -- ** Table
    , Table
    , table
    , tabIsExportable
    , tabKind
    , tabColumnPropertiesJsonSchema
    , tabTablePropertiesJsonSchema
    , tabName
    , tabTablePropertiesJson
    , tabColumns
    , tabBaseTableIds
    , tabTableId
    , tabSql
    , tabDescription
    , tabAttribution
    , tabAttributionLink

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

    -- ** LineStyle
    , LineStyle
    , lineStyle
    , lsStrokeColorStyler
    , lsStrokeWeight
    , lsStrokeOpacity
    , lsStrokeWeightStyler
    , lsStrokeColor

    -- ** Alt
    , Alt (..)
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude
import           Network.Google.Resource.FusionTables.Column.Delete
import           Network.Google.Resource.FusionTables.Column.Get
import           Network.Google.Resource.FusionTables.Column.Insert
import           Network.Google.Resource.FusionTables.Column.List
import           Network.Google.Resource.FusionTables.Column.Patch
import           Network.Google.Resource.FusionTables.Column.Update
import           Network.Google.Resource.FusionTables.Query.Sql
import           Network.Google.Resource.FusionTables.Query.SqlGet
import           Network.Google.Resource.FusionTables.Style.Delete
import           Network.Google.Resource.FusionTables.Style.Get
import           Network.Google.Resource.FusionTables.Style.Insert
import           Network.Google.Resource.FusionTables.Style.List
import           Network.Google.Resource.FusionTables.Style.Patch
import           Network.Google.Resource.FusionTables.Style.Update
import           Network.Google.Resource.FusionTables.Table.Copy
import           Network.Google.Resource.FusionTables.Table.Delete
import           Network.Google.Resource.FusionTables.Table.Get
import           Network.Google.Resource.FusionTables.Table.ImportRows
import           Network.Google.Resource.FusionTables.Table.ImportTable
import           Network.Google.Resource.FusionTables.Table.Insert
import           Network.Google.Resource.FusionTables.Table.List
import           Network.Google.Resource.FusionTables.Table.Patch
import           Network.Google.Resource.FusionTables.Table.ReplaceRows
import           Network.Google.Resource.FusionTables.Table.Update
import           Network.Google.Resource.FusionTables.Task.Delete
import           Network.Google.Resource.FusionTables.Task.Get
import           Network.Google.Resource.FusionTables.Task.List
import           Network.Google.Resource.FusionTables.Template.Delete
import           Network.Google.Resource.FusionTables.Template.Get
import           Network.Google.Resource.FusionTables.Template.Insert
import           Network.Google.Resource.FusionTables.Template.List
import           Network.Google.Resource.FusionTables.Template.Patch
import           Network.Google.Resource.FusionTables.Template.Update

{- $resources
TODO
-}

type FusionTablesAPI =
     StyleInsertResource :<|> StyleListResource :<|>
       StylePatchResource
       :<|> StyleGetResource
       :<|> StyleDeleteResource
       :<|> StyleUpdateResource
       :<|> QuerySqlGetResource
       :<|> QuerySqlResource
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

fusionTablesAPI :: Proxy FusionTablesAPI
fusionTablesAPI = Proxy
