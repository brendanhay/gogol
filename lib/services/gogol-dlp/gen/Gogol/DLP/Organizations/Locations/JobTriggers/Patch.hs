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
-- Module      : Gogol.DLP.Organizations.Locations.JobTriggers.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a job trigger. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/creating-job-triggers to learn more.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.organizations.locations.jobTriggers.patch@.
module Gogol.DLP.Organizations.Locations.JobTriggers.Patch
    (
    -- * Resource
      DLPOrganizationsLocationsJobTriggersPatchResource

    -- ** Constructing a Request
    , DLPOrganizationsLocationsJobTriggersPatch (..)
    , newDLPOrganizationsLocationsJobTriggersPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.organizations.locations.jobTriggers.patch@ method which the
-- 'DLPOrganizationsLocationsJobTriggersPatch' request conforms to.
type DLPOrganizationsLocationsJobTriggersPatchResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       GooglePrivacyDlpV2UpdateJobTriggerRequest
                       Core.:>
                       Core.Patch '[Core.JSON] GooglePrivacyDlpV2JobTrigger

-- | Updates a job trigger. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/creating-job-triggers to learn more.
--
-- /See:/ 'newDLPOrganizationsLocationsJobTriggersPatch' smart constructor.
data DLPOrganizationsLocationsJobTriggersPatch = DLPOrganizationsLocationsJobTriggersPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the project and the triggeredJob, for example @projects\/dlp-test-project\/jobTriggers\/53234423@.
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: GooglePrivacyDlpV2UpdateJobTriggerRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsLocationsJobTriggersPatch' with the minimum fields required to make a request.
newDLPOrganizationsLocationsJobTriggersPatch 
    ::  Core.Text
       -- ^  Required. Resource name of the project and the triggeredJob, for example @projects\/dlp-test-project\/jobTriggers\/53234423@. See 'name'.
    -> GooglePrivacyDlpV2UpdateJobTriggerRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DLPOrganizationsLocationsJobTriggersPatch
newDLPOrganizationsLocationsJobTriggersPatch name payload =
  DLPOrganizationsLocationsJobTriggersPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPOrganizationsLocationsJobTriggersPatch
         where
        type Rs DLPOrganizationsLocationsJobTriggersPatch =
             GooglePrivacyDlpV2JobTrigger
        type Scopes DLPOrganizationsLocationsJobTriggersPatch
             = '[CloudPlatform'FullControl]
        requestClient
          DLPOrganizationsLocationsJobTriggersPatch{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPOrganizationsLocationsJobTriggersPatchResource)
                      Core.mempty

