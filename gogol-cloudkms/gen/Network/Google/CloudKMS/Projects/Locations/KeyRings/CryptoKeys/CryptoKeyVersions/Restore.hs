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
-- Module      : Network.Google.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Restore
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restore a CryptoKeyVersion in the DESTROY/SCHEDULED state. Upon restoration of the CryptoKeyVersion, state will be set to DISABLED, and destroy/time will be cleared.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.restore@.
module Network.Google.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Restore
  ( -- * Resource
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestoreResource,

    -- ** Constructing a Request
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore,
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore,
  )
where

import Network.Google.CloudKMS.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.restore@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore' request conforms to.
type CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestoreResource =
  "v1"
    Core.:> Core.CaptureMode "name" "restore" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              RestoreCryptoKeyVersionRequest
    Core.:> Core.Post '[Core.JSON] CryptoKeyVersion

-- | Restore a CryptoKeyVersion in the DESTROY/SCHEDULED state. Upon restoration of the CryptoKeyVersion, state will be set to DISABLED, and destroy/time will be cleared.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore' smart constructor.
data CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore = CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the CryptoKeyVersion to restore.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: RestoreCryptoKeyVersionRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore ::
  -- |  Required. The resource name of the CryptoKeyVersion to restore. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RestoreCryptoKeyVersionRequest ->
  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore name payload =
  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore
  where
  type
    Rs
      CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore =
      CryptoKeyVersion
  type
    Scopes
      CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloudkms"
       ]
  requestClient
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestore {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudKMSService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsRestoreResource
            )
            Core.mempty
