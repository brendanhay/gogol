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
-- Module      : Gogol.ResourceManager.Cloudresourcemanager.Folders.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a folder, changing its @display_name@. Changes to the folder @display_name@ will be rejected if they violate either the @display_name@ formatting rules or the naming constraints described in the CreateFolder documentation. The folder\'s @display_name@ must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be between 3 and 30 characters. This is captured by the regular expression: @\\p{L}\\p{N}{1,28}[\\p{L}\\p{N}]@. The caller must have @resourcemanager.folders.update@ permission on the identified folder. If the update fails due to the unique name constraint then a @PreconditionFailure@ explaining this violation will be returned in the Status.details field.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.folders.patch@.
module Gogol.ResourceManager.Cloudresourcemanager.Folders.Patch
  ( -- * Resource
    CloudresourcemanagerFoldersPatchResource,

    -- ** Constructing a Request
    CloudresourcemanagerFoldersPatch (..),
    newCloudresourcemanagerFoldersPatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.folders.patch@ method which the
-- 'CloudresourcemanagerFoldersPatch' request conforms to.
type CloudresourcemanagerFoldersPatchResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Folder
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates a folder, changing its @display_name@. Changes to the folder @display_name@ will be rejected if they violate either the @display_name@ formatting rules or the naming constraints described in the CreateFolder documentation. The folder\'s @display_name@ must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be between 3 and 30 characters. This is captured by the regular expression: @\\p{L}\\p{N}{1,28}[\\p{L}\\p{N}]@. The caller must have @resourcemanager.folders.update@ permission on the identified folder. If the update fails due to the unique name constraint then a @PreconditionFailure@ explaining this violation will be returned in the Status.details field.
--
-- /See:/ 'newCloudresourcemanagerFoldersPatch' smart constructor.
data CloudresourcemanagerFoldersPatch = CloudresourcemanagerFoldersPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the folder. Its format is @folders\/{folder_id}@, for example: \"folders\/1234\".
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Folder,
    -- | Required. Fields to be updated. Only the @display_name@ can be updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudresourcemanagerFoldersPatch' with the minimum fields required to make a request.
newCloudresourcemanagerFoldersPatch ::
  -- |  Output only. The resource name of the folder. Its format is @folders\/{folder_id}@, for example: \"folders\/1234\". See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Folder ->
  CloudresourcemanagerFoldersPatch
newCloudresourcemanagerFoldersPatch name payload =
  CloudresourcemanagerFoldersPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudresourcemanagerFoldersPatch where
  type Rs CloudresourcemanagerFoldersPatch = Operation
  type
    Scopes CloudresourcemanagerFoldersPatch =
      '[CloudPlatform'FullControl]
  requestClient CloudresourcemanagerFoldersPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      resourceManagerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CloudresourcemanagerFoldersPatchResource)
          Core.mempty
