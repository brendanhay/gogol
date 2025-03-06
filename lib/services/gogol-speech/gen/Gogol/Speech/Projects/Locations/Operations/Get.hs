{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Speech.Projects.Locations.Operations.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.
--
-- /See:/ <https://cloud.google.com/speech-to-text/docs/quickstart-protocol Cloud Speech-to-Text API Reference> for @speech.projects.locations.operations.get@.
module Gogol.Speech.Projects.Locations.Operations.Get
  ( -- * Resource
    SpeechProjectsLocationsOperationsGetResource,

    -- ** Constructing a Request
    SpeechProjectsLocationsOperationsGet (..),
    newSpeechProjectsLocationsOperationsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Speech.Types

-- | A resource alias for @speech.projects.locations.operations.get@ method which the
-- 'SpeechProjectsLocationsOperationsGet' request conforms to.
type SpeechProjectsLocationsOperationsGetResource =
  "v2beta1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Operation

-- | Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.
--
-- /See:/ 'newSpeechProjectsLocationsOperationsGet' smart constructor.
data SpeechProjectsLocationsOperationsGet = SpeechProjectsLocationsOperationsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the operation resource.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpeechProjectsLocationsOperationsGet' with the minimum fields required to make a request.
newSpeechProjectsLocationsOperationsGet ::
  -- |  The name of the operation resource. See 'name'.
  Core.Text ->
  SpeechProjectsLocationsOperationsGet
newSpeechProjectsLocationsOperationsGet name =
  SpeechProjectsLocationsOperationsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SpeechProjectsLocationsOperationsGet where
  type Rs SpeechProjectsLocationsOperationsGet = Operation
  type
    Scopes SpeechProjectsLocationsOperationsGet =
      '[CloudPlatform'FullControl]
  requestClient SpeechProjectsLocationsOperationsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      speechService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SpeechProjectsLocationsOperationsGetResource
          )
          Core.mempty
