{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.FusionTables
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for working with Fusion Tables data.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference>
module Network.Google.FusionTables
  ( -- * Configuration
    fusionTablesService,

    -- * OAuth Scopes
    fusionTablesScope,
    fusionTablesReadOnlyScope,

    -- * Resources

    -- ** fusiontables.column.delete
    FusionTablesColumnDeleteResource,
    newFusionTablesColumnDelete,
    FusionTablesColumnDelete,

    -- ** fusiontables.column.get
    FusionTablesColumnGetResource,
    newFusionTablesColumnGet,
    FusionTablesColumnGet,

    -- ** fusiontables.column.insert
    FusionTablesColumnInsertResource,
    newFusionTablesColumnInsert,
    FusionTablesColumnInsert,

    -- ** fusiontables.column.list
    FusionTablesColumnListResource,
    newFusionTablesColumnList,
    FusionTablesColumnList,

    -- ** fusiontables.column.patch
    FusionTablesColumnPatchResource,
    newFusionTablesColumnPatch,
    FusionTablesColumnPatch,

    -- ** fusiontables.column.update
    FusionTablesColumnUpdateResource,
    newFusionTablesColumnUpdate,
    FusionTablesColumnUpdate,

    -- ** fusiontables.query.sql
    FusionTablesQuerySqlResource,
    newFusionTablesQuerySql,
    FusionTablesQuerySql,

    -- ** fusiontables.query.sqlGet
    FusionTablesQuerySqlGetResource,
    newFusionTablesQuerySqlGet,
    FusionTablesQuerySqlGet,

    -- ** fusiontables.style.delete
    FusionTablesStyleDeleteResource,
    newFusionTablesStyleDelete,
    FusionTablesStyleDelete,

    -- ** fusiontables.style.get
    FusionTablesStyleGetResource,
    newFusionTablesStyleGet,
    FusionTablesStyleGet,

    -- ** fusiontables.style.insert
    FusionTablesStyleInsertResource,
    newFusionTablesStyleInsert,
    FusionTablesStyleInsert,

    -- ** fusiontables.style.list
    FusionTablesStyleListResource,
    newFusionTablesStyleList,
    FusionTablesStyleList,

    -- ** fusiontables.style.patch
    FusionTablesStylePatchResource,
    newFusionTablesStylePatch,
    FusionTablesStylePatch,

    -- ** fusiontables.style.update
    FusionTablesStyleUpdateResource,
    newFusionTablesStyleUpdate,
    FusionTablesStyleUpdate,

    -- ** fusiontables.table.copy
    FusionTablesTableCopyResource,
    newFusionTablesTableCopy,
    FusionTablesTableCopy,

    -- ** fusiontables.table.delete
    FusionTablesTableDeleteResource,
    newFusionTablesTableDelete,
    FusionTablesTableDelete,

    -- ** fusiontables.table.get
    FusionTablesTableGetResource,
    newFusionTablesTableGet,
    FusionTablesTableGet,

    -- ** fusiontables.table.importRows
    FusionTablesTableImportRowsResource,
    newFusionTablesTableImportRows,
    FusionTablesTableImportRows,

    -- ** fusiontables.table.importTable
    FusionTablesTableImportTableResource,
    newFusionTablesTableImportTable,
    FusionTablesTableImportTable,

    -- ** fusiontables.table.insert
    FusionTablesTableInsertResource,
    newFusionTablesTableInsert,
    FusionTablesTableInsert,

    -- ** fusiontables.table.list
    FusionTablesTableListResource,
    newFusionTablesTableList,
    FusionTablesTableList,

    -- ** fusiontables.table.patch
    FusionTablesTablePatchResource,
    newFusionTablesTablePatch,
    FusionTablesTablePatch,

    -- ** fusiontables.table.refetchSheet
    FusionTablesTableRefetchSheetResource,
    newFusionTablesTableRefetchSheet,
    FusionTablesTableRefetchSheet,

    -- ** fusiontables.table.replaceRows
    FusionTablesTableReplaceRowsResource,
    newFusionTablesTableReplaceRows,
    FusionTablesTableReplaceRows,

    -- ** fusiontables.table.update
    FusionTablesTableUpdateResource,
    newFusionTablesTableUpdate,
    FusionTablesTableUpdate,

    -- ** fusiontables.task.delete
    FusionTablesTaskDeleteResource,
    newFusionTablesTaskDelete,
    FusionTablesTaskDelete,

    -- ** fusiontables.task.get
    FusionTablesTaskGetResource,
    newFusionTablesTaskGet,
    FusionTablesTaskGet,

    -- ** fusiontables.task.list
    FusionTablesTaskListResource,
    newFusionTablesTaskList,
    FusionTablesTaskList,

    -- ** fusiontables.template.delete
    FusionTablesTemplateDeleteResource,
    newFusionTablesTemplateDelete,
    FusionTablesTemplateDelete,

    -- ** fusiontables.template.get
    FusionTablesTemplateGetResource,
    newFusionTablesTemplateGet,
    FusionTablesTemplateGet,

    -- ** fusiontables.template.insert
    FusionTablesTemplateInsertResource,
    newFusionTablesTemplateInsert,
    FusionTablesTemplateInsert,

    -- ** fusiontables.template.list
    FusionTablesTemplateListResource,
    newFusionTablesTemplateList,
    FusionTablesTemplateList,

    -- ** fusiontables.template.patch
    FusionTablesTemplatePatchResource,
    newFusionTablesTemplatePatch,
    FusionTablesTemplatePatch,

    -- ** fusiontables.template.update
    FusionTablesTemplateUpdateResource,
    newFusionTablesTemplateUpdate,
    FusionTablesTemplateUpdate,

    -- * Types

    -- ** Bucket
    Bucket (..),
    newBucket,

    -- ** Column
    Column (..),
    newColumn,

    -- ** Column_BaseColumn
    Column_BaseColumn (..),
    newColumn_BaseColumn,

    -- ** ColumnList
    ColumnList (..),
    newColumnList,

    -- ** Geometry
    Geometry (..),
    newGeometry,

    -- ** Import
    Import (..),
    newImport,

    -- ** Line
    Line (..),
    newLine,

    -- ** LineStyle
    LineStyle (..),
    newLineStyle,

    -- ** Point
    Point (..),
    newPoint,

    -- ** PointStyle
    PointStyle (..),
    newPointStyle,

    -- ** Polygon
    Polygon (..),
    newPolygon,

    -- ** PolygonStyle
    PolygonStyle (..),
    newPolygonStyle,

    -- ** Sqlresponse
    Sqlresponse (..),
    newSqlresponse,

    -- ** StyleFunction
    StyleFunction (..),
    newStyleFunction,

    -- ** StyleFunction_Gradient
    StyleFunction_Gradient (..),
    newStyleFunction_Gradient,

    -- ** StyleFunction_Gradient_ColorsItem
    StyleFunction_Gradient_ColorsItem (..),
    newStyleFunction_Gradient_ColorsItem,

    -- ** StyleSetting
    StyleSetting (..),
    newStyleSetting,

    -- ** StyleSettingList
    StyleSettingList (..),
    newStyleSettingList,

    -- ** Table
    Table (..),
    newTable,

    -- ** TableList
    TableList (..),
    newTableList,

    -- ** Task
    Task (..),
    newTask,

    -- ** TaskList
    TaskList (..),
    newTaskList,

    -- ** Template
    Template (..),
    newTemplate,

    -- ** TemplateList
    TemplateList (..),
    newTemplateList,
  )
where

import Network.Google.FusionTables.Column.Delete
import Network.Google.FusionTables.Column.Get
import Network.Google.FusionTables.Column.Insert
import Network.Google.FusionTables.Column.List
import Network.Google.FusionTables.Column.Patch
import Network.Google.FusionTables.Column.Update
import Network.Google.FusionTables.Query.Sql
import Network.Google.FusionTables.Query.SqlGet
import Network.Google.FusionTables.Style.Delete
import Network.Google.FusionTables.Style.Get
import Network.Google.FusionTables.Style.Insert
import Network.Google.FusionTables.Style.List
import Network.Google.FusionTables.Style.Patch
import Network.Google.FusionTables.Style.Update
import Network.Google.FusionTables.Table.Copy
import Network.Google.FusionTables.Table.Delete
import Network.Google.FusionTables.Table.Get
import Network.Google.FusionTables.Table.ImportRows
import Network.Google.FusionTables.Table.ImportTable
import Network.Google.FusionTables.Table.Insert
import Network.Google.FusionTables.Table.List
import Network.Google.FusionTables.Table.Patch
import Network.Google.FusionTables.Table.RefetchSheet
import Network.Google.FusionTables.Table.ReplaceRows
import Network.Google.FusionTables.Table.Update
import Network.Google.FusionTables.Task.Delete
import Network.Google.FusionTables.Task.Get
import Network.Google.FusionTables.Task.List
import Network.Google.FusionTables.Template.Delete
import Network.Google.FusionTables.Template.Get
import Network.Google.FusionTables.Template.Insert
import Network.Google.FusionTables.Template.List
import Network.Google.FusionTables.Template.Patch
import Network.Google.FusionTables.Template.Update
import Network.Google.FusionTables.Types
