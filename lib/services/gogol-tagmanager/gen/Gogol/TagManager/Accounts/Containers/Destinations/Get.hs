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
-- Module      : Gogol.TagManager.Accounts.Containers.Destinations.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Destination.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.destinations.get@.
module Gogol.TagManager.Accounts.Containers.Destinations.Get
  ( -- * Resource
    TagManagerAccountsContainersDestinationsGetResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersDestinationsGet (..),
    newTagManagerAccountsContainersDestinationsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.destinations.get@ method which the
-- 'TagManagerAccountsContainersDestinationsGet' request conforms to.
type TagManagerAccountsContainersDestinationsGetResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "path" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Destination

-- | Gets a Destination.
--
-- /See:/ 'newTagManagerAccountsContainersDestinationsGet' smart constructor.
data TagManagerAccountsContainersDestinationsGet = TagManagerAccountsContainersDestinationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Google Tag Destination\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/destinations\/{destination/link/id}
    path :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersDestinationsGet' with the minimum fields required to make a request.
newTagManagerAccountsContainersDestinationsGet ::
  -- |  Google Tag Destination\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/destinations\/{destination/link/id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersDestinationsGet
newTagManagerAccountsContainersDestinationsGet path =
  TagManagerAccountsContainersDestinationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      path = path,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersDestinationsGet
  where
  type Rs TagManagerAccountsContainersDestinationsGet = Destination
  type
    Scopes TagManagerAccountsContainersDestinationsGet =
      '[Tagmanager'Edit'Containers, Tagmanager'Readonly]
  requestClient TagManagerAccountsContainersDestinationsGet {..} =
    go
      path
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      tagManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TagManagerAccountsContainersDestinationsGetResource
          )
          Core.mempty
