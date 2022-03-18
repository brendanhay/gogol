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
-- Module      : Gogol.SecurityCenter.Organizations.Sources.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a source.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.get@.
module Gogol.SecurityCenter.Organizations.Sources.Get
    (
    -- * Resource
      SecurityCenterOrganizationsSourcesGetResource

    -- ** Constructing a Request
    , newSecurityCenterOrganizationsSourcesGet
    , SecurityCenterOrganizationsSourcesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.get@ method which the
-- 'SecurityCenterOrganizationsSourcesGet' request conforms to.
type SecurityCenterOrganizationsSourcesGetResource =
     "v1p1beta1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Source

-- | Gets a source.
--
-- /See:/ 'newSecurityCenterOrganizationsSourcesGet' smart constructor.
data SecurityCenterOrganizationsSourcesGet = SecurityCenterOrganizationsSourcesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Relative resource name of the source. Its format is \"organizations\/[organization/id]\/source\/[source/id]\".
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsSourcesGet' with the minimum fields required to make a request.
newSecurityCenterOrganizationsSourcesGet 
    ::  Core.Text
       -- ^  Required. Relative resource name of the source. Its format is \"organizations\/[organization/id]\/source\/[source/id]\". See 'name'.
    -> SecurityCenterOrganizationsSourcesGet
newSecurityCenterOrganizationsSourcesGet name =
  SecurityCenterOrganizationsSourcesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SecurityCenterOrganizationsSourcesGet
         where
        type Rs SecurityCenterOrganizationsSourcesGet =
             Source
        type Scopes SecurityCenterOrganizationsSourcesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          SecurityCenterOrganizationsSourcesGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              securityCenterService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SecurityCenterOrganizationsSourcesGetResource)
                      Core.mempty

