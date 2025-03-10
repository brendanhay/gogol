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
-- Module      : Gogol.FactCheckTools.Claims.ImageSearch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search through fact-checked claims using an image as the query.
--
-- /See:/ <https://developers.google.com/fact-check/tools/api/ Fact Check Tools API Reference> for @factchecktools.claims.imageSearch@.
module Gogol.FactCheckTools.Claims.ImageSearch
  ( -- * Resource
    FactCheckToolsClaimsImageSearchResource,

    -- ** Constructing a Request
    FactCheckToolsClaimsImageSearch (..),
    newFactCheckToolsClaimsImageSearch,
  )
where

import Gogol.FactCheckTools.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @factchecktools.claims.imageSearch@ method which the
-- 'FactCheckToolsClaimsImageSearch' request conforms to.
type FactCheckToolsClaimsImageSearchResource =
  "v1alpha1"
    Core.:> "claims:imageSearch"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "imageUri" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "offset" Core.Int32
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimImageSearchResponse

-- | Search through fact-checked claims using an image as the query.
--
-- /See:/ 'newFactCheckToolsClaimsImageSearch' smart constructor.
data FactCheckToolsClaimsImageSearch = FactCheckToolsClaimsImageSearch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The URI of the source image. This must be a publicly-accessible image HTTP\/HTTPS URL. When fetching images from HTTP\/HTTPS URLs, Google cannot guarantee that the request will be completed. Your request may fail if the specified host denies the request (e.g. due to request throttling or DOS prevention), or if Google throttles requests to the site for abuse prevention. You should not depend on externally-hosted images for production applications.
    imageUri :: (Core.Maybe Core.Text),
    -- | Optional. The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". Can be used to restrict results by language, though we do not currently consider the region.
    languageCode :: (Core.Maybe Core.Text),
    -- | Optional. An integer that specifies the current offset (that is, starting result location) in search results. This field is only considered if @page_token@ is unset. For example, 0 means to return results starting from the first matching result, and 10 means to return from the 11th result.
    offset :: (Core.Maybe Core.Int32),
    -- | Optional. The pagination size. We will return up to that many results. Defaults to 10 if not set.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. The pagination token. You may provide the @next_page_token@ returned from a previous List request, if any, in order to get the next page. All other fields must have the same values as in the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FactCheckToolsClaimsImageSearch' with the minimum fields required to make a request.
newFactCheckToolsClaimsImageSearch ::
  FactCheckToolsClaimsImageSearch
newFactCheckToolsClaimsImageSearch =
  FactCheckToolsClaimsImageSearch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      imageUri = Core.Nothing,
      languageCode = Core.Nothing,
      offset = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FactCheckToolsClaimsImageSearch where
  type
    Rs FactCheckToolsClaimsImageSearch =
      GoogleFactcheckingFactchecktoolsV1alpha1FactCheckedClaimImageSearchResponse
  type Scopes FactCheckToolsClaimsImageSearch = '[]
  requestClient FactCheckToolsClaimsImageSearch {..} =
    go
      xgafv
      accessToken
      callback
      imageUri
      languageCode
      offset
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      factCheckToolsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FactCheckToolsClaimsImageSearchResource)
          Core.mempty
