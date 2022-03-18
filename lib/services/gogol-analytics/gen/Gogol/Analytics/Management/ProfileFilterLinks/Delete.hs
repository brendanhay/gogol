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
-- Module      : Gogol.Analytics.Management.ProfileFilterLinks.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileFilterLinks.delete@.
module Gogol.Analytics.Management.ProfileFilterLinks.Delete
    (
    -- * Resource
      AnalyticsManagementProfileFilterLinksDeleteResource

    -- ** Constructing a Request
    , newAnalyticsManagementProfileFilterLinksDelete
    , AnalyticsManagementProfileFilterLinksDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.profileFilterLinks.delete@ method which the
-- 'AnalyticsManagementProfileFilterLinksDelete' request conforms to.
type AnalyticsManagementProfileFilterLinksDeleteResource
     =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.Capture "webPropertyId" Core.Text Core.:>
                   "profiles" Core.:>
                     Core.Capture "profileId" Core.Text Core.:>
                       "profileFilterLinks" Core.:>
                         Core.Capture "linkId" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Delete '[Core.JSON] ()

-- | Delete a profile filter link.
--
-- /See:/ 'newAnalyticsManagementProfileFilterLinksDelete' smart constructor.
data AnalyticsManagementProfileFilterLinksDelete = AnalyticsManagementProfileFilterLinksDelete
    {
      -- | Account ID to which the profile filter link belongs.
      accountId :: Core.Text
      -- | ID of the profile filter link to delete.
    , linkId :: Core.Text
      -- | Profile ID to which the filter link belongs.
    , profileId :: Core.Text
      -- | Web property Id to which the profile filter link belongs.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementProfileFilterLinksDelete' with the minimum fields required to make a request.
newAnalyticsManagementProfileFilterLinksDelete 
    ::  Core.Text
       -- ^  Account ID to which the profile filter link belongs. See 'accountId'.
    -> Core.Text
       -- ^  ID of the profile filter link to delete. See 'linkId'.
    -> Core.Text
       -- ^  Profile ID to which the filter link belongs. See 'profileId'.
    -> Core.Text
       -- ^  Web property Id to which the profile filter link belongs. See 'webPropertyId'.
    -> AnalyticsManagementProfileFilterLinksDelete
newAnalyticsManagementProfileFilterLinksDelete accountId linkId profileId webPropertyId =
  AnalyticsManagementProfileFilterLinksDelete
    { accountId = accountId
    , linkId = linkId
    , profileId = profileId
    , webPropertyId = webPropertyId
    }

instance Core.GoogleRequest
           AnalyticsManagementProfileFilterLinksDelete
         where
        type Rs AnalyticsManagementProfileFilterLinksDelete =
             ()
        type Scopes
               AnalyticsManagementProfileFilterLinksDelete
             = '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient
          AnalyticsManagementProfileFilterLinksDelete{..}
          = go accountId webPropertyId profileId linkId
              (Core.Just Core.AltJSON)
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementProfileFilterLinksDeleteResource)
                      Core.mempty

