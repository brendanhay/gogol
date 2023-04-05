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
-- Module      : Gogol.Translate.Projects.Locations.Datasets.Examples.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists sentence pairs in the dataset.
--
-- /See:/ <https://cloud.google.com/translate/docs/quickstarts Cloud Translation API Reference> for @translate.projects.locations.datasets.examples.list@.
module Gogol.Translate.Projects.Locations.Datasets.Examples.List
  ( -- * Resource
    TranslateProjectsLocationsDatasetsExamplesListResource,

    -- ** Constructing a Request
    TranslateProjectsLocationsDatasetsExamplesList (..),
    newTranslateProjectsLocationsDatasetsExamplesList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Translate.Types

-- | A resource alias for @translate.projects.locations.datasets.examples.list@ method which the
-- 'TranslateProjectsLocationsDatasetsExamplesList' request conforms to.
type TranslateProjectsLocationsDatasetsExamplesListResource =
  "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "examples"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListExamplesResponse

-- | Lists sentence pairs in the dataset.
--
-- /See:/ 'newTranslateProjectsLocationsDatasetsExamplesList' smart constructor.
data TranslateProjectsLocationsDatasetsExamplesList = TranslateProjectsLocationsDatasetsExamplesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. An expression for filtering the examples that will be returned. Example filter: * @usage=TRAIN@
    filter :: (Core.Maybe Core.Text),
    -- | Optional. Requested page size. The server can return fewer results than requested.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A token identifying a page of results for the server to return. Typically obtained from next/page/token field in the response of a ListExamples call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Name of the parent dataset. In form of @projects\/{project-number-or-id}\/locations\/{location-id}\/datasets\/{dataset-id}@
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TranslateProjectsLocationsDatasetsExamplesList' with the minimum fields required to make a request.
newTranslateProjectsLocationsDatasetsExamplesList ::
  -- |  Required. Name of the parent dataset. In form of @projects\/{project-number-or-id}\/locations\/{location-id}\/datasets\/{dataset-id}@ See 'parent'.
  Core.Text ->
  TranslateProjectsLocationsDatasetsExamplesList
newTranslateProjectsLocationsDatasetsExamplesList parent =
  TranslateProjectsLocationsDatasetsExamplesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TranslateProjectsLocationsDatasetsExamplesList
  where
  type
    Rs
      TranslateProjectsLocationsDatasetsExamplesList =
      ListExamplesResponse
  type
    Scopes
      TranslateProjectsLocationsDatasetsExamplesList =
      '[ CloudPlatform'FullControl,
         CloudTranslation'FullControl
       ]
  requestClient
    TranslateProjectsLocationsDatasetsExamplesList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
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
                  TranslateProjectsLocationsDatasetsExamplesListResource
            )
            Core.mempty
