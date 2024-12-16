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
-- Module      : Gogol.ReCaptchaEnterprise.Projects.Relatedaccountgroupmemberships.Search
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search group memberships related to a given account.
--
-- /See:/ <https://cloud.google.com/recaptcha-enterprise/ reCAPTCHA Enterprise API Reference> for @recaptchaenterprise.projects.relatedaccountgroupmemberships.search@.
module Gogol.ReCaptchaEnterprise.Projects.Relatedaccountgroupmemberships.Search
    (
    -- * Resource
      ReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearchResource

    -- ** Constructing a Request
    , ReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearch (..)
    , newReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ReCaptchaEnterprise.Types

-- | A resource alias for @recaptchaenterprise.projects.relatedaccountgroupmemberships.search@ method which the
-- 'ReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearch' request conforms to.
type ReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearchResource
     =
     "v1" Core.:>
       Core.Capture "project" Core.Text Core.:>
         "relatedaccountgroupmemberships:search" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
                         Core.:>
                         Core.Post '[Core.JSON]
                           GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse

-- | Search group memberships related to a given account.
--
-- /See:/ 'newReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearch' smart constructor.
data ReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearch = ReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
      -- | Required. The name of the project to search related account group memberships from. Specify the project name in the following format: @projects\/{project}@.
    , project :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearch' with the minimum fields required to make a request.
newReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearch 
    ::  GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The name of the project to search related account group memberships from. Specify the project name in the following format: @projects\/{project}@. See 'project'.
    -> ReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearch
newReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearch payload project =
  ReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , project = project
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           ReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearch
         where
        type Rs
               ReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearch
             =
             GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
        type Scopes
               ReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearch
             = '[CloudPlatform'FullControl]
        requestClient
          ReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearch{..}
          = go project xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              reCaptchaEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ReCaptchaEnterpriseProjectsRelatedaccountgroupmembershipsSearchResource)
                      Core.mempty

