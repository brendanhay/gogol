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
-- Module      : Network.Google.FusionTables.Style.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a style.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.style.delete@.
module Network.Google.FusionTables.Style.Delete
  ( -- * Resource
    FusionTablesStyleDeleteResource,

    -- ** Constructing a Request
    newFusionTablesStyleDelete,
    FusionTablesStyleDelete,
  )
where

import Network.Google.FusionTables.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @fusiontables.style.delete@ method which the
-- 'FusionTablesStyleDelete' request conforms to.
type FusionTablesStyleDeleteResource =
  "fusiontables"
    Core.:> "v2"
    Core.:> "tables"
    Core.:> Core.Capture "tableId" Core.Text
    Core.:> "styles"
    Core.:> Core.Capture "styleId" Core.Int32
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a style.
--
-- /See:/ 'newFusionTablesStyleDelete' smart constructor.
data FusionTablesStyleDelete = FusionTablesStyleDelete
  { -- | Identifier (within a table) for the style being deleted
    styleId :: Core.Int32,
    -- | Table from which the style is being deleted
    tableId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesStyleDelete' with the minimum fields required to make a request.
newFusionTablesStyleDelete ::
  -- |  Identifier (within a table) for the style being deleted See 'styleId'.
  Core.Int32 ->
  -- |  Table from which the style is being deleted See 'tableId'.
  Core.Text ->
  FusionTablesStyleDelete
newFusionTablesStyleDelete styleId tableId =
  FusionTablesStyleDelete {styleId = styleId, tableId = tableId}

instance Core.GoogleRequest FusionTablesStyleDelete where
  type Rs FusionTablesStyleDelete = ()
  type
    Scopes FusionTablesStyleDelete =
      '["https://www.googleapis.com/auth/fusiontables"]
  requestClient FusionTablesStyleDelete {..} =
    go
      tableId
      styleId
      (Core.Just Core.AltJSON)
      fusionTablesService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FusionTablesStyleDeleteResource
          )
          Core.mempty
