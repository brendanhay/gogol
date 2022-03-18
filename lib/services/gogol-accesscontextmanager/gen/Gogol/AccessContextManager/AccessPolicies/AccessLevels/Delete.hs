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
-- Module      : Gogol.AccessContextManager.AccessPolicies.AccessLevels.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an access level based on the resource name. The long-running operation from this RPC has a successful status after the access level has been removed from long-lasting storage.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.accessLevels.delete@.
module Gogol.AccessContextManager.AccessPolicies.AccessLevels.Delete
    (
    -- * Resource
      AccessContextManagerAccessPoliciesAccessLevelsDeleteResource

    -- ** Constructing a Request
    , newAccessContextManagerAccessPoliciesAccessLevelsDelete
    , AccessContextManagerAccessPoliciesAccessLevelsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessContextManager.Types

-- | A resource alias for @accesscontextmanager.accessPolicies.accessLevels.delete@ method which the
-- 'AccessContextManagerAccessPoliciesAccessLevelsDelete' request conforms to.
type AccessContextManagerAccessPoliciesAccessLevelsDeleteResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Operation

-- | Deletes an access level based on the resource name. The long-running operation from this RPC has a successful status after the access level has been removed from long-lasting storage.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesAccessLevelsDelete' smart constructor.
data AccessContextManagerAccessPoliciesAccessLevelsDelete = AccessContextManagerAccessPoliciesAccessLevelsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name for the Access Level. Format: @accessPolicies\/{policy_id}\/accessLevels\/{access_level_id}@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesAccessLevelsDelete' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesAccessLevelsDelete 
    ::  Core.Text
       -- ^  Required. Resource name for the Access Level. Format: @accessPolicies\/{policy_id}\/accessLevels\/{access_level_id}@ See 'name'.
    -> AccessContextManagerAccessPoliciesAccessLevelsDelete
newAccessContextManagerAccessPoliciesAccessLevelsDelete name =
  AccessContextManagerAccessPoliciesAccessLevelsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AccessContextManagerAccessPoliciesAccessLevelsDelete
         where
        type Rs
               AccessContextManagerAccessPoliciesAccessLevelsDelete
             = Operation
        type Scopes
               AccessContextManagerAccessPoliciesAccessLevelsDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AccessContextManagerAccessPoliciesAccessLevelsDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              accessContextManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AccessContextManagerAccessPoliciesAccessLevelsDeleteResource)
                      Core.mempty

