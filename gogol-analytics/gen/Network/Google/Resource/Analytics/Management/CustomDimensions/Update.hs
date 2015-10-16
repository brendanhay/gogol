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
-- Module      : Network.Google.Resource.Analytics.Management.CustomDimensions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing custom dimension.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementCustomDimensionsUpdate@.
module Network.Google.Resource.Analytics.Management.CustomDimensions.Update
    (
    -- * REST Resource
      ManagementCustomDimensionsUpdateResource

    -- * Creating a Request
    , managementCustomDimensionsUpdate'
    , ManagementCustomDimensionsUpdate'

    -- * Request Lenses
    , mcduWebPropertyId
    , mcduIgnoreCustomDataSourceLinks
    , mcduPayload
    , mcduAccountId
    , mcduCustomDimensionId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementCustomDimensionsUpdate@ method which the
-- 'ManagementCustomDimensionsUpdate'' request conforms to.
type ManagementCustomDimensionsUpdateResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customDimensions" :>
                 Capture "customDimensionId" Text :>
                   QueryParam "ignoreCustomDataSourceLinks" Bool :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] CustomDimension :>
                         Put '[JSON] CustomDimension

-- | Updates an existing custom dimension.
--
-- /See:/ 'managementCustomDimensionsUpdate'' smart constructor.
data ManagementCustomDimensionsUpdate' = ManagementCustomDimensionsUpdate'
    { _mcduWebPropertyId               :: !Text
    , _mcduIgnoreCustomDataSourceLinks :: !Bool
    , _mcduPayload                     :: !CustomDimension
    , _mcduAccountId                   :: !Text
    , _mcduCustomDimensionId           :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomDimensionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcduWebPropertyId'
--
-- * 'mcduIgnoreCustomDataSourceLinks'
--
-- * 'mcduPayload'
--
-- * 'mcduAccountId'
--
-- * 'mcduCustomDimensionId'
managementCustomDimensionsUpdate'
    :: Text -- ^ 'webPropertyId'
    -> CustomDimension -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> Text -- ^ 'customDimensionId'
    -> ManagementCustomDimensionsUpdate'
managementCustomDimensionsUpdate' pMcduWebPropertyId_ pMcduPayload_ pMcduAccountId_ pMcduCustomDimensionId_ =
    ManagementCustomDimensionsUpdate'
    { _mcduWebPropertyId = pMcduWebPropertyId_
    , _mcduIgnoreCustomDataSourceLinks = False
    , _mcduPayload = pMcduPayload_
    , _mcduAccountId = pMcduAccountId_
    , _mcduCustomDimensionId = pMcduCustomDimensionId_
    }

-- | Web property ID for the custom dimension to update.
mcduWebPropertyId :: Lens' ManagementCustomDimensionsUpdate' Text
mcduWebPropertyId
  = lens _mcduWebPropertyId
      (\ s a -> s{_mcduWebPropertyId = a})

-- | Force the update and ignore any warnings related to the custom dimension
-- being linked to a custom data source \/ data set.
mcduIgnoreCustomDataSourceLinks :: Lens' ManagementCustomDimensionsUpdate' Bool
mcduIgnoreCustomDataSourceLinks
  = lens _mcduIgnoreCustomDataSourceLinks
      (\ s a -> s{_mcduIgnoreCustomDataSourceLinks = a})

-- | Multipart request metadata.
mcduPayload :: Lens' ManagementCustomDimensionsUpdate' CustomDimension
mcduPayload
  = lens _mcduPayload (\ s a -> s{_mcduPayload = a})

-- | Account ID for the custom dimension to update.
mcduAccountId :: Lens' ManagementCustomDimensionsUpdate' Text
mcduAccountId
  = lens _mcduAccountId
      (\ s a -> s{_mcduAccountId = a})

-- | Custom dimension ID for the custom dimension to update.
mcduCustomDimensionId :: Lens' ManagementCustomDimensionsUpdate' Text
mcduCustomDimensionId
  = lens _mcduCustomDimensionId
      (\ s a -> s{_mcduCustomDimensionId = a})

instance GoogleRequest
         ManagementCustomDimensionsUpdate' where
        type Rs ManagementCustomDimensionsUpdate' =
             CustomDimension
        requestClient ManagementCustomDimensionsUpdate'{..}
          = go _mcduAccountId _mcduWebPropertyId
              _mcduCustomDimensionId
              (Just _mcduIgnoreCustomDataSourceLinks)
              (Just AltJSON)
              _mcduPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementCustomDimensionsUpdateResource)
                      mempty
