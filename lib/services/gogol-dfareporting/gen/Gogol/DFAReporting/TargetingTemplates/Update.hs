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
-- Module      : Gogol.DFAReporting.TargetingTemplates.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing targeting template.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.targetingTemplates.update@.
module Gogol.DFAReporting.TargetingTemplates.Update
    (
    -- * Resource
      DFAReportingTargetingTemplatesUpdateResource

    -- ** Constructing a Request
    , newDFAReportingTargetingTemplatesUpdate
    , DFAReportingTargetingTemplatesUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DFAReporting.Types

-- | A resource alias for @dfareporting.targetingTemplates.update@ method which the
-- 'DFAReportingTargetingTemplatesUpdate' request conforms to.
type DFAReportingTargetingTemplatesUpdateResource =
     "dfareporting" Core.:>
       "v3.5" Core.:>
         "userprofiles" Core.:>
           Core.Capture "profileId" Core.Int64 Core.:>
             "targetingTemplates" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] TargetingTemplate Core.:>
                             Core.Put '[Core.JSON] TargetingTemplate

-- | Updates an existing targeting template.
--
-- /See:/ 'newDFAReportingTargetingTemplatesUpdate' smart constructor.
data DFAReportingTargetingTemplatesUpdate = DFAReportingTargetingTemplatesUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: TargetingTemplate
      -- | User profile ID associated with this request.
    , profileId :: Core.Int64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingTargetingTemplatesUpdate' with the minimum fields required to make a request.
newDFAReportingTargetingTemplatesUpdate 
    ::  TargetingTemplate
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Int64
       -- ^  User profile ID associated with this request. See 'profileId'.
    -> DFAReportingTargetingTemplatesUpdate
newDFAReportingTargetingTemplatesUpdate payload profileId =
  DFAReportingTargetingTemplatesUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , profileId = profileId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DFAReportingTargetingTemplatesUpdate
         where
        type Rs DFAReportingTargetingTemplatesUpdate =
             TargetingTemplate
        type Scopes DFAReportingTargetingTemplatesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient
          DFAReportingTargetingTemplatesUpdate{..}
          = go profileId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              dFAReportingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DFAReportingTargetingTemplatesUpdateResource)
                      Core.mempty

