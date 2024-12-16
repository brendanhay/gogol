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
-- Module      : Gogol.CloudIdentity.Policies.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List Policies
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.policies.list@.
module Gogol.CloudIdentity.Policies.List
    (
    -- * Resource
      CloudIdentityPoliciesListResource

    -- ** Constructing a Request
    , CloudIdentityPoliciesList (..)
    , newCloudIdentityPoliciesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Types

-- | A resource alias for @cloudidentity.policies.list@ method which the
-- 'CloudIdentityPoliciesList' request conforms to.
type CloudIdentityPoliciesListResource =
     "v1" Core.:>
       "policies" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "filter" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListPoliciesResponse

-- | List Policies
--
-- /See:/ 'newCloudIdentityPoliciesList' smart constructor.
data CloudIdentityPoliciesList = CloudIdentityPoliciesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. A CEL expression for filtering the results. Policies can be filtered by application with this expression: setting.name = \'settings\/gmail./\' Policies can be filtered by setting type with this expression: setting.name = \'/.service/status\' A maximum of one of the above setting.name clauses can be used. Policies can be filtered by customer with this expression: customer = \"customers\/{customer}\" Where @customer@ is the @id@ from the <https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers Admin SDK Customer resource>. You may use @customers\/my_customer@ to specify your own organization. When no customer is mentioned it will be default to customers\/my/customer. A maximum of one customer clause can be used. The above clauses can only be combined together in a single filter expression with the @&&@ operator.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of results to return. The service can return fewer than this number. If omitted or set to 0, the default is 50 results per page. The maximum allowed value is 100. @page_size@ values greater than 100 default to 100.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. The pagination token received from a prior call to PoliciesService.ListPolicies to retrieve the next page of results. When paginating, all other parameters provided to @ListPoliciesRequest@ must match the call that provided the page token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityPoliciesList' with the minimum fields required to make a request.
newCloudIdentityPoliciesList 
    ::  CloudIdentityPoliciesList
newCloudIdentityPoliciesList =
  CloudIdentityPoliciesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityPoliciesList
         where
        type Rs CloudIdentityPoliciesList =
             ListPoliciesResponse
        type Scopes CloudIdentityPoliciesList =
             '[CloudIdentity'Policies,
               CloudIdentity'Policies'Readonly]
        requestClient CloudIdentityPoliciesList{..}
          = go xgafv accessToken callback filter pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudIdentityService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudIdentityPoliciesListResource)
                      Core.mempty

