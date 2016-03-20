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
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @fitness.users.sessions.list@.
module Network.Google.Resource.Fitness.Users.Sessions.List
    (
    -- * REST Resource
      UsersSessionsListResource

    -- * Creating a Request
    , usersSessionsList
    , UsersSessionsList

    -- * Request Lenses
    , uslStartTime
    , uslUserId
    , uslEndTime
    , uslPageToken
    , uslIncludeDeleted
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @fitness.users.sessions.list@ method which the
-- 'UsersSessionsList' request conforms to.
type UsersSessionsListResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "sessions" :>
               QueryParam "startTime" Text :>
                 QueryParam "endTime" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "includeDeleted" Bool :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListSessionsResponse

-- | Lists sessions previously created.
--
-- /See:/ 'usersSessionsList' smart constructor.
data UsersSessionsList = UsersSessionsList
    { _uslStartTime      :: !(Maybe Text)
    , _uslUserId         :: !Text
    , _uslEndTime        :: !(Maybe Text)
    , _uslPageToken      :: !(Maybe Text)
    , _uslIncludeDeleted :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersSessionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uslStartTime'
--
-- * 'uslUserId'
--
-- * 'uslEndTime'
--
-- * 'uslPageToken'
--
-- * 'uslIncludeDeleted'
usersSessionsList
    :: Text -- ^ 'uslUserId'
    -> UsersSessionsList
usersSessionsList pUslUserId_ =
    UsersSessionsList
    { _uslStartTime = Nothing
    , _uslUserId = pUslUserId_
    , _uslEndTime = Nothing
    , _uslPageToken = Nothing
    , _uslIncludeDeleted = Nothing
    }

-- | An RFC3339 timestamp. Only sessions ending between the start and end
-- times will be included in the response.
uslStartTime :: Lens' UsersSessionsList (Maybe Text)
uslStartTime
  = lens _uslStartTime (\ s a -> s{_uslStartTime = a})

-- | List sessions for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
uslUserId :: Lens' UsersSessionsList Text
uslUserId
  = lens _uslUserId (\ s a -> s{_uslUserId = a})

-- | An RFC3339 timestamp. Only sessions ending between the start and end
-- times will be included in the response.
uslEndTime :: Lens' UsersSessionsList (Maybe Text)
uslEndTime
  = lens _uslEndTime (\ s a -> s{_uslEndTime = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
uslPageToken :: Lens' UsersSessionsList (Maybe Text)
uslPageToken
  = lens _uslPageToken (\ s a -> s{_uslPageToken = a})

-- | If true, deleted sessions will be returned. When set to true, sessions
-- returned in this response will only have an ID and will not have any
-- other fields.
uslIncludeDeleted :: Lens' UsersSessionsList (Maybe Bool)
uslIncludeDeleted
  = lens _uslIncludeDeleted
      (\ s a -> s{_uslIncludeDeleted = a})

instance GoogleRequest UsersSessionsList where
        type Rs UsersSessionsList = ListSessionsResponse
        requestClient UsersSessionsList{..}
          = go _uslUserId _uslStartTime _uslEndTime
              _uslPageToken
              _uslIncludeDeleted
              (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSessionsListResource)
                      mempty
