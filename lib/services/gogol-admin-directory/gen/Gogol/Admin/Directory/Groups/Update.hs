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
-- Module      : Gogol.Admin.Directory.Groups.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a group\'s properties.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.groups.update@.
module Gogol.Admin.Directory.Groups.Update
  ( -- * Resource
    DirectoryGroupsUpdateResource,

    -- ** Constructing a Request
    DirectoryGroupsUpdate (..),
    newDirectoryGroupsUpdate,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.groups.update@ method which the
-- 'DirectoryGroupsUpdate' request conforms to.
type DirectoryGroupsUpdateResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "groups"
    Core.:> Core.Capture "groupKey" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Group
    Core.:> Core.Put '[Core.JSON] Group

-- | Updates a group\'s properties.
--
-- /See:/ 'newDirectoryGroupsUpdate' smart constructor.
data DirectoryGroupsUpdate = DirectoryGroupsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifies the group in the API request. The value can be the group\'s email address, group alias, or the unique group ID.
    groupKey :: Core.Text,
    -- | Multipart request metadata.
    payload :: Group,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryGroupsUpdate' with the minimum fields required to make a request.
newDirectoryGroupsUpdate ::
  -- |  Identifies the group in the API request. The value can be the group\'s email address, group alias, or the unique group ID. See 'groupKey'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Group ->
  DirectoryGroupsUpdate
newDirectoryGroupsUpdate groupKey payload =
  DirectoryGroupsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      groupKey = groupKey,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryGroupsUpdate where
  type Rs DirectoryGroupsUpdate = Group
  type Scopes DirectoryGroupsUpdate = '[Admin'Directory'Group]
  requestClient DirectoryGroupsUpdate {..} =
    go
      groupKey
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adminDirectoryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DirectoryGroupsUpdateResource)
          Core.mempty
