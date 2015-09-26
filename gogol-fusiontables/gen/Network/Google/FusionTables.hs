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
    -- * Resources
      FusionTables
    , StyleAPI
    , StyleInsert
    , StyleList
    , StylePatch
    , StyleGet
    , StyleDelete
    , StyleUpdate
    , QueryAPI
    , QuerySqlGet
    , QuerySql
    , TaskAPI
    , TaskList
    , TaskGet
    , TaskDelete
    , TemplateAPI
    , TemplateInsert
    , TemplateList
    , TemplatePatch
    , TemplateGet
    , TemplateDelete
    , TemplateUpdate
    , ColumnAPI
    , ColumnInsert
    , ColumnList
    , ColumnPatch
    , ColumnGet
    , ColumnDelete
    , ColumnUpdate
    , TableAPI
    , TableInsert
    , TableList
    , TableCopy
    , TableReplaceRows
    , TableImportTable
    , TablePatch
    , TableGet
    , TableImportRows
    , TableDelete
    , TableUpdate

    -- * Types

    -- ** Bucket
    , Bucket
    , bucket
    , bMax
    , bColor
    , bWeight
    , bIcon
    , bOpacity
    , bMin

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

    -- ** ColumnBaseColumn
    , ColumnBaseColumn
    , columnBaseColumn
    , cbcTableIndex
    , cbcColumnId

    -- ** ColumnList
    , ColumnList
    , columnList
    , clTotalItems
    , clNextPageToken
    , clKind
    , clItems

    -- ** Geometry
    , Geometry
    , geometry
    , gGeometries
    , gGeometry
    , gType

    -- ** Import
    , Import
    , import'
    , iKind
    , iNumRowsReceived

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

    -- ** Point
    , Point
    , point
    , poiCoordinates
    , poiType

    -- ** PointStyle
    , PointStyle
    , pointStyle
    , psIconName
    , psIconStyler

    -- ** Polygon
    , Polygon
    , polygon
    , pCoordinates
    , pType

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

    -- ** Sqlresponse
    , Sqlresponse
    , sqlresponse
    , sKind
    , sRows
    , sColumns

    -- ** StyleFunction
    , StyleFunction
    , styleFunction
    , sfBuckets
    , sfKind
    , sfGradient
    , sfColumnName

    -- ** StyleFunctionGradient
    , StyleFunctionGradient
    , styleFunctionGradient
    , sfgMax
    , sfgMin
    , sfgColors

    -- ** StyleFunctionItemColorsGradient
    , StyleFunctionItemColorsGradient
    , styleFunctionItemColorsGradient
    , sficgColor
    , sficgOpacity

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

    -- ** TableList
    , TableList
    , tableList
    , tabNextPageToken
    , tabKind
    , tabItems

    -- ** Task
    , Task
    , task
    , tProgress
    , tTaskId
    , tKind
    , tType
    , tStarted

    -- ** TaskList
    , TaskList
    , taskList
    , tlTotalItems
    , tlNextPageToken
    , tlKind
    , tlItems

    -- ** Template
    , Template
    , template
    , temAutomaticColumnNames
    , temTemplateId
    , temKind
    , temBody
    , temName
    , temTableId

    -- ** TemplateList
    , TemplateList
    , templateList
    , tllTotalItems
    , tllNextPageToken
    , tllKind
    , tllItems
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type FusionTables =
     QueryAPI :<|>
       TaskAPI :<|>
         TemplateAPI :<|>
           ColumnAPI :<|> TableAPI :<|> StyleAPI

type StyleAPI =
     StyleList :<|>
       StylePatch :<|>
         StyleGet :<|>
           StyleDelete :<|> StyleUpdate :<|> StyleInsert

-- | Adds a new style for the table.
type StyleInsert =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "styles"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of styles.
type StyleList =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "styles"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing style. This method supports patch semantics.
type StylePatch =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "styles"
       :> Capture "styleId" Int32
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets a specific style.
type StyleGet =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "styles"
       :> Capture "styleId" Int32
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a style.
type StyleDelete =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "styles"
       :> Capture "styleId" Int32
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing style.
type StyleUpdate =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "styles"
       :> Capture "styleId" Int32
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type QueryAPI = QuerySql :<|> QuerySqlGet

-- | Executes a SQL statement which can be any of - SELECT - SHOW - DESCRIBE
type QuerySqlGet =
     "fusiontables" :> "v2" :> "query" :>
       QueryParam "typed" Bool
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "hdrs" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "sql" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Executes a Fusion Tables SQL statement, which can be any of - SELECT -
-- INSERT - UPDATE - DELETE - SHOW - DESCRIBE - CREATE statement.
type QuerySql =
     "fusiontables" :> "v2" :> "query" :>
       QueryParam "typed" Bool
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "hdrs" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "sql" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type TaskAPI = TaskGet :<|> TaskDelete :<|> TaskList

-- | Retrieves a list of tasks.
type TaskList =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "tasks"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "startIndex" Word32
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a specific task by its ID.
type TaskGet =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "tasks"
       :> Capture "taskId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a specific task by its ID, unless that task has already started
-- running.
type TaskDelete =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "tasks"
       :> Capture "taskId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type TemplateAPI =
     TemplateList :<|>
       TemplatePatch :<|>
         TemplateGet :<|>
           TemplateDelete :<|>
             TemplateUpdate :<|> TemplateInsert

-- | Creates a new template for the table.
type TemplateInsert =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "templates"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of templates.
type TemplateList =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "templates"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing template. This method supports patch semantics.
type TemplatePatch =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "templates"
       :> Capture "templateId" Int32
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a specific template by its id
type TemplateGet =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "templates"
       :> Capture "templateId" Int32
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a template
type TemplateDelete =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "templates"
       :> Capture "templateId" Int32
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing template
type TemplateUpdate =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "templates"
       :> Capture "templateId" Int32
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ColumnAPI =
     ColumnList :<|>
       ColumnPatch :<|>
         ColumnGet :<|>
           ColumnDelete :<|> ColumnUpdate :<|> ColumnInsert

-- | Adds a new column to the table.
type ColumnInsert =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "columns"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of columns.
type ColumnList =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "columns"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates the name or type of an existing column. This method supports
-- patch semantics.
type ColumnPatch =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "columns"
       :> Capture "columnId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a specific column by its ID.
type ColumnGet =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "columns"
       :> Capture "columnId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes the specified column.
type ColumnDelete =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "columns"
       :> Capture "columnId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates the name or type of an existing column.
type ColumnUpdate =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "columns"
       :> Capture "columnId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type TableAPI =
     TableList :<|>
       TableCopy :<|>
         TableReplaceRows :<|>
           TableImportTable :<|>
             TablePatch :<|>
               TableGet :<|>
                 TableImportRows :<|>
                   TableDelete :<|> TableUpdate :<|> TableInsert

-- | Creates a new table.
type TableInsert =
     "fusiontables" :> "v2" :> "tables" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a list of tables a user owns.
type TableList =
     "fusiontables" :> "v2" :> "tables" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Copies a table.
type TableCopy =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "copy"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "copyPresentation" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Replaces rows of an existing table. Current rows remain visible until
-- all replacement rows are ready.
type TableReplaceRows =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "replace"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "startLine" Int32
       :> QueryParam "endLine" Int32
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "delimiter" Text
       :> QueryParam "encoding" Text
       :> QueryParam "isStrict" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Imports a new table.
type TableImportTable =
     "fusiontables" :> "v2" :> "tables" :> "import" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "name" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "delimiter" Text
       :> QueryParam "encoding" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing table. Unless explicitly requested, only the name,
-- description, and attribution will be updated. This method supports patch
-- semantics.
type TablePatch =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "replaceViewDefinition" Bool
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieves a specific table by its ID.
type TableGet =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Imports more rows into a table.
type TableImportRows =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> "import"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "startLine" Int32
       :> QueryParam "endLine" Int32
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "delimiter" Text
       :> QueryParam "encoding" Text
       :> QueryParam "isStrict" Bool
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a table.
type TableDelete =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates an existing table. Unless explicitly requested, only the name,
-- description, and attribution will be updated.
type TableUpdate =
     "fusiontables" :> "v2" :> "tables" :>
       Capture "tableId" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "replaceViewDefinition" Bool
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text
