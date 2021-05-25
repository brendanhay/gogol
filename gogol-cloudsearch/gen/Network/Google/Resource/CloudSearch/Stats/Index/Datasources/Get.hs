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
-- Module      : Network.Google.Resource.CloudSearch.Stats.Index.Datasources.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets indexed item statistics for a single data source. **Note:** This
-- API requires a standard end user account to execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.stats.index.datasources.get@.
module Network.Google.Resource.CloudSearch.Stats.Index.Datasources.Get
    (
    -- * REST Resource
      StatsIndexDatasourcesGetResource

    -- * Creating a Request
    , statsIndexDatasourcesGet
    , StatsIndexDatasourcesGet

    -- * Request Lenses
    , sidgFromDateMonth
    , sidgXgafv
    , sidgUploadProtocol
    , sidgFromDateDay
    , sidgAccessToken
    , sidgUploadType
    , sidgFromDateYear
    , sidgName
    , sidgToDateDay
    , sidgToDateYear
    , sidgToDateMonth
    , sidgCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.stats.index.datasources.get@ method which the
-- 'StatsIndexDatasourcesGet' request conforms to.
type StatsIndexDatasourcesGetResource =
     "v1" :>
       "stats" :>
         "index" :>
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
                                     Get '[JSON] GetDataSourceIndexStatsResponse

-- | Gets indexed item statistics for a single data source. **Note:** This
-- API requires a standard end user account to execute.
--
-- /See:/ 'statsIndexDatasourcesGet' smart constructor.
data StatsIndexDatasourcesGet =
  StatsIndexDatasourcesGet'
    { _sidgFromDateMonth :: !(Maybe (Textual Int32))
    , _sidgXgafv :: !(Maybe Xgafv)
    , _sidgUploadProtocol :: !(Maybe Text)
    , _sidgFromDateDay :: !(Maybe (Textual Int32))
    , _sidgAccessToken :: !(Maybe Text)
    , _sidgUploadType :: !(Maybe Text)
    , _sidgFromDateYear :: !(Maybe (Textual Int32))
    , _sidgName :: !Text
    , _sidgToDateDay :: !(Maybe (Textual Int32))
    , _sidgToDateYear :: !(Maybe (Textual Int32))
    , _sidgToDateMonth :: !(Maybe (Textual Int32))
    , _sidgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'StatsIndexDatasourcesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sidgFromDateMonth'
--
-- * 'sidgXgafv'
--
-- * 'sidgUploadProtocol'
--
-- * 'sidgFromDateDay'
--
-- * 'sidgAccessToken'
--
-- * 'sidgUploadType'
--
-- * 'sidgFromDateYear'
--
-- * 'sidgName'
--
-- * 'sidgToDateDay'
--
-- * 'sidgToDateYear'
--
-- * 'sidgToDateMonth'
--
-- * 'sidgCallback'
statsIndexDatasourcesGet
    :: Text -- ^ 'sidgName'
    -> StatsIndexDatasourcesGet
statsIndexDatasourcesGet pSidgName_ =
  StatsIndexDatasourcesGet'
    { _sidgFromDateMonth = Nothing
    , _sidgXgafv = Nothing
    , _sidgUploadProtocol = Nothing
    , _sidgFromDateDay = Nothing
    , _sidgAccessToken = Nothing
    , _sidgUploadType = Nothing
    , _sidgFromDateYear = Nothing
    , _sidgName = pSidgName_
    , _sidgToDateDay = Nothing
    , _sidgToDateYear = Nothing
    , _sidgToDateMonth = Nothing
    , _sidgCallback = Nothing
    }


-- | Month of date. Must be from 1 to 12.
sidgFromDateMonth :: Lens' StatsIndexDatasourcesGet (Maybe Int32)
sidgFromDateMonth
  = lens _sidgFromDateMonth
      (\ s a -> s{_sidgFromDateMonth = a})
      . mapping _Coerce

-- | V1 error format.
sidgXgafv :: Lens' StatsIndexDatasourcesGet (Maybe Xgafv)
sidgXgafv
  = lens _sidgXgafv (\ s a -> s{_sidgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sidgUploadProtocol :: Lens' StatsIndexDatasourcesGet (Maybe Text)
sidgUploadProtocol
  = lens _sidgUploadProtocol
      (\ s a -> s{_sidgUploadProtocol = a})

-- | Day of month. Must be from 1 to 31 and valid for the year and month.
sidgFromDateDay :: Lens' StatsIndexDatasourcesGet (Maybe Int32)
sidgFromDateDay
  = lens _sidgFromDateDay
      (\ s a -> s{_sidgFromDateDay = a})
      . mapping _Coerce

-- | OAuth access token.
sidgAccessToken :: Lens' StatsIndexDatasourcesGet (Maybe Text)
sidgAccessToken
  = lens _sidgAccessToken
      (\ s a -> s{_sidgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sidgUploadType :: Lens' StatsIndexDatasourcesGet (Maybe Text)
sidgUploadType
  = lens _sidgUploadType
      (\ s a -> s{_sidgUploadType = a})

-- | Year of date. Must be from 1 to 9999.
sidgFromDateYear :: Lens' StatsIndexDatasourcesGet (Maybe Int32)
sidgFromDateYear
  = lens _sidgFromDateYear
      (\ s a -> s{_sidgFromDateYear = a})
      . mapping _Coerce

-- | The resource id of the data source to retrieve statistics for, in the
-- following format: \"datasources\/{source_id}\"
sidgName :: Lens' StatsIndexDatasourcesGet Text
sidgName = lens _sidgName (\ s a -> s{_sidgName = a})

-- | Day of month. Must be from 1 to 31 and valid for the year and month.
sidgToDateDay :: Lens' StatsIndexDatasourcesGet (Maybe Int32)
sidgToDateDay
  = lens _sidgToDateDay
      (\ s a -> s{_sidgToDateDay = a})
      . mapping _Coerce

-- | Year of date. Must be from 1 to 9999.
sidgToDateYear :: Lens' StatsIndexDatasourcesGet (Maybe Int32)
sidgToDateYear
  = lens _sidgToDateYear
      (\ s a -> s{_sidgToDateYear = a})
      . mapping _Coerce

-- | Month of date. Must be from 1 to 12.
sidgToDateMonth :: Lens' StatsIndexDatasourcesGet (Maybe Int32)
sidgToDateMonth
  = lens _sidgToDateMonth
      (\ s a -> s{_sidgToDateMonth = a})
      . mapping _Coerce

-- | JSONP
sidgCallback :: Lens' StatsIndexDatasourcesGet (Maybe Text)
sidgCallback
  = lens _sidgCallback (\ s a -> s{_sidgCallback = a})

instance GoogleRequest StatsIndexDatasourcesGet where
        type Rs StatsIndexDatasourcesGet =
             GetDataSourceIndexStatsResponse
        type Scopes StatsIndexDatasourcesGet =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.stats",
               "https://www.googleapis.com/auth/cloud_search.stats.indexing"]
        requestClient StatsIndexDatasourcesGet'{..}
          = go _sidgName _sidgFromDateMonth _sidgXgafv
              _sidgUploadProtocol
              _sidgFromDateDay
              _sidgAccessToken
              _sidgUploadType
              _sidgFromDateYear
              _sidgToDateDay
              _sidgToDateYear
              _sidgToDateMonth
              _sidgCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy StatsIndexDatasourcesGetResource)
                      mempty
