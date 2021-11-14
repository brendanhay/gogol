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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all data sources that are visible to the developer, using the
-- OAuth scopes provided. The list is not exhaustive; the user may have
-- private data sources that are only visible to other developers, or calls
-- using other scopes.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.dataSources.list@.
module Network.Google.Resource.Fitness.Users.DataSources.List
    (
    -- * REST Resource
      UsersDataSourcesListResource

    -- * Creating a Request
    , usersDataSourcesList
    , UsersDataSourcesList

    -- * Request Lenses
    , udslXgafv
    , udslDataTypeName
    , udslUploadProtocol
    , udslAccessToken
    , udslUploadType
    , udslUserId
    , udslCallback
    ) where

import Network.Google.Fitness.Types
import Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.list@ method which the
-- 'UsersDataSourcesList' request conforms to.
type UsersDataSourcesListResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "dataSources" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParams "dataTypeName" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListDataSourcesResponse

-- | Lists all data sources that are visible to the developer, using the
-- OAuth scopes provided. The list is not exhaustive; the user may have
-- private data sources that are only visible to other developers, or calls
-- using other scopes.
--
-- /See:/ 'usersDataSourcesList' smart constructor.
data UsersDataSourcesList =
  UsersDataSourcesList'
    { _udslXgafv :: !(Maybe Xgafv)
    , _udslDataTypeName :: !(Maybe [Text])
    , _udslUploadProtocol :: !(Maybe Text)
    , _udslAccessToken :: !(Maybe Text)
    , _udslUploadType :: !(Maybe Text)
    , _udslUserId :: !Text
    , _udslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersDataSourcesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udslXgafv'
--
-- * 'udslDataTypeName'
--
-- * 'udslUploadProtocol'
--
-- * 'udslAccessToken'
--
-- * 'udslUploadType'
--
-- * 'udslUserId'
--
-- * 'udslCallback'
usersDataSourcesList
    :: Text -- ^ 'udslUserId'
    -> UsersDataSourcesList
usersDataSourcesList pUdslUserId_ =
  UsersDataSourcesList'
    { _udslXgafv = Nothing
    , _udslDataTypeName = Nothing
    , _udslUploadProtocol = Nothing
    , _udslAccessToken = Nothing
    , _udslUploadType = Nothing
    , _udslUserId = pUdslUserId_
    , _udslCallback = Nothing
    }


-- | V1 error format.
udslXgafv :: Lens' UsersDataSourcesList (Maybe Xgafv)
udslXgafv
  = lens _udslXgafv (\ s a -> s{_udslXgafv = a})

-- | The names of data types to include in the list. If not specified, all
-- data sources will be returned.
udslDataTypeName :: Lens' UsersDataSourcesList [Text]
udslDataTypeName
  = lens _udslDataTypeName
      (\ s a -> s{_udslDataTypeName = a})
      . _Default
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
udslUploadProtocol :: Lens' UsersDataSourcesList (Maybe Text)
udslUploadProtocol
  = lens _udslUploadProtocol
      (\ s a -> s{_udslUploadProtocol = a})

-- | OAuth access token.
udslAccessToken :: Lens' UsersDataSourcesList (Maybe Text)
udslAccessToken
  = lens _udslAccessToken
      (\ s a -> s{_udslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
udslUploadType :: Lens' UsersDataSourcesList (Maybe Text)
udslUploadType
  = lens _udslUploadType
      (\ s a -> s{_udslUploadType = a})

-- | List data sources for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udslUserId :: Lens' UsersDataSourcesList Text
udslUserId
  = lens _udslUserId (\ s a -> s{_udslUserId = a})

-- | JSONP
udslCallback :: Lens' UsersDataSourcesList (Maybe Text)
udslCallback
  = lens _udslCallback (\ s a -> s{_udslCallback = a})

instance GoogleRequest UsersDataSourcesList where
        type Rs UsersDataSourcesList =
             ListDataSourcesResponse
        type Scopes UsersDataSourcesList =
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
        requestClient UsersDataSourcesList'{..}
          = go _udslUserId _udslXgafv
              (_udslDataTypeName ^. _Default)
              _udslUploadProtocol
              _udslAccessToken
              _udslUploadType
              _udslCallback
              (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDataSourcesListResource)
                      mempty
