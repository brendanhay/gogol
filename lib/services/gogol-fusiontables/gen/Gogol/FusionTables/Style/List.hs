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
-- Module      : Gogol.FusionTables.Style.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of styles.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.style.list@.
module Gogol.FusionTables.Style.List
    (
    -- * Resource
      FusionTablesStyleListResource

    -- ** Constructing a Request
    , FusionTablesStyleList (..)
    , newFusionTablesStyleList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.FusionTables.Types

-- | A resource alias for @fusiontables.style.list@ method which the
-- 'FusionTablesStyleList' request conforms to.
type FusionTablesStyleListResource =
     "fusiontables" Core.:>
       "v2" Core.:>
         "tables" Core.:>
           Core.Capture "tableId" Core.Text Core.:>
             "styles" Core.:>
               Core.QueryParam "maxResults" Core.Word32 Core.:>
                 Core.QueryParam "pageToken" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] StyleSettingList

-- | Retrieves a list of styles.
--
-- /See:/ 'newFusionTablesStyleList' smart constructor.
data FusionTablesStyleList = FusionTablesStyleList
    {
      -- | Maximum number of styles to return. Optional. Default is 5.
      maxResults :: (Core.Maybe Core.Word32)
      -- | Continuation token specifying which result page to return. Optional.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Table whose styles are being listed
    , tableId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FusionTablesStyleList' with the minimum fields required to make a request.
newFusionTablesStyleList 
    ::  Core.Text
       -- ^  Table whose styles are being listed See 'tableId'.
    -> FusionTablesStyleList
newFusionTablesStyleList tableId =
  FusionTablesStyleList
    {maxResults = Core.Nothing, pageToken = Core.Nothing, tableId = tableId}

instance Core.GoogleRequest FusionTablesStyleList
         where
        type Rs FusionTablesStyleList = StyleSettingList
        type Scopes FusionTablesStyleList =
             '[Fusiontables'FullControl, Fusiontables'Readonly]
        requestClient FusionTablesStyleList{..}
          = go tableId maxResults pageToken
              (Core.Just Core.AltJSON)
              fusionTablesService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy FusionTablesStyleListResource)
                      Core.mempty

