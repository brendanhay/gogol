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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.DataSets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a dataset containing all data points whose start and end times
-- overlap with the specified range of the dataset minimum start time and
-- maximum end time. Specifically, any data point whose start time is less
-- than or equal to the dataset end time and whose end time is greater than
-- or equal to the dataset start time.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.dataSources.datasets.get@.
module Network.Google.Resource.Fitness.Users.DataSources.DataSets.Get
    (
    -- * REST Resource
      UsersDataSourcesDataSetsGetResource

    -- * Creating a Request
    , usersDataSourcesDataSetsGet
    , UsersDataSourcesDataSetsGet

    -- * Request Lenses
    , udsdsgXgafv
    , udsdsgUploadProtocol
    , udsdsgAccessToken
    , udsdsgDataSourceId
    , udsdsgUploadType
    , udsdsgUserId
    , udsdsgDataSetId
    , udsdsgLimit
    , udsdsgPageToken
    , udsdsgCallback
    ) where

import Network.Google.Fitness.Types
import Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.datasets.get@ method which the
-- 'UsersDataSourcesDataSetsGet' request conforms to.
type UsersDataSourcesDataSetsGetResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "dataSources" :>
               Capture "dataSourceId" Text :>
                 "datasets" :>
                   Capture "datasetId" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "limit" (Textual Int32) :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] DataSet

-- | Returns a dataset containing all data points whose start and end times
-- overlap with the specified range of the dataset minimum start time and
-- maximum end time. Specifically, any data point whose start time is less
-- than or equal to the dataset end time and whose end time is greater than
-- or equal to the dataset start time.
--
-- /See:/ 'usersDataSourcesDataSetsGet' smart constructor.
data UsersDataSourcesDataSetsGet =
  UsersDataSourcesDataSetsGet'
    { _udsdsgXgafv :: !(Maybe Xgafv)
    , _udsdsgUploadProtocol :: !(Maybe Text)
    , _udsdsgAccessToken :: !(Maybe Text)
    , _udsdsgDataSourceId :: !Text
    , _udsdsgUploadType :: !(Maybe Text)
    , _udsdsgUserId :: !Text
    , _udsdsgDataSetId :: !Text
    , _udsdsgLimit :: !(Maybe (Textual Int32))
    , _udsdsgPageToken :: !(Maybe Text)
    , _udsdsgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDataSourcesDataSetsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsdsgXgafv'
--
-- * 'udsdsgUploadProtocol'
--
-- * 'udsdsgAccessToken'
--
-- * 'udsdsgDataSourceId'
--
-- * 'udsdsgUploadType'
--
-- * 'udsdsgUserId'
--
-- * 'udsdsgDataSetId'
--
-- * 'udsdsgLimit'
--
-- * 'udsdsgPageToken'
--
-- * 'udsdsgCallback'
usersDataSourcesDataSetsGet
    :: Text -- ^ 'udsdsgDataSourceId'
    -> Text -- ^ 'udsdsgUserId'
    -> Text -- ^ 'udsdsgDataSetId'
    -> UsersDataSourcesDataSetsGet
usersDataSourcesDataSetsGet pUdsdsgDataSourceId_ pUdsdsgUserId_ pUdsdsgDataSetId_ =
  UsersDataSourcesDataSetsGet'
    { _udsdsgXgafv = Nothing
    , _udsdsgUploadProtocol = Nothing
    , _udsdsgAccessToken = Nothing
    , _udsdsgDataSourceId = pUdsdsgDataSourceId_
    , _udsdsgUploadType = Nothing
    , _udsdsgUserId = pUdsdsgUserId_
    , _udsdsgDataSetId = pUdsdsgDataSetId_
    , _udsdsgLimit = Nothing
    , _udsdsgPageToken = Nothing
    , _udsdsgCallback = Nothing
    }


-- | V1 error format.
udsdsgXgafv :: Lens' UsersDataSourcesDataSetsGet (Maybe Xgafv)
udsdsgXgafv
  = lens _udsdsgXgafv (\ s a -> s{_udsdsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
udsdsgUploadProtocol :: Lens' UsersDataSourcesDataSetsGet (Maybe Text)
udsdsgUploadProtocol
  = lens _udsdsgUploadProtocol
      (\ s a -> s{_udsdsgUploadProtocol = a})

-- | OAuth access token.
udsdsgAccessToken :: Lens' UsersDataSourcesDataSetsGet (Maybe Text)
udsdsgAccessToken
  = lens _udsdsgAccessToken
      (\ s a -> s{_udsdsgAccessToken = a})

-- | The data stream ID of the data source that created the dataset.
udsdsgDataSourceId :: Lens' UsersDataSourcesDataSetsGet Text
udsdsgDataSourceId
  = lens _udsdsgDataSourceId
      (\ s a -> s{_udsdsgDataSourceId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
udsdsgUploadType :: Lens' UsersDataSourcesDataSetsGet (Maybe Text)
udsdsgUploadType
  = lens _udsdsgUploadType
      (\ s a -> s{_udsdsgUploadType = a})

-- | Retrieve a dataset for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsdsgUserId :: Lens' UsersDataSourcesDataSetsGet Text
udsdsgUserId
  = lens _udsdsgUserId (\ s a -> s{_udsdsgUserId = a})

-- | Dataset identifier that is a composite of the minimum data point start
-- time and maximum data point end time represented as nanoseconds from the
-- epoch. The ID is formatted like: \"startTime-endTime\" where startTime
-- and endTime are 64 bit integers.
udsdsgDataSetId :: Lens' UsersDataSourcesDataSetsGet Text
udsdsgDataSetId
  = lens _udsdsgDataSetId
      (\ s a -> s{_udsdsgDataSetId = a})

-- | If specified, no more than this many data points will be included in the
-- dataset. If there are more data points in the dataset, nextPageToken
-- will be set in the dataset response. The limit is applied from the end
-- of the time range. That is, if pageToken is absent, the limit most
-- recent data points will be returned.
udsdsgLimit :: Lens' UsersDataSourcesDataSetsGet (Maybe Int32)
udsdsgLimit
  = lens _udsdsgLimit (\ s a -> s{_udsdsgLimit = a}) .
      mapping _Coerce

-- | The continuation token, which is used to page through large datasets. To
-- get the next page of a dataset, set this parameter to the value of
-- nextPageToken from the previous response. Each subsequent call will
-- yield a partial dataset with data point end timestamps that are strictly
-- smaller than those in the previous partial response.
udsdsgPageToken :: Lens' UsersDataSourcesDataSetsGet (Maybe Text)
udsdsgPageToken
  = lens _udsdsgPageToken
      (\ s a -> s{_udsdsgPageToken = a})

-- | JSONP
udsdsgCallback :: Lens' UsersDataSourcesDataSetsGet (Maybe Text)
udsdsgCallback
  = lens _udsdsgCallback
      (\ s a -> s{_udsdsgCallback = a})

instance GoogleRequest UsersDataSourcesDataSetsGet
         where
        type Rs UsersDataSourcesDataSetsGet = DataSet
        type Scopes UsersDataSourcesDataSetsGet =
             '["https://www.googleapis.com/auth/fitness.activity.read",
               "https://www.googleapis.com/auth/fitness.activity.write",
               "https://www.googleapis.com/auth/fitness.blood_glucose.read",
               "https://www.googleapis.com/auth/fitness.blood_glucose.write",
               "https://www.googleapis.com/auth/fitness.blood_pressure.read",
               "https://www.googleapis.com/auth/fitness.blood_pressure.write",
               "https://www.googleapis.com/auth/fitness.body.read",
               "https://www.googleapis.com/auth/fitness.body.write",
               "https://www.googleapis.com/auth/fitness.body_temperature.read",
               "https://www.googleapis.com/auth/fitness.body_temperature.write",
               "https://www.googleapis.com/auth/fitness.heart_rate.read",
               "https://www.googleapis.com/auth/fitness.heart_rate.write",
               "https://www.googleapis.com/auth/fitness.location.read",
               "https://www.googleapis.com/auth/fitness.location.write",
               "https://www.googleapis.com/auth/fitness.nutrition.read",
               "https://www.googleapis.com/auth/fitness.nutrition.write",
               "https://www.googleapis.com/auth/fitness.oxygen_saturation.read",
               "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
               "https://www.googleapis.com/auth/fitness.reproductive_health.read",
               "https://www.googleapis.com/auth/fitness.reproductive_health.write",
               "https://www.googleapis.com/auth/fitness.sleep.read",
               "https://www.googleapis.com/auth/fitness.sleep.write"]
        requestClient UsersDataSourcesDataSetsGet'{..}
          = go _udsdsgUserId _udsdsgDataSourceId
              _udsdsgDataSetId
              _udsdsgXgafv
              _udsdsgUploadProtocol
              _udsdsgAccessToken
              _udsdsgUploadType
              _udsdsgLimit
              _udsdsgPageToken
              _udsdsgCallback
              (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDataSourcesDataSetsGetResource)
                      mempty
