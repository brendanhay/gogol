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
-- Module      : Network.Google.Resource.CloudSearch.Stats.GetIndex
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets indexed item statistics aggreggated across all data sources.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.stats.getIndex@.
module Network.Google.Resource.CloudSearch.Stats.GetIndex
    (
    -- * REST Resource
      StatsGetIndexResource

    -- * Creating a Request
    , statsGetIndex
    , StatsGetIndex

    -- * Request Lenses
    , sgiFromDateMonth
    , sgiXgafv
    , sgiUploadProtocol
    , sgiFromDateDay
    , sgiAccessToken
    , sgiUploadType
    , sgiFromDateYear
    , sgiToDateDay
    , sgiToDateYear
    , sgiToDateMonth
    , sgiCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.stats.getIndex@ method which the
-- 'StatsGetIndex' request conforms to.
type StatsGetIndexResource =
     "v1" :>
       "stats" :>
         "index" :>
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
                                   Get '[JSON] GetCustomerIndexStatsResponse

-- | Gets indexed item statistics aggreggated across all data sources.
--
-- /See:/ 'statsGetIndex' smart constructor.
data StatsGetIndex =
  StatsGetIndex'
    { _sgiFromDateMonth  :: !(Maybe (Textual Int32))
    , _sgiXgafv          :: !(Maybe Xgafv)
    , _sgiUploadProtocol :: !(Maybe Text)
    , _sgiFromDateDay    :: !(Maybe (Textual Int32))
    , _sgiAccessToken    :: !(Maybe Text)
    , _sgiUploadType     :: !(Maybe Text)
    , _sgiFromDateYear   :: !(Maybe (Textual Int32))
    , _sgiToDateDay      :: !(Maybe (Textual Int32))
    , _sgiToDateYear     :: !(Maybe (Textual Int32))
    , _sgiToDateMonth    :: !(Maybe (Textual Int32))
    , _sgiCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'StatsGetIndex' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgiFromDateMonth'
--
-- * 'sgiXgafv'
--
-- * 'sgiUploadProtocol'
--
-- * 'sgiFromDateDay'
--
-- * 'sgiAccessToken'
--
-- * 'sgiUploadType'
--
-- * 'sgiFromDateYear'
--
-- * 'sgiToDateDay'
--
-- * 'sgiToDateYear'
--
-- * 'sgiToDateMonth'
--
-- * 'sgiCallback'
statsGetIndex
    :: StatsGetIndex
statsGetIndex =
  StatsGetIndex'
    { _sgiFromDateMonth = Nothing
    , _sgiXgafv = Nothing
    , _sgiUploadProtocol = Nothing
    , _sgiFromDateDay = Nothing
    , _sgiAccessToken = Nothing
    , _sgiUploadType = Nothing
    , _sgiFromDateYear = Nothing
    , _sgiToDateDay = Nothing
    , _sgiToDateYear = Nothing
    , _sgiToDateMonth = Nothing
    , _sgiCallback = Nothing
    }

-- | Month of date. Must be from 1 to 12.
sgiFromDateMonth :: Lens' StatsGetIndex (Maybe Int32)
sgiFromDateMonth
  = lens _sgiFromDateMonth
      (\ s a -> s{_sgiFromDateMonth = a})
      . mapping _Coerce

-- | V1 error format.
sgiXgafv :: Lens' StatsGetIndex (Maybe Xgafv)
sgiXgafv = lens _sgiXgafv (\ s a -> s{_sgiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgiUploadProtocol :: Lens' StatsGetIndex (Maybe Text)
sgiUploadProtocol
  = lens _sgiUploadProtocol
      (\ s a -> s{_sgiUploadProtocol = a})

-- | Day of month. Must be from 1 to 31 and valid for the year and month.
sgiFromDateDay :: Lens' StatsGetIndex (Maybe Int32)
sgiFromDateDay
  = lens _sgiFromDateDay
      (\ s a -> s{_sgiFromDateDay = a})
      . mapping _Coerce

-- | OAuth access token.
sgiAccessToken :: Lens' StatsGetIndex (Maybe Text)
sgiAccessToken
  = lens _sgiAccessToken
      (\ s a -> s{_sgiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgiUploadType :: Lens' StatsGetIndex (Maybe Text)
sgiUploadType
  = lens _sgiUploadType
      (\ s a -> s{_sgiUploadType = a})

-- | Year of date. Must be from 1 to 9999.
sgiFromDateYear :: Lens' StatsGetIndex (Maybe Int32)
sgiFromDateYear
  = lens _sgiFromDateYear
      (\ s a -> s{_sgiFromDateYear = a})
      . mapping _Coerce

-- | Day of month. Must be from 1 to 31 and valid for the year and month.
sgiToDateDay :: Lens' StatsGetIndex (Maybe Int32)
sgiToDateDay
  = lens _sgiToDateDay (\ s a -> s{_sgiToDateDay = a})
      . mapping _Coerce

-- | Year of date. Must be from 1 to 9999.
sgiToDateYear :: Lens' StatsGetIndex (Maybe Int32)
sgiToDateYear
  = lens _sgiToDateYear
      (\ s a -> s{_sgiToDateYear = a})
      . mapping _Coerce

-- | Month of date. Must be from 1 to 12.
sgiToDateMonth :: Lens' StatsGetIndex (Maybe Int32)
sgiToDateMonth
  = lens _sgiToDateMonth
      (\ s a -> s{_sgiToDateMonth = a})
      . mapping _Coerce

-- | JSONP
sgiCallback :: Lens' StatsGetIndex (Maybe Text)
sgiCallback
  = lens _sgiCallback (\ s a -> s{_sgiCallback = a})

instance GoogleRequest StatsGetIndex where
        type Rs StatsGetIndex = GetCustomerIndexStatsResponse
        type Scopes StatsGetIndex =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.stats",
               "https://www.googleapis.com/auth/cloud_search.stats.indexing"]
        requestClient StatsGetIndex'{..}
          = go _sgiFromDateMonth _sgiXgafv _sgiUploadProtocol
              _sgiFromDateDay
              _sgiAccessToken
              _sgiUploadType
              _sgiFromDateYear
              _sgiToDateDay
              _sgiToDateYear
              _sgiToDateMonth
              _sgiCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient (Proxy :: Proxy StatsGetIndexResource)
                      mempty
