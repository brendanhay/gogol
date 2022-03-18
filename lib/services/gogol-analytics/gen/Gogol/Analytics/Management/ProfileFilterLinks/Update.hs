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
-- Module      : Gogol.Analytics.Management.ProfileFilterLinks.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an existing profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileFilterLinks.update@.
module Gogol.Analytics.Management.ProfileFilterLinks.Update
    (
    -- * Resource
      AnalyticsManagementProfileFilterLinksUpdateResource

    -- ** Constructing a Request
    , newAnalyticsManagementProfileFilterLinksUpdate
    , AnalyticsManagementProfileFilterLinksUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.profileFilterLinks.update@ method which the
-- 'AnalyticsManagementProfileFilterLinksUpdate' request conforms to.
type AnalyticsManagementProfileFilterLinksUpdateResource
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
                             Core.ReqBody '[Core.JSON] ProfileFilterLink Core.:>
                               Core.Put '[Core.JSON] ProfileFilterLink

-- | Update an existing profile filter link.
--
-- /See:/ 'newAnalyticsManagementProfileFilterLinksUpdate' smart constructor.
data AnalyticsManagementProfileFilterLinksUpdate = AnalyticsManagementProfileFilterLinksUpdate
    {
      -- | Account ID to which profile filter link belongs.
      accountId :: Core.Text
      -- | ID of the profile filter link to be updated.
    , linkId :: Core.Text
      -- | Multipart request metadata.
    , payload :: ProfileFilterLink
      -- | Profile ID to which filter link belongs
    , profileId :: Core.Text
      -- | Web property Id to which profile filter link belongs
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementProfileFilterLinksUpdate' with the minimum fields required to make a request.
newAnalyticsManagementProfileFilterLinksUpdate 
    ::  Core.Text
       -- ^  Account ID to which profile filter link belongs. See 'accountId'.
    -> Core.Text
       -- ^  ID of the profile filter link to be updated. See 'linkId'.
    -> ProfileFilterLink
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Profile ID to which filter link belongs See 'profileId'.
    -> Core.Text
       -- ^  Web property Id to which profile filter link belongs See 'webPropertyId'.
    -> AnalyticsManagementProfileFilterLinksUpdate
newAnalyticsManagementProfileFilterLinksUpdate accountId linkId payload profileId webPropertyId =
  AnalyticsManagementProfileFilterLinksUpdate
    { accountId = accountId
    , linkId = linkId
    , payload = payload
    , profileId = profileId
    , webPropertyId = webPropertyId
    }

instance Core.GoogleRequest
           AnalyticsManagementProfileFilterLinksUpdate
         where
        type Rs AnalyticsManagementProfileFilterLinksUpdate =
             ProfileFilterLink
        type Scopes
               AnalyticsManagementProfileFilterLinksUpdate
             = '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient
          AnalyticsManagementProfileFilterLinksUpdate{..}
          = go accountId webPropertyId profileId linkId
              (Core.Just Core.AltJSON)
              payload
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementProfileFilterLinksUpdateResource)
                      Core.mempty

