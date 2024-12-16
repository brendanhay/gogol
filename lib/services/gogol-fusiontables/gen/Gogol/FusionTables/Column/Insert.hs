{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.FusionTables.Column.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new column to the table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.column.insert@.
module Gogol.FusionTables.Column.Insert
    (
    -- * Resource
      FusionTablesColumnInsertResource

    -- ** Constructing a Request
    , FusionTablesColumnInsert (..)
    , newFusionTablesColumnInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FusionTables.Types

-- | A resource alias for @fusiontables.column.insert@ method which the
-- 'FusionTablesColumnInsert' request conforms to.
type FusionTablesColumnInsertResource =
     "fusiontables" Core.:>
       "v2" Core.:>
         "tables" Core.:>
           Core.Capture "tableId" Core.Text Core.:>
             "columns" Core.:>
               Core.QueryParam "alt" Core.AltJSON Core.:>
                 Core.ReqBody '[Core.JSON] Column Core.:>
                   Core.Post '[Core.JSON] Column

-- | Adds a new column to the table.
--
-- /See:/ 'newFusionTablesColumnInsert' smart constructor.
data FusionTablesColumnInsert = FusionTablesColumnInsert
    {
      -- | Multipart request metadata.
      payload :: Column
      -- | Table for which a new column is being added.
    , tableId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesColumnInsert' with the minimum fields required to make a request.
newFusionTablesColumnInsert 
    ::  Column
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Table for which a new column is being added. See 'tableId'.
    -> FusionTablesColumnInsert
newFusionTablesColumnInsert payload tableId =
  FusionTablesColumnInsert {payload = payload, tableId = tableId}

instance Core.GoogleRequest FusionTablesColumnInsert
         where
        type Rs FusionTablesColumnInsert = Column
        type Scopes FusionTablesColumnInsert =
             '[Fusiontables'FullControl]
        requestClient FusionTablesColumnInsert{..}
          = go tableId (Core.Just Core.AltJSON) payload
              fusionTablesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy FusionTablesColumnInsertResource)
                      Core.mempty

