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
-- Module      : Gogol.Analytics.Management.CustomDimensions.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new custom dimension.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customDimensions.insert@.
module Gogol.Analytics.Management.CustomDimensions.Insert
    (
    -- * Resource
      AnalyticsManagementCustomDimensionsInsertResource

    -- ** Constructing a Request
    , newAnalyticsManagementCustomDimensionsInsert
    , AnalyticsManagementCustomDimensionsInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.customDimensions.insert@ method which the
-- 'AnalyticsManagementCustomDimensionsInsert' request conforms to.
type AnalyticsManagementCustomDimensionsInsertResource
     =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.Capture "webPropertyId" Core.Text Core.:>
                   "customDimensions" Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] CustomDimension Core.:>
                         Core.Post '[Core.JSON] CustomDimension

-- | Create a new custom dimension.
--
-- /See:/ 'newAnalyticsManagementCustomDimensionsInsert' smart constructor.
data AnalyticsManagementCustomDimensionsInsert = AnalyticsManagementCustomDimensionsInsert
    {
      -- | Account ID for the custom dimension to create.
      accountId :: Core.Text
      -- | Multipart request metadata.
    , payload :: CustomDimension
      -- | Web property ID for the custom dimension to create.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementCustomDimensionsInsert' with the minimum fields required to make a request.
newAnalyticsManagementCustomDimensionsInsert 
    ::  Core.Text
       -- ^  Account ID for the custom dimension to create. See 'accountId'.
    -> CustomDimension
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Web property ID for the custom dimension to create. See 'webPropertyId'.
    -> AnalyticsManagementCustomDimensionsInsert
newAnalyticsManagementCustomDimensionsInsert accountId payload webPropertyId =
  AnalyticsManagementCustomDimensionsInsert
    {accountId = accountId, payload = payload, webPropertyId = webPropertyId}

instance Core.GoogleRequest
           AnalyticsManagementCustomDimensionsInsert
         where
        type Rs AnalyticsManagementCustomDimensionsInsert =
             CustomDimension
        type Scopes AnalyticsManagementCustomDimensionsInsert
             = '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient
          AnalyticsManagementCustomDimensionsInsert{..}
          = go accountId webPropertyId (Core.Just Core.AltJSON)
              payload
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementCustomDimensionsInsertResource)
                      Core.mempty

