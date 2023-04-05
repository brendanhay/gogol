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
-- Module      : Gogol.Translate.Projects.Locations.Glossaries.GlossaryEntries.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single glossary entry by the given id.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.glossaries.glossaryEntries.get@.
module Gogol.Translate.Projects.Locations.Glossaries.GlossaryEntries.Get
  ( -- * Resource
    TranslateProjectsLocationsGlossariesGlossaryEntriesGetResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsGlossariesGlossaryEntriesGet (..),
    newTranslateProjectsLocationsGlossariesGlossaryEntriesGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.glossaries.glossaryEntries.get@ method which the
-- 'TranslateProjectsLocationsGlossariesGlossaryEntriesGet' request conforms to.
type TranslateProjectsLocationsGlossariesGlossaryEntriesGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GlossaryEntry

-- | Gets a single glossary entry by the given id.
--
-- /See:/ 'newTranslateProjectsLocationsGlossariesGlossaryEntriesGet' smart constructor.
data TranslateProjectsLocationsGlossariesGlossaryEntriesGet = TranslateProjectsLocationsGlossariesGlossaryEntriesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the glossary entry to get
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsGlossariesGlossaryEntriesGet' with the minimum fields required to make a request.
newTranslateProjectsLocationsGlossariesGlossaryEntriesGet ::
  -- |  Required. The resource name of the glossary entry to get See 'name'.
  Core.Text ->
  TranslateProjectsLocationsGlossariesGlossaryEntriesGet
newTranslateProjectsLocationsGlossariesGlossaryEntriesGet name =
  TranslateProjectsLocationsGlossariesGlossaryEntriesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TranslateProjectsLocationsGlossariesGlossaryEntriesGet
  where
  type
    Rs
      TranslateProjectsLocationsGlossariesGlossaryEntriesGet =
      GlossaryEntry
  type
    Scopes
      TranslateProjectsLocationsGlossariesGlossaryEntriesGet =
      '[ CloudPlatform'FullControl,
         CloudTranslation'FullControl
       ]
  requestClient
    TranslateProjectsLocationsGlossariesGlossaryEntriesGet {..} =
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
                  TranslateProjectsLocationsGlossariesGlossaryEntriesGetResource
            )
            Core.mempty
