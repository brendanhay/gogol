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
-- Module      : Gogol.Translate.Projects.Locations.Datasets.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Dataset.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.datasets.create@.
module Gogol.Translate.Projects.Locations.Datasets.Create
  ( -- * Resource
    TranslateProjectsLocationsDatasetsCreateResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsDatasetsCreate (..),
    newTranslateProjectsLocationsDatasetsCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.datasets.create@ method which the
-- 'TranslateProjectsLocationsDatasetsCreate' request conforms to.
type TranslateProjectsLocationsDatasetsCreateResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "datasets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Dataset
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a Dataset.
--
-- /See:/ 'newTranslateProjectsLocationsDatasetsCreate' smart constructor.
data TranslateProjectsLocationsDatasetsCreate = TranslateProjectsLocationsDatasetsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The project name.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Dataset,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsDatasetsCreate' with the minimum fields required to make a request.
newTranslateProjectsLocationsDatasetsCreate ::
  -- |  Required. The project name. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Dataset ->
  TranslateProjectsLocationsDatasetsCreate
newTranslateProjectsLocationsDatasetsCreate parent payload =
  TranslateProjectsLocationsDatasetsCreate
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
    TranslateProjectsLocationsDatasetsCreate
  where
  type
    Rs TranslateProjectsLocationsDatasetsCreate =
      Operation
  type
    Scopes TranslateProjectsLocationsDatasetsCreate =
      '[ CloudPlatform'FullControl,
         CloudTranslation'FullControl
       ]
  requestClient
    TranslateProjectsLocationsDatasetsCreate {..} =
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
                  TranslateProjectsLocationsDatasetsCreateResource
            )
            Core.mempty
