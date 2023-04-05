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
-- Module      : Gogol.ShoppingContent.Content.Conversionsources.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of conversion sources the caller has access to.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.conversionsources.list@.
module Gogol.ShoppingContent.Content.Conversionsources.List
  ( -- * Resource
    ContentConversionsourcesListResource,

    -- ** Constructing a Request
    ContentConversionsourcesList (..),
    newContentConversionsourcesList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.conversionsources.list@ method which the
-- 'ContentConversionsourcesList' request conforms to.
type ContentConversionsourcesListResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Int64
    Core.:> "conversionsources"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "showDeleted" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListConversionSourcesResponse

-- | Retrieves the list of conversion sources the caller has access to.
--
-- /See:/ 'newContentConversionsourcesList' smart constructor.
data ContentConversionsourcesList = ContentConversionsourcesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the account that owns the new conversion source.
    merchantId :: Core.Int64,
    -- | The maximum number of conversion sources to return in a page. If no @page_size@ is specified, @100@ is used as the default value. The maximum value is @200@. Values above @200@ will be coerced to @200@. Regardless of pagination, at most @200@ conversion sources are returned in total.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | If true, also returns archived conversion sources.
    showDeleted :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentConversionsourcesList' with the minimum fields required to make a request.
newContentConversionsourcesList ::
  -- |  Required. The ID of the account that owns the new conversion source. See 'merchantId'.
  Core.Int64 ->
  ContentConversionsourcesList
newContentConversionsourcesList merchantId =
  ContentConversionsourcesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      showDeleted = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentConversionsourcesList
  where
  type
    Rs ContentConversionsourcesList =
      ListConversionSourcesResponse
  type
    Scopes ContentConversionsourcesList =
      '[Content'FullControl]
  requestClient ContentConversionsourcesList {..} =
    go
      merchantId
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      showDeleted
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      shoppingContentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ContentConversionsourcesListResource
          )
          Core.mempty
