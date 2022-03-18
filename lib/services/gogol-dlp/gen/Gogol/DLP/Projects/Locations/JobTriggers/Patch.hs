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
-- Module      : Gogol.DLP.Projects.Locations.JobTriggers.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a job trigger. See https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.jobTriggers.patch@.
module Gogol.DLP.Projects.Locations.JobTriggers.Patch
    (
    -- * Resource
      DLPProjectsLocationsJobTriggersPatchResource

    -- ** Constructing a Request
    , newDLPProjectsLocationsJobTriggersPatch
    , DLPProjectsLocationsJobTriggersPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.projects.locations.jobTriggers.patch@ method which the
-- 'DLPProjectsLocationsJobTriggersPatch' request conforms to.
type DLPProjectsLocationsJobTriggersPatchResource =
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

-- | Updates a job trigger. See https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn more.
--
-- /See:/ 'newDLPProjectsLocationsJobTriggersPatch' smart constructor.
data DLPProjectsLocationsJobTriggersPatch = DLPProjectsLocationsJobTriggersPatch
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

-- | Creates a value of 'DLPProjectsLocationsJobTriggersPatch' with the minimum fields required to make a request.
newDLPProjectsLocationsJobTriggersPatch 
    ::  Core.Text
       -- ^  Required. Resource name of the project and the triggeredJob, for example @projects\/dlp-test-project\/jobTriggers\/53234423@. See 'name'.
    -> GooglePrivacyDlpV2UpdateJobTriggerRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> DLPProjectsLocationsJobTriggersPatch
newDLPProjectsLocationsJobTriggersPatch name payload =
  DLPProjectsLocationsJobTriggersPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPProjectsLocationsJobTriggersPatch
         where
        type Rs DLPProjectsLocationsJobTriggersPatch =
             GooglePrivacyDlpV2JobTrigger
        type Scopes DLPProjectsLocationsJobTriggersPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          DLPProjectsLocationsJobTriggersPatch{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPProjectsLocationsJobTriggersPatchResource)
                      Core.mempty

