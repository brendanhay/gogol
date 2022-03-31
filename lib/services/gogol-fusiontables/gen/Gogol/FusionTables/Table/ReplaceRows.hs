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
-- Module      : Gogol.FusionTables.Table.ReplaceRows
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces rows of an existing table. Current rows remain visible until all replacement rows are ready.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.replaceRows@.
module Gogol.FusionTables.Table.ReplaceRows
  ( -- * Resource
    FusionTablesTableReplaceRowsResource,

    -- ** Constructing a Request
    newFusionTablesTableReplaceRows,
    FusionTablesTableReplaceRows,
  )
where

import Gogol.FusionTables.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @fusiontables.table.replaceRows@ method which the
-- 'FusionTablesTableReplaceRows' request conforms to.
type FusionTablesTableReplaceRowsResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "replace"
    Core.:> Core.QueryParam "delimiter" Core.Text
    Core.:> Core.QueryParam "encoding" Core.Text
    Core.:> Core.QueryParam "endLine" Core.Int32
    Core.:> Core.QueryParam "isStrict" Core.Bool
    Core.:> Core.QueryParam "startLine" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Task
    Core.:<|> "upload"
      Core.:> "fusiontables"
      Core.:> "v2"
      Core.:> "tables"
      Core.:> Core.Capture "tableId" Core.Text
      Core.:> "replace"
      Core.:> Core.QueryParam "delimiter" Core.Text
      Core.:> Core.QueryParam "encoding" Core.Text
      Core.:> Core.QueryParam "endLine" Core.Int32
      Core.:> Core.QueryParam "isStrict" Core.Bool
      Core.:> Core.QueryParam "startLine" Core.Int32
      Core.:> Core.QueryParam "alt" Core.AltJSON
      Core.:> Core.QueryParam "uploadType" Core.AltMedia
      Core.:> Core.AltMedia
      Core.:> Core.Post '[Core.JSON] Task

-- | Replaces rows of an existing table. Current rows remain visible until all replacement rows are ready.
--
-- /See:/ 'newFusionTablesTableReplaceRows' smart constructor.
data FusionTablesTableReplaceRows = FusionTablesTableReplaceRows
  { -- | The delimiter used to separate cell values. This can only consist of a single character. Default is ,.
    delimiter :: (Core.Maybe Core.Text),
    -- | The encoding of the content. Default is UTF-8. Use \'auto-detect\' if you are unsure of the encoding.
    encoding :: (Core.Maybe Core.Text),
    -- | The index of the line up to which data will be imported. Default is to import the entire file. If endLine is negative, it is an offset from the end of the file; the imported content will exclude the last endLine lines.
    endLine :: (Core.Maybe Core.Int32),
    -- | Whether the imported CSV must have the same number of column values for each row. If true, throws an exception if the CSV does not have the same number of columns. If false, rows with fewer column values will be padded with empty values. Default is true.
    isStrict :: (Core.Maybe Core.Bool),
    -- | The index of the first line from which to start importing, inclusive. Default is 0.
    startLine :: (Core.Maybe Core.Int32),
    -- | Table whose rows will be replaced.
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTableReplaceRows' with the minimum fields required to make a request.
newFusionTablesTableReplaceRows ::
  -- |  Table whose rows will be replaced. See 'tableId'.
  Core.Text ->
  FusionTablesTableReplaceRows
newFusionTablesTableReplaceRows tableId =
  FusionTablesTableReplaceRows
    { delimiter = Core.Nothing,
      encoding = Core.Nothing,
      endLine = Core.Nothing,
      isStrict = Core.Nothing,
      startLine = Core.Nothing,
      tableId = tableId
    }

instance
  Core.GoogleRequest
    FusionTablesTableReplaceRows
  where
  type Rs FusionTablesTableReplaceRows = Task
  type
    Scopes FusionTablesTableReplaceRows =
      '[Fusiontables'FullControl]
  requestClient FusionTablesTableReplaceRows {..} =
    go
      tableId
      delimiter
      encoding
      endLine
      isStrict
      startLine
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go Core.:<|> _ =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesTableReplaceRowsResource
          )
          Core.mempty

instance
  Core.GoogleRequest
    (Core.MediaUpload FusionTablesTableReplaceRows)
  where
  type
    Rs
      (Core.MediaUpload FusionTablesTableReplaceRows) =
      Task
  type
    Scopes
      (Core.MediaUpload FusionTablesTableReplaceRows) =
      Core.Scopes FusionTablesTableReplaceRows
  requestClient
    ( Core.MediaUpload
        FusionTablesTableReplaceRows {..}
        body
      ) =
      go
        tableId
        delimiter
        encoding
        endLine
        isStrict
        startLine
        (Core.Just Core.AltJSON)
        (Core.Just Core.AltMedia)
        body
        fusionTablesService
      where
        _ Core.:<|> go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy FusionTablesTableReplaceRowsResource
            )
            Core.mempty
