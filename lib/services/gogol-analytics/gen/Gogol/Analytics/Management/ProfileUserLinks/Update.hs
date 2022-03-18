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
-- Module      : Gogol.Analytics.Management.ProfileUserLinks.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates permissions for an existing user on the given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileUserLinks.update@.
module Gogol.Analytics.Management.ProfileUserLinks.Update
    (
    -- * Resource
      AnalyticsManagementProfileUserLinksUpdateResource

    -- ** Constructing a Request
    , newAnalyticsManagementProfileUserLinksUpdate
    , AnalyticsManagementProfileUserLinksUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.profileUserLinks.update@ method which the
-- 'AnalyticsManagementProfileUserLinksUpdate' request conforms to.
type AnalyticsManagementProfileUserLinksUpdateResource
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
                       "entityUserLinks" Core.:>
                         Core.Capture "linkId" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] EntityUserLink Core.:>
                               Core.Put '[Core.JSON] EntityUserLink

-- | Updates permissions for an existing user on the given view (profile).
--
-- /See:/ 'newAnalyticsManagementProfileUserLinksUpdate' smart constructor.
data AnalyticsManagementProfileUserLinksUpdate = AnalyticsManagementProfileUserLinksUpdate
    {
      -- | Account ID to update the user link for.
      accountId :: Core.Text
      -- | Link ID to update the user link for.
    , linkId :: Core.Text
      -- | Multipart request metadata.
    , payload :: EntityUserLink
      -- | View (Profile ID) to update the user link for.
    , profileId :: Core.Text
      -- | Web Property ID to update the user link for.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementProfileUserLinksUpdate' with the minimum fields required to make a request.
newAnalyticsManagementProfileUserLinksUpdate 
    ::  Core.Text
       -- ^  Account ID to update the user link for. See 'accountId'.
    -> Core.Text
       -- ^  Link ID to update the user link for. See 'linkId'.
    -> EntityUserLink
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  View (Profile ID) to update the user link for. See 'profileId'.
    -> Core.Text
       -- ^  Web Property ID to update the user link for. See 'webPropertyId'.
    -> AnalyticsManagementProfileUserLinksUpdate
newAnalyticsManagementProfileUserLinksUpdate accountId linkId payload profileId webPropertyId =
  AnalyticsManagementProfileUserLinksUpdate
    { accountId = accountId
    , linkId = linkId
    , payload = payload
    , profileId = profileId
    , webPropertyId = webPropertyId
    }

instance Core.GoogleRequest
           AnalyticsManagementProfileUserLinksUpdate
         where
        type Rs AnalyticsManagementProfileUserLinksUpdate =
             EntityUserLink
        type Scopes AnalyticsManagementProfileUserLinksUpdate
             =
             '["https://www.googleapis.com/auth/analytics.manage.users"]
        requestClient
          AnalyticsManagementProfileUserLinksUpdate{..}
          = go accountId webPropertyId profileId linkId
              (Core.Just Core.AltJSON)
              payload
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementProfileUserLinksUpdateResource)
                      Core.mempty

