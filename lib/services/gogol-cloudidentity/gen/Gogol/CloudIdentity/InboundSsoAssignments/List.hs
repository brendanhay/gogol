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
-- Module      : Gogol.CloudIdentity.InboundSsoAssignments.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the InboundSsoAssignments for a @Customer@.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.inboundSsoAssignments.list@.
module Gogol.CloudIdentity.InboundSsoAssignments.List
    (
    -- * Resource
      CloudIdentityInboundSsoAssignmentsListResource

    -- ** Constructing a Request
    , CloudIdentityInboundSsoAssignmentsList (..)
    , newCloudIdentityInboundSsoAssignmentsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudIdentity.Types

-- | A resource alias for @cloudidentity.inboundSsoAssignments.list@ method which the
-- 'CloudIdentityInboundSsoAssignmentsList' request conforms to.
type CloudIdentityInboundSsoAssignmentsListResource =
     "v1" Core.:>
       "inboundSsoAssignments" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "filter" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON]
                             ListInboundSsoAssignmentsResponse

-- | Lists the InboundSsoAssignments for a @Customer@.
--
-- /See:/ 'newCloudIdentityInboundSsoAssignmentsList' smart constructor.
data CloudIdentityInboundSsoAssignmentsList = CloudIdentityInboundSsoAssignmentsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | A CEL expression to filter the results. The only supported filter is filtering by customer. For example: @customer==customers\/C0123abc@. Omitting the filter or specifying a filter of @customer==customers\/my_customer@ will return the assignments for the customer that the caller (authenticated user) belongs to.
    , filter :: (Core.Maybe Core.Text)
      -- | The maximum number of assignments to return. The service may return fewer than this value. If omitted (or defaulted to zero) the server will use a sensible default. This default may change over time. The maximum allowed value is 100, though requests with page_size greater than that will be silently interpreted as having this maximum value. This may increase in the futue.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A page token, received from a previous @ListInboundSsoAssignments@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListInboundSsoAssignments@ must match the call that provided the page token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityInboundSsoAssignmentsList' with the minimum fields required to make a request.
newCloudIdentityInboundSsoAssignmentsList 
    ::  CloudIdentityInboundSsoAssignmentsList
newCloudIdentityInboundSsoAssignmentsList =
  CloudIdentityInboundSsoAssignmentsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudIdentityInboundSsoAssignmentsList
         where
        type Rs CloudIdentityInboundSsoAssignmentsList =
             ListInboundSsoAssignmentsResponse
        type Scopes CloudIdentityInboundSsoAssignmentsList =
             '[CloudIdentity'Inboundsso,
               CloudIdentity'Inboundsso'Readonly,
               CloudPlatform'FullControl]
        requestClient
          CloudIdentityInboundSsoAssignmentsList{..}
          = go xgafv accessToken callback filter pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              cloudIdentityService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudIdentityInboundSsoAssignmentsListResource)
                      Core.mempty

