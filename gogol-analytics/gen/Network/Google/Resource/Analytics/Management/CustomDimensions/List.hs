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
-- Module      : Network.Google.Resource.Analytics.Management.CustomDimensions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists custom dimensions to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.customDimensions.list@.
module Network.Google.Resource.Analytics.Management.CustomDimensions.List
    (
    -- * REST Resource
      ManagementCustomDimensionsListResource

    -- * Creating a Request
    , managementCustomDimensionsList
    , ManagementCustomDimensionsList

    -- * Request Lenses
    , mcdlWebPropertyId
    , mcdlAccountId
    , mcdlStartIndex
    , mcdlMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.customDimensions.list@ method which the
-- 'ManagementCustomDimensionsList' request conforms to.
type ManagementCustomDimensionsListResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "customDimensions" :>
                     QueryParam "start-index" Int32 :>
                       QueryParam "max-results" Int32 :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] CustomDimensions

-- | Lists custom dimensions to which the user has access.
--
-- /See:/ 'managementCustomDimensionsList' smart constructor.
data ManagementCustomDimensionsList = ManagementCustomDimensionsList
    { _mcdlWebPropertyId :: !Text
    , _mcdlAccountId     :: !Text
    , _mcdlStartIndex    :: !(Maybe Int32)
    , _mcdlMaxResults    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementCustomDimensionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcdlWebPropertyId'
--
-- * 'mcdlAccountId'
--
-- * 'mcdlStartIndex'
--
-- * 'mcdlMaxResults'
managementCustomDimensionsList
    :: Text -- ^ 'mcdlWebPropertyId'
    -> Text -- ^ 'mcdlAccountId'
    -> ManagementCustomDimensionsList
managementCustomDimensionsList pMcdlWebPropertyId_ pMcdlAccountId_ =
    ManagementCustomDimensionsList
    { _mcdlWebPropertyId = pMcdlWebPropertyId_
    , _mcdlAccountId = pMcdlAccountId_
    , _mcdlStartIndex = Nothing
    , _mcdlMaxResults = Nothing
    }

-- | Web property ID for the custom dimensions to retrieve.
mcdlWebPropertyId :: Lens' ManagementCustomDimensionsList Text
mcdlWebPropertyId
  = lens _mcdlWebPropertyId
      (\ s a -> s{_mcdlWebPropertyId = a})

-- | Account ID for the custom dimensions to retrieve.
mcdlAccountId :: Lens' ManagementCustomDimensionsList Text
mcdlAccountId
  = lens _mcdlAccountId
      (\ s a -> s{_mcdlAccountId = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mcdlStartIndex :: Lens' ManagementCustomDimensionsList (Maybe Int32)
mcdlStartIndex
  = lens _mcdlStartIndex
      (\ s a -> s{_mcdlStartIndex = a})

-- | The maximum number of custom dimensions to include in this response.
mcdlMaxResults :: Lens' ManagementCustomDimensionsList (Maybe Int32)
mcdlMaxResults
  = lens _mcdlMaxResults
      (\ s a -> s{_mcdlMaxResults = a})

instance GoogleRequest ManagementCustomDimensionsList
         where
        type Rs ManagementCustomDimensionsList =
             CustomDimensions
        requestClient ManagementCustomDimensionsList{..}
          = go _mcdlAccountId _mcdlWebPropertyId
              _mcdlStartIndex
              _mcdlMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementCustomDimensionsListResource)
                      mempty
