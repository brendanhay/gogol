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
-- Module      : Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Messages.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an HL7v2 message.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.hl7V2Stores.messages.get@.
module Gogol.Healthcare.Projects.Locations.Datasets.Hl7V2Stores.Messages.Get
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGetResource,

    -- ** Constructing a Request
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet (..),
    newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet,
  )
where

import Gogol.Healthcare.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.hl7V2Stores.messages.get@ method which the
-- 'HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet' request conforms to.
type HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam
              "view"
              ProjectsLocationsDatasetsHl7V2StoresMessagesGetView
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Message

-- | Gets an HL7v2 message.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet' smart constructor.
data HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet = HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource name of the HL7v2 message to retrieve.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Specifies which parts of the Message resource to return in the response. When unspecified, equivalent to FULL.
    view :: (Core.Maybe ProjectsLocationsDatasetsHl7V2StoresMessagesGetView)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet ::
  -- |  The resource name of the HL7v2 message to retrieve. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet
newHealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet name =
  HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet =
      Message
  type
    Scopes
      HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet =
      '[CloudPlatform'FullControl]
  requestClient
    HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        view
        (Core.Just Core.AltJSON)
        healthcareService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  HealthcareProjectsLocationsDatasetsHl7V2StoresMessagesGetResource
            )
            Core.mempty
