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
-- Module      : Gogol.FusionTables.Table.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of tables a user owns.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.list@.
module Gogol.FusionTables.Table.List
  ( -- * Resource
    FusionTablesTableListResource,

    -- ** Constructing a Request
    FusionTablesTableList (..),
    newFusionTablesTableList,
  )
where

import Gogol.FusionTables.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @fusiontables.table.list@ method which the
-- 'FusionTablesTableList' request conforms to.
type FusionTablesTableListResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TableList

-- | Retrieves a list of tables a user owns.
--
-- /See:/ 'newFusionTablesTableList' smart constructor.
data FusionTablesTableList = FusionTablesTableList
  { -- | Maximum number of tables to return. Default is 5.
    maxResults :: (Core.Maybe Core.Word32),
    -- | Continuation token specifying which result page to return.
    pageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTableList' with the minimum fields required to make a request.
newFusionTablesTableList ::
  FusionTablesTableList
newFusionTablesTableList =
  FusionTablesTableList
    { maxResults = Core.Nothing,
      pageToken = Core.Nothing
    }

instance Core.GoogleRequest FusionTablesTableList where
  type Rs FusionTablesTableList = TableList
  type
    Scopes FusionTablesTableList =
      '[Fusiontables'FullControl, Fusiontables'Readonly]
  requestClient FusionTablesTableList {..} =
    go
      maxResults
      pageToken
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FusionTablesTableListResource)
          Core.mempty
