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
-- Module      : Gogol.Translate.Projects.Locations.Datasets.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Dataset.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.datasets.get@.
module Gogol.Translate.Projects.Locations.Datasets.Get
  ( -- * Resource
    TranslateProjectsLocationsDatasetsGetResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsDatasetsGet (..),
    newTranslateProjectsLocationsDatasetsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.datasets.get@ method which the
-- 'TranslateProjectsLocationsDatasetsGet' request conforms to.
type TranslateProjectsLocationsDatasetsGetResource =
  "v3"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Dataset

-- | Gets a Dataset.
--
-- /See:/ 'newTranslateProjectsLocationsDatasetsGet' smart constructor.
data TranslateProjectsLocationsDatasetsGet = TranslateProjectsLocationsDatasetsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the dataset to retrieve.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsDatasetsGet' with the minimum fields required to make a request.
newTranslateProjectsLocationsDatasetsGet ::
  -- |  Required. The resource name of the dataset to retrieve. See 'name'.
  Core.Text ->
  TranslateProjectsLocationsDatasetsGet
newTranslateProjectsLocationsDatasetsGet name =
  TranslateProjectsLocationsDatasetsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest TranslateProjectsLocationsDatasetsGet where
  type Rs TranslateProjectsLocationsDatasetsGet = Dataset
  type
    Scopes TranslateProjectsLocationsDatasetsGet =
      '[CloudPlatform'FullControl, CloudTranslation'FullControl]
  requestClient TranslateProjectsLocationsDatasetsGet {..} =
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
              Core.Proxy TranslateProjectsLocationsDatasetsGetResource
          )
          Core.mempty
