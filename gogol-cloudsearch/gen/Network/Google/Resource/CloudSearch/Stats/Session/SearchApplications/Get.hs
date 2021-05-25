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
-- Module      : Network.Google.Resource.CloudSearch.Stats.Session.SearchApplications.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the # of search sessions, % of successful sessions with a click
-- query statistics for search application. **Note:** This API requires a
-- standard end user account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.stats.session.searchapplications.get@.
module Network.Google.Resource.CloudSearch.Stats.Session.SearchApplications.Get
    (
    -- * REST Resource
      StatsSessionSearchApplicationsGetResource

    -- * Creating a Request
    , statsSessionSearchApplicationsGet
    , StatsSessionSearchApplicationsGet

    -- * Request Lenses
    , sssagFromDateMonth
    , sssagXgafv
    , sssagUploadProtocol
    , sssagFromDateDay
    , sssagAccessToken
    , sssagUploadType
    , sssagFromDateYear
    , sssagName
    , sssagToDateDay
    , sssagToDateYear
    , sssagToDateMonth
    , sssagCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.stats.session.searchapplications.get@ method which the
-- 'StatsSessionSearchApplicationsGet' request conforms to.
type StatsSessionSearchApplicationsGetResource =
     "v1" :>
       "stats" :>
         "session" :>
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
                                       GetSearchApplicationSessionStatsResponse

-- | Get the # of search sessions, % of successful sessions with a click
-- query statistics for search application. **Note:** This API requires a
-- standard end user account to execute.
--
-- /See:/ 'statsSessionSearchApplicationsGet' smart constructor.
data StatsSessionSearchApplicationsGet =
  StatsSessionSearchApplicationsGet'
    { _sssagFromDateMonth :: !(Maybe (Textual Int32))
    , _sssagXgafv :: !(Maybe Xgafv)
    , _sssagUploadProtocol :: !(Maybe Text)
    , _sssagFromDateDay :: !(Maybe (Textual Int32))
    , _sssagAccessToken :: !(Maybe Text)
    , _sssagUploadType :: !(Maybe Text)
    , _sssagFromDateYear :: !(Maybe (Textual Int32))
    , _sssagName :: !Text
    , _sssagToDateDay :: !(Maybe (Textual Int32))
    , _sssagToDateYear :: !(Maybe (Textual Int32))
    , _sssagToDateMonth :: !(Maybe (Textual Int32))
    , _sssagCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatsSessionSearchApplicationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sssagFromDateMonth'
--
-- * 'sssagXgafv'
--
-- * 'sssagUploadProtocol'
--
-- * 'sssagFromDateDay'
--
-- * 'sssagAccessToken'
--
-- * 'sssagUploadType'
--
-- * 'sssagFromDateYear'
--
-- * 'sssagName'
--
-- * 'sssagToDateDay'
--
-- * 'sssagToDateYear'
--
-- * 'sssagToDateMonth'
--
-- * 'sssagCallback'
statsSessionSearchApplicationsGet
    :: Text -- ^ 'sssagName'
    -> StatsSessionSearchApplicationsGet
statsSessionSearchApplicationsGet pSssagName_ =
  StatsSessionSearchApplicationsGet'
    { _sssagFromDateMonth = Nothing
    , _sssagXgafv = Nothing
    , _sssagUploadProtocol = Nothing
    , _sssagFromDateDay = Nothing
    , _sssagAccessToken = Nothing
    , _sssagUploadType = Nothing
    , _sssagFromDateYear = Nothing
    , _sssagName = pSssagName_
    , _sssagToDateDay = Nothing
    , _sssagToDateYear = Nothing
    , _sssagToDateMonth = Nothing
    , _sssagCallback = Nothing
    }


-- | Month of date. Must be from 1 to 12.
sssagFromDateMonth :: Lens' StatsSessionSearchApplicationsGet (Maybe Int32)
sssagFromDateMonth
  = lens _sssagFromDateMonth
      (\ s a -> s{_sssagFromDateMonth = a})
      . mapping _Coerce

-- | V1 error format.
sssagXgafv :: Lens' StatsSessionSearchApplicationsGet (Maybe Xgafv)
sssagXgafv
  = lens _sssagXgafv (\ s a -> s{_sssagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sssagUploadProtocol :: Lens' StatsSessionSearchApplicationsGet (Maybe Text)
sssagUploadProtocol
  = lens _sssagUploadProtocol
      (\ s a -> s{_sssagUploadProtocol = a})

-- | Day of month. Must be from 1 to 31 and valid for the year and month.
sssagFromDateDay :: Lens' StatsSessionSearchApplicationsGet (Maybe Int32)
sssagFromDateDay
  = lens _sssagFromDateDay
      (\ s a -> s{_sssagFromDateDay = a})
      . mapping _Coerce

-- | OAuth access token.
sssagAccessToken :: Lens' StatsSessionSearchApplicationsGet (Maybe Text)
sssagAccessToken
  = lens _sssagAccessToken
      (\ s a -> s{_sssagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sssagUploadType :: Lens' StatsSessionSearchApplicationsGet (Maybe Text)
sssagUploadType
  = lens _sssagUploadType
      (\ s a -> s{_sssagUploadType = a})

-- | Year of date. Must be from 1 to 9999.
sssagFromDateYear :: Lens' StatsSessionSearchApplicationsGet (Maybe Int32)
sssagFromDateYear
  = lens _sssagFromDateYear
      (\ s a -> s{_sssagFromDateYear = a})
      . mapping _Coerce

-- | The resource id of the search application session stats, in the
-- following format: searchapplications\/{application_id}
sssagName :: Lens' StatsSessionSearchApplicationsGet Text
sssagName
  = lens _sssagName (\ s a -> s{_sssagName = a})

-- | Day of month. Must be from 1 to 31 and valid for the year and month.
sssagToDateDay :: Lens' StatsSessionSearchApplicationsGet (Maybe Int32)
sssagToDateDay
  = lens _sssagToDateDay
      (\ s a -> s{_sssagToDateDay = a})
      . mapping _Coerce

-- | Year of date. Must be from 1 to 9999.
sssagToDateYear :: Lens' StatsSessionSearchApplicationsGet (Maybe Int32)
sssagToDateYear
  = lens _sssagToDateYear
      (\ s a -> s{_sssagToDateYear = a})
      . mapping _Coerce

-- | Month of date. Must be from 1 to 12.
sssagToDateMonth :: Lens' StatsSessionSearchApplicationsGet (Maybe Int32)
sssagToDateMonth
  = lens _sssagToDateMonth
      (\ s a -> s{_sssagToDateMonth = a})
      . mapping _Coerce

-- | JSONP
sssagCallback :: Lens' StatsSessionSearchApplicationsGet (Maybe Text)
sssagCallback
  = lens _sssagCallback
      (\ s a -> s{_sssagCallback = a})

instance GoogleRequest
           StatsSessionSearchApplicationsGet
         where
        type Rs StatsSessionSearchApplicationsGet =
             GetSearchApplicationSessionStatsResponse
        type Scopes StatsSessionSearchApplicationsGet =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.stats",
               "https://www.googleapis.com/auth/cloud_search.stats.indexing"]
        requestClient StatsSessionSearchApplicationsGet'{..}
          = go _sssagName _sssagFromDateMonth _sssagXgafv
              _sssagUploadProtocol
              _sssagFromDateDay
              _sssagAccessToken
              _sssagUploadType
              _sssagFromDateYear
              _sssagToDateDay
              _sssagToDateYear
              _sssagToDateMonth
              _sssagCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy StatsSessionSearchApplicationsGetResource)
                      mempty
