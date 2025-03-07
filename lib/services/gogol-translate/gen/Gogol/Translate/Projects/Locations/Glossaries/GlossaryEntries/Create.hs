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
-- Module      : Gogol.Translate.Projects.Locations.Glossaries.GlossaryEntries.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a glossary entry.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.glossaries.glossaryEntries.create@.
module Gogol.Translate.Projects.Locations.Glossaries.GlossaryEntries.Create
  ( -- * Resource
    TranslateProjectsLocationsGlossariesGlossaryEntriesCreateResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsGlossariesGlossaryEntriesCreate (..),
    newTranslateProjectsLocationsGlossariesGlossaryEntriesCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.glossaries.glossaryEntries.create@ method which the
-- 'TranslateProjectsLocationsGlossariesGlossaryEntriesCreate' request conforms to.
type TranslateProjectsLocationsGlossariesGlossaryEntriesCreateResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "glossaryEntries"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GlossaryEntry
    Core.:> Core.Post '[Core.JSON] GlossaryEntry

-- | Creates a glossary entry.
--
-- /See:/ 'newTranslateProjectsLocationsGlossariesGlossaryEntriesCreate' smart constructor.
data TranslateProjectsLocationsGlossariesGlossaryEntriesCreate = TranslateProjectsLocationsGlossariesGlossaryEntriesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the glossary to create the entry under.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GlossaryEntry,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsGlossariesGlossaryEntriesCreate' with the minimum fields required to make a request.
newTranslateProjectsLocationsGlossariesGlossaryEntriesCreate ::
  -- |  Required. The resource name of the glossary to create the entry under. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GlossaryEntry ->
  TranslateProjectsLocationsGlossariesGlossaryEntriesCreate
newTranslateProjectsLocationsGlossariesGlossaryEntriesCreate
  parent
  payload =
    TranslateProjectsLocationsGlossariesGlossaryEntriesCreate
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
    TranslateProjectsLocationsGlossariesGlossaryEntriesCreate
  where
  type
    Rs TranslateProjectsLocationsGlossariesGlossaryEntriesCreate =
      GlossaryEntry
  type
    Scopes
      TranslateProjectsLocationsGlossariesGlossaryEntriesCreate =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient
    TranslateProjectsLocationsGlossariesGlossaryEntriesCreate {..} =
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
                  TranslateProjectsLocationsGlossariesGlossaryEntriesCreateResource
            )
            Core.mempty
