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
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyRings.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata for a given KeyRing.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.get@.
module Gogol.CloudKMS.Projects.Locations.KeyRings.Get
  ( -- * Resource
    CloudKMSProjectsLocationsKeyRingsGetResource,

    -- ** Constructing a Request
    newCloudKMSProjectsLocationsKeyRingsGet,
    CloudKMSProjectsLocationsKeyRingsGet,
  )
where

import Gogol.CloudKMS.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudkms.projects.locations.keyRings.get@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsGet' request conforms to.
type CloudKMSProjectsLocationsKeyRingsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] KeyRing

-- | Returns metadata for a given KeyRing.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsGet' smart constructor.
data CloudKMSProjectsLocationsKeyRingsGet = CloudKMSProjectsLocationsKeyRingsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the KeyRing to get.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsGet' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsGet ::
  -- |  Required. The name of the KeyRing to get. See 'name'.
  Core.Text ->
  CloudKMSProjectsLocationsKeyRingsGet
newCloudKMSProjectsLocationsKeyRingsGet name =
  CloudKMSProjectsLocationsKeyRingsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudKMSProjectsLocationsKeyRingsGet
  where
  type
    Rs CloudKMSProjectsLocationsKeyRingsGet =
      KeyRing
  type
    Scopes CloudKMSProjectsLocationsKeyRingsGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloudkms"
       ]
  requestClient
    CloudKMSProjectsLocationsKeyRingsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudKMSService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudKMSProjectsLocationsKeyRingsGetResource
            )
            Core.mempty
