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
-- Module      : Gogol.FusionTables
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- API for working with Fusion Tables data.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference>
module Gogol.FusionTables
  ( -- * Configuration
    fusionTablesService,

    -- * OAuth Scopes
    Fusiontables'FullControl,
    Fusiontables'Readonly,

    -- * Resources

    -- ** fusiontables.column.delete
    FusionTablesColumnDeleteResource,
    FusionTablesColumnDelete (..),
    newFusionTablesColumnDelete,

    -- ** fusiontables.column.get
    FusionTablesColumnGetResource,
    FusionTablesColumnGet (..),
    newFusionTablesColumnGet,

    -- ** fusiontables.column.insert
    FusionTablesColumnInsertResource,
    FusionTablesColumnInsert (..),
    newFusionTablesColumnInsert,

    -- ** fusiontables.column.list
    FusionTablesColumnListResource,
    FusionTablesColumnList (..),
    newFusionTablesColumnList,

    -- ** fusiontables.column.patch
    FusionTablesColumnPatchResource,
    FusionTablesColumnPatch (..),
    newFusionTablesColumnPatch,

    -- ** fusiontables.column.update
    FusionTablesColumnUpdateResource,
    FusionTablesColumnUpdate (..),
    newFusionTablesColumnUpdate,

    -- ** fusiontables.query.sql
    FusionTablesQuerySqlResource,
    FusionTablesQuerySql (..),
    newFusionTablesQuerySql,

    -- ** fusiontables.query.sqlGet
    FusionTablesQuerySqlGetResource,
    FusionTablesQuerySqlGet (..),
    newFusionTablesQuerySqlGet,

    -- ** fusiontables.style.delete
    FusionTablesStyleDeleteResource,
    FusionTablesStyleDelete (..),
    newFusionTablesStyleDelete,

    -- ** fusiontables.style.get
    FusionTablesStyleGetResource,
    FusionTablesStyleGet (..),
    newFusionTablesStyleGet,

    -- ** fusiontables.style.insert
    FusionTablesStyleInsertResource,
    FusionTablesStyleInsert (..),
    newFusionTablesStyleInsert,

    -- ** fusiontables.style.list
    FusionTablesStyleListResource,
    FusionTablesStyleList (..),
    newFusionTablesStyleList,

    -- ** fusiontables.style.patch
    FusionTablesStylePatchResource,
    FusionTablesStylePatch (..),
    newFusionTablesStylePatch,

    -- ** fusiontables.style.update
    FusionTablesStyleUpdateResource,
    FusionTablesStyleUpdate (..),
    newFusionTablesStyleUpdate,

    -- ** fusiontables.table.copy
    FusionTablesTableCopyResource,
    FusionTablesTableCopy (..),
    newFusionTablesTableCopy,

    -- ** fusiontables.table.delete
    FusionTablesTableDeleteResource,
    FusionTablesTableDelete (..),
    newFusionTablesTableDelete,

    -- ** fusiontables.table.get
    FusionTablesTableGetResource,
    FusionTablesTableGet (..),
    newFusionTablesTableGet,

    -- ** fusiontables.table.importRows
    FusionTablesTableImportRowsResource,
    FusionTablesTableImportRows (..),
    newFusionTablesTableImportRows,

    -- ** fusiontables.table.importTable
    FusionTablesTableImportTableResource,
    FusionTablesTableImportTable (..),
    newFusionTablesTableImportTable,

    -- ** fusiontables.table.insert
    FusionTablesTableInsertResource,
    FusionTablesTableInsert (..),
    newFusionTablesTableInsert,

    -- ** fusiontables.table.list
    FusionTablesTableListResource,
    FusionTablesTableList (..),
    newFusionTablesTableList,

    -- ** fusiontables.table.patch
    FusionTablesTablePatchResource,
    FusionTablesTablePatch (..),
    newFusionTablesTablePatch,

    -- ** fusiontables.table.refetchSheet
    FusionTablesTableRefetchSheetResource,
    FusionTablesTableRefetchSheet (..),
    newFusionTablesTableRefetchSheet,

    -- ** fusiontables.table.replaceRows
    FusionTablesTableReplaceRowsResource,
    FusionTablesTableReplaceRows (..),
    newFusionTablesTableReplaceRows,

    -- ** fusiontables.table.update
    FusionTablesTableUpdateResource,
    FusionTablesTableUpdate (..),
    newFusionTablesTableUpdate,

    -- ** fusiontables.task.delete
    FusionTablesTaskDeleteResource,
    FusionTablesTaskDelete (..),
    newFusionTablesTaskDelete,

    -- ** fusiontables.task.get
    FusionTablesTaskGetResource,
    FusionTablesTaskGet (..),
    newFusionTablesTaskGet,

    -- ** fusiontables.task.list
    FusionTablesTaskListResource,
    FusionTablesTaskList (..),
    newFusionTablesTaskList,

    -- ** fusiontables.template.delete
    FusionTablesTemplateDeleteResource,
    FusionTablesTemplateDelete (..),
    newFusionTablesTemplateDelete,

    -- ** fusiontables.template.get
    FusionTablesTemplateGetResource,
    FusionTablesTemplateGet (..),
    newFusionTablesTemplateGet,

    -- ** fusiontables.template.insert
    FusionTablesTemplateInsertResource,
    FusionTablesTemplateInsert (..),
    newFusionTablesTemplateInsert,

    -- ** fusiontables.template.list
    FusionTablesTemplateListResource,
    FusionTablesTemplateList (..),
    newFusionTablesTemplateList,

    -- ** fusiontables.template.patch
    FusionTablesTemplatePatchResource,
    FusionTablesTemplatePatch (..),
    newFusionTablesTemplatePatch,

    -- ** fusiontables.template.update
    FusionTablesTemplateUpdateResource,
    FusionTablesTemplateUpdate (..),
    newFusionTablesTemplateUpdate,

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

import Gogol.FusionTables.Column.Delete
import Gogol.FusionTables.Column.Get
import Gogol.FusionTables.Column.Insert
import Gogol.FusionTables.Column.List
import Gogol.FusionTables.Column.Patch
import Gogol.FusionTables.Column.Update
import Gogol.FusionTables.Query.Sql
import Gogol.FusionTables.Query.SqlGet
import Gogol.FusionTables.Style.Delete
import Gogol.FusionTables.Style.Get
import Gogol.FusionTables.Style.Insert
import Gogol.FusionTables.Style.List
import Gogol.FusionTables.Style.Patch
import Gogol.FusionTables.Style.Update
import Gogol.FusionTables.Table.Copy
import Gogol.FusionTables.Table.Delete
import Gogol.FusionTables.Table.Get
import Gogol.FusionTables.Table.ImportRows
import Gogol.FusionTables.Table.ImportTable
import Gogol.FusionTables.Table.Insert
import Gogol.FusionTables.Table.List
import Gogol.FusionTables.Table.Patch
import Gogol.FusionTables.Table.RefetchSheet
import Gogol.FusionTables.Table.ReplaceRows
import Gogol.FusionTables.Table.Update
import Gogol.FusionTables.Task.Delete
import Gogol.FusionTables.Task.Get
import Gogol.FusionTables.Task.List
import Gogol.FusionTables.Template.Delete
import Gogol.FusionTables.Template.Get
import Gogol.FusionTables.Template.Insert
import Gogol.FusionTables.Template.List
import Gogol.FusionTables.Template.Patch
import Gogol.FusionTables.Template.Update
import Gogol.FusionTables.Types
