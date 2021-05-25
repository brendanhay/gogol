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
-- Module      : Network.Google.Resource.CloudSearch.Stats.Query.SearchApplications.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the query statistics for search application. **Note:** This API
-- requires a standard end user account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.stats.query.searchapplications.get@.
module Network.Google.Resource.CloudSearch.Stats.Query.SearchApplications.Get
    (
    -- * REST Resource
      StatsQuerySearchApplicationsGetResource

    -- * Creating a Request
    , statsQuerySearchApplicationsGet
    , StatsQuerySearchApplicationsGet

    -- * Request Lenses
    , sqsagFromDateMonth
    , sqsagXgafv
    , sqsagUploadProtocol
    , sqsagFromDateDay
    , sqsagAccessToken
    , sqsagUploadType
    , sqsagFromDateYear
    , sqsagName
    , sqsagToDateDay
    , sqsagToDateYear
    , sqsagToDateMonth
    , sqsagCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.stats.query.searchapplications.get@ method which the
-- 'StatsQuerySearchApplicationsGet' request conforms to.
type StatsQuerySearchApplicationsGetResource =
     "v1" :>
       "stats" :>
         "query" :>
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
                                       GetSearchApplicationQueryStatsResponse

-- | Get the query statistics for search application. **Note:** This API
-- requires a standard end user account to execute.
--
-- /See:/ 'statsQuerySearchApplicationsGet' smart constructor.
data StatsQuerySearchApplicationsGet =
  StatsQuerySearchApplicationsGet'
    { _sqsagFromDateMonth :: !(Maybe (Textual Int32))
    , _sqsagXgafv :: !(Maybe Xgafv)
    , _sqsagUploadProtocol :: !(Maybe Text)
    , _sqsagFromDateDay :: !(Maybe (Textual Int32))
    , _sqsagAccessToken :: !(Maybe Text)
    , _sqsagUploadType :: !(Maybe Text)
    , _sqsagFromDateYear :: !(Maybe (Textual Int32))
    , _sqsagName :: !Text
    , _sqsagToDateDay :: !(Maybe (Textual Int32))
    , _sqsagToDateYear :: !(Maybe (Textual Int32))
    , _sqsagToDateMonth :: !(Maybe (Textual Int32))
    , _sqsagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatsQuerySearchApplicationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sqsagFromDateMonth'
--
-- * 'sqsagXgafv'
--
-- * 'sqsagUploadProtocol'
--
-- * 'sqsagFromDateDay'
--
-- * 'sqsagAccessToken'
--
-- * 'sqsagUploadType'
--
-- * 'sqsagFromDateYear'
--
-- * 'sqsagName'
--
-- * 'sqsagToDateDay'
--
-- * 'sqsagToDateYear'
--
-- * 'sqsagToDateMonth'
--
-- * 'sqsagCallback'
statsQuerySearchApplicationsGet
    :: Text -- ^ 'sqsagName'
    -> StatsQuerySearchApplicationsGet
statsQuerySearchApplicationsGet pSqsagName_ =
  StatsQuerySearchApplicationsGet'
    { _sqsagFromDateMonth = Nothing
    , _sqsagXgafv = Nothing
    , _sqsagUploadProtocol = Nothing
    , _sqsagFromDateDay = Nothing
    , _sqsagAccessToken = Nothing
    , _sqsagUploadType = Nothing
    , _sqsagFromDateYear = Nothing
    , _sqsagName = pSqsagName_
    , _sqsagToDateDay = Nothing
    , _sqsagToDateYear = Nothing
    , _sqsagToDateMonth = Nothing
    , _sqsagCallback = Nothing
    }


-- | Month of date. Must be from 1 to 12.
sqsagFromDateMonth :: Lens' StatsQuerySearchApplicationsGet (Maybe Int32)
sqsagFromDateMonth
  = lens _sqsagFromDateMonth
      (\ s a -> s{_sqsagFromDateMonth = a})
      . mapping _Coerce

-- | V1 error format.
sqsagXgafv :: Lens' StatsQuerySearchApplicationsGet (Maybe Xgafv)
sqsagXgafv
  = lens _sqsagXgafv (\ s a -> s{_sqsagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sqsagUploadProtocol :: Lens' StatsQuerySearchApplicationsGet (Maybe Text)
sqsagUploadProtocol
  = lens _sqsagUploadProtocol
      (\ s a -> s{_sqsagUploadProtocol = a})

-- | Day of month. Must be from 1 to 31 and valid for the year and month.
sqsagFromDateDay :: Lens' StatsQuerySearchApplicationsGet (Maybe Int32)
sqsagFromDateDay
  = lens _sqsagFromDateDay
      (\ s a -> s{_sqsagFromDateDay = a})
      . mapping _Coerce

-- | OAuth access token.
sqsagAccessToken :: Lens' StatsQuerySearchApplicationsGet (Maybe Text)
sqsagAccessToken
  = lens _sqsagAccessToken
      (\ s a -> s{_sqsagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sqsagUploadType :: Lens' StatsQuerySearchApplicationsGet (Maybe Text)
sqsagUploadType
  = lens _sqsagUploadType
      (\ s a -> s{_sqsagUploadType = a})

-- | Year of date. Must be from 1 to 9999.
sqsagFromDateYear :: Lens' StatsQuerySearchApplicationsGet (Maybe Int32)
sqsagFromDateYear
  = lens _sqsagFromDateYear
      (\ s a -> s{_sqsagFromDateYear = a})
      . mapping _Coerce

-- | The resource id of the search application query stats, in the following
-- format: searchapplications\/{application_id}
sqsagName :: Lens' StatsQuerySearchApplicationsGet Text
sqsagName
  = lens _sqsagName (\ s a -> s{_sqsagName = a})

-- | Day of month. Must be from 1 to 31 and valid for the year and month.
sqsagToDateDay :: Lens' StatsQuerySearchApplicationsGet (Maybe Int32)
sqsagToDateDay
  = lens _sqsagToDateDay
      (\ s a -> s{_sqsagToDateDay = a})
      . mapping _Coerce

-- | Year of date. Must be from 1 to 9999.
sqsagToDateYear :: Lens' StatsQuerySearchApplicationsGet (Maybe Int32)
sqsagToDateYear
  = lens _sqsagToDateYear
      (\ s a -> s{_sqsagToDateYear = a})
      . mapping _Coerce

-- | Month of date. Must be from 1 to 12.
sqsagToDateMonth :: Lens' StatsQuerySearchApplicationsGet (Maybe Int32)
sqsagToDateMonth
  = lens _sqsagToDateMonth
      (\ s a -> s{_sqsagToDateMonth = a})
      . mapping _Coerce

-- | JSONP
sqsagCallback :: Lens' StatsQuerySearchApplicationsGet (Maybe Text)
sqsagCallback
  = lens _sqsagCallback
      (\ s a -> s{_sqsagCallback = a})

instance GoogleRequest
           StatsQuerySearchApplicationsGet
         where
        type Rs StatsQuerySearchApplicationsGet =
             GetSearchApplicationQueryStatsResponse
        type Scopes StatsQuerySearchApplicationsGet =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.stats",
               "https://www.googleapis.com/auth/cloud_search.stats.indexing"]
        requestClient StatsQuerySearchApplicationsGet'{..}
          = go _sqsagName _sqsagFromDateMonth _sqsagXgafv
              _sqsagUploadProtocol
              _sqsagFromDateDay
              _sqsagAccessToken
              _sqsagUploadType
              _sqsagFromDateYear
              _sqsagToDateDay
              _sqsagToDateYear
              _sqsagToDateMonth
              _sqsagCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy StatsQuerySearchApplicationsGetResource)
                      mempty
