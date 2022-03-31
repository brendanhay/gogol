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
-- Module      : Gogol.AndroidEnterprise.Products.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Finds approved products that match a query, or all approved products if there is no query.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.products.list@.
module Gogol.AndroidEnterprise.Products.List
  ( -- * Resource
    AndroidEnterpriseProductsListResource,

    -- ** Constructing a Request
    newAndroidEnterpriseProductsList,
    AndroidEnterpriseProductsList,
  )
where

import Gogol.AndroidEnterprise.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidenterprise.products.list@ method which the
-- 'AndroidEnterpriseProductsList' request conforms to.
type AndroidEnterpriseProductsListResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "products"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "approved" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "query" Core.Text
    Core.:> Core.QueryParam "token" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ProductsListResponse

-- | Finds approved products that match a query, or all approved products if there is no query.
--
-- /See:/ 'newAndroidEnterpriseProductsList' smart constructor.
data AndroidEnterpriseProductsList = AndroidEnterpriseProductsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Specifies whether to search among all products (false) or among only products that have been approved (true). Only \"true\" is supported, and should be specified.
    approved :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\", \"de\"). Results are returned in the language best matching the preferred language.
    language :: (Core.Maybe Core.Text),
    -- | Defines how many results the list operation should return. The default number depends on the resource collection.
    maxResults :: (Core.Maybe Core.Word32),
    -- | The search query as typed in the Google Play store search box. If omitted, all approved apps will be returned (using the pagination parameters), including apps that are not available in the store (e.g. unpublished apps).
    query :: (Core.Maybe Core.Text),
    -- | Defines the token of the page to return, usually taken from TokenPagination. This can only be used if token paging is enabled.
    token :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseProductsList' with the minimum fields required to make a request.
newAndroidEnterpriseProductsList ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  AndroidEnterpriseProductsList
newAndroidEnterpriseProductsList enterpriseId =
  AndroidEnterpriseProductsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      approved = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      language = Core.Nothing,
      maxResults = Core.Nothing,
      query = Core.Nothing,
      token = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseProductsList
  where
  type
    Rs AndroidEnterpriseProductsList =
      ProductsListResponse
  type
    Scopes AndroidEnterpriseProductsList =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseProductsList {..} =
    go
      enterpriseId
      xgafv
      accessToken
      approved
      callback
      language
      maxResults
      query
      token
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidEnterpriseService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidEnterpriseProductsListResource
          )
          Core.mempty
