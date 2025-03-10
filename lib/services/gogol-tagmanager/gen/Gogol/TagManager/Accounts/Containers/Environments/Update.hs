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
-- Module      : Gogol.TagManager.Accounts.Containers.Environments.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Environment.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.environments.update@.
module Gogol.TagManager.Accounts.Containers.Environments.Update
  ( -- * Resource
    TagManagerAccountsContainersEnvironmentsUpdateResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersEnvironmentsUpdate (..),
    newTagManagerAccountsContainersEnvironmentsUpdate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.update@ method which the
-- 'TagManagerAccountsContainersEnvironmentsUpdate' request conforms to.
type TagManagerAccountsContainersEnvironmentsUpdateResource =
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
    Core.:> Core.ReqBody '[Core.JSON] Environment
    Core.:> Core.Put '[Core.JSON] Environment

-- | Updates a GTM Environment.
--
-- /See:/ 'newTagManagerAccountsContainersEnvironmentsUpdate' smart constructor.
data TagManagerAccountsContainersEnvironmentsUpdate = TagManagerAccountsContainersEnvironmentsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | When provided, this fingerprint must match the fingerprint of the environment in storage.
    fingerprint :: (Core.Maybe Core.Text),
    -- | GTM Environment\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/environments\/{environment_id}
    path :: Core.Text,
    -- | Multipart request metadata.
    payload :: Environment,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersEnvironmentsUpdate' with the minimum fields required to make a request.
newTagManagerAccountsContainersEnvironmentsUpdate ::
  -- |  GTM Environment\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/environments\/{environment_id} See 'path'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Environment ->
  TagManagerAccountsContainersEnvironmentsUpdate
newTagManagerAccountsContainersEnvironmentsUpdate path payload =
  TagManagerAccountsContainersEnvironmentsUpdate
    { xgafv =
        Core.Nothing,
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
    TagManagerAccountsContainersEnvironmentsUpdate
  where
  type
    Rs TagManagerAccountsContainersEnvironmentsUpdate =
      Environment
  type
    Scopes TagManagerAccountsContainersEnvironmentsUpdate =
      '[Tagmanager'Edit'Containers]
  requestClient TagManagerAccountsContainersEnvironmentsUpdate {..} =
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
              Core.Proxy TagManagerAccountsContainersEnvironmentsUpdateResource
          )
          Core.mempty
