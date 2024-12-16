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
-- Module      : Gogol.DLP.Organizations.Locations.Connections.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Connections in a parent. Use SearchConnections to see all connections within an organization.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.organizations.locations.connections.list@.
module Gogol.DLP.Organizations.Locations.Connections.List
    (
    -- * Resource
      DLPOrganizationsLocationsConnectionsListResource

    -- ** Constructing a Request
    , DLPOrganizationsLocationsConnectionsList (..)
    , newDLPOrganizationsLocationsConnectionsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.organizations.locations.connections.list@ method which the
-- 'DLPOrganizationsLocationsConnectionsList' request conforms to.
type DLPOrganizationsLocationsConnectionsListResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "connections" Core.:>
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
                               GooglePrivacyDlpV2ListConnectionsResponse

-- | Lists Connections in a parent. Use SearchConnections to see all connections within an organization.
--
-- /See:/ 'newDLPOrganizationsLocationsConnectionsList' smart constructor.
data DLPOrganizationsLocationsConnectionsList = DLPOrganizationsLocationsConnectionsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Supported field\/value: @state@ - MISSING|AVAILABLE|ERROR
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. Number of results per page, max 1000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. Page token from a previous page to return the next set of results. If set, all other request fields must match the original request.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the organization or project, for example, @organizations\/433245324\/locations\/europe@ or @projects\/project-id\/locations\/asia@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsLocationsConnectionsList' with the minimum fields required to make a request.
newDLPOrganizationsLocationsConnectionsList 
    ::  Core.Text
       -- ^  Required. Resource name of the organization or project, for example, @organizations\/433245324\/locations\/europe@ or @projects\/project-id\/locations\/asia@. See 'parent'.
    -> DLPOrganizationsLocationsConnectionsList
newDLPOrganizationsLocationsConnectionsList parent =
  DLPOrganizationsLocationsConnectionsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPOrganizationsLocationsConnectionsList
         where
        type Rs DLPOrganizationsLocationsConnectionsList =
             GooglePrivacyDlpV2ListConnectionsResponse
        type Scopes DLPOrganizationsLocationsConnectionsList
             = '[CloudPlatform'FullControl]
        requestClient
          DLPOrganizationsLocationsConnectionsList{..}
          = go parent xgafv accessToken callback filter
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPOrganizationsLocationsConnectionsListResource)
                      Core.mempty

