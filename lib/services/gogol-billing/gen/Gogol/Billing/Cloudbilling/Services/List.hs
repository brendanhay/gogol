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
-- Module      : Gogol.Billing.Cloudbilling.Services.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all public cloud services.
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.services.list@.
module Gogol.Billing.Cloudbilling.Services.List
  ( -- * Resource
    CloudbillingServicesListResource,

    -- ** Constructing a Request
    CloudbillingServicesList (..),
    newCloudbillingServicesList,
  )
where

import Gogol.Billing.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbilling.services.list@ method which the
-- 'CloudbillingServicesList' request conforms to.
type CloudbillingServicesListResource =
  "v1"
    Core.:> "services"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListServicesResponse

-- | Lists all public cloud services.
--
-- /See:/ 'newCloudbillingServicesList' smart constructor.
data CloudbillingServicesList = CloudbillingServicesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Requested page size. Defaults to 5000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results to return. This should be a @next_page_token@ value returned from a previous @ListServices@ call. If unspecified, the first page of results is returned.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingServicesList' with the minimum fields required to make a request.
newCloudbillingServicesList ::
  CloudbillingServicesList
newCloudbillingServicesList =
  CloudbillingServicesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudbillingServicesList where
  type
    Rs CloudbillingServicesList =
      ListServicesResponse
  type
    Scopes CloudbillingServicesList =
      '[ CloudBilling'FullControl,
         CloudBilling'Readonly,
         CloudPlatform'FullControl
       ]
  requestClient CloudbillingServicesList {..} =
    go
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      billingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudbillingServicesListResource
          )
          Core.mempty
