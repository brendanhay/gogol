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
-- Module      : Gogol.Analytics.Management.ProfileFilterLinks.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all profile filter links for a profile.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileFilterLinks.list@.
module Gogol.Analytics.Management.ProfileFilterLinks.List
    (
    -- * Resource
      AnalyticsManagementProfileFilterLinksListResource

    -- ** Constructing a Request
    , newAnalyticsManagementProfileFilterLinksList
    , AnalyticsManagementProfileFilterLinksList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.profileFilterLinks.list@ method which the
-- 'AnalyticsManagementProfileFilterLinksList' request conforms to.
type AnalyticsManagementProfileFilterLinksListResource
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
                         Core.QueryParam "max-results" Core.Int32 Core.:>
                           Core.QueryParam "start-index" Core.Int32 Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] ProfileFilterLinks

-- | Lists all profile filter links for a profile.
--
-- /See:/ 'newAnalyticsManagementProfileFilterLinksList' smart constructor.
data AnalyticsManagementProfileFilterLinksList = AnalyticsManagementProfileFilterLinksList
    {
      -- | Account ID to retrieve profile filter links for.
      accountId :: Core.Text
      -- | The maximum number of profile filter links to include in this response.
    , maxResults :: (Core.Maybe Core.Int32)
      -- | Profile ID to retrieve filter links for. Can either be a specific profile ID or \'~all\', which refers to all the profiles that user has access to.
    , profileId :: Core.Text
      -- | An index of the first entity to retrieve. Use this parameter as a pagination mechanism along with the max-results parameter.
    , startIndex :: (Core.Maybe Core.Int32)
      -- | Web property Id for profile filter links for. Can either be a specific web property ID or \'~all\', which refers to all the web properties that user has access to.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementProfileFilterLinksList' with the minimum fields required to make a request.
newAnalyticsManagementProfileFilterLinksList 
    ::  Core.Text
       -- ^  Account ID to retrieve profile filter links for. See 'accountId'.
    -> Core.Text
       -- ^  Profile ID to retrieve filter links for. Can either be a specific profile ID or \'~all\', which refers to all the profiles that user has access to. See 'profileId'.
    -> Core.Text
       -- ^  Web property Id for profile filter links for. Can either be a specific web property ID or \'~all\', which refers to all the web properties that user has access to. See 'webPropertyId'.
    -> AnalyticsManagementProfileFilterLinksList
newAnalyticsManagementProfileFilterLinksList accountId profileId webPropertyId =
  AnalyticsManagementProfileFilterLinksList
    { accountId = accountId
    , maxResults = Core.Nothing
    , profileId = profileId
    , startIndex = Core.Nothing
    , webPropertyId = webPropertyId
    }

instance Core.GoogleRequest
           AnalyticsManagementProfileFilterLinksList
         where
        type Rs AnalyticsManagementProfileFilterLinksList =
             ProfileFilterLinks
        type Scopes AnalyticsManagementProfileFilterLinksList
             =
             '["https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient
          AnalyticsManagementProfileFilterLinksList{..}
          = go accountId webPropertyId profileId maxResults
              startIndex
              (Core.Just Core.AltJSON)
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementProfileFilterLinksListResource)
                      Core.mempty

