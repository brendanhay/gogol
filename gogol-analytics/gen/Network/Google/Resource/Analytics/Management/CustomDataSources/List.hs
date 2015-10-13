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
-- Module      : Network.Google.Resource.Analytics.Management.CustomDataSources.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List custom data sources to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementCustomDataSourcesList@.
module Network.Google.Resource.Analytics.Management.CustomDataSources.List
    (
    -- * REST Resource
      ManagementCustomDataSourcesListResource

    -- * Creating a Request
    , managementCustomDataSourcesList'
    , ManagementCustomDataSourcesList'

    -- * Request Lenses
    , mcdslWebPropertyId
    , mcdslAccountId
    , mcdslStartIndex
    , mcdslMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementCustomDataSourcesList@ method which the
-- 'ManagementCustomDataSourcesList'' request conforms to.
type ManagementCustomDataSourcesListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "customDataSources" :>
                 QueryParam "start-index" Int32 :>
                   QueryParam "max-results" Int32 :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] CustomDataSources

-- | List custom data sources to which the user has access.
--
-- /See:/ 'managementCustomDataSourcesList'' smart constructor.
data ManagementCustomDataSourcesList' = ManagementCustomDataSourcesList'
    { _mcdslWebPropertyId :: !Text
    , _mcdslAccountId     :: !Text
    , _mcdslStartIndex    :: !(Maybe Int32)
    , _mcdslMaxResults    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomDataSourcesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdslWebPropertyId'
--
-- * 'mcdslAccountId'
--
-- * 'mcdslStartIndex'
--
-- * 'mcdslMaxResults'
managementCustomDataSourcesList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'accountId'
    -> ManagementCustomDataSourcesList'
managementCustomDataSourcesList' pMcdslWebPropertyId_ pMcdslAccountId_ =
    ManagementCustomDataSourcesList'
    { _mcdslWebPropertyId = pMcdslWebPropertyId_
    , _mcdslAccountId = pMcdslAccountId_
    , _mcdslStartIndex = Nothing
    , _mcdslMaxResults = Nothing
    }

-- | Web property Id for the custom data sources to retrieve.
mcdslWebPropertyId :: Lens' ManagementCustomDataSourcesList' Text
mcdslWebPropertyId
  = lens _mcdslWebPropertyId
      (\ s a -> s{_mcdslWebPropertyId = a})

-- | Account Id for the custom data sources to retrieve.
mcdslAccountId :: Lens' ManagementCustomDataSourcesList' Text
mcdslAccountId
  = lens _mcdslAccountId
      (\ s a -> s{_mcdslAccountId = a})

-- | A 1-based index of the first custom data source to retrieve. Use this
-- parameter as a pagination mechanism along with the max-results
-- parameter.
mcdslStartIndex :: Lens' ManagementCustomDataSourcesList' (Maybe Int32)
mcdslStartIndex
  = lens _mcdslStartIndex
      (\ s a -> s{_mcdslStartIndex = a})

-- | The maximum number of custom data sources to include in this response.
mcdslMaxResults :: Lens' ManagementCustomDataSourcesList' (Maybe Int32)
mcdslMaxResults
  = lens _mcdslMaxResults
      (\ s a -> s{_mcdslMaxResults = a})

instance GoogleRequest
         ManagementCustomDataSourcesList' where
        type Rs ManagementCustomDataSourcesList' =
             CustomDataSources
        requestClient ManagementCustomDataSourcesList'{..}
          = go _mcdslAccountId _mcdslWebPropertyId
              _mcdslStartIndex
              _mcdslMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementCustomDataSourcesListResource)
                      mempty
