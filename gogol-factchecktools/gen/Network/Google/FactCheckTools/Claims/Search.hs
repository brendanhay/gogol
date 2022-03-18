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
-- Module      : Network.Google.FactCheckTools.Claims.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search through fact-checked claims.
--
-- /See:/ <https://developers.google.com/fact-check/tools/api/ Fact Check Tools API Reference> for @factchecktools.claims.search@.
module Network.Google.FactCheckTools.Claims.Search
  ( -- * Resource
    FactCheckToolsClaimsSearchResource,

    -- ** Constructing a Request
    newFactCheckToolsClaimsSearch,
    FactCheckToolsClaimsSearch,
  )
where

import Network.Google.FactCheckTools.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @factchecktools.claims.search@ method which the
-- 'FactCheckToolsClaimsSearch' request conforms to.
type FactCheckToolsClaimsSearchResource =
  "v1alpha1"
    Core.:> "claims:search"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "maxAgeDays" Core.Int32
    Core.:> Core.QueryParam "offset" Core.Int32
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam "reviewPublisherSiteFilter" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse

-- | Search through fact-checked claims.
--
-- /See:/ 'newFactCheckToolsClaimsSearch' smart constructor.
data FactCheckToolsClaimsSearch = FactCheckToolsClaimsSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". Can be used to restrict results by language, though we do not currently consider the region.
    languageCode :: (Core.Maybe Core.Text),
    -- | The maximum age of the returned search results, in days. Age is determined by either claim date or review date, whichever is newer.
    maxAgeDays :: (Core.Maybe Core.Int32),
    -- | An integer that specifies the current offset (that is, starting result location) in search results. This field is only considered if @page_token@ is unset. For example, 0 means to return results starting from the first matching result, and 10 means to return from the 11th result.
    offset :: (Core.Maybe Core.Int32),
    -- | The pagination size. We will return up to that many results. Defaults to 10 if not set.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The pagination token. You may provide the @next_page_token@ returned from a previous List request, if any, in order to get the next page. All other fields must have the same values as in the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Textual query string. Required unless @review_publisher_site_filter@ is specified.
    query :: (Core.Maybe Core.Text),
    -- | The review publisher site to filter results by, e.g. nytimes.com.
    reviewPublisherSiteFilter :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FactCheckToolsClaimsSearch' with the minimum fields required to make a request.
newFactCheckToolsClaimsSearch ::
  FactCheckToolsClaimsSearch
newFactCheckToolsClaimsSearch =
  FactCheckToolsClaimsSearch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      languageCode = Core.Nothing,
      maxAgeDays = Core.Nothing,
      offset = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      query = Core.Nothing,
      reviewPublisherSiteFilter = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FactCheckToolsClaimsSearch
  where
  type
    Rs FactCheckToolsClaimsSearch =
      GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimSearchResponse
  type Scopes FactCheckToolsClaimsSearch = '[]
  requestClient FactCheckToolsClaimsSearch {..} =
    go
      xgafv
      accessToken
      callback
      languageCode
      maxAgeDays
      offset
      pageSize
      pageToken
      query
      reviewPublisherSiteFilter
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      factCheckToolsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FactCheckToolsClaimsSearchResource
          )
          Core.mempty
