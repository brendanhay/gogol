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
-- Module      : Gogol.Billing.Cloudbilling.Projects.GetBillingInfo
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the billing information for a project. The current authenticated user must have the @resourcemanager.projects.get@ permission for the project, which can be granted by assigning the <https://cloud.google.com/iam/docs/understanding-roles#predefined_roles Project Viewer> role.
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.projects.getBillingInfo@.
module Gogol.Billing.Cloudbilling.Projects.GetBillingInfo
    (
    -- * Resource
      CloudbillingProjectsGetBillingInfoResource

    -- ** Constructing a Request
    , newCloudbillingProjectsGetBillingInfo
    , CloudbillingProjectsGetBillingInfo
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Billing.Types

-- | A resource alias for @cloudbilling.projects.getBillingInfo@ method which the
-- 'CloudbillingProjectsGetBillingInfo' request conforms to.
type CloudbillingProjectsGetBillingInfoResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         "billingInfo" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Get '[Core.JSON] ProjectBillingInfo

-- | Gets the billing information for a project. The current authenticated user must have the @resourcemanager.projects.get@ permission for the project, which can be granted by assigning the <https://cloud.google.com/iam/docs/understanding-roles#predefined_roles Project Viewer> role.
--
-- /See:/ 'newCloudbillingProjectsGetBillingInfo' smart constructor.
data CloudbillingProjectsGetBillingInfo = CloudbillingProjectsGetBillingInfo
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the project for which billing information is retrieved. For example, @projects\/tokyo-rain-123@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbillingProjectsGetBillingInfo' with the minimum fields required to make a request.
newCloudbillingProjectsGetBillingInfo 
    ::  Core.Text
       -- ^  Required. The resource name of the project for which billing information is retrieved. For example, @projects\/tokyo-rain-123@. See 'name'.
    -> CloudbillingProjectsGetBillingInfo
newCloudbillingProjectsGetBillingInfo name =
  CloudbillingProjectsGetBillingInfo
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbillingProjectsGetBillingInfo
         where
        type Rs CloudbillingProjectsGetBillingInfo =
             ProjectBillingInfo
        type Scopes CloudbillingProjectsGetBillingInfo =
             '["https://www.googleapis.com/auth/cloud-billing",
               "https://www.googleapis.com/auth/cloud-billing.readonly",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient CloudbillingProjectsGetBillingInfo{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              billingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbillingProjectsGetBillingInfoResource)
                      Core.mempty

