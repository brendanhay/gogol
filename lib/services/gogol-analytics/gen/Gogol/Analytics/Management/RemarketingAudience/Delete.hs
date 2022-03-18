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
-- Module      : Gogol.Analytics.Management.RemarketingAudience.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a remarketing audience.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.remarketingAudience.delete@.
module Gogol.Analytics.Management.RemarketingAudience.Delete
    (
    -- * Resource
      AnalyticsManagementRemarketingAudienceDeleteResource

    -- ** Constructing a Request
    , newAnalyticsManagementRemarketingAudienceDelete
    , AnalyticsManagementRemarketingAudienceDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.remarketingAudience.delete@ method which the
-- 'AnalyticsManagementRemarketingAudienceDelete' request conforms to.
type AnalyticsManagementRemarketingAudienceDeleteResource
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
                         Core.Delete '[Core.JSON] ()

-- | Delete a remarketing audience.
--
-- /See:/ 'newAnalyticsManagementRemarketingAudienceDelete' smart constructor.
data AnalyticsManagementRemarketingAudienceDelete = AnalyticsManagementRemarketingAudienceDelete
    {
      -- | Account ID to which the remarketing audience belongs.
      accountId :: Core.Text
      -- | The ID of the remarketing audience to delete.
    , remarketingAudienceId :: Core.Text
      -- | Web property ID to which the remarketing audience belongs.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementRemarketingAudienceDelete' with the minimum fields required to make a request.
newAnalyticsManagementRemarketingAudienceDelete 
    ::  Core.Text
       -- ^  Account ID to which the remarketing audience belongs. See 'accountId'.
    -> Core.Text
       -- ^  The ID of the remarketing audience to delete. See 'remarketingAudienceId'.
    -> Core.Text
       -- ^  Web property ID to which the remarketing audience belongs. See 'webPropertyId'.
    -> AnalyticsManagementRemarketingAudienceDelete
newAnalyticsManagementRemarketingAudienceDelete accountId remarketingAudienceId webPropertyId =
  AnalyticsManagementRemarketingAudienceDelete
    { accountId = accountId
    , remarketingAudienceId = remarketingAudienceId
    , webPropertyId = webPropertyId
    }

instance Core.GoogleRequest
           AnalyticsManagementRemarketingAudienceDelete
         where
        type Rs AnalyticsManagementRemarketingAudienceDelete
             = ()
        type Scopes
               AnalyticsManagementRemarketingAudienceDelete
             = '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient
          AnalyticsManagementRemarketingAudienceDelete{..}
          = go accountId webPropertyId remarketingAudienceId
              (Core.Just Core.AltJSON)
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementRemarketingAudienceDeleteResource)
                      Core.mempty

