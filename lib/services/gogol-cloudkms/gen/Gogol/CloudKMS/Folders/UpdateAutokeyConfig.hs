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
-- Module      : Gogol.CloudKMS.Folders.UpdateAutokeyConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the AutokeyConfig for a folder. The caller must have both @cloudkms.autokeyConfigs.update@ permission on the parent folder and @cloudkms.cryptoKeys.setIamPolicy@ permission on the provided key project. A KeyHandle creation in the folder\'s descendant projects will use this configuration to determine where to create the resulting CryptoKey.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.folders.updateAutokeyConfig@.
module Gogol.CloudKMS.Folders.UpdateAutokeyConfig
  ( -- * Resource
    CloudKMSFoldersUpdateAutokeyConfigResource,

    -- ** Constructing a Request
    CloudKMSFoldersUpdateAutokeyConfig (..),
    newCloudKMSFoldersUpdateAutokeyConfig,
  )
where

import Gogol.CloudKMS.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudkms.folders.updateAutokeyConfig@ method which the
-- 'CloudKMSFoldersUpdateAutokeyConfig' request conforms to.
type CloudKMSFoldersUpdateAutokeyConfigResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AutokeyConfig
    Core.:> Core.Patch '[Core.JSON] AutokeyConfig

-- | Updates the AutokeyConfig for a folder. The caller must have both @cloudkms.autokeyConfigs.update@ permission on the parent folder and @cloudkms.cryptoKeys.setIamPolicy@ permission on the provided key project. A KeyHandle creation in the folder\'s descendant projects will use this configuration to determine where to create the resulting CryptoKey.
--
-- /See:/ 'newCloudKMSFoldersUpdateAutokeyConfig' smart constructor.
data CloudKMSFoldersUpdateAutokeyConfig = CloudKMSFoldersUpdateAutokeyConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier. Name of the AutokeyConfig resource, e.g. @folders\/{FOLDER_NUMBER}\/autokeyConfig@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: AutokeyConfig,
    -- | Required. Masks which fields of the AutokeyConfig to update, e.g. @keyProject@.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSFoldersUpdateAutokeyConfig' with the minimum fields required to make a request.
newCloudKMSFoldersUpdateAutokeyConfig ::
  -- |  Identifier. Name of the AutokeyConfig resource, e.g. @folders\/{FOLDER_NUMBER}\/autokeyConfig@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AutokeyConfig ->
  CloudKMSFoldersUpdateAutokeyConfig
newCloudKMSFoldersUpdateAutokeyConfig name payload =
  CloudKMSFoldersUpdateAutokeyConfig
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudKMSFoldersUpdateAutokeyConfig where
  type Rs CloudKMSFoldersUpdateAutokeyConfig = AutokeyConfig
  type
    Scopes CloudKMSFoldersUpdateAutokeyConfig =
      '[CloudPlatform'FullControl, Cloudkms'FullControl]
  requestClient CloudKMSFoldersUpdateAutokeyConfig {..} =
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
      cloudKMSService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudKMSFoldersUpdateAutokeyConfigResource
          )
          Core.mempty
