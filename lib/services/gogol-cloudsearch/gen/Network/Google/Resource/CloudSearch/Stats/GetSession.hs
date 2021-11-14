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
-- Module      : Network.Google.Resource.CloudSearch.Stats.GetSession
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the # of search sessions, % of successful sessions with a click
-- query statistics for customer. **Note:** This API requires a standard
-- end user account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.stats.getSession@.
module Network.Google.Resource.CloudSearch.Stats.GetSession
    (
    -- * REST Resource
      StatsGetSessionResource

    -- * Creating a Request
    , statsGetSession
    , StatsGetSession

    -- * Request Lenses
    , sgsFromDateMonth
    , sgsXgafv
    , sgsUploadProtocol
    , sgsFromDateDay
    , sgsAccessToken
    , sgsUploadType
    , sgsFromDateYear
    , sgsToDateDay
    , sgsToDateYear
    , sgsToDateMonth
    , sgsCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.stats.getSession@ method which the
-- 'StatsGetSession' request conforms to.
type StatsGetSessionResource =
     "v1" :>
       "stats" :>
         "session" :>
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
                                   Get '[JSON] GetCustomerSessionStatsResponse

-- | Get the # of search sessions, % of successful sessions with a click
-- query statistics for customer. **Note:** This API requires a standard
-- end user account to execute.
--
-- /See:/ 'statsGetSession' smart constructor.
data StatsGetSession =
  StatsGetSession'
    { _sgsFromDateMonth :: !(Maybe (Textual Int32))
    , _sgsXgafv :: !(Maybe Xgafv)
    , _sgsUploadProtocol :: !(Maybe Text)
    , _sgsFromDateDay :: !(Maybe (Textual Int32))
    , _sgsAccessToken :: !(Maybe Text)
    , _sgsUploadType :: !(Maybe Text)
    , _sgsFromDateYear :: !(Maybe (Textual Int32))
    , _sgsToDateDay :: !(Maybe (Textual Int32))
    , _sgsToDateYear :: !(Maybe (Textual Int32))
    , _sgsToDateMonth :: !(Maybe (Textual Int32))
    , _sgsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatsGetSession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgsFromDateMonth'
--
-- * 'sgsXgafv'
--
-- * 'sgsUploadProtocol'
--
-- * 'sgsFromDateDay'
--
-- * 'sgsAccessToken'
--
-- * 'sgsUploadType'
--
-- * 'sgsFromDateYear'
--
-- * 'sgsToDateDay'
--
-- * 'sgsToDateYear'
--
-- * 'sgsToDateMonth'
--
-- * 'sgsCallback'
statsGetSession
    :: StatsGetSession
statsGetSession =
  StatsGetSession'
    { _sgsFromDateMonth = Nothing
    , _sgsXgafv = Nothing
    , _sgsUploadProtocol = Nothing
    , _sgsFromDateDay = Nothing
    , _sgsAccessToken = Nothing
    , _sgsUploadType = Nothing
    , _sgsFromDateYear = Nothing
    , _sgsToDateDay = Nothing
    , _sgsToDateYear = Nothing
    , _sgsToDateMonth = Nothing
    , _sgsCallback = Nothing
    }


-- | Month of date. Must be from 1 to 12.
sgsFromDateMonth :: Lens' StatsGetSession (Maybe Int32)
sgsFromDateMonth
  = lens _sgsFromDateMonth
      (\ s a -> s{_sgsFromDateMonth = a})
      . mapping _Coerce

-- | V1 error format.
sgsXgafv :: Lens' StatsGetSession (Maybe Xgafv)
sgsXgafv = lens _sgsXgafv (\ s a -> s{_sgsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgsUploadProtocol :: Lens' StatsGetSession (Maybe Text)
sgsUploadProtocol
  = lens _sgsUploadProtocol
      (\ s a -> s{_sgsUploadProtocol = a})

-- | Day of month. Must be from 1 to 31 and valid for the year and month.
sgsFromDateDay :: Lens' StatsGetSession (Maybe Int32)
sgsFromDateDay
  = lens _sgsFromDateDay
      (\ s a -> s{_sgsFromDateDay = a})
      . mapping _Coerce

-- | OAuth access token.
sgsAccessToken :: Lens' StatsGetSession (Maybe Text)
sgsAccessToken
  = lens _sgsAccessToken
      (\ s a -> s{_sgsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgsUploadType :: Lens' StatsGetSession (Maybe Text)
sgsUploadType
  = lens _sgsUploadType
      (\ s a -> s{_sgsUploadType = a})

-- | Year of date. Must be from 1 to 9999.
sgsFromDateYear :: Lens' StatsGetSession (Maybe Int32)
sgsFromDateYear
  = lens _sgsFromDateYear
      (\ s a -> s{_sgsFromDateYear = a})
      . mapping _Coerce

-- | Day of month. Must be from 1 to 31 and valid for the year and month.
sgsToDateDay :: Lens' StatsGetSession (Maybe Int32)
sgsToDateDay
  = lens _sgsToDateDay (\ s a -> s{_sgsToDateDay = a})
      . mapping _Coerce

-- | Year of date. Must be from 1 to 9999.
sgsToDateYear :: Lens' StatsGetSession (Maybe Int32)
sgsToDateYear
  = lens _sgsToDateYear
      (\ s a -> s{_sgsToDateYear = a})
      . mapping _Coerce

-- | Month of date. Must be from 1 to 12.
sgsToDateMonth :: Lens' StatsGetSession (Maybe Int32)
sgsToDateMonth
  = lens _sgsToDateMonth
      (\ s a -> s{_sgsToDateMonth = a})
      . mapping _Coerce

-- | JSONP
sgsCallback :: Lens' StatsGetSession (Maybe Text)
sgsCallback
  = lens _sgsCallback (\ s a -> s{_sgsCallback = a})

instance GoogleRequest StatsGetSession where
        type Rs StatsGetSession =
             GetCustomerSessionStatsResponse
        type Scopes StatsGetSession =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.stats",
               "https://www.googleapis.com/auth/cloud_search.stats.indexing"]
        requestClient StatsGetSession'{..}
          = go _sgsFromDateMonth _sgsXgafv _sgsUploadProtocol
              _sgsFromDateDay
              _sgsAccessToken
              _sgsUploadType
              _sgsFromDateYear
              _sgsToDateDay
              _sgsToDateYear
              _sgsToDateMonth
              _sgsCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy StatsGetSessionResource)
                      mempty
