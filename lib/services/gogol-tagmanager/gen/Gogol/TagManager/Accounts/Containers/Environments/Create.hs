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
-- Module      : Gogol.TagManager.Accounts.Containers.Environments.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GTM Environment.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.environments.create@.
module Gogol.TagManager.Accounts.Containers.Environments.Create
  ( -- * Resource
    TagManagerAccountsContainersEnvironmentsCreateResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersEnvironmentsCreate (..),
    newTagManagerAccountsContainersEnvironmentsCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.create@ method which the
-- 'TagManagerAccountsContainersEnvironmentsCreate' request conforms to.
type TagManagerAccountsContainersEnvironmentsCreateResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "environments"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Environment
    Core.:> Core.Post '[Core.JSON] Environment

-- | Creates a GTM Environment.
--
-- /See:/ 'newTagManagerAccountsContainersEnvironmentsCreate' smart constructor.
data TagManagerAccountsContainersEnvironmentsCreate = TagManagerAccountsContainersEnvironmentsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | GTM Container\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Environment,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersEnvironmentsCreate' with the minimum fields required to make a request.
newTagManagerAccountsContainersEnvironmentsCreate ::
  -- |  GTM Container\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Environment ->
  TagManagerAccountsContainersEnvironmentsCreate
newTagManagerAccountsContainersEnvironmentsCreate parent payload =
  TagManagerAccountsContainersEnvironmentsCreate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersEnvironmentsCreate
  where
  type
    Rs TagManagerAccountsContainersEnvironmentsCreate =
      Environment
  type
    Scopes TagManagerAccountsContainersEnvironmentsCreate =
      '[Tagmanager'Edit'Containers]
  requestClient TagManagerAccountsContainersEnvironmentsCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      tagManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TagManagerAccountsContainersEnvironmentsCreateResource
          )
          Core.mempty
