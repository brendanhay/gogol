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
-- Module      : Gogol.Translate.Projects.Locations.Glossaries.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a glossary, or cancels glossary construction if the glossary isn\'t created yet. Returns NOT_FOUND, if the glossary doesn\'t exist.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.glossaries.delete@.
module Gogol.Translate.Projects.Locations.Glossaries.Delete
  ( -- * Resource
    TranslateProjectsLocationsGlossariesDeleteResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsGlossariesDelete (..),
    newTranslateProjectsLocationsGlossariesDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.glossaries.delete@ method which the
-- 'TranslateProjectsLocationsGlossariesDelete' request conforms to.
type TranslateProjectsLocationsGlossariesDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Deletes a glossary, or cancels glossary construction if the glossary isn\'t created yet. Returns NOT_FOUND, if the glossary doesn\'t exist.
--
-- /See:/ 'newTranslateProjectsLocationsGlossariesDelete' smart constructor.
data TranslateProjectsLocationsGlossariesDelete = TranslateProjectsLocationsGlossariesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the glossary to delete.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsGlossariesDelete' with the minimum fields required to make a request.
newTranslateProjectsLocationsGlossariesDelete ::
  -- |  Required. The name of the glossary to delete. See 'name'.
  Core.Text ->
  TranslateProjectsLocationsGlossariesDelete
newTranslateProjectsLocationsGlossariesDelete name =
  TranslateProjectsLocationsGlossariesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TranslateProjectsLocationsGlossariesDelete
  where
  type Rs TranslateProjectsLocationsGlossariesDelete = Operation
  type
    Scopes TranslateProjectsLocationsGlossariesDelete =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient TranslateProjectsLocationsGlossariesDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      translateService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TranslateProjectsLocationsGlossariesDeleteResource
          )
          Core.mempty
