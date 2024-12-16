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
-- Module      : Gogol.SecurityCenter.Organizations.Sources.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all sources belonging to an organization.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.list@.
module Gogol.SecurityCenter.Organizations.Sources.List
    (
    -- * Resource
      SecurityCenterOrganizationsSourcesListResource

    -- ** Constructing a Request
    , SecurityCenterOrganizationsSourcesList (..)
    , newSecurityCenterOrganizationsSourcesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.list@ method which the
-- 'SecurityCenterOrganizationsSourcesList' request conforms to.
type SecurityCenterOrganizationsSourcesListResource =
     "v1p1beta1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "sources" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListSourcesResponse

-- | Lists all sources belonging to an organization.
--
-- /See:/ 'newSecurityCenterOrganizationsSourcesList' smart constructor.
data SecurityCenterOrganizationsSourcesList = SecurityCenterOrganizationsSourcesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The value returned by the last @ListSourcesResponse@; indicates that this is a continuation of a prior @ListSources@ call, and that the system should return the next page of data.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the parent of sources to list. Its format should be \"organizations\/[organization_id]\".
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsSourcesList' with the minimum fields required to make a request.
newSecurityCenterOrganizationsSourcesList 
    ::  Core.Text
       -- ^  Required. Resource name of the parent of sources to list. Its format should be \"organizations\/[organization_id]\". See 'parent'.
    -> SecurityCenterOrganizationsSourcesList
newSecurityCenterOrganizationsSourcesList parent =
  SecurityCenterOrganizationsSourcesList
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
           SecurityCenterOrganizationsSourcesList
         where
        type Rs SecurityCenterOrganizationsSourcesList =
             ListSourcesResponse
        type Scopes SecurityCenterOrganizationsSourcesList =
             '[CloudPlatform'FullControl]
        requestClient
          SecurityCenterOrganizationsSourcesList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              securityCenterService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SecurityCenterOrganizationsSourcesListResource)
                      Core.mempty

