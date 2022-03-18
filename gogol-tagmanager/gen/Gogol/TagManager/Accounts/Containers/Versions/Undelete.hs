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
-- Module      : Gogol.TagManager.Accounts.Containers.Versions.Undelete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.versions.undelete@.
module Gogol.TagManager.Accounts.Containers.Versions.Undelete
  ( -- * Resource
    TagManagerAccountsContainersVersionsUndeleteResource,

    -- ** Constructing a Request
    newTagManagerAccountsContainersVersionsUndelete,
    TagManagerAccountsContainersVersionsUndelete,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.undelete@ method which the
-- 'TagManagerAccountsContainersVersionsUndelete' request conforms to.
type TagManagerAccountsContainersVersionsUndeleteResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.CaptureMode "path" "undelete" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ContainerVersion

-- | Undeletes a Container Version.
--
-- /See:/ 'newTagManagerAccountsContainersVersionsUndelete' smart constructor.
data TagManagerAccountsContainersVersionsUndelete = TagManagerAccountsContainersVersionsUndelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | GTM ContainerVersion\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/versions\/{version_id}
    path :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersVersionsUndelete' with the minimum fields required to make a request.
newTagManagerAccountsContainersVersionsUndelete ::
  -- |  GTM ContainerVersion\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/versions\/{version_id} See 'path'.
  Core.Text ->
  TagManagerAccountsContainersVersionsUndelete
newTagManagerAccountsContainersVersionsUndelete path =
  TagManagerAccountsContainersVersionsUndelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      path = path,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersVersionsUndelete
  where
  type
    Rs TagManagerAccountsContainersVersionsUndelete =
      ContainerVersion
  type
    Scopes
      TagManagerAccountsContainersVersionsUndelete =
      '["https://www.googleapis.com/auth/tagmanager.edit.containerversions"]
  requestClient
    TagManagerAccountsContainersVersionsUndelete {..} =
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
                Core.Proxy
                  TagManagerAccountsContainersVersionsUndeleteResource
            )
            Core.mempty
