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
-- Module      : Network.Google.Resource.CloudSearch.Stats.User.SearchApplications.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the users statistics for search application. **Note:** This API
-- requires a standard end user account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.stats.user.searchapplications.get@.
module Network.Google.Resource.CloudSearch.Stats.User.SearchApplications.Get
    (
    -- * REST Resource
      StatsUserSearchApplicationsGetResource

    -- * Creating a Request
    , statsUserSearchApplicationsGet
    , StatsUserSearchApplicationsGet

    -- * Request Lenses
    , susagFromDateMonth
    , susagXgafv
    , susagUploadProtocol
    , susagFromDateDay
    , susagAccessToken
    , susagUploadType
    , susagFromDateYear
    , susagName
    , susagToDateDay
    , susagToDateYear
    , susagToDateMonth
    , susagCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.stats.user.searchapplications.get@ method which the
-- 'StatsUserSearchApplicationsGet' request conforms to.
type StatsUserSearchApplicationsGetResource =
     "v1" :>
       "stats" :>
         "user" :>
           Capture "name" Text :>
             QueryParam "fromDate.month" (Textual Int32) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "fromDate.day" (Textual Int32) :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "fromDate.year" (Textual Int32) :>
                           QueryParam "toDate.day" (Textual Int32) :>
                             QueryParam "toDate.year" (Textual Int32) :>
                               QueryParam "toDate.month" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON]
                                       GetSearchApplicationUserStatsResponse

-- | Get the users statistics for search application. **Note:** This API
-- requires a standard end user account to execute.
--
-- /See:/ 'statsUserSearchApplicationsGet' smart constructor.
data StatsUserSearchApplicationsGet =
  StatsUserSearchApplicationsGet'
    { _susagFromDateMonth :: !(Maybe (Textual Int32))
    , _susagXgafv :: !(Maybe Xgafv)
    , _susagUploadProtocol :: !(Maybe Text)
    , _susagFromDateDay :: !(Maybe (Textual Int32))
    , _susagAccessToken :: !(Maybe Text)
    , _susagUploadType :: !(Maybe Text)
    , _susagFromDateYear :: !(Maybe (Textual Int32))
    , _susagName :: !Text
    , _susagToDateDay :: !(Maybe (Textual Int32))
    , _susagToDateYear :: !(Maybe (Textual Int32))
    , _susagToDateMonth :: !(Maybe (Textual Int32))
    , _susagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatsUserSearchApplicationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'susagFromDateMonth'
--
-- * 'susagXgafv'
--
-- * 'susagUploadProtocol'
--
-- * 'susagFromDateDay'
--
-- * 'susagAccessToken'
--
-- * 'susagUploadType'
--
-- * 'susagFromDateYear'
--
-- * 'susagName'
--
-- * 'susagToDateDay'
--
-- * 'susagToDateYear'
--
-- * 'susagToDateMonth'
--
-- * 'susagCallback'
statsUserSearchApplicationsGet
    :: Text -- ^ 'susagName'
    -> StatsUserSearchApplicationsGet
statsUserSearchApplicationsGet pSusagName_ =
  StatsUserSearchApplicationsGet'
    { _susagFromDateMonth = Nothing
    , _susagXgafv = Nothing
    , _susagUploadProtocol = Nothing
    , _susagFromDateDay = Nothing
    , _susagAccessToken = Nothing
    , _susagUploadType = Nothing
    , _susagFromDateYear = Nothing
    , _susagName = pSusagName_
    , _susagToDateDay = Nothing
    , _susagToDateYear = Nothing
    , _susagToDateMonth = Nothing
    , _susagCallback = Nothing
    }


-- | Month of date. Must be from 1 to 12.
susagFromDateMonth :: Lens' StatsUserSearchApplicationsGet (Maybe Int32)
susagFromDateMonth
  = lens _susagFromDateMonth
      (\ s a -> s{_susagFromDateMonth = a})
      . mapping _Coerce

-- | V1 error format.
susagXgafv :: Lens' StatsUserSearchApplicationsGet (Maybe Xgafv)
susagXgafv
  = lens _susagXgafv (\ s a -> s{_susagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
susagUploadProtocol :: Lens' StatsUserSearchApplicationsGet (Maybe Text)
susagUploadProtocol
  = lens _susagUploadProtocol
      (\ s a -> s{_susagUploadProtocol = a})

-- | Day of month. Must be from 1 to 31 and valid for the year and month.
susagFromDateDay :: Lens' StatsUserSearchApplicationsGet (Maybe Int32)
susagFromDateDay
  = lens _susagFromDateDay
      (\ s a -> s{_susagFromDateDay = a})
      . mapping _Coerce

-- | OAuth access token.
susagAccessToken :: Lens' StatsUserSearchApplicationsGet (Maybe Text)
susagAccessToken
  = lens _susagAccessToken
      (\ s a -> s{_susagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
susagUploadType :: Lens' StatsUserSearchApplicationsGet (Maybe Text)
susagUploadType
  = lens _susagUploadType
      (\ s a -> s{_susagUploadType = a})

-- | Year of date. Must be from 1 to 9999.
susagFromDateYear :: Lens' StatsUserSearchApplicationsGet (Maybe Int32)
susagFromDateYear
  = lens _susagFromDateYear
      (\ s a -> s{_susagFromDateYear = a})
      . mapping _Coerce

-- | The resource id of the search application session stats, in the
-- following format: searchapplications\/{application_id}
susagName :: Lens' StatsUserSearchApplicationsGet Text
susagName
  = lens _susagName (\ s a -> s{_susagName = a})

-- | Day of month. Must be from 1 to 31 and valid for the year and month.
susagToDateDay :: Lens' StatsUserSearchApplicationsGet (Maybe Int32)
susagToDateDay
  = lens _susagToDateDay
      (\ s a -> s{_susagToDateDay = a})
      . mapping _Coerce

-- | Year of date. Must be from 1 to 9999.
susagToDateYear :: Lens' StatsUserSearchApplicationsGet (Maybe Int32)
susagToDateYear
  = lens _susagToDateYear
      (\ s a -> s{_susagToDateYear = a})
      . mapping _Coerce

-- | Month of date. Must be from 1 to 12.
susagToDateMonth :: Lens' StatsUserSearchApplicationsGet (Maybe Int32)
susagToDateMonth
  = lens _susagToDateMonth
      (\ s a -> s{_susagToDateMonth = a})
      . mapping _Coerce

-- | JSONP
susagCallback :: Lens' StatsUserSearchApplicationsGet (Maybe Text)
susagCallback
  = lens _susagCallback
      (\ s a -> s{_susagCallback = a})

instance GoogleRequest StatsUserSearchApplicationsGet
         where
        type Rs StatsUserSearchApplicationsGet =
             GetSearchApplicationUserStatsResponse
        type Scopes StatsUserSearchApplicationsGet =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.stats",
               "https://www.googleapis.com/auth/cloud_search.stats.indexing"]
        requestClient StatsUserSearchApplicationsGet'{..}
          = go _susagName _susagFromDateMonth _susagXgafv
              _susagUploadProtocol
              _susagFromDateDay
              _susagAccessToken
              _susagUploadType
              _susagFromDateYear
              _susagToDateDay
              _susagToDateYear
              _susagToDateMonth
              _susagCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy StatsUserSearchApplicationsGetResource)
                      mempty
