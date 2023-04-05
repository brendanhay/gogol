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
-- Module      : Gogol.TagManager.Accounts.Containers.Destinations.Link
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a Destination to this Container and removes it from the Container to which it is currently linked.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.destinations.link@.
module Gogol.TagManager.Accounts.Containers.Destinations.Link
  ( -- * Resource
    TagManagerAccountsContainersDestinationsLinkResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersDestinationsLink (..),
    newTagManagerAccountsContainersDestinationsLink,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.destinations.link@ method which the
-- 'TagManagerAccountsContainersDestinationsLink' request conforms to.
type TagManagerAccountsContainersDestinationsLinkResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "destinations:link"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam
              "allowUserPermissionFeatureUpdate"
              Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "destinationId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Destination

-- | Adds a Destination to this Container and removes it from the Container to which it is currently linked.
--
-- /See:/ 'newTagManagerAccountsContainersDestinationsLink' smart constructor.
data TagManagerAccountsContainersDestinationsLink = TagManagerAccountsContainersDestinationsLink
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Must be set to true to allow features.user_permissions to change from false to true. If this operation causes an update but this bit is false, the operation will fail.
    allowUserPermissionFeatureUpdate :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Destination ID to be linked to the current container.
    destinationId :: (Core.Maybe Core.Text),
    -- | GTM parent Container\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersDestinationsLink' with the minimum fields required to make a request.
newTagManagerAccountsContainersDestinationsLink ::
  -- |  GTM parent Container\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id} See 'parent'.
  Core.Text ->
  TagManagerAccountsContainersDestinationsLink
newTagManagerAccountsContainersDestinationsLink parent =
  TagManagerAccountsContainersDestinationsLink
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      allowUserPermissionFeatureUpdate = Core.Nothing,
      callback = Core.Nothing,
      destinationId = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersDestinationsLink
  where
  type
    Rs TagManagerAccountsContainersDestinationsLink =
      Destination
  type
    Scopes
      TagManagerAccountsContainersDestinationsLink =
      '[Tagmanager'Edit'Containers]
  requestClient
    TagManagerAccountsContainersDestinationsLink {..} =
      go
        parent
        xgafv
        accessToken
        allowUserPermissionFeatureUpdate
        callback
        destinationId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        tagManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  TagManagerAccountsContainersDestinationsLinkResource
            )
            Core.mempty
