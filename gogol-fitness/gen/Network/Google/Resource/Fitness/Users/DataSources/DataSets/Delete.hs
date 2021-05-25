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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.DataSets.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs an inclusive delete of all data points whose start and end
-- times have any overlap with the time range specified by the dataset ID.
-- For most data types, the entire data point will be deleted. For data
-- types where the time span represents a consistent value (such as
-- com.google.activity.segment), and a data point straddles either end
-- point of the dataset, only the overlapping portion of the data point
-- will be deleted.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.dataSources.datasets.delete@.
module Network.Google.Resource.Fitness.Users.DataSources.DataSets.Delete
    (
    -- * REST Resource
      UsersDataSourcesDataSetsDeleteResource

    -- * Creating a Request
    , usersDataSourcesDataSetsDelete
    , UsersDataSourcesDataSetsDelete

    -- * Request Lenses
    , udsdsdXgafv
    , udsdsdUploadProtocol
    , udsdsdAccessToken
    , udsdsdDataSourceId
    , udsdsdUploadType
    , udsdsdUserId
    , udsdsdDataSetId
    , udsdsdCallback
    ) where

import Network.Google.Fitness.Types
import Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.datasets.delete@ method which the
-- 'UsersDataSourcesDataSetsDelete' request conforms to.
type UsersDataSourcesDataSetsDeleteResource =
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
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Performs an inclusive delete of all data points whose start and end
-- times have any overlap with the time range specified by the dataset ID.
-- For most data types, the entire data point will be deleted. For data
-- types where the time span represents a consistent value (such as
-- com.google.activity.segment), and a data point straddles either end
-- point of the dataset, only the overlapping portion of the data point
-- will be deleted.
--
-- /See:/ 'usersDataSourcesDataSetsDelete' smart constructor.
data UsersDataSourcesDataSetsDelete =
  UsersDataSourcesDataSetsDelete'
    { _udsdsdXgafv :: !(Maybe Xgafv)
    , _udsdsdUploadProtocol :: !(Maybe Text)
    , _udsdsdAccessToken :: !(Maybe Text)
    , _udsdsdDataSourceId :: !Text
    , _udsdsdUploadType :: !(Maybe Text)
    , _udsdsdUserId :: !Text
    , _udsdsdDataSetId :: !Text
    , _udsdsdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDataSourcesDataSetsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsdsdXgafv'
--
-- * 'udsdsdUploadProtocol'
--
-- * 'udsdsdAccessToken'
--
-- * 'udsdsdDataSourceId'
--
-- * 'udsdsdUploadType'
--
-- * 'udsdsdUserId'
--
-- * 'udsdsdDataSetId'
--
-- * 'udsdsdCallback'
usersDataSourcesDataSetsDelete
    :: Text -- ^ 'udsdsdDataSourceId'
    -> Text -- ^ 'udsdsdUserId'
    -> Text -- ^ 'udsdsdDataSetId'
    -> UsersDataSourcesDataSetsDelete
usersDataSourcesDataSetsDelete pUdsdsdDataSourceId_ pUdsdsdUserId_ pUdsdsdDataSetId_ =
  UsersDataSourcesDataSetsDelete'
    { _udsdsdXgafv = Nothing
    , _udsdsdUploadProtocol = Nothing
    , _udsdsdAccessToken = Nothing
    , _udsdsdDataSourceId = pUdsdsdDataSourceId_
    , _udsdsdUploadType = Nothing
    , _udsdsdUserId = pUdsdsdUserId_
    , _udsdsdDataSetId = pUdsdsdDataSetId_
    , _udsdsdCallback = Nothing
    }


-- | V1 error format.
udsdsdXgafv :: Lens' UsersDataSourcesDataSetsDelete (Maybe Xgafv)
udsdsdXgafv
  = lens _udsdsdXgafv (\ s a -> s{_udsdsdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
udsdsdUploadProtocol :: Lens' UsersDataSourcesDataSetsDelete (Maybe Text)
udsdsdUploadProtocol
  = lens _udsdsdUploadProtocol
      (\ s a -> s{_udsdsdUploadProtocol = a})

-- | OAuth access token.
udsdsdAccessToken :: Lens' UsersDataSourcesDataSetsDelete (Maybe Text)
udsdsdAccessToken
  = lens _udsdsdAccessToken
      (\ s a -> s{_udsdsdAccessToken = a})

-- | The data stream ID of the data source that created the dataset.
udsdsdDataSourceId :: Lens' UsersDataSourcesDataSetsDelete Text
udsdsdDataSourceId
  = lens _udsdsdDataSourceId
      (\ s a -> s{_udsdsdDataSourceId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
udsdsdUploadType :: Lens' UsersDataSourcesDataSetsDelete (Maybe Text)
udsdsdUploadType
  = lens _udsdsdUploadType
      (\ s a -> s{_udsdsdUploadType = a})

-- | Delete a dataset for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsdsdUserId :: Lens' UsersDataSourcesDataSetsDelete Text
udsdsdUserId
  = lens _udsdsdUserId (\ s a -> s{_udsdsdUserId = a})

-- | Dataset identifier that is a composite of the minimum data point start
-- time and maximum data point end time represented as nanoseconds from the
-- epoch. The ID is formatted like: \"startTime-endTime\" where startTime
-- and endTime are 64 bit integers.
udsdsdDataSetId :: Lens' UsersDataSourcesDataSetsDelete Text
udsdsdDataSetId
  = lens _udsdsdDataSetId
      (\ s a -> s{_udsdsdDataSetId = a})

-- | JSONP
udsdsdCallback :: Lens' UsersDataSourcesDataSetsDelete (Maybe Text)
udsdsdCallback
  = lens _udsdsdCallback
      (\ s a -> s{_udsdsdCallback = a})

instance GoogleRequest UsersDataSourcesDataSetsDelete
         where
        type Rs UsersDataSourcesDataSetsDelete = ()
        type Scopes UsersDataSourcesDataSetsDelete =
             '["https://www.googleapis.com/auth/fitness.activity.write",
               "https://www.googleapis.com/auth/fitness.blood_glucose.write",
               "https://www.googleapis.com/auth/fitness.blood_pressure.write",
               "https://www.googleapis.com/auth/fitness.body.write",
               "https://www.googleapis.com/auth/fitness.body_temperature.write",
               "https://www.googleapis.com/auth/fitness.heart_rate.write",
               "https://www.googleapis.com/auth/fitness.location.write",
               "https://www.googleapis.com/auth/fitness.nutrition.write",
               "https://www.googleapis.com/auth/fitness.oxygen_saturation.write",
               "https://www.googleapis.com/auth/fitness.reproductive_health.write",
               "https://www.googleapis.com/auth/fitness.sleep.write"]
        requestClient UsersDataSourcesDataSetsDelete'{..}
          = go _udsdsdUserId _udsdsdDataSourceId
              _udsdsdDataSetId
              _udsdsdXgafv
              _udsdsdUploadProtocol
              _udsdsdAccessToken
              _udsdsdUploadType
              _udsdsdCallback
              (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersDataSourcesDataSetsDeleteResource)
                      mempty
