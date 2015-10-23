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
-- Module      : Network.Google.Resource.Analytics.Management.WebProperties.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists web properties to which the user has access.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webproperties.list@.
module Network.Google.Resource.Analytics.Management.WebProperties.List
    (
    -- * REST Resource
      ManagementWebPropertiesListResource

    -- * Creating a Request
    , managementWebPropertiesList
    , ManagementWebPropertiesList

    -- * Request Lenses
    , mwplAccountId
    , mwplStartIndex
    , mwplMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.webproperties.list@ method which the
-- 'ManagementWebPropertiesList' request conforms to.
type ManagementWebPropertiesListResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 QueryParam "start-index" Int32 :>
                   QueryParam "max-results" Int32 :>
                     QueryParam "alt" AltJSON :> Get '[JSON] WebProperties

-- | Lists web properties to which the user has access.
--
-- /See:/ 'managementWebPropertiesList' smart constructor.
data ManagementWebPropertiesList = ManagementWebPropertiesList
    { _mwplAccountId  :: !Text
    , _mwplStartIndex :: !(Maybe Int32)
    , _mwplMaxResults :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwplAccountId'
--
-- * 'mwplStartIndex'
--
-- * 'mwplMaxResults'
managementWebPropertiesList
    :: Text -- ^ 'mwplAccountId'
    -> ManagementWebPropertiesList
managementWebPropertiesList pMwplAccountId_ =
    ManagementWebPropertiesList
    { _mwplAccountId = pMwplAccountId_
    , _mwplStartIndex = Nothing
    , _mwplMaxResults = Nothing
    }

-- | Account ID to retrieve web properties for. Can either be a specific
-- account ID or \'~all\', which refers to all the accounts that user has
-- access to.
mwplAccountId :: Lens' ManagementWebPropertiesList Text
mwplAccountId
  = lens _mwplAccountId
      (\ s a -> s{_mwplAccountId = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mwplStartIndex :: Lens' ManagementWebPropertiesList (Maybe Int32)
mwplStartIndex
  = lens _mwplStartIndex
      (\ s a -> s{_mwplStartIndex = a})

-- | The maximum number of web properties to include in this response.
mwplMaxResults :: Lens' ManagementWebPropertiesList (Maybe Int32)
mwplMaxResults
  = lens _mwplMaxResults
      (\ s a -> s{_mwplMaxResults = a})

instance GoogleRequest ManagementWebPropertiesList
         where
        type Rs ManagementWebPropertiesList = WebProperties
        requestClient ManagementWebPropertiesList{..}
          = go _mwplAccountId _mwplStartIndex _mwplMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementWebPropertiesListResource)
                      mempty
