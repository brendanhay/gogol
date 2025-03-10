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
-- Module      : Gogol.Discovery.Apis.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve the list of APIs supported at this endpoint.
--
-- /See:/ <https://developers.google.com/discovery/ API Discovery Service Reference> for @discovery.apis.list@.
module Gogol.Discovery.Apis.List
  ( -- * Resource
    DiscoveryApisListResource,

    -- ** Constructing a Request
    DiscoveryApisList (..),
    newDiscoveryApisList,
  )
where

import Gogol.Discovery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @discovery.apis.list@ method which the
-- 'DiscoveryApisList' request conforms to.
type DiscoveryApisListResource =
  "discovery"
    Core.:> "v1"
    Core.:> "apis"
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "preferred" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DirectoryList

-- | Retrieve the list of APIs supported at this endpoint.
--
-- /See:/ 'newDiscoveryApisList' smart constructor.
data DiscoveryApisList = DiscoveryApisList
  { -- | Only include APIs with the given name.
    name :: (Core.Maybe Core.Text),
    -- | Return only the preferred version of an API.
    preferred :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiscoveryApisList' with the minimum fields required to make a request.
newDiscoveryApisList ::
  DiscoveryApisList
newDiscoveryApisList =
  DiscoveryApisList {name = Core.Nothing, preferred = Core.False}

instance Core.GoogleRequest DiscoveryApisList where
  type Rs DiscoveryApisList = DirectoryList
  type Scopes DiscoveryApisList = '[]
  requestClient DiscoveryApisList {..} =
    go
      name
      (Core.Just preferred)
      (Core.Just Core.AltJSON)
      discoveryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DiscoveryApisListResource)
          Core.mempty
