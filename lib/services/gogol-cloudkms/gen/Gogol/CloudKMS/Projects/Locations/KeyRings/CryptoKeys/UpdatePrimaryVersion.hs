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
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.UpdatePrimaryVersion
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the version of a CryptoKey that will be used in Encrypt. Returns an error if called on a key whose purpose is not ENCRYPT_DECRYPT.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.updatePrimaryVersion@.
module Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.UpdatePrimaryVersion
  ( -- * Resource
    CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersionResource,

    -- ** Constructing a Request
    CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion,
  )
where

import Gogol.CloudKMS.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.updatePrimaryVersion@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion' request conforms to.
type CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersionResource =
  "v1"
    Core.:> Core.CaptureMode
              "name"
              "updatePrimaryVersion"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              UpdateCryptoKeyPrimaryVersionRequest
    Core.:> Core.Post '[Core.JSON] CryptoKey

-- | Update the version of a CryptoKey that will be used in Encrypt. Returns an error if called on a key whose purpose is not ENCRYPT_DECRYPT.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion' smart constructor.
data CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion = CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the CryptoKey to update.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UpdateCryptoKeyPrimaryVersionRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion ::
  -- |  Required. The resource name of the CryptoKey to update. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UpdateCryptoKeyPrimaryVersionRequest ->
  CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion
newCloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion name payload =
  CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion
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
    CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion
  where
  type
    Rs
      CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion =
      CryptoKey
  type
    Scopes
      CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion =
      '[CloudPlatform'FullControl, Cloudkms'FullControl]
  requestClient
    CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersion {..} =
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
                  CloudKMSProjectsLocationsKeyRingsCryptoKeysUpdatePrimaryVersionResource
            )
            Core.mempty
