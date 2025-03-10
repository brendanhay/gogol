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
-- Module      : Gogol.Translate.Projects.Locations.BatchTranslateText
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Translates a large volume of text in asynchronous batch mode. This function provides real-time output as the inputs are being processed. If caller cancels a request, the partial results (for an input file, it\'s all or nothing) may still be available on the specified output location. This call returns immediately and you can use google.longrunning.Operation.name to poll the status of the call.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.batchTranslateText@.
module Gogol.Translate.Projects.Locations.BatchTranslateText
  ( -- * Resource
    TranslateProjectsLocationsBatchTranslateTextResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsBatchTranslateText (..),
    newTranslateProjectsLocationsBatchTranslateText,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.batchTranslateText@ method which the
-- 'TranslateProjectsLocationsBatchTranslateText' request conforms to.
type TranslateProjectsLocationsBatchTranslateTextResource =
  "v3"
    Core.:> Core.CaptureMode "parent" "batchTranslateText" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchTranslateTextRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Translates a large volume of text in asynchronous batch mode. This function provides real-time output as the inputs are being processed. If caller cancels a request, the partial results (for an input file, it\'s all or nothing) may still be available on the specified output location. This call returns immediately and you can use google.longrunning.Operation.name to poll the status of the call.
--
-- /See:/ 'newTranslateProjectsLocationsBatchTranslateText' smart constructor.
data TranslateProjectsLocationsBatchTranslateText = TranslateProjectsLocationsBatchTranslateText
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Location to make a call. Must refer to a caller\'s project. Format: @projects\/{project-number-or-id}\/locations\/{location-id}@. The @global@ location is not supported for batch translation. Only AutoML Translation models or glossaries within the same region (have the same location-id) can be used, otherwise an INVALID_ARGUMENT (400) error is returned.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: BatchTranslateTextRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsBatchTranslateText' with the minimum fields required to make a request.
newTranslateProjectsLocationsBatchTranslateText ::
  -- |  Required. Location to make a call. Must refer to a caller\'s project. Format: @projects\/{project-number-or-id}\/locations\/{location-id}@. The @global@ location is not supported for batch translation. Only AutoML Translation models or glossaries within the same region (have the same location-id) can be used, otherwise an INVALID_ARGUMENT (400) error is returned. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BatchTranslateTextRequest ->
  TranslateProjectsLocationsBatchTranslateText
newTranslateProjectsLocationsBatchTranslateText parent payload =
  TranslateProjectsLocationsBatchTranslateText
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TranslateProjectsLocationsBatchTranslateText
  where
  type Rs TranslateProjectsLocationsBatchTranslateText = Operation
  type
    Scopes TranslateProjectsLocationsBatchTranslateText =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient TranslateProjectsLocationsBatchTranslateText {..} =
    go
      parent
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      translateService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TranslateProjectsLocationsBatchTranslateTextResource
          )
          Core.mempty
