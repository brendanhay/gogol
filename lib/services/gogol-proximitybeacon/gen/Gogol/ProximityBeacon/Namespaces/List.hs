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
-- Module      : Gogol.ProximityBeacon.Namespaces.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all attachment namespaces owned by your Google Developers Console project. Attachment data associated with a beacon must include a namespaced type, and the namespace must be owned by your project.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __viewer__, __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.namespaces.list@.
module Gogol.ProximityBeacon.Namespaces.List
  ( -- * Resource
    ProximityBeaconNamespacesListResource,

    -- ** Constructing a Request
    newProximityBeaconNamespacesList,
    ProximityBeaconNamespacesList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.namespaces.list@ method which the
-- 'ProximityBeaconNamespacesList' request conforms to.
type ProximityBeaconNamespacesListResource =
  "v1beta1"
    Core.:> "namespaces"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListNamespacesResponse

-- | Lists all attachment namespaces owned by your Google Developers Console project. Attachment data associated with a beacon must include a namespaced type, and the namespace must be owned by your project.
--
-- Authenticate using an <https://developers.google.com/identity/protocols/OAuth2 OAuth access token> from a signed-in user with __viewer__, __Is owner__ or __Can edit__ permissions in the Google Developers Console project.
--
-- /See:/ 'newProximityBeaconNamespacesList' smart constructor.
data ProximityBeaconNamespacesList = ProximityBeaconNamespacesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The project id to list namespaces under. Optional.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProximityBeaconNamespacesList' with the minimum fields required to make a request.
newProximityBeaconNamespacesList ::
  ProximityBeaconNamespacesList
newProximityBeaconNamespacesList =
  ProximityBeaconNamespacesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ProximityBeaconNamespacesList
  where
  type
    Rs ProximityBeaconNamespacesList =
      ListNamespacesResponse
  type
    Scopes ProximityBeaconNamespacesList =
      '[Userlocation'Beacon'Registry]
  requestClient ProximityBeaconNamespacesList {..} =
    go
      xgafv
      accessToken
      callback
      projectId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      proximityBeaconService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ProximityBeaconNamespacesListResource
          )
          Core.mempty
