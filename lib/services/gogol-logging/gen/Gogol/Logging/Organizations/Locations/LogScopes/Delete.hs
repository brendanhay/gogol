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
-- Module      : Gogol.Logging.Organizations.Locations.LogScopes.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a log scope.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.logScopes.delete@.
module Gogol.Logging.Organizations.Locations.LogScopes.Delete
    (
    -- * Resource
      LoggingOrganizationsLocationsLogScopesDeleteResource

    -- ** Constructing a Request
    , LoggingOrganizationsLocationsLogScopesDelete (..)
    , newLoggingOrganizationsLocationsLogScopesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Logging.Types

-- | A resource alias for @logging.organizations.locations.logScopes.delete@ method which the
-- 'LoggingOrganizationsLocationsLogScopesDelete' request conforms to.
type LoggingOrganizationsLocationsLogScopesDeleteResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] Empty

-- | Deletes a log scope.
--
-- /See:/ 'newLoggingOrganizationsLocationsLogScopesDelete' smart constructor.
data LoggingOrganizationsLocationsLogScopesDelete = LoggingOrganizationsLocationsLogScopesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the log scope to delete: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/logScopes\/[LOG/SCOPE/ID]\" For example:\"projects\/my-project\/locations\/global\/logScopes\/my-log-scope\"
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoggingOrganizationsLocationsLogScopesDelete' with the minimum fields required to make a request.
newLoggingOrganizationsLocationsLogScopesDelete 
    ::  Core.Text
       -- ^  Required. The resource name of the log scope to delete: \"projects\/[PROJECT/ID]\/locations\/[LOCATION/ID]\/logScopes\/[LOG/SCOPE/ID]\" For example:\"projects\/my-project\/locations\/global\/logScopes\/my-log-scope\" See 'name'.
    -> LoggingOrganizationsLocationsLogScopesDelete
newLoggingOrganizationsLocationsLogScopesDelete name =
  LoggingOrganizationsLocationsLogScopesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           LoggingOrganizationsLocationsLogScopesDelete
         where
        type Rs LoggingOrganizationsLocationsLogScopesDelete
             = Empty
        type Scopes
               LoggingOrganizationsLocationsLogScopesDelete
             = '[CloudPlatform'FullControl, Logging'Admin]
        requestClient
          LoggingOrganizationsLocationsLogScopesDelete{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              loggingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           LoggingOrganizationsLocationsLogScopesDeleteResource)
                      Core.mempty

