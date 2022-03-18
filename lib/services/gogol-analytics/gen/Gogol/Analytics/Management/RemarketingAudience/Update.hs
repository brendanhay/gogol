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
-- Module      : Gogol.Analytics.Management.RemarketingAudience.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing remarketing audience.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.remarketingAudience.update@.
module Gogol.Analytics.Management.RemarketingAudience.Update
    (
    -- * Resource
      AnalyticsManagementRemarketingAudienceUpdateResource

    -- ** Constructing a Request
    , newAnalyticsManagementRemarketingAudienceUpdate
    , AnalyticsManagementRemarketingAudienceUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.remarketingAudience.update@ method which the
-- 'AnalyticsManagementRemarketingAudienceUpdate' request conforms to.
type AnalyticsManagementRemarketingAudienceUpdateResource
     =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.Capture "webPropertyId" Core.Text Core.:>
                   "remarketingAudiences" Core.:>
                     Core.Capture "remarketingAudienceId" Core.Text
                       Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] RemarketingAudience Core.:>
                           Core.Put '[Core.JSON] RemarketingAudience

-- | Updates an existing remarketing audience.
--
-- /See:/ 'newAnalyticsManagementRemarketingAudienceUpdate' smart constructor.
data AnalyticsManagementRemarketingAudienceUpdate = AnalyticsManagementRemarketingAudienceUpdate
    {
      -- | The account ID of the remarketing audience to update.
      accountId :: Core.Text
      -- | Multipart request metadata.
    , payload :: RemarketingAudience
      -- | The ID of the remarketing audience to update.
    , remarketingAudienceId :: Core.Text
      -- | The web property ID of the remarketing audience to update.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementRemarketingAudienceUpdate' with the minimum fields required to make a request.
newAnalyticsManagementRemarketingAudienceUpdate 
    ::  Core.Text
       -- ^  The account ID of the remarketing audience to update. See 'accountId'.
    -> RemarketingAudience
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  The ID of the remarketing audience to update. See 'remarketingAudienceId'.
    -> Core.Text
       -- ^  The web property ID of the remarketing audience to update. See 'webPropertyId'.
    -> AnalyticsManagementRemarketingAudienceUpdate
newAnalyticsManagementRemarketingAudienceUpdate accountId payload remarketingAudienceId webPropertyId =
  AnalyticsManagementRemarketingAudienceUpdate
    { accountId = accountId
    , payload = payload
    , remarketingAudienceId = remarketingAudienceId
    , webPropertyId = webPropertyId
    }

instance Core.GoogleRequest
           AnalyticsManagementRemarketingAudienceUpdate
         where
        type Rs AnalyticsManagementRemarketingAudienceUpdate
             = RemarketingAudience
        type Scopes
               AnalyticsManagementRemarketingAudienceUpdate
             = '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient
          AnalyticsManagementRemarketingAudienceUpdate{..}
          = go accountId webPropertyId remarketingAudienceId
              (Core.Just Core.AltJSON)
              payload
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementRemarketingAudienceUpdateResource)
                      Core.mempty

