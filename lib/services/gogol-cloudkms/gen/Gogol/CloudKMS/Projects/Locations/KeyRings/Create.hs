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
-- Module      : Gogol.CloudKMS.Projects.Locations.KeyRings.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new KeyRing in a given Project and Location.
--
-- /See:/ <https://cloud.google.com/kms/ Cloud Key Management Service (KMS) API Reference> for @cloudkms.projects.locations.keyRings.create@.
module Gogol.CloudKMS.Projects.Locations.KeyRings.Create
  ( -- * Resource
    CloudKMSProjectsLocationsKeyRingsCreateResource,

    -- ** Constructing a Request
    CloudKMSProjectsLocationsKeyRingsCreate (..),
    newCloudKMSProjectsLocationsKeyRingsCreate,
  )
where

import Gogol.CloudKMS.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudkms.projects.locations.keyRings.create@ method which the
-- 'CloudKMSProjectsLocationsKeyRingsCreate' request conforms to.
type CloudKMSProjectsLocationsKeyRingsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "keyRings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "keyRingId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] KeyRing
    Core.:> Core.Post '[Core.JSON] KeyRing

-- | Create a new KeyRing in a given Project and Location.
--
-- /See:/ 'newCloudKMSProjectsLocationsKeyRingsCreate' smart constructor.
data CloudKMSProjectsLocationsKeyRingsCreate = CloudKMSProjectsLocationsKeyRingsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. It must be unique within a location and match the regular expression @[a-zA-Z0-9_-]{1,63}@
    keyRingId :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the location associated with the KeyRings, in the format @projects\/*\/locations\/*@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: KeyRing,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudKMSProjectsLocationsKeyRingsCreate' with the minimum fields required to make a request.
newCloudKMSProjectsLocationsKeyRingsCreate ::
  -- |  Required. The resource name of the location associated with the KeyRings, in the format @projects\/*\/locations\/*@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  KeyRing ->
  CloudKMSProjectsLocationsKeyRingsCreate
newCloudKMSProjectsLocationsKeyRingsCreate parent payload =
  CloudKMSProjectsLocationsKeyRingsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      keyRingId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudKMSProjectsLocationsKeyRingsCreate
  where
  type
    Rs CloudKMSProjectsLocationsKeyRingsCreate =
      KeyRing
  type
    Scopes CloudKMSProjectsLocationsKeyRingsCreate =
      '[CloudPlatform'FullControl, Cloudkms'FullControl]
  requestClient
    CloudKMSProjectsLocationsKeyRingsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        keyRingId
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
                  CloudKMSProjectsLocationsKeyRingsCreateResource
            )
            Core.mempty
