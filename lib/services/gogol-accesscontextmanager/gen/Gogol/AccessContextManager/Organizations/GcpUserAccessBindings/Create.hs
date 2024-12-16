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
-- Module      : Gogol.AccessContextManager.Organizations.GcpUserAccessBindings.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a GcpUserAccessBinding. If the client specifies a name, the server ignores it. Fails if a resource already exists with the same group_key. Completion of this long-running operation does not necessarily signify that the new binding is deployed onto all affected users, which may take more time.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.organizations.gcpUserAccessBindings.create@.
module Gogol.AccessContextManager.Organizations.GcpUserAccessBindings.Create
    (
    -- * Resource
      AccessContextManagerOrganizationsGcpUserAccessBindingsCreateResource

    -- ** Constructing a Request
    , AccessContextManagerOrganizationsGcpUserAccessBindingsCreate (..)
    , newAccessContextManagerOrganizationsGcpUserAccessBindingsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessContextManager.Types

-- | A resource alias for @accesscontextmanager.organizations.gcpUserAccessBindings.create@ method which the
-- 'AccessContextManagerOrganizationsGcpUserAccessBindingsCreate' request conforms to.
type AccessContextManagerOrganizationsGcpUserAccessBindingsCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "gcpUserAccessBindings" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] GcpUserAccessBinding
                         Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a GcpUserAccessBinding. If the client specifies a name, the server ignores it. Fails if a resource already exists with the same group_key. Completion of this long-running operation does not necessarily signify that the new binding is deployed onto all affected users, which may take more time.
--
-- /See:/ 'newAccessContextManagerOrganizationsGcpUserAccessBindingsCreate' smart constructor.
data AccessContextManagerOrganizationsGcpUserAccessBindingsCreate = AccessContextManagerOrganizationsGcpUserAccessBindingsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Example: \"organizations\/256\"
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GcpUserAccessBinding
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerOrganizationsGcpUserAccessBindingsCreate' with the minimum fields required to make a request.
newAccessContextManagerOrganizationsGcpUserAccessBindingsCreate 
    ::  Core.Text
       -- ^  Required. Example: \"organizations\/256\" See 'parent'.
    -> GcpUserAccessBinding
       -- ^  Multipart request metadata. See 'payload'.
    -> AccessContextManagerOrganizationsGcpUserAccessBindingsCreate
newAccessContextManagerOrganizationsGcpUserAccessBindingsCreate parent payload =
  AccessContextManagerOrganizationsGcpUserAccessBindingsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AccessContextManagerOrganizationsGcpUserAccessBindingsCreate
         where
        type Rs
               AccessContextManagerOrganizationsGcpUserAccessBindingsCreate
             = Operation
        type Scopes
               AccessContextManagerOrganizationsGcpUserAccessBindingsCreate
             = '[CloudPlatform'FullControl]
        requestClient
          AccessContextManagerOrganizationsGcpUserAccessBindingsCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              accessContextManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AccessContextManagerOrganizationsGcpUserAccessBindingsCreateResource)
                      Core.mempty

