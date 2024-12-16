{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Billing.Cloudbilling.BillingAccounts.Projects.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the projects associated with a billing account. The current authenticated user must have the @billing.resourceAssociations.list@ IAM permission, which is often given to billing account <https://cloud.google.com/billing/docs/how-to/billing-access viewers>.
--
-- /See:/ <https://cloud.google.com/billing/docs/apis Cloud Billing API Reference> for @cloudbilling.billingAccounts.projects.list@.
module Gogol.Billing.Cloudbilling.BillingAccounts.Projects.List
    (
    -- * Resource
      CloudbillingBillingAccountsProjectsListResource

    -- ** Constructing a Request
    , CloudbillingBillingAccountsProjectsList (..)
    , newCloudbillingBillingAccountsProjectsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Billing.Types

-- | A resource alias for @cloudbilling.billingAccounts.projects.list@ method which the
-- 'CloudbillingBillingAccountsProjectsList' request conforms to.
type CloudbillingBillingAccountsProjectsListResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         "projects" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListProjectBillingInfoResponse

-- | Lists the projects associated with a billing account. The current authenticated user must have the @billing.resourceAssociations.list@ IAM permission, which is often given to billing account <https://cloud.google.com/billing/docs/how-to/billing-access viewers>.
--
-- /See:/ 'newCloudbillingBillingAccountsProjectsList' smart constructor.
data CloudbillingBillingAccountsProjectsList = CloudbillingBillingAccountsProjectsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the billing account associated with the projects that you want to list. For example, @billingAccounts\/012345-567890-ABCDEF@.
    , name :: Core.Text
      -- | Requested page size. The maximum page size is 100; this is also the default.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A token identifying a page of results to be returned. This should be a @next_page_token@ value returned from a previous @ListProjectBillingInfo@ call. If unspecified, the first page of results is returned.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingBillingAccountsProjectsList' with the minimum fields required to make a request.
newCloudbillingBillingAccountsProjectsList 
    ::  Core.Text
       -- ^  Required. The resource name of the billing account associated with the projects that you want to list. For example, @billingAccounts\/012345-567890-ABCDEF@. See 'name'.
    -> CloudbillingBillingAccountsProjectsList
newCloudbillingBillingAccountsProjectsList name =
  CloudbillingBillingAccountsProjectsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbillingBillingAccountsProjectsList
         where
        type Rs CloudbillingBillingAccountsProjectsList =
             ListProjectBillingInfoResponse
        type Scopes CloudbillingBillingAccountsProjectsList =
             '[CloudBilling'FullControl, CloudBilling'Readonly,
               CloudPlatform'FullControl]
        requestClient
          CloudbillingBillingAccountsProjectsList{..}
          = go name xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              billingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbillingBillingAccountsProjectsListResource)
                      Core.mempty

