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
-- Module      : Network.Google.Resource.Reports.EntityUsageReports.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report which is a collection of properties \/ statistics for
-- a set of objects.
--
-- /See:/ <https://developers.google.com/admin-sdk/reports/ Admin Reports API Reference> for @reports.entityUsageReports.get@.
module Network.Google.Resource.Reports.EntityUsageReports.Get
    (
    -- * REST Resource
      EntityUsageReportsGetResource

    -- * Creating a Request
    , entityUsageReportsGet
    , EntityUsageReportsGet

    -- * Request Lenses
    , eurgEntityType
    , eurgFilters
    , eurgCustomerId
    , eurgDate
    , eurgEntityKey
    , eurgParameters
    , eurgPageToken
    , eurgMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.Reports.Types

-- | A resource alias for @reports.entityUsageReports.get@ method which the
-- 'EntityUsageReportsGet' request conforms to.
type EntityUsageReportsGetResource =
     "admin" :>
       "reports" :>
         "v1" :>
           "usage" :>
             Capture "entityType" Text :>
               Capture "entityKey" Text :>
                 "dates" :>
                   Capture "date" Text :>
                     QueryParam "filters" Text :>
                       QueryParam "customerId" Text :>
                         QueryParam "parameters" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] UsageReports

-- | Retrieves a report which is a collection of properties \/ statistics for
-- a set of objects.
--
-- /See:/ 'entityUsageReportsGet' smart constructor.
data EntityUsageReportsGet =
  EntityUsageReportsGet'
    { _eurgEntityType :: !Text
    , _eurgFilters    :: !(Maybe Text)
    , _eurgCustomerId :: !(Maybe Text)
    , _eurgDate       :: !Text
    , _eurgEntityKey  :: !Text
    , _eurgParameters :: !(Maybe Text)
    , _eurgPageToken  :: !(Maybe Text)
    , _eurgMaxResults :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EntityUsageReportsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eurgEntityType'
--
-- * 'eurgFilters'
--
-- * 'eurgCustomerId'
--
-- * 'eurgDate'
--
-- * 'eurgEntityKey'
--
-- * 'eurgParameters'
--
-- * 'eurgPageToken'
--
-- * 'eurgMaxResults'
entityUsageReportsGet
    :: Text -- ^ 'eurgEntityType'
    -> Text -- ^ 'eurgDate'
    -> Text -- ^ 'eurgEntityKey'
    -> EntityUsageReportsGet
entityUsageReportsGet pEurgEntityType_ pEurgDate_ pEurgEntityKey_ =
  EntityUsageReportsGet'
    { _eurgEntityType = pEurgEntityType_
    , _eurgFilters = Nothing
    , _eurgCustomerId = Nothing
    , _eurgDate = pEurgDate_
    , _eurgEntityKey = pEurgEntityKey_
    , _eurgParameters = Nothing
    , _eurgPageToken = Nothing
    , _eurgMaxResults = Nothing
    }


-- | Type of object. Should be one of - gplus_communities.
eurgEntityType :: Lens' EntityUsageReportsGet Text
eurgEntityType
  = lens _eurgEntityType
      (\ s a -> s{_eurgEntityType = a})

-- | Represents the set of filters including parameter operator value.
eurgFilters :: Lens' EntityUsageReportsGet (Maybe Text)
eurgFilters
  = lens _eurgFilters (\ s a -> s{_eurgFilters = a})

-- | Represents the customer for which the data is to be fetched.
eurgCustomerId :: Lens' EntityUsageReportsGet (Maybe Text)
eurgCustomerId
  = lens _eurgCustomerId
      (\ s a -> s{_eurgCustomerId = a})

-- | Represents the date in yyyy-mm-dd format for which the data is to be
-- fetched.
eurgDate :: Lens' EntityUsageReportsGet Text
eurgDate = lens _eurgDate (\ s a -> s{_eurgDate = a})

-- | Represents the key of object for which the data should be filtered.
eurgEntityKey :: Lens' EntityUsageReportsGet Text
eurgEntityKey
  = lens _eurgEntityKey
      (\ s a -> s{_eurgEntityKey = a})

-- | Represents the application name, parameter name pairs to fetch in csv as
-- app_name1:param_name1, app_name2:param_name2.
eurgParameters :: Lens' EntityUsageReportsGet (Maybe Text)
eurgParameters
  = lens _eurgParameters
      (\ s a -> s{_eurgParameters = a})

-- | Token to specify next page.
eurgPageToken :: Lens' EntityUsageReportsGet (Maybe Text)
eurgPageToken
  = lens _eurgPageToken
      (\ s a -> s{_eurgPageToken = a})

-- | Maximum number of results to return. Maximum allowed is 1000
eurgMaxResults :: Lens' EntityUsageReportsGet (Maybe Word32)
eurgMaxResults
  = lens _eurgMaxResults
      (\ s a -> s{_eurgMaxResults = a})
      . mapping _Coerce

instance GoogleRequest EntityUsageReportsGet where
        type Rs EntityUsageReportsGet = UsageReports
        type Scopes EntityUsageReportsGet =
             '["https://www.googleapis.com/auth/admin.reports.usage.readonly"]
        requestClient EntityUsageReportsGet'{..}
          = go _eurgEntityType _eurgEntityKey _eurgDate
              _eurgFilters
              _eurgCustomerId
              _eurgParameters
              _eurgPageToken
              _eurgMaxResults
              (Just AltJSON)
              reportsService
          where go
                  = buildClient
                      (Proxy :: Proxy EntityUsageReportsGetResource)
                      mempty
