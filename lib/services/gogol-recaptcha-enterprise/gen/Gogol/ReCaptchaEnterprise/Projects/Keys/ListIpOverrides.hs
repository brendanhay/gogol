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
-- Module      : Gogol.ReCaptchaEnterprise.Projects.Keys.ListIpOverrides
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all IP overrides for a key.
--
-- /See:/ <https://cloud.google.com/recaptcha-enterprise/ reCAPTCHA Enterprise API Reference> for @recaptchaenterprise.projects.keys.listIpOverrides@.
module Gogol.ReCaptchaEnterprise.Projects.Keys.ListIpOverrides
    (
    -- * Resource
      ReCaptchaEnterpriseProjectsKeysListIpOverridesResource

    -- ** Constructing a Request
    , ReCaptchaEnterpriseProjectsKeysListIpOverrides (..)
    , newReCaptchaEnterpriseProjectsKeysListIpOverrides
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ReCaptchaEnterprise.Types

-- | A resource alias for @recaptchaenterprise.projects.keys.listIpOverrides@ method which the
-- 'ReCaptchaEnterpriseProjectsKeysListIpOverrides' request conforms to.
type ReCaptchaEnterpriseProjectsKeysListIpOverridesResource
     =
     "v1" Core.:>
       Core.CaptureMode "parent" "listIpOverrides" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "pageSize" Core.Int32 Core.:>
                 Core.QueryParam "pageToken" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON]
                           GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse

-- | Lists all IP overrides for a key.
--
-- /See:/ 'newReCaptchaEnterpriseProjectsKeysListIpOverrides' smart constructor.
data ReCaptchaEnterpriseProjectsKeysListIpOverrides = ReCaptchaEnterpriseProjectsKeysListIpOverrides
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The maximum number of overrides to return. Default is 10. Max limit is 100. If the number of overrides is less than the page_size, all overrides are returned. If the page size is more than 100, it is coerced to 100.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. The next/page/token value returned from a previous ListIpOverridesRequest, if any.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The parent key for which the IP overrides are listed, in the format @projects\/{project}\/keys\/{key}@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReCaptchaEnterpriseProjectsKeysListIpOverrides' with the minimum fields required to make a request.
newReCaptchaEnterpriseProjectsKeysListIpOverrides 
    ::  Core.Text
       -- ^  Required. The parent key for which the IP overrides are listed, in the format @projects\/{project}\/keys\/{key}@. See 'parent'.
    -> ReCaptchaEnterpriseProjectsKeysListIpOverrides
newReCaptchaEnterpriseProjectsKeysListIpOverrides parent =
  ReCaptchaEnterpriseProjectsKeysListIpOverrides
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
           ReCaptchaEnterpriseProjectsKeysListIpOverrides
         where
        type Rs
               ReCaptchaEnterpriseProjectsKeysListIpOverrides
             =
             GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse
        type Scopes
               ReCaptchaEnterpriseProjectsKeysListIpOverrides
             = '[CloudPlatform'FullControl]
        requestClient
          ReCaptchaEnterpriseProjectsKeysListIpOverrides{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              reCaptchaEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           ReCaptchaEnterpriseProjectsKeysListIpOverridesResource)
                      Core.mempty

