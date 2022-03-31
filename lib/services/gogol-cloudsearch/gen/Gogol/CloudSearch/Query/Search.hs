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
-- Module      : Gogol.CloudSearch.Query.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Cloud Search Query API provides the search method, which returns the most relevant results from a user query. The results can come from Google Workspace apps, such as Gmail or Google Drive, or they can come from data that you have indexed from a third party. __Note:__ This API requires a standard end user account to execute. A service account can\'t perform Query API requests directly; to use a service account to perform queries, set up <https://developers.google.com/cloud-search/docs/guides/delegation/ Google Workspace domain-wide delegation of authority>.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.query.search@.
module Gogol.CloudSearch.Query.Search
  ( -- * Resource
    CloudSearchQuerySearchResource,

    -- ** Constructing a Request
    newCloudSearchQuerySearch,
    CloudSearchQuerySearch,
  )
where

import Gogol.CloudSearch.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudsearch.query.search@ method which the
-- 'CloudSearchQuerySearch' request conforms to.
type CloudSearchQuerySearchResource =
  "v1"
    Core.:> "query"
    Core.:> "search"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SearchRequest
    Core.:> Core.Post '[Core.JSON] SearchResponse

-- | The Cloud Search Query API provides the search method, which returns the most relevant results from a user query. The results can come from Google Workspace apps, such as Gmail or Google Drive, or they can come from data that you have indexed from a third party. __Note:__ This API requires a standard end user account to execute. A service account can\'t perform Query API requests directly; to use a service account to perform queries, set up <https://developers.google.com/cloud-search/docs/guides/delegation/ Google Workspace domain-wide delegation of authority>.
--
-- /See:/ 'newCloudSearchQuerySearch' smart constructor.
data CloudSearchQuerySearch = CloudSearchQuerySearch
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

-- | Creates a value of 'CloudSearchQuerySearch' with the minimum fields required to make a request.
newCloudSearchQuerySearch ::
  -- |  Multipart request metadata. See 'payload'.
  SearchRequest ->
  CloudSearchQuerySearch
newCloudSearchQuerySearch payload =
  CloudSearchQuerySearch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudSearchQuerySearch where
  type Rs CloudSearchQuerySearch = SearchResponse
  type
    Scopes CloudSearchQuerySearch =
      '[CloudSearch'FullControl, CloudSearch'Query]
  requestClient CloudSearchQuerySearch {..} =
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
          ( Core.Proxy ::
              Core.Proxy CloudSearchQuerySearchResource
          )
          Core.mempty
