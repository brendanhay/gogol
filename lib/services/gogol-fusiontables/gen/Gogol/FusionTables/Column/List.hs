{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.FusionTables.Column.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of columns.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.column.list@.
module Gogol.FusionTables.Column.List
  ( -- * Resource
    FusionTablesColumnListResource,

    -- ** Constructing a Request
    FusionTablesColumnList (..),
    newFusionTablesColumnList,
  )
where

import Gogol.FusionTables.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @fusiontables.column.list@ method which the
-- 'FusionTablesColumnList' request conforms to.
type FusionTablesColumnListResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "columns"
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ColumnList

-- | Retrieves a list of columns.
--
-- /See:/ 'newFusionTablesColumnList' smart constructor.
data FusionTablesColumnList = FusionTablesColumnList
  { -- | Maximum number of columns to return. Default is 5.
    maxResults :: (Core.Maybe Core.Word32),
    -- | Continuation token specifying which result page to return.
    pageToken :: (Core.Maybe Core.Text),
    -- | Table whose columns are being listed.
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesColumnList' with the minimum fields required to make a request.
newFusionTablesColumnList ::
  -- |  Table whose columns are being listed. See 'tableId'.
  Core.Text ->
  FusionTablesColumnList
newFusionTablesColumnList tableId =
  FusionTablesColumnList
    { maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      tableId = tableId
    }

instance Core.GoogleRequest FusionTablesColumnList where
  type Rs FusionTablesColumnList = ColumnList
  type
    Scopes FusionTablesColumnList =
      '[Fusiontables'FullControl, Fusiontables'Readonly]
  requestClient FusionTablesColumnList {..} =
    go
      tableId
      maxResults
      pageToken
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FusionTablesColumnListResource)
          Core.mempty
