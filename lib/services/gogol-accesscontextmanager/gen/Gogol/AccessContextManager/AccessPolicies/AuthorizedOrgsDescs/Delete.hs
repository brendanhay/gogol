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
-- Module      : Gogol.AccessContextManager.AccessPolicies.AuthorizedOrgsDescs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an authorized orgs desc based on the resource name. The long-running operation from this RPC has a successful status after the authorized orgs desc is removed from long-lasting storage.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.accessPolicies.authorizedOrgsDescs.delete@.
module Gogol.AccessContextManager.AccessPolicies.AuthorizedOrgsDescs.Delete
    (
    -- * Resource
      AccessContextManagerAccessPoliciesAuthorizedOrgsDescsDeleteResource

    -- ** Constructing a Request
    , AccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete (..)
    , newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessContextManager.Types

-- | A resource alias for @accesscontextmanager.accessPolicies.authorizedOrgsDescs.delete@ method which the
-- 'AccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete' request conforms to.
type AccessContextManagerAccessPoliciesAuthorizedOrgsDescsDeleteResource
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

-- | Deletes an authorized orgs desc based on the resource name. The long-running operation from this RPC has a successful status after the authorized orgs desc is removed from long-lasting storage.
--
-- /See:/ 'newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete' smart constructor.
data AccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete = AccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name for the Authorized Orgs Desc. Format: @accessPolicies\/{policy_id}\/authorizedOrgsDesc\/{authorized_orgs_desc_id}@
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete' with the minimum fields required to make a request.
newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete 
    ::  Core.Text
       -- ^  Required. Resource name for the Authorized Orgs Desc. Format: @accessPolicies\/{policy_id}\/authorizedOrgsDesc\/{authorized_orgs_desc_id}@ See 'name'.
    -> AccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete
newAccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete name =
  AccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete
         where
        type Rs
               AccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete
             = Operation
        type Scopes
               AccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete
             = '[CloudPlatform'FullControl]
        requestClient
          AccessContextManagerAccessPoliciesAuthorizedOrgsDescsDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              accessContextManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AccessContextManagerAccessPoliciesAuthorizedOrgsDescsDeleteResource)
                      Core.mempty

