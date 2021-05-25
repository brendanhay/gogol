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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.DataSets.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds data points to a dataset. The dataset need not be previously
-- created. All points within the given dataset will be returned with
-- subsquent calls to retrieve this dataset. Data points can belong to more
-- than one dataset. This method does not use patch semantics: the data
-- points provided are merely inserted, with no existing data replaced.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.dataSources.datasets.patch@.
module Network.Google.Resource.Fitness.Users.DataSources.DataSets.Patch
    (
    -- * REST Resource
      UsersDataSourcesDataSetsPatchResource

    -- * Creating a Request
    , usersDataSourcesDataSetsPatch
    , UsersDataSourcesDataSetsPatch

    -- * Request Lenses
    , udsdspXgafv
    , udsdspUploadProtocol
    , udsdspAccessToken
    , udsdspDataSourceId
    , udsdspUploadType
    , udsdspPayload
    , udsdspUserId
    , udsdspDataSetId
    , udsdspCallback
    ) where

import Network.Google.Fitness.Types
import Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.datasets.patch@ method which the
-- 'UsersDataSourcesDataSetsPatch' request conforms to.
type UsersDataSourcesDataSetsPatchResource =
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
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] DataSet :>
                                   Patch '[JSON] DataSet

-- | Adds data points to a dataset. The dataset need not be previously
-- created. All points within the given dataset will be returned with
-- subsquent calls to retrieve this dataset. Data points can belong to more
-- than one dataset. This method does not use patch semantics: the data
-- points provided are merely inserted, with no existing data replaced.
--
-- /See:/ 'usersDataSourcesDataSetsPatch' smart constructor.
data UsersDataSourcesDataSetsPatch =
  UsersDataSourcesDataSetsPatch'
    { _udsdspXgafv :: !(Maybe Xgafv)
    , _udsdspUploadProtocol :: !(Maybe Text)
    , _udsdspAccessToken :: !(Maybe Text)
    , _udsdspDataSourceId :: !Text
    , _udsdspUploadType :: !(Maybe Text)
    , _udsdspPayload :: !DataSet
    , _udsdspUserId :: !Text
    , _udsdspDataSetId :: !Text
    , _udsdspCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDataSourcesDataSetsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsdspXgafv'
--
-- * 'udsdspUploadProtocol'
--
-- * 'udsdspAccessToken'
--
-- * 'udsdspDataSourceId'
--
-- * 'udsdspUploadType'
--
-- * 'udsdspPayload'
--
-- * 'udsdspUserId'
--
-- * 'udsdspDataSetId'
--
-- * 'udsdspCallback'
usersDataSourcesDataSetsPatch
    :: Text -- ^ 'udsdspDataSourceId'
    -> DataSet -- ^ 'udsdspPayload'
    -> Text -- ^ 'udsdspUserId'
    -> Text -- ^ 'udsdspDataSetId'
    -> UsersDataSourcesDataSetsPatch
usersDataSourcesDataSetsPatch pUdsdspDataSourceId_ pUdsdspPayload_ pUdsdspUserId_ pUdsdspDataSetId_ =
  UsersDataSourcesDataSetsPatch'
    { _udsdspXgafv = Nothing
    , _udsdspUploadProtocol = Nothing
    , _udsdspAccessToken = Nothing
    , _udsdspDataSourceId = pUdsdspDataSourceId_
    , _udsdspUploadType = Nothing
    , _udsdspPayload = pUdsdspPayload_
    , _udsdspUserId = pUdsdspUserId_
    , _udsdspDataSetId = pUdsdspDataSetId_
    , _udsdspCallback = Nothing
    }


-- | V1 error format.
udsdspXgafv :: Lens' UsersDataSourcesDataSetsPatch (Maybe Xgafv)
udsdspXgafv
  = lens _udsdspXgafv (\ s a -> s{_udsdspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
udsdspUploadProtocol :: Lens' UsersDataSourcesDataSetsPatch (Maybe Text)
udsdspUploadProtocol
  = lens _udsdspUploadProtocol
      (\ s a -> s{_udsdspUploadProtocol = a})

-- | OAuth access token.
udsdspAccessToken :: Lens' UsersDataSourcesDataSetsPatch (Maybe Text)
udsdspAccessToken
  = lens _udsdspAccessToken
      (\ s a -> s{_udsdspAccessToken = a})

-- | The data stream ID of the data source that created the dataset.
udsdspDataSourceId :: Lens' UsersDataSourcesDataSetsPatch Text
udsdspDataSourceId
  = lens _udsdspDataSourceId
      (\ s a -> s{_udsdspDataSourceId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
udsdspUploadType :: Lens' UsersDataSourcesDataSetsPatch (Maybe Text)
udsdspUploadType
  = lens _udsdspUploadType
      (\ s a -> s{_udsdspUploadType = a})

-- | Multipart request metadata.
udsdspPayload :: Lens' UsersDataSourcesDataSetsPatch DataSet
udsdspPayload
  = lens _udsdspPayload
      (\ s a -> s{_udsdspPayload = a})

-- | Patch a dataset for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsdspUserId :: Lens' UsersDataSourcesDataSetsPatch Text
udsdspUserId
  = lens _udsdspUserId (\ s a -> s{_udsdspUserId = a})

-- | This field is not used, and can be safely omitted.
udsdspDataSetId :: Lens' UsersDataSourcesDataSetsPatch Text
udsdspDataSetId
  = lens _udsdspDataSetId
      (\ s a -> s{_udsdspDataSetId = a})

-- | JSONP
udsdspCallback :: Lens' UsersDataSourcesDataSetsPatch (Maybe Text)
udsdspCallback
  = lens _udsdspCallback
      (\ s a -> s{_udsdspCallback = a})

instance GoogleRequest UsersDataSourcesDataSetsPatch
         where
        type Rs UsersDataSourcesDataSetsPatch = DataSet
        type Scopes UsersDataSourcesDataSetsPatch =
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
        requestClient UsersDataSourcesDataSetsPatch'{..}
          = go _udsdspUserId _udsdspDataSourceId
              _udsdspDataSetId
              _udsdspXgafv
              _udsdspUploadProtocol
              _udsdspAccessToken
              _udsdspUploadType
              _udsdspCallback
              (Just AltJSON)
              _udsdspPayload
              fitnessService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UsersDataSourcesDataSetsPatchResource)
                      mempty
