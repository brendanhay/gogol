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
-- Module      : Gogol.AccessContextManager.Organizations.GcpUserAccessBindings.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GcpUserAccessBindings for a Google Cloud organization.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.organizations.gcpUserAccessBindings.list@.
module Gogol.AccessContextManager.Organizations.GcpUserAccessBindings.List
    (
    -- * Resource
      AccessContextManagerOrganizationsGcpUserAccessBindingsListResource

    -- ** Constructing a Request
    , newAccessContextManagerOrganizationsGcpUserAccessBindingsList
    , AccessContextManagerOrganizationsGcpUserAccessBindingsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessContextManager.Types

-- | A resource alias for @accesscontextmanager.organizations.gcpUserAccessBindings.list@ method which the
-- 'AccessContextManagerOrganizationsGcpUserAccessBindingsList' request conforms to.
type AccessContextManagerOrganizationsGcpUserAccessBindingsListResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "gcpUserAccessBindings" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON]
                             ListGcpUserAccessBindingsResponse

-- | Lists all GcpUserAccessBindings for a Google Cloud organization.
--
-- /See:/ 'newAccessContextManagerOrganizationsGcpUserAccessBindingsList' smart constructor.
data AccessContextManagerOrganizationsGcpUserAccessBindingsList = AccessContextManagerOrganizationsGcpUserAccessBindingsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Maximum number of items to return. The server may return fewer items. If left blank, the server may return any number of items.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. If left blank, returns the first page. To enumerate all items, use the next/page/token from your previous list operation.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Example: \"organizations\/256\"
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerOrganizationsGcpUserAccessBindingsList' with the minimum fields required to make a request.
newAccessContextManagerOrganizationsGcpUserAccessBindingsList 
    ::  Core.Text
       -- ^  Required. Example: \"organizations\/256\" See 'parent'.
    -> AccessContextManagerOrganizationsGcpUserAccessBindingsList
newAccessContextManagerOrganizationsGcpUserAccessBindingsList parent =
  AccessContextManagerOrganizationsGcpUserAccessBindingsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AccessContextManagerOrganizationsGcpUserAccessBindingsList
         where
        type Rs
               AccessContextManagerOrganizationsGcpUserAccessBindingsList
             = ListGcpUserAccessBindingsResponse
        type Scopes
               AccessContextManagerOrganizationsGcpUserAccessBindingsList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          AccessContextManagerOrganizationsGcpUserAccessBindingsList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              accessContextManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AccessContextManagerOrganizationsGcpUserAccessBindingsListResource)
                      Core.mempty

