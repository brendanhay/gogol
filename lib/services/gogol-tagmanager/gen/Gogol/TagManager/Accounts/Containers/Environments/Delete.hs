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
-- Module      : Gogol.TagManager.Accounts.Containers.Environments.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GTM Environment.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.environments.delete@.
module Gogol.TagManager.Accounts.Containers.Environments.Delete
  ( -- * Resource
    TagManagerAccountsContainersEnvironmentsDeleteResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersEnvironmentsDelete (..),
    newTagManagerAccountsContainersEnvironmentsDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.delete@ method which the
-- 'TagManagerAccountsContainersEnvironmentsDelete' request conforms to.
type TagManagerAccountsContainersEnvironmentsDeleteResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "path" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a GTM Environment.
--
-- /See:/ 'newTagManagerAccountsContainersEnvironmentsDelete' smart constructor.
data TagManagerAccountsContainersEnvironmentsDelete = TagManagerAccountsContainersEnvironmentsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | GTM Environment\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/environments\/{environment_id}
    path :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersEnvironmentsDelete' with the minimum fields required to make a request.
newTagManagerAccountsContainersEnvironmentsDelete ::
  -- |  GTM Environment\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/environments\/{environment_id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersEnvironmentsDelete
newTagManagerAccountsContainersEnvironmentsDelete path =
  TagManagerAccountsContainersEnvironmentsDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      path = path,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersEnvironmentsDelete
  where
  type Rs TagManagerAccountsContainersEnvironmentsDelete = ()
  type
    Scopes TagManagerAccountsContainersEnvironmentsDelete =
      '[Tagmanager'Edit'Containers]
  requestClient TagManagerAccountsContainersEnvironmentsDelete {..} =
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
              Core.Proxy TagManagerAccountsContainersEnvironmentsDeleteResource
          )
          Core.mempty
