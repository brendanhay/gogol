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
-- Module      : Gogol.PlusDomains.Audiences.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.audiences.list@.
module Gogol.PlusDomains.Audiences.List
  ( -- * Resource
    PlusDomainsAudiencesListResource,

    -- ** Constructing a Request
    PlusDomainsAudiencesList (..),
    newPlusDomainsAudiencesList,
  )
where

import Gogol.PlusDomains.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @plusDomains.audiences.list@ method which the
-- 'PlusDomainsAudiencesList' request conforms to.
type PlusDomainsAudiencesListResource =
  "plusDomains"
    Core.:> "v1"
    Core.:> "people"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "audiences"
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AudiencesFeed

-- | Shut down. See https:\/\/developers.google.com\/+\/api-shutdown for more details.
--
-- /See:/ 'newPlusDomainsAudiencesList' smart constructor.
data PlusDomainsAudiencesList = PlusDomainsAudiencesList
  { -- | The maximum number of circles to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
    maxResults :: Core.Word32,
    -- | The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of \"nextPageToken\" from the previous response.
    pageToken :: (Core.Maybe Core.Text),
    -- | The ID of the user to get audiences for. The special value \"me\" can be used to indicate the authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlusDomainsAudiencesList' with the minimum fields required to make a request.
newPlusDomainsAudiencesList ::
  -- |  The ID of the user to get audiences for. The special value \"me\" can be used to indicate the authenticated user. See 'userId'.
  Core.Text ->
  PlusDomainsAudiencesList
newPlusDomainsAudiencesList userId =
  PlusDomainsAudiencesList
    { maxResults = 20,
      pageToken = Core.Nothing,
      userId = userId
    }

instance Core.GoogleRequest PlusDomainsAudiencesList where
  type Rs PlusDomainsAudiencesList = AudiencesFeed
  type
    Scopes PlusDomainsAudiencesList =
      '[Plus'Circles'Read, Plus'Login, Plus'Me]
  requestClient PlusDomainsAudiencesList {..} =
    go
      userId
      (Core.Just maxResults)
      pageToken
      (Core.Just Core.AltJSON)
      plusDomainsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy PlusDomainsAudiencesListResource)
          Core.mempty
