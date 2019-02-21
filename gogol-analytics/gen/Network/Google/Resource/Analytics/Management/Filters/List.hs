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
-- Module      : Network.Google.Resource.Analytics.Management.Filters.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all filters for an account
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.filters.list@.
module Network.Google.Resource.Analytics.Management.Filters.List
    (
    -- * REST Resource
      ManagementFiltersListResource

    -- * Creating a Request
    , managementFiltersList
    , ManagementFiltersList

    -- * Request Lenses
    , mflAccountId
    , mflStartIndex
    , mflMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.filters.list@ method which the
-- 'ManagementFiltersList' request conforms to.
type ManagementFiltersListResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "filters" :>
                 QueryParam "start-index" (Textual Int32) :>
                   QueryParam "max-results" (Textual Int32) :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Filters

-- | Lists all filters for an account
--
-- /See:/ 'managementFiltersList' smart constructor.
data ManagementFiltersList =
  ManagementFiltersList'
    { _mflAccountId  :: !Text
    , _mflStartIndex :: !(Maybe (Textual Int32))
    , _mflMaxResults :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementFiltersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mflAccountId'
--
-- * 'mflStartIndex'
--
-- * 'mflMaxResults'
managementFiltersList
    :: Text -- ^ 'mflAccountId'
    -> ManagementFiltersList
managementFiltersList pMflAccountId_ =
  ManagementFiltersList'
    { _mflAccountId = pMflAccountId_
    , _mflStartIndex = Nothing
    , _mflMaxResults = Nothing
    }


-- | Account ID to retrieve filters for.
mflAccountId :: Lens' ManagementFiltersList Text
mflAccountId
  = lens _mflAccountId (\ s a -> s{_mflAccountId = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mflStartIndex :: Lens' ManagementFiltersList (Maybe Int32)
mflStartIndex
  = lens _mflStartIndex
      (\ s a -> s{_mflStartIndex = a})
      . mapping _Coerce

-- | The maximum number of filters to include in this response.
mflMaxResults :: Lens' ManagementFiltersList (Maybe Int32)
mflMaxResults
  = lens _mflMaxResults
      (\ s a -> s{_mflMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ManagementFiltersList where
        type Rs ManagementFiltersList = Filters
        type Scopes ManagementFiltersList =
             '["https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient ManagementFiltersList'{..}
          = go _mflAccountId _mflStartIndex _mflMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy :: Proxy ManagementFiltersListResource)
                      mempty
