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
-- Module      : Gogol.Analytics.Management.UnsampledReports.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new unsampled report.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.unsampledReports.insert@.
module Gogol.Analytics.Management.UnsampledReports.Insert
    (
    -- * Resource
      AnalyticsManagementUnsampledReportsInsertResource

    -- ** Constructing a Request
    , AnalyticsManagementUnsampledReportsInsert (..)
    , newAnalyticsManagementUnsampledReportsInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.unsampledReports.insert@ method which the
-- 'AnalyticsManagementUnsampledReportsInsert' request conforms to.
type AnalyticsManagementUnsampledReportsInsertResource
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
                       "unsampledReports" Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] UnsampledReport Core.:>
                             Core.Post '[Core.JSON] UnsampledReport

-- | Create a new unsampled report.
--
-- /See:/ 'newAnalyticsManagementUnsampledReportsInsert' smart constructor.
data AnalyticsManagementUnsampledReportsInsert = AnalyticsManagementUnsampledReportsInsert
    {
      -- | Account ID to create the unsampled report for.
      accountId :: Core.Text
      -- | Multipart request metadata.
    , payload :: UnsampledReport
      -- | View (Profile) ID to create the unsampled report for.
    , profileId :: Core.Text
      -- | Web property ID to create the unsampled report for.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementUnsampledReportsInsert' with the minimum fields required to make a request.
newAnalyticsManagementUnsampledReportsInsert 
    ::  Core.Text
       -- ^  Account ID to create the unsampled report for. See 'accountId'.
    -> UnsampledReport
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  View (Profile) ID to create the unsampled report for. See 'profileId'.
    -> Core.Text
       -- ^  Web property ID to create the unsampled report for. See 'webPropertyId'.
    -> AnalyticsManagementUnsampledReportsInsert
newAnalyticsManagementUnsampledReportsInsert accountId payload profileId webPropertyId =
  AnalyticsManagementUnsampledReportsInsert
    { accountId = accountId
    , payload = payload
    , profileId = profileId
    , webPropertyId = webPropertyId
    }

instance Core.GoogleRequest
           AnalyticsManagementUnsampledReportsInsert
         where
        type Rs AnalyticsManagementUnsampledReportsInsert =
             UnsampledReport
        type Scopes AnalyticsManagementUnsampledReportsInsert
             = '[Analytics'FullControl, Analytics'Edit]
        requestClient
          AnalyticsManagementUnsampledReportsInsert{..}
          = go accountId webPropertyId profileId
              (Core.Just Core.AltJSON)
              payload
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementUnsampledReportsInsertResource)
                      Core.mempty

