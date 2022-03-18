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
-- Module      : Network.Google.TagManager.Accounts.Containers.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.update@.
module Network.Google.TagManager.Accounts.Containers.Update
  ( -- * Resource
    TagManagerAccountsContainersUpdateResource,

    -- ** Constructing a Request
    newTagManagerAccountsContainersUpdate,
    TagManagerAccountsContainersUpdate,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.update@ method which the
-- 'TagManagerAccountsContainersUpdate' request conforms to.
type TagManagerAccountsContainersUpdateResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "path" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "fingerprint" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Container
    Core.:> Core.Put '[Core.JSON] Container

-- | Updates a Container.
--
-- /See:/ 'newTagManagerAccountsContainersUpdate' smart constructor.
data TagManagerAccountsContainersUpdate = TagManagerAccountsContainersUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When provided, this fingerprint must match the fingerprint of the container in storage.
    fingerprint :: (Core.Maybe Core.Text),
    -- | GTM Container\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}
    path :: Core.Text,
    -- | Multipart request metadata.
    payload :: Container,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersUpdate' with the minimum fields required to make a request.
newTagManagerAccountsContainersUpdate ::
  -- |  GTM Container\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id} See 'path'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Container ->
  TagManagerAccountsContainersUpdate
newTagManagerAccountsContainersUpdate path payload =
  TagManagerAccountsContainersUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      fingerprint = Core.Nothing,
      path = path,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersUpdate
  where
  type
    Rs TagManagerAccountsContainersUpdate =
      Container
  type
    Scopes TagManagerAccountsContainersUpdate =
      '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
  requestClient TagManagerAccountsContainersUpdate {..} =
    go
      path
      xgafv
      accessToken
      callback
      fingerprint
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      tagManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                TagManagerAccountsContainersUpdateResource
          )
          Core.mempty
