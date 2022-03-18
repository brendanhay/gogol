{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a service perimeter based on the resource name.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.servicePerimeters.get@.
module Gogol.AccessContextManager.AccessPolicies.ServicePerimeters.Get
    (
    -- * Resource
      AccessContextManagerAccessPoliciesServicePerimetersGetResource

    -- ** Constructing a Request
    , newAccessContextManagerAccessPoliciesServicePerimetersGet
    , AccessContextManagerAccessPoliciesServicePerimetersGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessContextManager.Types

-- | A resource alias for @accesscontextmanager.accessPolicies.servicePerimeters.get@ method which the
-- 'AccessContextManagerAccessPoliciesServicePerimetersGet' request conforms to.
type AccessContextManagerAccessPoliciesServicePerimetersGetResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] ServicePerimeter

-- | Gets a service perimeter based on the resource name.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesServicePerimetersGet' smart constructor.
data AccessContextManagerAccessPoliciesServicePerimetersGet = AccessContextManagerAccessPoliciesServicePerimetersGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name for the Service Perimeter. Format: @accessPolicies\/{policy_id}\/servicePerimeters\/{service_perimeters_id}@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesServicePerimetersGet' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesServicePerimetersGet 
    ::  Core.Text
       -- ^  Required. Resource name for the Service Perimeter. Format: @accessPolicies\/{policy_id}\/servicePerimeters\/{service_perimeters_id}@ See 'name'.
    -> AccessContextManagerAccessPoliciesServicePerimetersGet
newAccessContextManagerAccessPoliciesServicePerimetersGet name =
  AccessContextManagerAccessPoliciesServicePerimetersGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AccessContextManagerAccessPoliciesServicePerimetersGet
         where
        type Rs
               AccessContextManagerAccessPoliciesServicePerimetersGet
             = ServicePerimeter
        type Scopes
               AccessContextManagerAccessPoliciesServicePerimetersGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AccessContextManagerAccessPoliciesServicePerimetersGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              accessContextManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AccessContextManagerAccessPoliciesServicePerimetersGetResource)
                      Core.mempty

