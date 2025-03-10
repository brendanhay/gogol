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
-- Module      : Gogol.BigQuery.Projects.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- RPC to list projects to which the user has been granted any project role. Users of this method are encouraged to consider the <https://cloud.google.com/resource-manager/docs/ Resource Manager> API, which provides the underlying data for this method and has more capabilities.
--
-- /See:/ <https://cloud.google.com/bigquery/ BigQuery API Reference> for @bigquery.projects.list@.
module Gogol.BigQuery.Projects.List
  ( -- * Resource
    BigQueryProjectsListResource,

    -- ** Constructing a Request
    BigQueryProjectsList (..),
    newBigQueryProjectsList,
  )
where

import Gogol.BigQuery.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @bigquery.projects.list@ method which the
-- 'BigQueryProjectsList' request conforms to.
type BigQueryProjectsListResource =
  "bigquery"
    Core.:> "v2"
    Core.:> "projects"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ProjectList

-- | RPC to list projects to which the user has been granted any project role. Users of this method are encouraged to consider the <https://cloud.google.com/resource-manager/docs/ Resource Manager> API, which provides the underlying data for this method and has more capabilities.
--
-- /See:/ 'newBigQueryProjectsList' smart constructor.
data BigQueryProjectsList = BigQueryProjectsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | @maxResults@ unset returns all results, up to 50 per page. Additionally, the number of projects in a page may be fewer than @maxResults@ because projects are retrieved and then filtered to only projects with the BigQuery API enabled.
    maxResults :: (Core.Maybe Core.Word32),
    -- | Page token, returned by a previous call, to request the next page of results. If not present, no further pages are present.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BigQueryProjectsList' with the minimum fields required to make a request.
newBigQueryProjectsList ::
  BigQueryProjectsList
newBigQueryProjectsList =
  BigQueryProjectsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      maxResults = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BigQueryProjectsList where
  type Rs BigQueryProjectsList = ProjectList
  type
    Scopes BigQueryProjectsList =
      '[ Bigquery'FullControl,
         CloudPlatform'FullControl,
         CloudPlatform'ReadOnly
       ]
  requestClient BigQueryProjectsList {..} =
    go
      xgafv
      accessToken
      callback
      maxResults
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      bigQueryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BigQueryProjectsListResource)
          Core.mempty
