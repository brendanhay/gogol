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
-- Module      : Gogol.Translate.Projects.Locations.GetSupportedLanguages
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of supported languages for translation.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.getSupportedLanguages@.
module Gogol.Translate.Projects.Locations.GetSupportedLanguages
  ( -- * Resource
    TranslateProjectsLocationsGetSupportedLanguagesResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsGetSupportedLanguages (..),
    newTranslateProjectsLocationsGetSupportedLanguages,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.getSupportedLanguages@ method which the
-- 'TranslateProjectsLocationsGetSupportedLanguages' request conforms to.
type TranslateProjectsLocationsGetSupportedLanguagesResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "supportedLanguages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "displayLanguageCode" Core.Text
    Core.:> Core.QueryParam "model" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SupportedLanguages

-- | Returns a list of supported languages for translation.
--
-- /See:/ 'newTranslateProjectsLocationsGetSupportedLanguages' smart constructor.
data TranslateProjectsLocationsGetSupportedLanguages = TranslateProjectsLocationsGetSupportedLanguages
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The language to use to return localized, human readable names of supported languages. If missing, then display names are not returned in a response.
    displayLanguageCode :: (Core.Maybe Core.Text),
    -- | Optional. Get supported languages of this model. The format depends on model type: - AutoML Translation models: @projects\/{project-number-or-id}\/locations\/{location-id}\/models\/{model-id}@ - General (built-in) models: @projects\/{project-number-or-id}\/locations\/{location-id}\/models\/general\/nmt@, Returns languages supported by the specified model. If missing, we get supported languages of Google general NMT model.
    model :: (Core.Maybe Core.Text),
    -- | Required. Project or location to make a call. Must refer to a caller\'s project. Format: @projects\/{project-number-or-id}@ or @projects\/{project-number-or-id}\/locations\/{location-id}@. For global calls, use @projects\/{project-number-or-id}\/locations\/global@ or @projects\/{project-number-or-id}@. Non-global location is required for AutoML models. Only models within the same region (have same location-id) can be used, otherwise an INVALID_ARGUMENT (400) error is returned.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsGetSupportedLanguages' with the minimum fields required to make a request.
newTranslateProjectsLocationsGetSupportedLanguages ::
  -- |  Required. Project or location to make a call. Must refer to a caller\'s project. Format: @projects\/{project-number-or-id}@ or @projects\/{project-number-or-id}\/locations\/{location-id}@. For global calls, use @projects\/{project-number-or-id}\/locations\/global@ or @projects\/{project-number-or-id}@. Non-global location is required for AutoML models. Only models within the same region (have same location-id) can be used, otherwise an INVALID_ARGUMENT (400) error is returned. See 'parent'.
  Core.Text ->
  TranslateProjectsLocationsGetSupportedLanguages
newTranslateProjectsLocationsGetSupportedLanguages parent =
  TranslateProjectsLocationsGetSupportedLanguages
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      displayLanguageCode = Core.Nothing,
      model = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TranslateProjectsLocationsGetSupportedLanguages
  where
  type
    Rs TranslateProjectsLocationsGetSupportedLanguages =
      SupportedLanguages
  type
    Scopes TranslateProjectsLocationsGetSupportedLanguages =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient TranslateProjectsLocationsGetSupportedLanguages {..} =
    go
      parent
      xgafv
      accessToken
      callback
      displayLanguageCode
      model
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      translateService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TranslateProjectsLocationsGetSupportedLanguagesResource
          )
          Core.mempty
