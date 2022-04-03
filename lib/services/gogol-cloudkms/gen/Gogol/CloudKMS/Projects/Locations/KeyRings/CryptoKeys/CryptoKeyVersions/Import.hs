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
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Import
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Import wrapped key material into a CryptoKeyVersion. All requests must specify a CryptoKey. If a CryptoKeyVersion is additionally specified in the request, key material will be reimported into that version. Otherwise, a new version will be created, and will be assigned the next sequential id within the CryptoKey.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.import@.
module Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.Import
  ( -- * Resource
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImportResource,

    -- ** Constructing a Request
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport (..),
    newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport,
  )
where

import Gogol.CloudKMS.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.import@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport' request conforms to.
type CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImportResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "cryptoKeyVersions:import"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              ImportCryptoKeyVersionRequest
    Core.:> Core.Post '[Core.JSON] CryptoKeyVersion

-- | Import wrapped key material into a CryptoKeyVersion. All requests must specify a CryptoKey. If a CryptoKeyVersion is additionally specified in the request, key material will be reimported into that version. Otherwise, a new version will be created, and will be assigned the next sequential id within the CryptoKey.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport' smart constructor.
data CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport = CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the CryptoKey to be imported into. The create permission is only required on this key when creating a new CryptoKeyVersion.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: ImportCryptoKeyVersionRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport ::
  -- |  Required. The name of the CryptoKey to be imported into. The create permission is only required on this key when creating a new CryptoKeyVersion. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ImportCryptoKeyVersionRequest ->
  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport parent payload =
  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport
  where
  type
    Rs
      CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport =
      CryptoKeyVersion
  type
    Scopes
      CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport =
      '[CloudPlatform'FullControl, Cloudkms'FullControl]
  requestClient
    CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImport {..} =
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
                  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsImportResource
            )
            Core.mempty
