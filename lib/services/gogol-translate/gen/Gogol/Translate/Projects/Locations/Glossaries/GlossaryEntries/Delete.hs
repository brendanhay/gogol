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
-- Module      : Gogol.Translate.Projects.Locations.Glossaries.GlossaryEntries.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a single entry from the glossary
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.glossaries.glossaryEntries.delete@.
module Gogol.Translate.Projects.Locations.Glossaries.GlossaryEntries.Delete
  ( -- * Resource
    TranslateProjectsLocationsGlossariesGlossaryEntriesDeleteResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsGlossariesGlossaryEntriesDelete (..),
    newTranslateProjectsLocationsGlossariesGlossaryEntriesDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.glossaries.glossaryEntries.delete@ method which the
-- 'TranslateProjectsLocationsGlossariesGlossaryEntriesDelete' request conforms to.
type TranslateProjectsLocationsGlossariesGlossaryEntriesDeleteResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a single entry from the glossary
--
-- /See:/ 'newTranslateProjectsLocationsGlossariesGlossaryEntriesDelete' smart constructor.
data TranslateProjectsLocationsGlossariesGlossaryEntriesDelete = TranslateProjectsLocationsGlossariesGlossaryEntriesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the glossary entry to delete
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsGlossariesGlossaryEntriesDelete' with the minimum fields required to make a request.
newTranslateProjectsLocationsGlossariesGlossaryEntriesDelete ::
  -- |  Required. The resource name of the glossary entry to delete See 'name'.
  Core.Text ->
  TranslateProjectsLocationsGlossariesGlossaryEntriesDelete
newTranslateProjectsLocationsGlossariesGlossaryEntriesDelete name =
  TranslateProjectsLocationsGlossariesGlossaryEntriesDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TranslateProjectsLocationsGlossariesGlossaryEntriesDelete
  where
  type
    Rs TranslateProjectsLocationsGlossariesGlossaryEntriesDelete =
      Empty
  type
    Scopes
      TranslateProjectsLocationsGlossariesGlossaryEntriesDelete =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient
    TranslateProjectsLocationsGlossariesGlossaryEntriesDelete {..} =
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
                Core.Proxy
                  TranslateProjectsLocationsGlossariesGlossaryEntriesDeleteResource
            )
            Core.mempty
