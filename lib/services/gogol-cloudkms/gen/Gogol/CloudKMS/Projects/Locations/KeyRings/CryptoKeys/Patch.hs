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
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a CryptoKey.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.cryptoKeys.patch@.
module Gogol.CloudKMS.Projects.Locations.KeyRings.CryptoKeys.Patch
    (
    -- * Resource
      CloudKMSProjectsLocationsKeyRingsCryptoKeysPatchResource

    -- ** Constructing a Request
    , newCloudKMSProjectsLocationsKeyRingsCryptoKeysPatch
    , CloudKMSProjectsLocationsKeyRingsCryptoKeysPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudKMS.Types

-- | A resource alias for @cloudkms.projects.locations.keyRings.cryptoKeys.patch@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsCryptoKeysPatch' request conforms to.
type CloudKMSProjectsLocationsKeyRingsCryptoKeysPatchResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.GFieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] CryptoKey Core.:>
                         Core.Patch '[Core.JSON] CryptoKey

-- | Update a CryptoKey.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsCryptoKeysPatch' smart constructor.
data CloudKMSProjectsLocationsKeyRingsCryptoKeysPatch = CloudKMSProjectsLocationsKeyRingsCryptoKeysPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Output only. The resource name for this CryptoKey in the format @projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: CryptoKey
      -- | Required. List of fields to be updated in this request.
    , updateMask :: (Core.Maybe Core.GFieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsCryptoKeysPatch' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsCryptoKeysPatch 
    ::  Core.Text
       -- ^  Output only. The resource name for this CryptoKey in the format @projects\/*\/locations\/*\/keyRings\/*\/cryptoKeys\/*@. See 'name'.
    -> CryptoKey
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudKMSProjectsLocationsKeyRingsCryptoKeysPatch
newCloudKMSProjectsLocationsKeyRingsCryptoKeysPatch name payload =
  CloudKMSProjectsLocationsKeyRingsCryptoKeysPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudKMSProjectsLocationsKeyRingsCryptoKeysPatch
         where
        type Rs
               CloudKMSProjectsLocationsKeyRingsCryptoKeysPatch
             = CryptoKey
        type Scopes
               CloudKMSProjectsLocationsKeyRingsCryptoKeysPatch
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloudkms"]
        requestClient
          CloudKMSProjectsLocationsKeyRingsCryptoKeysPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudKMSService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudKMSProjectsLocationsKeyRingsCryptoKeysPatchResource)
                      Core.mempty

