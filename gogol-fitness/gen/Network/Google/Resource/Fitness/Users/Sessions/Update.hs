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
-- Module      : Network.Google.Resource.Fitness.Users.Sessions.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates or insert a given session.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @FitnessUsersSessionsUpdate@.
module Network.Google.Resource.Fitness.Users.Sessions.Update
    (
    -- * REST Resource
      UsersSessionsUpdateResource

    -- * Creating a Request
    , usersSessionsUpdate'
    , UsersSessionsUpdate'

    -- * Request Lenses
    , usuPayload
    , usuUserId
    , usuCurrentTimeMillis
    , usuSessionId
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @FitnessUsersSessionsUpdate@ method which the
-- 'UsersSessionsUpdate'' request conforms to.
type UsersSessionsUpdateResource =
     Capture "userId" Text :>
       "sessions" :>
         Capture "sessionId" Text :>
           QueryParam "currentTimeMillis" Int64 :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Session :> Put '[JSON] Session

-- | Updates or insert a given session.
--
-- /See:/ 'usersSessionsUpdate'' smart constructor.
data UsersSessionsUpdate' = UsersSessionsUpdate'
    { _usuPayload           :: !Session
    , _usuUserId            :: !Text
    , _usuCurrentTimeMillis :: !(Maybe Int64)
    , _usuSessionId         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersSessionsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usuPayload'
--
-- * 'usuUserId'
--
-- * 'usuCurrentTimeMillis'
--
-- * 'usuSessionId'
usersSessionsUpdate'
    :: Session -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> Text -- ^ 'sessionId'
    -> UsersSessionsUpdate'
usersSessionsUpdate' pUsuPayload_ pUsuUserId_ pUsuSessionId_ =
    UsersSessionsUpdate'
    { _usuPayload = pUsuPayload_
    , _usuUserId = pUsuUserId_
    , _usuCurrentTimeMillis = Nothing
    , _usuSessionId = pUsuSessionId_
    }

-- | Multipart request metadata.
usuPayload :: Lens' UsersSessionsUpdate' Session
usuPayload
  = lens _usuPayload (\ s a -> s{_usuPayload = a})

-- | Create sessions for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
usuUserId :: Lens' UsersSessionsUpdate' Text
usuUserId
  = lens _usuUserId (\ s a -> s{_usuUserId = a})

-- | The client\'s current time in milliseconds since epoch.
usuCurrentTimeMillis :: Lens' UsersSessionsUpdate' (Maybe Int64)
usuCurrentTimeMillis
  = lens _usuCurrentTimeMillis
      (\ s a -> s{_usuCurrentTimeMillis = a})

-- | The ID of the session to be created.
usuSessionId :: Lens' UsersSessionsUpdate' Text
usuSessionId
  = lens _usuSessionId (\ s a -> s{_usuSessionId = a})

instance GoogleRequest UsersSessionsUpdate' where
        type Rs UsersSessionsUpdate' = Session
        requestClient UsersSessionsUpdate'{..}
          = go _usuUserId _usuSessionId _usuCurrentTimeMillis
              (Just AltJSON)
              _usuPayload
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSessionsUpdateResource)
                      mempty
