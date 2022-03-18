{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FusionTables.Table.Copy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies a table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.copy@.
module Gogol.FusionTables.Table.Copy
    (
    -- * Resource
      FusionTablesTableCopyResource

    -- ** Constructing a Request
    , newFusionTablesTableCopy
    , FusionTablesTableCopy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FusionTables.Types

-- | A resource alias for @fusiontables.table.copy@ method which the
-- 'FusionTablesTableCopy' request conforms to.
type FusionTablesTableCopyResource =
     "fusiontables" Core.:>
       "v2" Core.:>
         "tables" Core.:>
           Core.Capture "tableId" Core.Text Core.:>
             "copy" Core.:>
               Core.QueryParam "copyPresentation" Core.Bool Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.Post '[Core.JSON] Table

-- | Copies a table.
--
-- /See:/ 'newFusionTablesTableCopy' smart constructor.
data FusionTablesTableCopy = FusionTablesTableCopy
    {
      -- | Whether to also copy tabs, styles, and templates. Default is false.
      copyPresentation :: (Core.Maybe Core.Bool)
      -- | ID of the table that is being copied.
    , tableId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesTableCopy' with the minimum fields required to make a request.
newFusionTablesTableCopy 
    ::  Core.Text
       -- ^  ID of the table that is being copied. See 'tableId'.
    -> FusionTablesTableCopy
newFusionTablesTableCopy tableId =
  FusionTablesTableCopy {copyPresentation = Core.Nothing, tableId = tableId}

instance Core.GoogleRequest FusionTablesTableCopy
         where
        type Rs FusionTablesTableCopy = Table
        type Scopes FusionTablesTableCopy =
             '["https://www.googleapis.com/auth/fusiontables",
               "https://www.googleapis.com/auth/fusiontables.readonly"]
        requestClient FusionTablesTableCopy{..}
          = go tableId copyPresentation
              (Core.Just Core.AltJSON)
              fusionTablesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy FusionTablesTableCopyResource)
                      Core.mempty

