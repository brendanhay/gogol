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
-- Module      : Gogol.Analytics.Management.Profiles.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profiles.insert@.
module Gogol.Analytics.Management.Profiles.Insert
    (
    -- * Resource
      AnalyticsManagementProfilesInsertResource

    -- ** Constructing a Request
    , newAnalyticsManagementProfilesInsert
    , AnalyticsManagementProfilesInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.profiles.insert@ method which the
-- 'AnalyticsManagementProfilesInsert' request conforms to.
type AnalyticsManagementProfilesInsertResource =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.Capture "webPropertyId" Core.Text Core.:>
                   "profiles" Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Profile Core.:>
                         Core.Post '[Core.JSON] Profile

-- | Create a new view (profile).
--
-- /See:/ 'newAnalyticsManagementProfilesInsert' smart constructor.
data AnalyticsManagementProfilesInsert = AnalyticsManagementProfilesInsert
    {
      -- | Account ID to create the view (profile) for.
      accountId :: Core.Text
      -- | Multipart request metadata.
    , payload :: Profile
      -- | Web property ID to create the view (profile) for.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementProfilesInsert' with the minimum fields required to make a request.
newAnalyticsManagementProfilesInsert 
    ::  Core.Text
       -- ^  Account ID to create the view (profile) for. See 'accountId'.
    -> Profile
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Web property ID to create the view (profile) for. See 'webPropertyId'.
    -> AnalyticsManagementProfilesInsert
newAnalyticsManagementProfilesInsert accountId payload webPropertyId =
  AnalyticsManagementProfilesInsert
    {accountId = accountId, payload = payload, webPropertyId = webPropertyId}

instance Core.GoogleRequest
           AnalyticsManagementProfilesInsert
         where
        type Rs AnalyticsManagementProfilesInsert = Profile
        type Scopes AnalyticsManagementProfilesInsert =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient AnalyticsManagementProfilesInsert{..}
          = go accountId webPropertyId (Core.Just Core.AltJSON)
              payload
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AnalyticsManagementProfilesInsertResource)
                      Core.mempty

