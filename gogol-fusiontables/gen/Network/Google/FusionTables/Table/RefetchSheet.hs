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
-- Module      : Network.Google.FusionTables.Table.RefetchSheet
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces rows of the table with the rows of the spreadsheet that is first imported from. Current rows remain visible until all replacement rows are ready.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.refetchSheet@.
module Network.Google.FusionTables.Table.RefetchSheet
  ( -- * Resource
    FusionTablesTableRefetchSheetResource,

    -- ** Constructing a Request
    newFusionTablesTableRefetchSheet,
    FusionTablesTableRefetchSheet,
  )
where

import Network.Google.FusionTables.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @fusiontables.table.refetchSheet@ method which the
-- 'FusionTablesTableRefetchSheet' request conforms to.
type FusionTablesTableRefetchSheetResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "refetch"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Task

-- | Replaces rows of the table with the rows of the spreadsheet that is first imported from. Current rows remain visible until all replacement rows are ready.
--
-- /See:/ 'newFusionTablesTableRefetchSheet' smart constructor.
newtype FusionTablesTableRefetchSheet = FusionTablesTableRefetchSheet
  { -- | Table whose rows will be replaced from the spreadsheet.
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTableRefetchSheet' with the minimum fields required to make a request.
newFusionTablesTableRefetchSheet ::
  -- |  Table whose rows will be replaced from the spreadsheet. See 'tableId'.
  Core.Text ->
  FusionTablesTableRefetchSheet
newFusionTablesTableRefetchSheet tableId =
  FusionTablesTableRefetchSheet {tableId = tableId}

instance
  Core.GoogleRequest
    FusionTablesTableRefetchSheet
  where
  type Rs FusionTablesTableRefetchSheet = Task
  type
    Scopes FusionTablesTableRefetchSheet =
      '["https://www.googleapis.com/auth/fusiontables"]
  requestClient FusionTablesTableRefetchSheet {..} =
    go
      tableId
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesTableRefetchSheetResource
          )
          Core.mempty
