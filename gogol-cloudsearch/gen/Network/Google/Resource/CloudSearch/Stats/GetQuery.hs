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
-- Module      : Network.Google.Resource.CloudSearch.Stats.GetQuery
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the query statistics for customer. **Note:** This API requires a
-- standard end user account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.stats.getQuery@.
module Network.Google.Resource.CloudSearch.Stats.GetQuery
    (
    -- * REST Resource
      StatsGetQueryResource

    -- * Creating a Request
    , statsGetQuery
    , StatsGetQuery

    -- * Request Lenses
    , sgqFromDateMonth
    , sgqXgafv
    , sgqUploadProtocol
    , sgqFromDateDay
    , sgqAccessToken
    , sgqUploadType
    , sgqFromDateYear
    , sgqToDateDay
    , sgqToDateYear
    , sgqToDateMonth
    , sgqCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.stats.getQuery@ method which the
-- 'StatsGetQuery' request conforms to.
type StatsGetQueryResource =
     "v1" :>
       "stats" :>
         "query" :>
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
                                   Get '[JSON] GetCustomerQueryStatsResponse

-- | Get the query statistics for customer. **Note:** This API requires a
-- standard end user account to execute.
--
-- /See:/ 'statsGetQuery' smart constructor.
data StatsGetQuery =
  StatsGetQuery'
    { _sgqFromDateMonth :: !(Maybe (Textual Int32))
    , _sgqXgafv :: !(Maybe Xgafv)
    , _sgqUploadProtocol :: !(Maybe Text)
    , _sgqFromDateDay :: !(Maybe (Textual Int32))
    , _sgqAccessToken :: !(Maybe Text)
    , _sgqUploadType :: !(Maybe Text)
    , _sgqFromDateYear :: !(Maybe (Textual Int32))
    , _sgqToDateDay :: !(Maybe (Textual Int32))
    , _sgqToDateYear :: !(Maybe (Textual Int32))
    , _sgqToDateMonth :: !(Maybe (Textual Int32))
    , _sgqCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatsGetQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgqFromDateMonth'
--
-- * 'sgqXgafv'
--
-- * 'sgqUploadProtocol'
--
-- * 'sgqFromDateDay'
--
-- * 'sgqAccessToken'
--
-- * 'sgqUploadType'
--
-- * 'sgqFromDateYear'
--
-- * 'sgqToDateDay'
--
-- * 'sgqToDateYear'
--
-- * 'sgqToDateMonth'
--
-- * 'sgqCallback'
statsGetQuery
    :: StatsGetQuery
statsGetQuery =
  StatsGetQuery'
    { _sgqFromDateMonth = Nothing
    , _sgqXgafv = Nothing
    , _sgqUploadProtocol = Nothing
    , _sgqFromDateDay = Nothing
    , _sgqAccessToken = Nothing
    , _sgqUploadType = Nothing
    , _sgqFromDateYear = Nothing
    , _sgqToDateDay = Nothing
    , _sgqToDateYear = Nothing
    , _sgqToDateMonth = Nothing
    , _sgqCallback = Nothing
    }


-- | Month of date. Must be from 1 to 12.
sgqFromDateMonth :: Lens' StatsGetQuery (Maybe Int32)
sgqFromDateMonth
  = lens _sgqFromDateMonth
      (\ s a -> s{_sgqFromDateMonth = a})
      . mapping _Coerce

-- | V1 error format.
sgqXgafv :: Lens' StatsGetQuery (Maybe Xgafv)
sgqXgafv = lens _sgqXgafv (\ s a -> s{_sgqXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgqUploadProtocol :: Lens' StatsGetQuery (Maybe Text)
sgqUploadProtocol
  = lens _sgqUploadProtocol
      (\ s a -> s{_sgqUploadProtocol = a})

-- | Day of month. Must be from 1 to 31 and valid for the year and month.
sgqFromDateDay :: Lens' StatsGetQuery (Maybe Int32)
sgqFromDateDay
  = lens _sgqFromDateDay
      (\ s a -> s{_sgqFromDateDay = a})
      . mapping _Coerce

-- | OAuth access token.
sgqAccessToken :: Lens' StatsGetQuery (Maybe Text)
sgqAccessToken
  = lens _sgqAccessToken
      (\ s a -> s{_sgqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgqUploadType :: Lens' StatsGetQuery (Maybe Text)
sgqUploadType
  = lens _sgqUploadType
      (\ s a -> s{_sgqUploadType = a})

-- | Year of date. Must be from 1 to 9999.
sgqFromDateYear :: Lens' StatsGetQuery (Maybe Int32)
sgqFromDateYear
  = lens _sgqFromDateYear
      (\ s a -> s{_sgqFromDateYear = a})
      . mapping _Coerce

-- | Day of month. Must be from 1 to 31 and valid for the year and month.
sgqToDateDay :: Lens' StatsGetQuery (Maybe Int32)
sgqToDateDay
  = lens _sgqToDateDay (\ s a -> s{_sgqToDateDay = a})
      . mapping _Coerce

-- | Year of date. Must be from 1 to 9999.
sgqToDateYear :: Lens' StatsGetQuery (Maybe Int32)
sgqToDateYear
  = lens _sgqToDateYear
      (\ s a -> s{_sgqToDateYear = a})
      . mapping _Coerce

-- | Month of date. Must be from 1 to 12.
sgqToDateMonth :: Lens' StatsGetQuery (Maybe Int32)
sgqToDateMonth
  = lens _sgqToDateMonth
      (\ s a -> s{_sgqToDateMonth = a})
      . mapping _Coerce

-- | JSONP
sgqCallback :: Lens' StatsGetQuery (Maybe Text)
sgqCallback
  = lens _sgqCallback (\ s a -> s{_sgqCallback = a})

instance GoogleRequest StatsGetQuery where
        type Rs StatsGetQuery = GetCustomerQueryStatsResponse
        type Scopes StatsGetQuery =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.stats",
               "https://www.googleapis.com/auth/cloud_search.stats.indexing"]
        requestClient StatsGetQuery'{..}
          = go _sgqFromDateMonth _sgqXgafv _sgqUploadProtocol
              _sgqFromDateDay
              _sgqAccessToken
              _sgqUploadType
              _sgqFromDateYear
              _sgqToDateDay
              _sgqToDateYear
              _sgqToDateMonth
              _sgqCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient (Proxy :: Proxy StatsGetQueryResource)
                      mempty
