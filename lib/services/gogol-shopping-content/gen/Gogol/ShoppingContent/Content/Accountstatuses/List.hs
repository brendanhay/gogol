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
-- Module      : Gogol.ShoppingContent.Content.Accountstatuses.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the statuses of the sub-accounts in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accountstatuses.list@.
module Gogol.ShoppingContent.Content.Accountstatuses.List
  ( -- * Resource
    ContentAccountstatusesListResource,

    -- ** Constructing a Request
    ContentAccountstatusesList (..),
    newContentAccountstatusesList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accountstatuses.list@ method which the
-- 'ContentAccountstatusesList' request conforms to.
type ContentAccountstatusesListResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "accountstatuses"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "destinations" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "name" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AccountstatusesListResponse

-- | Lists the statuses of the sub-accounts in your Merchant Center account.
--
-- /See:/ 'newContentAccountstatusesList' smart constructor.
data ContentAccountstatusesList = ContentAccountstatusesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination.
    destinations :: (Core.Maybe [Core.Text]),
    -- | The maximum number of account statuses to return in the response, used for paging.
    maxResults :: (Core.Maybe Core.Word32),
    -- | The ID of the managing account. This must be a multi-client account.
    merchantId :: Core.Word64,
    -- | If set, only the accounts with the given name (case sensitive) will be returned.
    name :: (Core.Maybe Core.Text),
    -- | The token returned by the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccountstatusesList' with the minimum fields required to make a request.
newContentAccountstatusesList ::
  -- |  The ID of the managing account. This must be a multi-client account. See 'merchantId'.
  Core.Word64 ->
  ContentAccountstatusesList
newContentAccountstatusesList merchantId =
  ContentAccountstatusesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      destinations = Core.Nothing,
      maxResults = Core.Nothing,
      merchantId = merchantId,
      name = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentAccountstatusesList where
  type Rs ContentAccountstatusesList = AccountstatusesListResponse
  type Scopes ContentAccountstatusesList = '[Content'FullControl]
  requestClient ContentAccountstatusesList {..} =
    go
      merchantId
      xgafv
      accessToken
      callback
      (destinations Core.^. Core._Default)
      maxResults
      name
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ContentAccountstatusesListResource)
          Core.mempty
