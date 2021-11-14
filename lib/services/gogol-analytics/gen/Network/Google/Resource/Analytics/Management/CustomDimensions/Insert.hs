{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.CustomDimensions.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new custom dimension.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customDimensions.insert@.
module Network.Google.Resource.Analytics.Management.CustomDimensions.Insert
    (
    -- * REST Resource
      ManagementCustomDimensionsInsertResource

    -- * Creating a Request
    , managementCustomDimensionsInsert
    , ManagementCustomDimensionsInsert

    -- * Request Lenses
    , mcdiWebPropertyId
    , mcdiPayload
    , mcdiAccountId
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.management.customDimensions.insert@ method which the
-- 'ManagementCustomDimensionsInsert' request conforms to.
type ManagementCustomDimensionsInsertResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "customDimensions" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CustomDimension :>
                         Post '[JSON] CustomDimension

-- | Create a new custom dimension.
--
-- /See:/ 'managementCustomDimensionsInsert' smart constructor.
data ManagementCustomDimensionsInsert =
  ManagementCustomDimensionsInsert'
    { _mcdiWebPropertyId :: !Text
    , _mcdiPayload :: !CustomDimension
    , _mcdiAccountId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementCustomDimensionsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdiWebPropertyId'
--
-- * 'mcdiPayload'
--
-- * 'mcdiAccountId'
managementCustomDimensionsInsert
    :: Text -- ^ 'mcdiWebPropertyId'
    -> CustomDimension -- ^ 'mcdiPayload'
    -> Text -- ^ 'mcdiAccountId'
    -> ManagementCustomDimensionsInsert
managementCustomDimensionsInsert pMcdiWebPropertyId_ pMcdiPayload_ pMcdiAccountId_ =
  ManagementCustomDimensionsInsert'
    { _mcdiWebPropertyId = pMcdiWebPropertyId_
    , _mcdiPayload = pMcdiPayload_
    , _mcdiAccountId = pMcdiAccountId_
    }


-- | Web property ID for the custom dimension to create.
mcdiWebPropertyId :: Lens' ManagementCustomDimensionsInsert Text
mcdiWebPropertyId
  = lens _mcdiWebPropertyId
      (\ s a -> s{_mcdiWebPropertyId = a})

-- | Multipart request metadata.
mcdiPayload :: Lens' ManagementCustomDimensionsInsert CustomDimension
mcdiPayload
  = lens _mcdiPayload (\ s a -> s{_mcdiPayload = a})

-- | Account ID for the custom dimension to create.
mcdiAccountId :: Lens' ManagementCustomDimensionsInsert Text
mcdiAccountId
  = lens _mcdiAccountId
      (\ s a -> s{_mcdiAccountId = a})

instance GoogleRequest
           ManagementCustomDimensionsInsert
         where
        type Rs ManagementCustomDimensionsInsert =
             CustomDimension
        type Scopes ManagementCustomDimensionsInsert =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementCustomDimensionsInsert'{..}
          = go _mcdiAccountId _mcdiWebPropertyId (Just AltJSON)
              _mcdiPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementCustomDimensionsInsertResource)
                      mempty
