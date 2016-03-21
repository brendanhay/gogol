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
-- Module      : Network.Google.Resource.Reports.UserUsageReport.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a report which is a collection of properties \/ statistics for
-- a set of users.
--
-- /See:/ <https://developers.google.com/admin-sdk/reports/ Admin Reports API Reference> for @reports.userUsageReport.get@.
module Network.Google.Resource.Reports.UserUsageReport.Get
    (
    -- * REST Resource
      UserUsageReportGetResource

    -- * Creating a Request
    , userUsageReportGet
    , UserUsageReportGet

    -- * Request Lenses
    , uurgFilters
    , uurgCustomerId
    , uurgDate
    , uurgParameters
    , uurgPageToken
    , uurgUserKey
    , uurgMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.Reports.Types

-- | A resource alias for @reports.userUsageReport.get@ method which the
-- 'UserUsageReportGet' request conforms to.
type UserUsageReportGetResource =
     "admin" :>
       "reports" :>
         "v1" :>
           "usage" :>
             "users" :>
               Capture "userKey" Text :>
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
-- a set of users.
--
-- /See:/ 'userUsageReportGet' smart constructor.
data UserUsageReportGet = UserUsageReportGet'
    { _uurgFilters    :: !(Maybe Text)
    , _uurgCustomerId :: !(Maybe Text)
    , _uurgDate       :: !Text
    , _uurgParameters :: !(Maybe Text)
    , _uurgPageToken  :: !(Maybe Text)
    , _uurgUserKey    :: !Text
    , _uurgMaxResults :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserUsageReportGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uurgFilters'
--
-- * 'uurgCustomerId'
--
-- * 'uurgDate'
--
-- * 'uurgParameters'
--
-- * 'uurgPageToken'
--
-- * 'uurgUserKey'
--
-- * 'uurgMaxResults'
userUsageReportGet
    :: Text -- ^ 'uurgDate'
    -> Text -- ^ 'uurgUserKey'
    -> UserUsageReportGet
userUsageReportGet pUurgDate_ pUurgUserKey_ =
    UserUsageReportGet'
    { _uurgFilters = Nothing
    , _uurgCustomerId = Nothing
    , _uurgDate = pUurgDate_
    , _uurgParameters = Nothing
    , _uurgPageToken = Nothing
    , _uurgUserKey = pUurgUserKey_
    , _uurgMaxResults = Nothing
    }

-- | Represents the set of filters including parameter operator value.
uurgFilters :: Lens' UserUsageReportGet (Maybe Text)
uurgFilters
  = lens _uurgFilters (\ s a -> s{_uurgFilters = a})

-- | Represents the customer for which the data is to be fetched.
uurgCustomerId :: Lens' UserUsageReportGet (Maybe Text)
uurgCustomerId
  = lens _uurgCustomerId
      (\ s a -> s{_uurgCustomerId = a})

-- | Represents the date in yyyy-mm-dd format for which the data is to be
-- fetched.
uurgDate :: Lens' UserUsageReportGet Text
uurgDate = lens _uurgDate (\ s a -> s{_uurgDate = a})

-- | Represents the application name, parameter name pairs to fetch in csv as
-- app_name1:param_name1, app_name2:param_name2.
uurgParameters :: Lens' UserUsageReportGet (Maybe Text)
uurgParameters
  = lens _uurgParameters
      (\ s a -> s{_uurgParameters = a})

-- | Token to specify next page.
uurgPageToken :: Lens' UserUsageReportGet (Maybe Text)
uurgPageToken
  = lens _uurgPageToken
      (\ s a -> s{_uurgPageToken = a})

-- | Represents the profile id or the user email for which the data should be
-- filtered.
uurgUserKey :: Lens' UserUsageReportGet Text
uurgUserKey
  = lens _uurgUserKey (\ s a -> s{_uurgUserKey = a})

-- | Maximum number of results to return. Maximum allowed is 1000
uurgMaxResults :: Lens' UserUsageReportGet (Maybe Word32)
uurgMaxResults
  = lens _uurgMaxResults
      (\ s a -> s{_uurgMaxResults = a})
      . mapping _Coerce

instance GoogleRequest UserUsageReportGet where
        type Rs UserUsageReportGet = UsageReports
        type Scopes UserUsageReportGet =
             '["https://www.googleapis.com/auth/admin.reports.usage.readonly"]
        requestClient UserUsageReportGet'{..}
          = go _uurgUserKey _uurgDate _uurgFilters
              _uurgCustomerId
              _uurgParameters
              _uurgPageToken
              _uurgMaxResults
              (Just AltJSON)
              reportsService
          where go
                  = buildClient
                      (Proxy :: Proxy UserUsageReportGetResource)
                      mempty
