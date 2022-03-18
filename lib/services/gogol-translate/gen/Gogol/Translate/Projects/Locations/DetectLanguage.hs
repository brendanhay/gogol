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
-- Module      : Gogol.Translate.Projects.Locations.DetectLanguage
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detects the language of text within a request.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.detectLanguage@.
module Gogol.Translate.Projects.Locations.DetectLanguage
  ( -- * Resource
    TranslateProjectsLocationsDetectLanguageResource,

    -- ** Constructing a Request
    newTranslateProjectsLocationsDetectLanguage,
    TranslateProjectsLocationsDetectLanguage,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.detectLanguage@ method which the
-- 'TranslateProjectsLocationsDetectLanguage' request conforms to.
type TranslateProjectsLocationsDetectLanguageResource =
  "v3"
    Core.:> Core.CaptureMode "parent" "detectLanguage" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DetectLanguageRequest
    Core.:> Core.Post '[Core.JSON] DetectLanguageResponse

-- | Detects the language of text within a request.
--
-- /See:/ 'newTranslateProjectsLocationsDetectLanguage' smart constructor.
data TranslateProjectsLocationsDetectLanguage = TranslateProjectsLocationsDetectLanguage
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Project or location to make a call. Must refer to a caller\'s project. Format: @projects\/{project-number-or-id}\/locations\/{location-id}@ or @projects\/{project-number-or-id}@. For global calls, use @projects\/{project-number-or-id}\/locations\/global@ or @projects\/{project-number-or-id}@. Only models within the same region (has same location-id) can be used. Otherwise an INVALID_ARGUMENT (400) error is returned.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: DetectLanguageRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsDetectLanguage' with the minimum fields required to make a request.
newTranslateProjectsLocationsDetectLanguage ::
  -- |  Required. Project or location to make a call. Must refer to a caller\'s project. Format: @projects\/{project-number-or-id}\/locations\/{location-id}@ or @projects\/{project-number-or-id}@. For global calls, use @projects\/{project-number-or-id}\/locations\/global@ or @projects\/{project-number-or-id}@. Only models within the same region (has same location-id) can be used. Otherwise an INVALID_ARGUMENT (400) error is returned. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DetectLanguageRequest ->
  TranslateProjectsLocationsDetectLanguage
newTranslateProjectsLocationsDetectLanguage parent payload =
  TranslateProjectsLocationsDetectLanguage
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
    TranslateProjectsLocationsDetectLanguage
  where
  type
    Rs TranslateProjectsLocationsDetectLanguage =
      DetectLanguageResponse
  type
    Scopes TranslateProjectsLocationsDetectLanguage =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-translation"
       ]
  requestClient
    TranslateProjectsLocationsDetectLanguage {..} =
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
                Core.Proxy
                  TranslateProjectsLocationsDetectLanguageResource
            )
            Core.mempty
