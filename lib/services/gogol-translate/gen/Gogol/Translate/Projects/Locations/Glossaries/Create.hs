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
-- Module      : Gogol.Translate.Projects.Locations.Glossaries.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a glossary and returns the long-running operation. Returns NOT_FOUND, if the project doesn\'t exist.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.glossaries.create@.
module Gogol.Translate.Projects.Locations.Glossaries.Create
  ( -- * Resource
    TranslateProjectsLocationsGlossariesCreateResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsGlossariesCreate (..),
    newTranslateProjectsLocationsGlossariesCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.glossaries.create@ method which the
-- 'TranslateProjectsLocationsGlossariesCreate' request conforms to.
type TranslateProjectsLocationsGlossariesCreateResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "glossaries"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Glossary
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a glossary and returns the long-running operation. Returns NOT_FOUND, if the project doesn\'t exist.
--
-- /See:/ 'newTranslateProjectsLocationsGlossariesCreate' smart constructor.
data TranslateProjectsLocationsGlossariesCreate = TranslateProjectsLocationsGlossariesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The project name.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Glossary,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsGlossariesCreate' with the minimum fields required to make a request.
newTranslateProjectsLocationsGlossariesCreate ::
  -- |  Required. The project name. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Glossary ->
  TranslateProjectsLocationsGlossariesCreate
newTranslateProjectsLocationsGlossariesCreate parent payload =
  TranslateProjectsLocationsGlossariesCreate
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
    TranslateProjectsLocationsGlossariesCreate
  where
  type Rs TranslateProjectsLocationsGlossariesCreate = Operation
  type
    Scopes TranslateProjectsLocationsGlossariesCreate =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient TranslateProjectsLocationsGlossariesCreate {..} =
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
              Core.Proxy TranslateProjectsLocationsGlossariesCreateResource
          )
          Core.mempty
