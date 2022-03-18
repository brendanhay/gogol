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
-- Module      : Network.Google.Translate.Projects.Locations.Glossaries.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a glossary. Returns NOT_FOUND, if the glossary doesn\'t exist.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.glossaries.get@.
module Network.Google.Translate.Projects.Locations.Glossaries.Get
  ( -- * Resource
    TranslateProjectsLocationsGlossariesGetResource,

    -- ** Constructing a Request
    newTranslateProjectsLocationsGlossariesGet,
    TranslateProjectsLocationsGlossariesGet,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Translate.Types

-- | A resource alias for @translate.projects.locations.glossaries.get@ method which the
-- 'TranslateProjectsLocationsGlossariesGet' request conforms to.
type TranslateProjectsLocationsGlossariesGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Glossary

-- | Gets a glossary. Returns NOT_FOUND, if the glossary doesn\'t exist.
--
-- /See:/ 'newTranslateProjectsLocationsGlossariesGet' smart constructor.
data TranslateProjectsLocationsGlossariesGet = TranslateProjectsLocationsGlossariesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the glossary to retrieve.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsGlossariesGet' with the minimum fields required to make a request.
newTranslateProjectsLocationsGlossariesGet ::
  -- |  Required. The name of the glossary to retrieve. See 'name'.
  Core.Text ->
  TranslateProjectsLocationsGlossariesGet
newTranslateProjectsLocationsGlossariesGet name =
  TranslateProjectsLocationsGlossariesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TranslateProjectsLocationsGlossariesGet
  where
  type
    Rs TranslateProjectsLocationsGlossariesGet =
      Glossary
  type
    Scopes TranslateProjectsLocationsGlossariesGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-translation"
       ]
  requestClient
    TranslateProjectsLocationsGlossariesGet {..} =
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
                  TranslateProjectsLocationsGlossariesGetResource
            )
            Core.mempty
