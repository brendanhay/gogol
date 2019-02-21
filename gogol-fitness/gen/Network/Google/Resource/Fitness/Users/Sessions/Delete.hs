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
-- Module      : Network.Google.Resource.Fitness.Users.Sessions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a session specified by the given session ID.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @fitness.users.sessions.delete@.
module Network.Google.Resource.Fitness.Users.Sessions.Delete
    (
    -- * REST Resource
      UsersSessionsDeleteResource

    -- * Creating a Request
    , usersSessionsDelete
    , UsersSessionsDelete

    -- * Request Lenses
    , usdUserId
    , usdCurrentTimeMillis
    , usdSessionId
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @fitness.users.sessions.delete@ method which the
-- 'UsersSessionsDelete' request conforms to.
type UsersSessionsDeleteResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "sessions" :>
               Capture "sessionId" Text :>
                 QueryParam "currentTimeMillis" (Textual Int64) :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a session specified by the given session ID.
--
-- /See:/ 'usersSessionsDelete' smart constructor.
data UsersSessionsDelete =
  UsersSessionsDelete'
    { _usdUserId            :: !Text
    , _usdCurrentTimeMillis :: !(Maybe (Textual Int64))
    , _usdSessionId         :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersSessionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usdUserId'
--
-- * 'usdCurrentTimeMillis'
--
-- * 'usdSessionId'
usersSessionsDelete
    :: Text -- ^ 'usdUserId'
    -> Text -- ^ 'usdSessionId'
    -> UsersSessionsDelete
usersSessionsDelete pUsdUserId_ pUsdSessionId_ =
  UsersSessionsDelete'
    { _usdUserId = pUsdUserId_
    , _usdCurrentTimeMillis = Nothing
    , _usdSessionId = pUsdSessionId_
    }


-- | Delete a session for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
usdUserId :: Lens' UsersSessionsDelete Text
usdUserId
  = lens _usdUserId (\ s a -> s{_usdUserId = a})

-- | The client\'s current time in milliseconds since epoch.
usdCurrentTimeMillis :: Lens' UsersSessionsDelete (Maybe Int64)
usdCurrentTimeMillis
  = lens _usdCurrentTimeMillis
      (\ s a -> s{_usdCurrentTimeMillis = a})
      . mapping _Coerce

-- | The ID of the session to be deleted.
usdSessionId :: Lens' UsersSessionsDelete Text
usdSessionId
  = lens _usdSessionId (\ s a -> s{_usdSessionId = a})

instance GoogleRequest UsersSessionsDelete where
        type Rs UsersSessionsDelete = ()
        type Scopes UsersSessionsDelete =
             '["https://www.googleapis.com/auth/fitness.activity.write"]
        requestClient UsersSessionsDelete'{..}
          = go _usdUserId _usdSessionId _usdCurrentTimeMillis
              (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersSessionsDeleteResource)
                      mempty
