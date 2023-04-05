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
-- Module      : Gogol.Manufacturers.Accounts.Languages.ProductCertifications.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists product certifications from a specified certification body. This method can only be called by certification bodies.
--
-- /See:/ <https://developers.google.com/manufacturers/ Manufacturer Center API Reference> for @manufacturers.accounts.languages.productCertifications.list@.
module Gogol.Manufacturers.Accounts.Languages.ProductCertifications.List
  ( -- * Resource
    ManufacturersAccountsLanguagesProductCertificationsListResource,

    -- ** Constructing a Request
    ManufacturersAccountsLanguagesProductCertificationsList (..),
    newManufacturersAccountsLanguagesProductCertificationsList,
  )
where

import Gogol.Manufacturers.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @manufacturers.accounts.languages.productCertifications.list@ method which the
-- 'ManufacturersAccountsLanguagesProductCertificationsList' request conforms to.
type ManufacturersAccountsLanguagesProductCertificationsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "productCertifications"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListProductCertificationsResponse

-- | Lists product certifications from a specified certification body. This method can only be called by certification bodies.
--
-- /See:/ 'newManufacturersAccountsLanguagesProductCertificationsList' smart constructor.
data ManufacturersAccountsLanguagesProductCertificationsList = ManufacturersAccountsLanguagesProductCertificationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of product certifications to return. The service may return fewer than this value. If unspecified, at most 50 product certifications will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. A page token, received from a previous @ListProductCertifications@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListProductCertifications@ must match the call that provided the page token. Required if requesting the second or higher page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent, which owns this collection of product certifications. Format: accounts\/{account}\/languages\/{language_code}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManufacturersAccountsLanguagesProductCertificationsList' with the minimum fields required to make a request.
newManufacturersAccountsLanguagesProductCertificationsList ::
  -- |  Required. The parent, which owns this collection of product certifications. Format: accounts\/{account}\/languages\/{language_code} See 'parent'.
  Core.Text ->
  ManufacturersAccountsLanguagesProductCertificationsList
newManufacturersAccountsLanguagesProductCertificationsList parent =
  ManufacturersAccountsLanguagesProductCertificationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ManufacturersAccountsLanguagesProductCertificationsList
  where
  type
    Rs
      ManufacturersAccountsLanguagesProductCertificationsList =
      ListProductCertificationsResponse
  type
    Scopes
      ManufacturersAccountsLanguagesProductCertificationsList =
      '[Manufacturercenter'FullControl]
  requestClient
    ManufacturersAccountsLanguagesProductCertificationsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        manufacturersService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ManufacturersAccountsLanguagesProductCertificationsListResource
            )
            Core.mempty
