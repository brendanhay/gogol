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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.DataPointChanges.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Queries for user\'s data point changes for a particular data source.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.dataSources.dataPointChanges.list@.
module Network.Google.Resource.Fitness.Users.DataSources.DataPointChanges.List
    (
    -- * REST Resource
      UsersDataSourcesDataPointChangesListResource

    -- * Creating a Request
    , usersDataSourcesDataPointChangesList
    , UsersDataSourcesDataPointChangesList

    -- * Request Lenses
    , udsdpclXgafv
    , udsdpclUploadProtocol
    , udsdpclAccessToken
    , udsdpclDataSourceId
    , udsdpclUploadType
    , udsdpclUserId
    , udsdpclLimit
    , udsdpclPageToken
    , udsdpclCallback
    ) where

import Network.Google.Fitness.Types
import Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.dataPointChanges.list@ method which the
-- 'UsersDataSourcesDataPointChangesList' request conforms to.
type UsersDataSourcesDataPointChangesListResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "dataSources" :>
               Capture "dataSourceId" Text :>
                 "dataPointChanges" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "limit" (Textual Int32) :>
                             QueryParam "pageToken" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ListDataPointChangesResponse

-- | Queries for user\'s data point changes for a particular data source.
--
-- /See:/ 'usersDataSourcesDataPointChangesList' smart constructor.
data UsersDataSourcesDataPointChangesList =
  UsersDataSourcesDataPointChangesList'
    { _udsdpclXgafv :: !(Maybe Xgafv)
    , _udsdpclUploadProtocol :: !(Maybe Text)
    , _udsdpclAccessToken :: !(Maybe Text)
    , _udsdpclDataSourceId :: !Text
    , _udsdpclUploadType :: !(Maybe Text)
    , _udsdpclUserId :: !Text
    , _udsdpclLimit :: !(Maybe (Textual Int32))
    , _udsdpclPageToken :: !(Maybe Text)
    , _udsdpclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDataSourcesDataPointChangesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsdpclXgafv'
--
-- * 'udsdpclUploadProtocol'
--
-- * 'udsdpclAccessToken'
--
-- * 'udsdpclDataSourceId'
--
-- * 'udsdpclUploadType'
--
-- * 'udsdpclUserId'
--
-- * 'udsdpclLimit'
--
-- * 'udsdpclPageToken'
--
-- * 'udsdpclCallback'
usersDataSourcesDataPointChangesList
    :: Text -- ^ 'udsdpclDataSourceId'
    -> Text -- ^ 'udsdpclUserId'
    -> UsersDataSourcesDataPointChangesList
usersDataSourcesDataPointChangesList pUdsdpclDataSourceId_ pUdsdpclUserId_ =
  UsersDataSourcesDataPointChangesList'
    { _udsdpclXgafv = Nothing
    , _udsdpclUploadProtocol = Nothing
    , _udsdpclAccessToken = Nothing
    , _udsdpclDataSourceId = pUdsdpclDataSourceId_
    , _udsdpclUploadType = Nothing
    , _udsdpclUserId = pUdsdpclUserId_
    , _udsdpclLimit = Nothing
    , _udsdpclPageToken = Nothing
    , _udsdpclCallback = Nothing
    }


-- | V1 error format.
udsdpclXgafv :: Lens' UsersDataSourcesDataPointChangesList (Maybe Xgafv)
udsdpclXgafv
  = lens _udsdpclXgafv (\ s a -> s{_udsdpclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
udsdpclUploadProtocol :: Lens' UsersDataSourcesDataPointChangesList (Maybe Text)
udsdpclUploadProtocol
  = lens _udsdpclUploadProtocol
      (\ s a -> s{_udsdpclUploadProtocol = a})

-- | OAuth access token.
udsdpclAccessToken :: Lens' UsersDataSourcesDataPointChangesList (Maybe Text)
udsdpclAccessToken
  = lens _udsdpclAccessToken
      (\ s a -> s{_udsdpclAccessToken = a})

-- | The data stream ID of the data source that created the dataset.
udsdpclDataSourceId :: Lens' UsersDataSourcesDataPointChangesList Text
udsdpclDataSourceId
  = lens _udsdpclDataSourceId
      (\ s a -> s{_udsdpclDataSourceId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
udsdpclUploadType :: Lens' UsersDataSourcesDataPointChangesList (Maybe Text)
udsdpclUploadType
  = lens _udsdpclUploadType
      (\ s a -> s{_udsdpclUploadType = a})

-- | List data points for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsdpclUserId :: Lens' UsersDataSourcesDataPointChangesList Text
udsdpclUserId
  = lens _udsdpclUserId
      (\ s a -> s{_udsdpclUserId = a})

-- | If specified, no more than this many data point changes will be included
-- in the response.
udsdpclLimit :: Lens' UsersDataSourcesDataPointChangesList (Maybe Int32)
udsdpclLimit
  = lens _udsdpclLimit (\ s a -> s{_udsdpclLimit = a})
      . mapping _Coerce

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
udsdpclPageToken :: Lens' UsersDataSourcesDataPointChangesList (Maybe Text)
udsdpclPageToken
  = lens _udsdpclPageToken
      (\ s a -> s{_udsdpclPageToken = a})

-- | JSONP
udsdpclCallback :: Lens' UsersDataSourcesDataPointChangesList (Maybe Text)
udsdpclCallback
  = lens _udsdpclCallback
      (\ s a -> s{_udsdpclCallback = a})

instance GoogleRequest
           UsersDataSourcesDataPointChangesList
         where
        type Rs UsersDataSourcesDataPointChangesList =
             ListDataPointChangesResponse
        type Scopes UsersDataSourcesDataPointChangesList =
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
        requestClient
          UsersDataSourcesDataPointChangesList'{..}
          = go _udsdpclUserId _udsdpclDataSourceId
              _udsdpclXgafv
              _udsdpclUploadProtocol
              _udsdpclAccessToken
              _udsdpclUploadType
              _udsdpclLimit
              _udsdpclPageToken
              _udsdpclCallback
              (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersDataSourcesDataPointChangesListResource)
                      mempty
