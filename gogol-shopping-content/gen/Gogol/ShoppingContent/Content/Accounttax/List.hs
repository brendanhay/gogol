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
-- Module      : Gogol.ShoppingContent.Content.Accounttax.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tax settings of the sub-accounts in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounttax.list@.
module Gogol.ShoppingContent.Content.Accounttax.List
  ( -- * Resource
    ContentAccounttaxListResource,

    -- ** Constructing a Request
    newContentAccounttaxList,
    ContentAccounttaxList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.accounttax.list@ method which the
-- 'ContentAccounttaxList' request conforms to.
type ContentAccounttaxListResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "accounttax"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AccounttaxListResponse

-- | Lists the tax settings of the sub-accounts in your Merchant Center account.
--
-- /See:/ 'newContentAccounttaxList' smart constructor.
data ContentAccounttaxList = ContentAccounttaxList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of tax settings to return in the response, used for paging.
    maxResults :: (Core.Maybe Core.Word32),
    -- | The ID of the managing account. This must be a multi-client account.
    merchantId :: Core.Word64,
    -- | The token returned by the previous request.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentAccounttaxList' with the minimum fields required to make a request.
newContentAccounttaxList ::
  -- |  The ID of the managing account. This must be a multi-client account. See 'merchantId'.
  Core.Word64 ->
  ContentAccounttaxList
newContentAccounttaxList merchantId =
  ContentAccounttaxList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      maxResults = Core.Nothing,
      merchantId = merchantId,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentAccounttaxList where
  type
    Rs ContentAccounttaxList =
      AccounttaxListResponse
  type
    Scopes ContentAccounttaxList =
      '["https://www.googleapis.com/auth/content"]
  requestClient ContentAccounttaxList {..} =
    go
      merchantId
      xgafv
      accessToken
      callback
      maxResults
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentAccounttaxListResource
          )
          Core.mempty
