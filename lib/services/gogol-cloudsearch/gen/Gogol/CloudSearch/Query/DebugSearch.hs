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
-- Module      : Gogol.CloudSearch.Query.DebugSearch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns Debug information for Cloud Search Query API provides the search method. __Note:__ This API requires a standard end user account to execute. A service account can\'t perform Query API requests directly; to use a service account to perform queries, set up <https://developers.google.com/cloud-search/docs/guides/delegation/ Google Workspace domain-wide delegation of authority>.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.query.debugSearch@.
module Gogol.CloudSearch.Query.DebugSearch
  ( -- * Resource
    CloudSearchQueryDebugSearchResource,

    -- ** Constructing a Request
    CloudSearchQueryDebugSearch (..),
    newCloudSearchQueryDebugSearch,
  )
where

import Gogol.CloudSearch.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudsearch.query.debugSearch@ method which the
-- 'CloudSearchQueryDebugSearch' request conforms to.
type CloudSearchQueryDebugSearchResource =
  "v1"
    Core.:> "query:debugSearch"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SearchRequest
    Core.:> Core.Post '[Core.JSON] DebugResponse

-- | Returns Debug information for Cloud Search Query API provides the search method. __Note:__ This API requires a standard end user account to execute. A service account can\'t perform Query API requests directly; to use a service account to perform queries, set up <https://developers.google.com/cloud-search/docs/guides/delegation/ Google Workspace domain-wide delegation of authority>.
--
-- /See:/ 'newCloudSearchQueryDebugSearch' smart constructor.
data CloudSearchQueryDebugSearch = CloudSearchQueryDebugSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: SearchRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudSearchQueryDebugSearch' with the minimum fields required to make a request.
newCloudSearchQueryDebugSearch ::
  -- |  Multipart request metadata. See 'payload'.
  SearchRequest ->
  CloudSearchQueryDebugSearch
newCloudSearchQueryDebugSearch payload =
  CloudSearchQueryDebugSearch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudSearchQueryDebugSearch where
  type Rs CloudSearchQueryDebugSearch = DebugResponse
  type
    Scopes CloudSearchQueryDebugSearch =
      '[CloudSearch'FullControl, CloudSearch'Query]
  requestClient CloudSearchQueryDebugSearch {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudSearchService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CloudSearchQueryDebugSearchResource)
          Core.mempty
