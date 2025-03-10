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
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new CryptoKeyVersion in a CryptoKey. The server will assign the next sequential id. If unset, state will be set to ENABLED.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.create@.
module Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Create
  ( -- * Resource
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreateResource,

    -- ** Constructing a Request
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate,
  )
where

import Gogol.CloudKMS.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.create@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate' request conforms to.
type CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "cryptoKeyVersions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CryptoKeyVersion
    Core.:> Core.Post '[Core.JSON] CryptoKeyVersion

-- | Create a new CryptoKeyVersion in a CryptoKey. The server will assign the next sequential id. If unset, state will be set to ENABLED.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate' smart constructor.
data CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate = CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the CryptoKey associated with the CryptoKeyVersions.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CryptoKeyVersion,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate ::
  -- |  Required. The name of the CryptoKey associated with the CryptoKeyVersions. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CryptoKeyVersion ->
  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate
  parent
  payload =
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate
  where
  type
    Rs
      CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate =
      CryptoKeyVersion
  type
    Scopes
      CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate =
      '[CloudPlatform'FullControl, Cloudkms'FullControl]
  requestClient
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreate {..} =
      go
        parent
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
                  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsCreateResource
            )
            Core.mempty
