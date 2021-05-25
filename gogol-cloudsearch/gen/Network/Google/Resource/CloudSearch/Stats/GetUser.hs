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
-- Module      : Network.Google.Resource.CloudSearch.Stats.GetUser
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the users statistics for customer. **Note:** This API requires a
-- standard end user account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.stats.getUser@.
module Network.Google.Resource.CloudSearch.Stats.GetUser
    (
    -- * REST Resource
      StatsGetUserResource

    -- * Creating a Request
    , statsGetUser
    , StatsGetUser

    -- * Request Lenses
    , sguFromDateMonth
    , sguXgafv
    , sguUploadProtocol
    , sguFromDateDay
    , sguAccessToken
    , sguUploadType
    , sguFromDateYear
    , sguToDateDay
    , sguToDateYear
    , sguToDateMonth
    , sguCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.stats.getUser@ method which the
-- 'StatsGetUser' request conforms to.
type StatsGetUserResource =
     "v1" :>
       "stats" :>
         "user" :>
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
                                   Get '[JSON] GetCustomerUserStatsResponse

-- | Get the users statistics for customer. **Note:** This API requires a
-- standard end user account to execute.
--
-- /See:/ 'statsGetUser' smart constructor.
data StatsGetUser =
  StatsGetUser'
    { _sguFromDateMonth :: !(Maybe (Textual Int32))
    , _sguXgafv :: !(Maybe Xgafv)
    , _sguUploadProtocol :: !(Maybe Text)
    , _sguFromDateDay :: !(Maybe (Textual Int32))
    , _sguAccessToken :: !(Maybe Text)
    , _sguUploadType :: !(Maybe Text)
    , _sguFromDateYear :: !(Maybe (Textual Int32))
    , _sguToDateDay :: !(Maybe (Textual Int32))
    , _sguToDateYear :: !(Maybe (Textual Int32))
    , _sguToDateMonth :: !(Maybe (Textual Int32))
    , _sguCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatsGetUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sguFromDateMonth'
--
-- * 'sguXgafv'
--
-- * 'sguUploadProtocol'
--
-- * 'sguFromDateDay'
--
-- * 'sguAccessToken'
--
-- * 'sguUploadType'
--
-- * 'sguFromDateYear'
--
-- * 'sguToDateDay'
--
-- * 'sguToDateYear'
--
-- * 'sguToDateMonth'
--
-- * 'sguCallback'
statsGetUser
    :: StatsGetUser
statsGetUser =
  StatsGetUser'
    { _sguFromDateMonth = Nothing
    , _sguXgafv = Nothing
    , _sguUploadProtocol = Nothing
    , _sguFromDateDay = Nothing
    , _sguAccessToken = Nothing
    , _sguUploadType = Nothing
    , _sguFromDateYear = Nothing
    , _sguToDateDay = Nothing
    , _sguToDateYear = Nothing
    , _sguToDateMonth = Nothing
    , _sguCallback = Nothing
    }


-- | Month of date. Must be from 1 to 12.
sguFromDateMonth :: Lens' StatsGetUser (Maybe Int32)
sguFromDateMonth
  = lens _sguFromDateMonth
      (\ s a -> s{_sguFromDateMonth = a})
      . mapping _Coerce

-- | V1 error format.
sguXgafv :: Lens' StatsGetUser (Maybe Xgafv)
sguXgafv = lens _sguXgafv (\ s a -> s{_sguXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sguUploadProtocol :: Lens' StatsGetUser (Maybe Text)
sguUploadProtocol
  = lens _sguUploadProtocol
      (\ s a -> s{_sguUploadProtocol = a})

-- | Day of month. Must be from 1 to 31 and valid for the year and month.
sguFromDateDay :: Lens' StatsGetUser (Maybe Int32)
sguFromDateDay
  = lens _sguFromDateDay
      (\ s a -> s{_sguFromDateDay = a})
      . mapping _Coerce

-- | OAuth access token.
sguAccessToken :: Lens' StatsGetUser (Maybe Text)
sguAccessToken
  = lens _sguAccessToken
      (\ s a -> s{_sguAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sguUploadType :: Lens' StatsGetUser (Maybe Text)
sguUploadType
  = lens _sguUploadType
      (\ s a -> s{_sguUploadType = a})

-- | Year of date. Must be from 1 to 9999.
sguFromDateYear :: Lens' StatsGetUser (Maybe Int32)
sguFromDateYear
  = lens _sguFromDateYear
      (\ s a -> s{_sguFromDateYear = a})
      . mapping _Coerce

-- | Day of month. Must be from 1 to 31 and valid for the year and month.
sguToDateDay :: Lens' StatsGetUser (Maybe Int32)
sguToDateDay
  = lens _sguToDateDay (\ s a -> s{_sguToDateDay = a})
      . mapping _Coerce

-- | Year of date. Must be from 1 to 9999.
sguToDateYear :: Lens' StatsGetUser (Maybe Int32)
sguToDateYear
  = lens _sguToDateYear
      (\ s a -> s{_sguToDateYear = a})
      . mapping _Coerce

-- | Month of date. Must be from 1 to 12.
sguToDateMonth :: Lens' StatsGetUser (Maybe Int32)
sguToDateMonth
  = lens _sguToDateMonth
      (\ s a -> s{_sguToDateMonth = a})
      . mapping _Coerce

-- | JSONP
sguCallback :: Lens' StatsGetUser (Maybe Text)
sguCallback
  = lens _sguCallback (\ s a -> s{_sguCallback = a})

instance GoogleRequest StatsGetUser where
        type Rs StatsGetUser = GetCustomerUserStatsResponse
        type Scopes StatsGetUser =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.stats",
               "https://www.googleapis.com/auth/cloud_search.stats.indexing"]
        requestClient StatsGetUser'{..}
          = go _sguFromDateMonth _sguXgafv _sguUploadProtocol
              _sguFromDateDay
              _sguAccessToken
              _sguUploadType
              _sguFromDateYear
              _sguToDateDay
              _sguToDateYear
              _sguToDateMonth
              _sguCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient (Proxy :: Proxy StatsGetUserResource)
                      mempty
