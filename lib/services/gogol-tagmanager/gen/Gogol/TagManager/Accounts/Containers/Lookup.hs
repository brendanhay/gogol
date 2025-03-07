{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.TagManager.Accounts.Containers.Lookup
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up a Container by destination ID or tag ID.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.lookup@.
module Gogol.TagManager.Accounts.Containers.Lookup
  ( -- * Resource
    TagManagerAccountsContainersLookupResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersLookup (..),
    newTagManagerAccountsContainersLookup,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.lookup@ method which the
-- 'TagManagerAccountsContainersLookup' request conforms to.
type TagManagerAccountsContainersLookupResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> "accounts"
    Core.:> "containers:lookup"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "destinationId" Core.Text
    Core.:> Core.QueryParam "tagId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Container

-- | Looks up a Container by destination ID or tag ID.
--
-- /See:/ 'newTagManagerAccountsContainersLookup' smart constructor.
data TagManagerAccountsContainersLookup = TagManagerAccountsContainersLookup
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Destination ID linked to a GTM Container, e.g. AW-123456789. Example: accounts\/containers:lookup?destination/id={destination/id}. Only one of destination/id or tag/id should be set.
    destinationId :: (Core.Maybe Core.Text),
    -- | Tag ID for a GTM Container, e.g. GTM-123456789. Example: accounts\/containers:lookup?tag/id={tag/id}. Only one of destination/id or tag/id should be set.
    tagId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersLookup' with the minimum fields required to make a request.
newTagManagerAccountsContainersLookup ::
  TagManagerAccountsContainersLookup
newTagManagerAccountsContainersLookup =
  TagManagerAccountsContainersLookup
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      destinationId = Core.Nothing,
      tagId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TagManagerAccountsContainersLookup where
  type Rs TagManagerAccountsContainersLookup = Container
  type
    Scopes TagManagerAccountsContainersLookup =
      '[Tagmanager'Edit'Containers, Tagmanager'Readonly]
  requestClient TagManagerAccountsContainersLookup {..} =
    go
      xgafv
      accessToken
      callback
      destinationId
      tagId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      tagManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TagManagerAccountsContainersLookupResource
          )
          Core.mempty
