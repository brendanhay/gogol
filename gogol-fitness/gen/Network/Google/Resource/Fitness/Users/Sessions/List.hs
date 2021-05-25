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
-- Module      : Network.Google.Resource.Fitness.Users.Sessions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists sessions previously created.
--
-- /See:/ <https://developers.google.com/fit/rest/v1/get-started Fitness API Reference> for @fitness.users.sessions.list@.
module Network.Google.Resource.Fitness.Users.Sessions.List
    (
    -- * REST Resource
      UsersSessionsListResource

    -- * Creating a Request
    , usersSessionsList
    , UsersSessionsList

    -- * Request Lenses
    , uslXgafv
    , uslUploadProtocol
    , uslActivityType
    , uslStartTime
    , uslAccessToken
    , uslUploadType
    , uslUserId
    , uslEndTime
    , uslPageToken
    , uslIncludeDeleted
    , uslCallback
    ) where

import Network.Google.Fitness.Types
import Network.Google.Prelude

-- | A resource alias for @fitness.users.sessions.list@ method which the
-- 'UsersSessionsList' request conforms to.
type UsersSessionsListResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "sessions" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParams "activityType" (Textual Int32) :>
                     QueryParam "startTime" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "endTime" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "includeDeleted" Bool :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ListSessionsResponse

-- | Lists sessions previously created.
--
-- /See:/ 'usersSessionsList' smart constructor.
data UsersSessionsList =
  UsersSessionsList'
    { _uslXgafv :: !(Maybe Xgafv)
    , _uslUploadProtocol :: !(Maybe Text)
    , _uslActivityType :: !(Maybe [Textual Int32])
    , _uslStartTime :: !(Maybe Text)
    , _uslAccessToken :: !(Maybe Text)
    , _uslUploadType :: !(Maybe Text)
    , _uslUserId :: !Text
    , _uslEndTime :: !(Maybe Text)
    , _uslPageToken :: !(Maybe Text)
    , _uslIncludeDeleted :: !(Maybe Bool)
    , _uslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSessionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uslXgafv'
--
-- * 'uslUploadProtocol'
--
-- * 'uslActivityType'
--
-- * 'uslStartTime'
--
-- * 'uslAccessToken'
--
-- * 'uslUploadType'
--
-- * 'uslUserId'
--
-- * 'uslEndTime'
--
-- * 'uslPageToken'
--
-- * 'uslIncludeDeleted'
--
-- * 'uslCallback'
usersSessionsList
    :: Text -- ^ 'uslUserId'
    -> UsersSessionsList
usersSessionsList pUslUserId_ =
  UsersSessionsList'
    { _uslXgafv = Nothing
    , _uslUploadProtocol = Nothing
    , _uslActivityType = Nothing
    , _uslStartTime = Nothing
    , _uslAccessToken = Nothing
    , _uslUploadType = Nothing
    , _uslUserId = pUslUserId_
    , _uslEndTime = Nothing
    , _uslPageToken = Nothing
    , _uslIncludeDeleted = Nothing
    , _uslCallback = Nothing
    }


-- | V1 error format.
uslXgafv :: Lens' UsersSessionsList (Maybe Xgafv)
uslXgafv = lens _uslXgafv (\ s a -> s{_uslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
uslUploadProtocol :: Lens' UsersSessionsList (Maybe Text)
uslUploadProtocol
  = lens _uslUploadProtocol
      (\ s a -> s{_uslUploadProtocol = a})

-- | If non-empty, only sessions with these activity types should be
-- returned.
uslActivityType :: Lens' UsersSessionsList [Int32]
uslActivityType
  = lens _uslActivityType
      (\ s a -> s{_uslActivityType = a})
      . _Default
      . _Coerce

-- | An RFC3339 timestamp. Only sessions ending between the start and end
-- times will be included in the response. If this time is omitted but
-- endTime is specified, all sessions from the start of time up to endTime
-- will be returned.
uslStartTime :: Lens' UsersSessionsList (Maybe Text)
uslStartTime
  = lens _uslStartTime (\ s a -> s{_uslStartTime = a})

-- | OAuth access token.
uslAccessToken :: Lens' UsersSessionsList (Maybe Text)
uslAccessToken
  = lens _uslAccessToken
      (\ s a -> s{_uslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
uslUploadType :: Lens' UsersSessionsList (Maybe Text)
uslUploadType
  = lens _uslUploadType
      (\ s a -> s{_uslUploadType = a})

-- | List sessions for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
uslUserId :: Lens' UsersSessionsList Text
uslUserId
  = lens _uslUserId (\ s a -> s{_uslUserId = a})

-- | An RFC3339 timestamp. Only sessions ending between the start and end
-- times will be included in the response. If this time is omitted but
-- startTime is specified, all sessions from startTime to the end of time
-- will be returned.
uslEndTime :: Lens' UsersSessionsList (Maybe Text)
uslEndTime
  = lens _uslEndTime (\ s a -> s{_uslEndTime = a})

-- | The continuation token, which is used for incremental syncing. To get
-- the next batch of changes, set this parameter to the value of
-- nextPageToken from the previous response. The page token is ignored if
-- either start or end time is specified. If none of start time, end time,
-- and the page token is specified, sessions modified in the last 30 days
-- are returned.
uslPageToken :: Lens' UsersSessionsList (Maybe Text)
uslPageToken
  = lens _uslPageToken (\ s a -> s{_uslPageToken = a})

-- | If true, and if both startTime and endTime are omitted, session
-- deletions will be returned.
uslIncludeDeleted :: Lens' UsersSessionsList (Maybe Bool)
uslIncludeDeleted
  = lens _uslIncludeDeleted
      (\ s a -> s{_uslIncludeDeleted = a})

-- | JSONP
uslCallback :: Lens' UsersSessionsList (Maybe Text)
uslCallback
  = lens _uslCallback (\ s a -> s{_uslCallback = a})

instance GoogleRequest UsersSessionsList where
        type Rs UsersSessionsList = ListSessionsResponse
        type Scopes UsersSessionsList =
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
        requestClient UsersSessionsList'{..}
          = go _uslUserId _uslXgafv _uslUploadProtocol
              (_uslActivityType ^. _Default)
              _uslStartTime
              _uslAccessToken
              _uslUploadType
              _uslEndTime
              _uslPageToken
              _uslIncludeDeleted
              _uslCallback
              (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSessionsListResource)
                      mempty
