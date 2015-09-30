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
    , module FusionTables.Column.Delete

    -- ** FusiontablesColumnGet
    , module FusionTables.Column.Get

    -- ** FusiontablesColumnInsert
    , module FusionTables.Column.Insert

    -- ** FusiontablesColumnList
    , module FusionTables.Column.List

    -- ** FusiontablesColumnPatch
    , module FusionTables.Column.Patch

    -- ** FusiontablesColumnUpdate
    , module FusionTables.Column.Update

    -- ** FusiontablesQuerySql
    , module FusionTables.Query.Sql

    -- ** FusiontablesQuerySqlGet
    , module FusionTables.Query.SqlGet

    -- ** FusiontablesStyleDelete
    , module FusionTables.Style.Delete

    -- ** FusiontablesStyleGet
    , module FusionTables.Style.Get

    -- ** FusiontablesStyleInsert
    , module FusionTables.Style.Insert

    -- ** FusiontablesStyleList
    , module FusionTables.Style.List

    -- ** FusiontablesStylePatch
    , module FusionTables.Style.Patch

    -- ** FusiontablesStyleUpdate
    , module FusionTables.Style.Update

    -- ** FusiontablesTableCopy
    , module FusionTables.Table.Copy

    -- ** FusiontablesTableDelete
    , module FusionTables.Table.Delete

    -- ** FusiontablesTableGet
    , module FusionTables.Table.Get

    -- ** FusiontablesTableImportRows
    , module FusionTables.Table.ImportRows

    -- ** FusiontablesTableImportTable
    , module FusionTables.Table.ImportTable

    -- ** FusiontablesTableInsert
    , module FusionTables.Table.Insert

    -- ** FusiontablesTableList
    , module FusionTables.Table.List

    -- ** FusiontablesTablePatch
    , module FusionTables.Table.Patch

    -- ** FusiontablesTableReplaceRows
    , module FusionTables.Table.ReplaceRows

    -- ** FusiontablesTableUpdate
    , module FusionTables.Table.Update

    -- ** FusiontablesTaskDelete
    , module FusionTables.Task.Delete

    -- ** FusiontablesTaskGet
    , module FusionTables.Task.Get

    -- ** FusiontablesTaskList
    , module FusionTables.Task.List

    -- ** FusiontablesTemplateDelete
    , module FusionTables.Template.Delete

    -- ** FusiontablesTemplateGet
    , module FusionTables.Template.Get

    -- ** FusiontablesTemplateInsert
    , module FusionTables.Template.Insert

    -- ** FusiontablesTemplateList
    , module FusionTables.Template.List

    -- ** FusiontablesTemplatePatch
    , module FusionTables.Template.Patch

    -- ** FusiontablesTemplateUpdate
    , module FusionTables.Template.Update

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
     Style :<|> Query :<|> Task :<|> Template :<|> Column
       :<|> Table

fusionTablesAPI :: Proxy FusionTablesAPI
fusionTablesAPI = Proxy
