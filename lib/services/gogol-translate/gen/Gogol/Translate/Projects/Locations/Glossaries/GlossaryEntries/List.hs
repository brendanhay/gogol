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
-- Module      : Gogol.Translate.Projects.Locations.Glossaries.GlossaryEntries.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the entries for the glossary.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.glossaries.glossaryEntries.list@.
module Gogol.Translate.Projects.Locations.Glossaries.GlossaryEntries.List
  ( -- * Resource
    TranslateProjectsLocationsGlossariesGlossaryEntriesListResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsGlossariesGlossaryEntriesList (..),
    newTranslateProjectsLocationsGlossariesGlossaryEntriesList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.glossaries.glossaryEntries.list@ method which the
-- 'TranslateProjectsLocationsGlossariesGlossaryEntriesList' request conforms to.
type TranslateProjectsLocationsGlossariesGlossaryEntriesListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "glossaryEntries"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListGlossaryEntriesResponse

-- | List the entries for the glossary.
--
-- /See:/ 'newTranslateProjectsLocationsGlossariesGlossaryEntriesList' smart constructor.
data TranslateProjectsLocationsGlossariesGlossaryEntriesList = TranslateProjectsLocationsGlossariesGlossaryEntriesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. Requested page size. The server may return fewer glossary entries than requested. If unspecified, the server picks an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A token identifying a page of results the server should return. Typically, this is the value of [ListGlossaryEntriesResponse.next/page/token] returned from the previous call. The first page is returned if @page_token@is empty or missing.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent glossary resource name for listing the glossary\'s entries.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsGlossariesGlossaryEntriesList' with the minimum fields required to make a request.
newTranslateProjectsLocationsGlossariesGlossaryEntriesList ::
  -- |  Required. The parent glossary resource name for listing the glossary\'s entries. See 'parent'.
  Core.Text ->
  TranslateProjectsLocationsGlossariesGlossaryEntriesList
newTranslateProjectsLocationsGlossariesGlossaryEntriesList parent =
  TranslateProjectsLocationsGlossariesGlossaryEntriesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TranslateProjectsLocationsGlossariesGlossaryEntriesList
  where
  type
    Rs
      TranslateProjectsLocationsGlossariesGlossaryEntriesList =
      ListGlossaryEntriesResponse
  type
    Scopes
      TranslateProjectsLocationsGlossariesGlossaryEntriesList =
      '[ CloudPlatform'FullControl,
         CloudTranslation'FullControl
       ]
  requestClient
    TranslateProjectsLocationsGlossariesGlossaryEntriesList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        translateService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  TranslateProjectsLocationsGlossariesGlossaryEntriesListResource
            )
            Core.mempty
