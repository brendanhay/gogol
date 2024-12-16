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
-- Module      : Gogol.Analytics.Management.CustomDimensions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a custom dimension to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customDimensions.get@.
module Gogol.Analytics.Management.CustomDimensions.Get
    (
    -- * Resource
      AnalyticsManagementCustomDimensionsGetResource

    -- ** Constructing a Request
    , AnalyticsManagementCustomDimensionsGet (..)
    , newAnalyticsManagementCustomDimensionsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Analytics.Types

-- | A resource alias for @analytics.management.customDimensions.get@ method which the
-- 'AnalyticsManagementCustomDimensionsGet' request conforms to.
type AnalyticsManagementCustomDimensionsGetResource =
     "analytics" Core.:>
       "v3" Core.:>
         "management" Core.:>
           "accounts" Core.:>
             Core.Capture "accountId" Core.Text Core.:>
               "webproperties" Core.:>
                 Core.Capture "webPropertyId" Core.Text Core.:>
                   "customDimensions" Core.:>
                     Core.Capture "customDimensionId" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] CustomDimension

-- | Get a custom dimension to which the user has access.
--
-- /See:/ 'newAnalyticsManagementCustomDimensionsGet' smart constructor.
data AnalyticsManagementCustomDimensionsGet = AnalyticsManagementCustomDimensionsGet
    {
      -- | Account ID for the custom dimension to retrieve.
      accountId :: Core.Text
      -- | The ID of the custom dimension to retrieve.
    , customDimensionId :: Core.Text
      -- | Web property ID for the custom dimension to retrieve.
    , webPropertyId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsManagementCustomDimensionsGet' with the minimum fields required to make a request.
newAnalyticsManagementCustomDimensionsGet 
    ::  Core.Text
       -- ^  Account ID for the custom dimension to retrieve. See 'accountId'.
    -> Core.Text
       -- ^  The ID of the custom dimension to retrieve. See 'customDimensionId'.
    -> Core.Text
       -- ^  Web property ID for the custom dimension to retrieve. See 'webPropertyId'.
    -> AnalyticsManagementCustomDimensionsGet
newAnalyticsManagementCustomDimensionsGet accountId customDimensionId webPropertyId =
  AnalyticsManagementCustomDimensionsGet
    { accountId = accountId
    , customDimensionId = customDimensionId
    , webPropertyId = webPropertyId
    }

instance Core.GoogleRequest
           AnalyticsManagementCustomDimensionsGet
         where
        type Rs AnalyticsManagementCustomDimensionsGet =
             CustomDimension
        type Scopes AnalyticsManagementCustomDimensionsGet =
             '[Analytics'Edit, Analytics'Readonly]
        requestClient
          AnalyticsManagementCustomDimensionsGet{..}
          = go accountId webPropertyId customDimensionId
              (Core.Just Core.AltJSON)
              analyticsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsManagementCustomDimensionsGetResource)
                      Core.mempty

