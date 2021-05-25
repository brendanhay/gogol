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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified data source.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.dataSources.get@.
module Network.Google.Resource.Fitness.Users.DataSources.Get
    (
    -- * REST Resource
      UsersDataSourcesGetResource

    -- * Creating a Request
    , usersDataSourcesGet
    , UsersDataSourcesGet

    -- * Request Lenses
    , udsgXgafv
    , udsgUploadProtocol
    , udsgAccessToken
    , udsgDataSourceId
    , udsgUploadType
    , udsgUserId
    , udsgCallback
    ) where

import Network.Google.Fitness.Types
import Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.get@ method which the
-- 'UsersDataSourcesGet' request conforms to.
type UsersDataSourcesGetResource =
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
                           QueryParam "alt" AltJSON :> Get '[JSON] DataSource

-- | Returns the specified data source.
--
-- /See:/ 'usersDataSourcesGet' smart constructor.
data UsersDataSourcesGet =
  UsersDataSourcesGet'
    { _udsgXgafv :: !(Maybe Xgafv)
    , _udsgUploadProtocol :: !(Maybe Text)
    , _udsgAccessToken :: !(Maybe Text)
    , _udsgDataSourceId :: !Text
    , _udsgUploadType :: !(Maybe Text)
    , _udsgUserId :: !Text
    , _udsgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDataSourcesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsgXgafv'
--
-- * 'udsgUploadProtocol'
--
-- * 'udsgAccessToken'
--
-- * 'udsgDataSourceId'
--
-- * 'udsgUploadType'
--
-- * 'udsgUserId'
--
-- * 'udsgCallback'
usersDataSourcesGet
    :: Text -- ^ 'udsgDataSourceId'
    -> Text -- ^ 'udsgUserId'
    -> UsersDataSourcesGet
usersDataSourcesGet pUdsgDataSourceId_ pUdsgUserId_ =
  UsersDataSourcesGet'
    { _udsgXgafv = Nothing
    , _udsgUploadProtocol = Nothing
    , _udsgAccessToken = Nothing
    , _udsgDataSourceId = pUdsgDataSourceId_
    , _udsgUploadType = Nothing
    , _udsgUserId = pUdsgUserId_
    , _udsgCallback = Nothing
    }


-- | V1 error format.
udsgXgafv :: Lens' UsersDataSourcesGet (Maybe Xgafv)
udsgXgafv
  = lens _udsgXgafv (\ s a -> s{_udsgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
udsgUploadProtocol :: Lens' UsersDataSourcesGet (Maybe Text)
udsgUploadProtocol
  = lens _udsgUploadProtocol
      (\ s a -> s{_udsgUploadProtocol = a})

-- | OAuth access token.
udsgAccessToken :: Lens' UsersDataSourcesGet (Maybe Text)
udsgAccessToken
  = lens _udsgAccessToken
      (\ s a -> s{_udsgAccessToken = a})

-- | The data stream ID of the data source to retrieve.
udsgDataSourceId :: Lens' UsersDataSourcesGet Text
udsgDataSourceId
  = lens _udsgDataSourceId
      (\ s a -> s{_udsgDataSourceId = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
udsgUploadType :: Lens' UsersDataSourcesGet (Maybe Text)
udsgUploadType
  = lens _udsgUploadType
      (\ s a -> s{_udsgUploadType = a})

-- | Retrieve a data source for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsgUserId :: Lens' UsersDataSourcesGet Text
udsgUserId
  = lens _udsgUserId (\ s a -> s{_udsgUserId = a})

-- | JSONP
udsgCallback :: Lens' UsersDataSourcesGet (Maybe Text)
udsgCallback
  = lens _udsgCallback (\ s a -> s{_udsgCallback = a})

instance GoogleRequest UsersDataSourcesGet where
        type Rs UsersDataSourcesGet = DataSource
        type Scopes UsersDataSourcesGet =
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
        requestClient UsersDataSourcesGet'{..}
          = go _udsgUserId _udsgDataSourceId _udsgXgafv
              _udsgUploadProtocol
              _udsgAccessToken
              _udsgUploadType
              _udsgCallback
              (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDataSourcesGetResource)
                      mempty
