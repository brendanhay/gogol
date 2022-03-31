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
-- Module      : Gogol.ProximityBeacon.Namespaces.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the information about the specified namespace. Only the namespace visibility can be updated.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.namespaces.update@.
module Gogol.ProximityBeacon.Namespaces.Update
  ( -- * Resource
    ProximityBeaconNamespacesUpdateResource,

    -- ** Constructing a Request
    newProximityBeaconNamespacesUpdate,
    ProximityBeaconNamespacesUpdate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.namespaces.update@ method which the
-- 'ProximityBeaconNamespacesUpdate' request conforms to.
type ProximityBeaconNamespacesUpdateResource =
  "v1beta1"
    Core.:> Core.Capture "namespaceName" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Namespace
    Core.:> Core.Put '[Core.JSON] Namespace

-- | Updates the information about the specified namespace. Only the namespace visibility can be updated.
--
-- /See:/ 'newProximityBeaconNamespacesUpdate' smart constructor.
data ProximityBeaconNamespacesUpdate = ProximityBeaconNamespacesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Resource name of this namespace. Namespaces names have the format: \<code>namespaces\/\<var>namespace\<\/var>\<\/code>.
    namespaceName :: Core.Text,
    -- | Multipart request metadata.
    payload :: Namespace,
    -- | The project id of the namespace to update. If the project id is not specified then the project making the request is used. The project id must match the project that owns the beacon. Optional.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProximityBeaconNamespacesUpdate' with the minimum fields required to make a request.
newProximityBeaconNamespacesUpdate ::
  -- |  Resource name of this namespace. Namespaces names have the format: \<code>namespaces\/\<var>namespace\<\/var>\<\/code>. See 'namespaceName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Namespace ->
  ProximityBeaconNamespacesUpdate
newProximityBeaconNamespacesUpdate namespaceName payload =
  ProximityBeaconNamespacesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      namespaceName = namespaceName,
      payload = payload,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ProximityBeaconNamespacesUpdate
  where
  type Rs ProximityBeaconNamespacesUpdate = Namespace
  type
    Scopes ProximityBeaconNamespacesUpdate =
      '[Userlocation'Beacon'Registry]
  requestClient ProximityBeaconNamespacesUpdate {..} =
    go
      namespaceName
      xgafv
      accessToken
      callback
      projectId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      proximityBeaconService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ProximityBeaconNamespacesUpdateResource
          )
          Core.mempty
