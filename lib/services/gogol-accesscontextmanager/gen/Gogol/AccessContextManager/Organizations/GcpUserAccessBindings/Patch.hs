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
-- Module      : Gogol.AccessContextManager.Organizations.GcpUserAccessBindings.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GcpUserAccessBinding. Completion of this long-running operation does not necessarily signify that the changed binding is deployed onto all affected users, which may take more time.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.organizations.gcpUserAccessBindings.patch@.
module Gogol.AccessContextManager.Organizations.GcpUserAccessBindings.Patch
    (
    -- * Resource
      AccessContextManagerOrganizationsGcpUserAccessBindingsPatchResource

    -- ** Constructing a Request
    , AccessContextManagerOrganizationsGcpUserAccessBindingsPatch (..)
    , newAccessContextManagerOrganizationsGcpUserAccessBindingsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AccessContextManager.Types

-- | A resource alias for @accesscontextmanager.organizations.gcpUserAccessBindings.patch@ method which the
-- 'AccessContextManagerOrganizationsGcpUserAccessBindingsPatch' request conforms to.
type AccessContextManagerOrganizationsGcpUserAccessBindingsPatchResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "append" Core.Bool Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "updateMask" Core.FieldMask Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] GcpUserAccessBinding
                           Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates a GcpUserAccessBinding. Completion of this long-running operation does not necessarily signify that the changed binding is deployed onto all affected users, which may take more time.
--
-- /See:/ 'newAccessContextManagerOrganizationsGcpUserAccessBindingsPatch' smart constructor.
data AccessContextManagerOrganizationsGcpUserAccessBindingsPatch = AccessContextManagerOrganizationsGcpUserAccessBindingsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Optional. This field controls whether or not certain repeated settings in the update request overwrite or append to existing settings on the binding. If true, then append. Otherwise overwrite. So far, only scoped/access/settings with reauth/settings supports appending. Global access/levels, access/levels in scoped/access/settings, dry/run/access/levels, reauth/settings, and session/settings are not compatible with append functionality, and the request will return an error if append=true when these settings are in the update/mask. The request will also return an error if append=true when \"scoped/access/settings\" is not set in the update/mask.
    , append :: (Core.Maybe Core.Bool)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by <https://tools.ietf.org/html/rfc3986#section-2.3 RFC 3986 Section 2.3>). Should not be specified by the client during creation. Example: \"organizations\/256\/gcpUserAccessBindings\/b3-BhcX_Ud5N\"
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GcpUserAccessBinding
      -- | Required. Only the fields specified in this mask are updated. Because name and group/key cannot be changed, update/mask is required and may only contain the following fields: @access_levels@, @dry_run_access_levels@, @reauth_settings@ @session_settings@, @scoped_access_settings@. update/mask { paths: \"access/levels\" }
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerOrganizationsGcpUserAccessBindingsPatch' with the minimum fields required to make a request.
newAccessContextManagerOrganizationsGcpUserAccessBindingsPatch 
    ::  Core.Text
       -- ^  Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by <https://tools.ietf.org/html/rfc3986#section-2.3 RFC 3986 Section 2.3>). Should not be specified by the client during creation. Example: \"organizations\/256\/gcpUserAccessBindings\/b3-BhcX_Ud5N\" See 'name'.
    -> GcpUserAccessBinding
       -- ^  Multipart request metadata. See 'payload'.
    -> AccessContextManagerOrganizationsGcpUserAccessBindingsPatch
newAccessContextManagerOrganizationsGcpUserAccessBindingsPatch name payload =
  AccessContextManagerOrganizationsGcpUserAccessBindingsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , append = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AccessContextManagerOrganizationsGcpUserAccessBindingsPatch
         where
        type Rs
               AccessContextManagerOrganizationsGcpUserAccessBindingsPatch
             = Operation
        type Scopes
               AccessContextManagerOrganizationsGcpUserAccessBindingsPatch
             = '[CloudPlatform'FullControl]
        requestClient
          AccessContextManagerOrganizationsGcpUserAccessBindingsPatch{..}
          = go name xgafv accessToken append callback
              updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              accessContextManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AccessContextManagerOrganizationsGcpUserAccessBindingsPatchResource)
                      Core.mempty

