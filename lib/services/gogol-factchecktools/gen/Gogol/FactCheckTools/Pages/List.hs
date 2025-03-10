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
-- Module      : Gogol.FactCheckTools.Pages.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the @ClaimReview@ markup pages for a specific URL or for an organization.
--
-- /See:/ <https://developers.google.com/fact-check/tools/api/ Fact Check Tools API Reference> for @factchecktools.pages.list@.
module Gogol.FactCheckTools.Pages.List
  ( -- * Resource
    FactCheckToolsPagesListResource,

    -- ** Constructing a Request
    FactCheckToolsPagesList (..),
    newFactCheckToolsPagesList,
  )
where

import Gogol.FactCheckTools.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @factchecktools.pages.list@ method which the
-- 'FactCheckToolsPagesList' request conforms to.
type FactCheckToolsPagesListResource =
  "v1alpha1"
    Core.:> "pages"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "offset" Core.Int32
    Core.:> Core.QueryParam "organization" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "url" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse

-- | List the @ClaimReview@ markup pages for a specific URL or for an organization.
--
-- /See:/ 'newFactCheckToolsPagesList' smart constructor.
data FactCheckToolsPagesList = FactCheckToolsPagesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | An integer that specifies the current offset (that is, starting result location) in search results. This field is only considered if @page_token@ is unset, and if the request is not for a specific URL. For example, 0 means to return results starting from the first matching result, and 10 means to return from the 11th result.
    offset :: (Core.Maybe Core.Int32),
    -- | The organization for which we want to fetch markups for. For instance, \"site.com\". Cannot be specified along with an URL.
    organization :: (Core.Maybe Core.Text),
    -- | The pagination size. We will return up to that many results. Defaults to 10 if not set. Has no effect if a URL is requested.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The pagination token. You may provide the @next_page_token@ returned from a previous List request, if any, in order to get the next page. All other fields must have the same values as in the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The URL from which to get @ClaimReview@ markup. There will be at most one result. If markup is associated with a more canonical version of the URL provided, we will return that URL instead. Cannot be specified along with an organization.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FactCheckToolsPagesList' with the minimum fields required to make a request.
newFactCheckToolsPagesList ::
  FactCheckToolsPagesList
newFactCheckToolsPagesList =
  FactCheckToolsPagesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      offset = Core.Nothing,
      organization = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      url = Core.Nothing
    }

instance Core.GoogleRequest FactCheckToolsPagesList where
  type
    Rs FactCheckToolsPagesList =
      GoogleFactcheckingFactchecktoolsV1alpha1ListClaimReviewMarkupPagesResponse
  type Scopes FactCheckToolsPagesList = '[Factchecktools'FullControl]
  requestClient FactCheckToolsPagesList {..} =
    go
      xgafv
      accessToken
      callback
      offset
      organization
      pageSize
      pageToken
      uploadType
      uploadProtocol
      url
      (Core.Just Core.AltJSON)
      factCheckToolsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FactCheckToolsPagesListResource)
          Core.mempty
