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
-- Module      : Gogol.TagManager.Accounts.Containers.Versions.Publish
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Publishes a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.versions.publish@.
module Gogol.TagManager.Accounts.Containers.Versions.Publish
  ( -- * Resource
    TagManagerAccountsContainersVersionsPublishResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersVersionsPublish (..),
    newTagManagerAccountsContainersVersionsPublish,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.publish@ method which the
-- 'TagManagerAccountsContainersVersionsPublish' request conforms to.
type TagManagerAccountsContainersVersionsPublishResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.CaptureMode "path" "publish" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "fingerprint" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] PublishContainerVersionResponse

-- | Publishes a Container Version.
--
-- /See:/ 'newTagManagerAccountsContainersVersionsPublish' smart constructor.
data TagManagerAccountsContainersVersionsPublish = TagManagerAccountsContainersVersionsPublish
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When provided, this fingerprint must match the fingerprint of the container version in storage.
    fingerprint :: (Core.Maybe Core.Text),
    -- | GTM ContainerVersion\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/versions\/{version_id}
    path :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersVersionsPublish' with the minimum fields required to make a request.
newTagManagerAccountsContainersVersionsPublish ::
  -- |  GTM ContainerVersion\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/versions\/{version_id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersVersionsPublish
newTagManagerAccountsContainersVersionsPublish path =
  TagManagerAccountsContainersVersionsPublish
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      fingerprint = Core.Nothing,
      path = path,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersVersionsPublish
  where
  type
    Rs TagManagerAccountsContainersVersionsPublish =
      PublishContainerVersionResponse
  type
    Scopes TagManagerAccountsContainersVersionsPublish =
      '[Tagmanager'Publish]
  requestClient TagManagerAccountsContainersVersionsPublish {..} =
    go
      path
      xgafv
      accessToken
      callback
      fingerprint
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      tagManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TagManagerAccountsContainersVersionsPublishResource
          )
          Core.mempty
