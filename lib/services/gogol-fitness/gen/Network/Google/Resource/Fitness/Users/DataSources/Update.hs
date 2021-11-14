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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified data source. The dataStreamId, dataType, type,
-- dataStreamName, and device properties with the exception of version,
-- cannot be modified. Data sources are identified by their dataStreamId.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.dataSources.update@.
module Network.Google.Resource.Fitness.Users.DataSources.Update
    (
    -- * REST Resource
      UsersDataSourcesUpdateResource

    -- * Creating a Request
    , usersDataSourcesUpdate
    , UsersDataSourcesUpdate

    -- * Request Lenses
    , udsuXgafv
    , udsuUploadProtocol
    , udsuAccessToken
    , udsuDataSourceId
    , udsuUploadType
    , udsuPayload
    , udsuUserId
    , udsuCallback
    ) where

import Network.Google.Fitness.Types
import Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.update@ method which the
-- 'UsersDataSourcesUpdate' request conforms to.
type UsersDataSourcesUpdateResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "dataSources" :>
               Capture "dataSourceId" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] DataSource :>
                               Put '[JSON] DataSource

-- | Updates the specified data source. The dataStreamId, dataType, type,
-- dataStreamName, and device properties with the exception of version,
-- cannot be modified. Data sources are identified by their dataStreamId.
--
-- /See:/ 'usersDataSourcesUpdate' smart constructor.
data UsersDataSourcesUpdate =
  UsersDataSourcesUpdate'
    { _udsuXgafv :: !(Maybe Xgafv)
    , _udsuUploadProtocol :: !(Maybe Text)
    , _udsuAccessToken :: !(Maybe Text)
    , _udsuDataSourceId :: !Text
    , _udsuUploadType :: !(Maybe Text)
    , _udsuPayload :: !DataSource
    , _udsuUserId :: !Text
    , _udsuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDataSourcesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsuXgafv'
--
-- * 'udsuUploadProtocol'
--
-- * 'udsuAccessToken'
--
-- * 'udsuDataSourceId'
--
-- * 'udsuUploadType'
--
-- * 'udsuPayload'
--
-- * 'udsuUserId'
--
-- * 'udsuCallback'
usersDataSourcesUpdate
    :: Text -- ^ 'udsuDataSourceId'
    -> DataSource -- ^ 'udsuPayload'
    -> Text -- ^ 'udsuUserId'
    -> UsersDataSourcesUpdate
usersDataSourcesUpdate pUdsuDataSourceId_ pUdsuPayload_ pUdsuUserId_ =
  UsersDataSourcesUpdate'
    { _udsuXgafv = Nothing
    , _udsuUploadProtocol = Nothing
    , _udsuAccessToken = Nothing
    , _udsuDataSourceId = pUdsuDataSourceId_
    , _udsuUploadType = Nothing
    , _udsuPayload = pUdsuPayload_
    , _udsuUserId = pUdsuUserId_
    , _udsuCallback = Nothing
    }


-- | V1 error format.
udsuXgafv :: Lens' UsersDataSourcesUpdate (Maybe Xgafv)
udsuXgafv
  = lens _udsuXgafv (\ s a -> s{_udsuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
udsuUploadProtocol :: Lens' UsersDataSourcesUpdate (Maybe Text)
udsuUploadProtocol
  = lens _udsuUploadProtocol
      (\ s a -> s{_udsuUploadProtocol = a})

-- | OAuth access token.
udsuAccessToken :: Lens' UsersDataSourcesUpdate (Maybe Text)
udsuAccessToken
  = lens _udsuAccessToken
      (\ s a -> s{_udsuAccessToken = a})

-- | The data stream ID of the data source to update.
udsuDataSourceId :: Lens' UsersDataSourcesUpdate Text
udsuDataSourceId
  = lens _udsuDataSourceId
      (\ s a -> s{_udsuDataSourceId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
udsuUploadType :: Lens' UsersDataSourcesUpdate (Maybe Text)
udsuUploadType
  = lens _udsuUploadType
      (\ s a -> s{_udsuUploadType = a})

-- | Multipart request metadata.
udsuPayload :: Lens' UsersDataSourcesUpdate DataSource
udsuPayload
  = lens _udsuPayload (\ s a -> s{_udsuPayload = a})

-- | Update the data source for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsuUserId :: Lens' UsersDataSourcesUpdate Text
udsuUserId
  = lens _udsuUserId (\ s a -> s{_udsuUserId = a})

-- | JSONP
udsuCallback :: Lens' UsersDataSourcesUpdate (Maybe Text)
udsuCallback
  = lens _udsuCallback (\ s a -> s{_udsuCallback = a})

instance GoogleRequest UsersDataSourcesUpdate where
        type Rs UsersDataSourcesUpdate = DataSource
        type Scopes UsersDataSourcesUpdate =
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
        requestClient UsersDataSourcesUpdate'{..}
          = go _udsuUserId _udsuDataSourceId _udsuXgafv
              _udsuUploadProtocol
              _udsuAccessToken
              _udsuUploadType
              _udsuCallback
              (Just AltJSON)
              _udsuPayload
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDataSourcesUpdateResource)
                      mempty
