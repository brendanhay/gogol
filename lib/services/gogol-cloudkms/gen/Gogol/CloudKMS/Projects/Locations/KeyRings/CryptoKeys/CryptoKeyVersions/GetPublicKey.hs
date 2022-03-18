{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.GetPublicKey
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the public key for the given CryptoKeyVersion. The CryptoKey.purpose must be ASYMMETRIC/SIGN or ASYMMETRIC/DECRYPT.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.getPublicKey@.
module Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.CryptoKeyVersions.GetPublicKey
    (
    -- * Resource
      CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyResource

    -- ** Constructing a Request
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudKMS.Types

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.cryptoKeyVersions.getPublicKey@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey' request conforms to.
type CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         "publicKey" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] PublicKey

-- | Returns the public key for the given CryptoKeyVersion. The CryptoKey.purpose must be ASYMMETRIC/SIGN or ASYMMETRIC/DECRYPT.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey' smart constructor.
data CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey = CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the CryptoKeyVersion public key to get.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey 
    ::  Core.Text
       -- ^  Required. The name of the CryptoKeyVersion public key to get. See 'name'.
    -> CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey
newCloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey name =
  CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey
         where
        type Rs
               CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey
             = PublicKey
        type Scopes
               CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKey{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudKMSService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudKMSProjectsLocationsKeyRingsCryptoKeysCryptoKeyVersionsGetPublicKeyResource)
                      Core.mempty

