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
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Destroy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Schedule a CryptoKeyVersion for destruction. Upon calling this method, CryptoKeyVersion.state will be set to DESTROY/SCHEDULED, and destroy/time will be set to the time destroy/scheduled/duration in the future. At that time, the state will automatically change to DESTROYED, and the key material will be irrevocably destroyed. Before the destroy_time is reached, RestoreCryptoKeyVersion may be called to reverse the process.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.destroy@.
module Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Destroy
  ( -- * Resource
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroyResource,

    -- ** Constructing a Request
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy,
  )
where

import Gogol.CloudKMS.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.destroy@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy' request conforms to.
type CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroyResource =
  "v1"
    Core.:> Core.CaptureMode "name" "destroy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              DestroyCryptoKeyVersionRequest
    Core.:> Core.Post '[Core.JSON] CryptoKeyVersion

-- | Schedule a CryptoKeyVersion for destruction. Upon calling this method, CryptoKeyVersion.state will be set to DESTROY/SCHEDULED, and destroy/time will be set to the time destroy/scheduled/duration in the future. At that time, the state will automatically change to DESTROYED, and the key material will be irrevocably destroyed. Before the destroy_time is reached, RestoreCryptoKeyVersion may be called to reverse the process.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy' smart constructor.
data CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy = CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the CryptoKeyVersion to destroy.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: DestroyCryptoKeyVersionRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy ::
  -- |  Required. The resource name of the CryptoKeyVersion to destroy. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DestroyCryptoKeyVersionRequest ->
  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy name payload =
  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy
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
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy
  where
  type
    Rs
      CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy =
      CryptoKeyVersion
  type
    Scopes
      CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy =
      '[CloudPlatform'FullControl, Cloudkms'FullControl]
  requestClient
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroy {..} =
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
                  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsDestroyResource
            )
            Core.mempty
