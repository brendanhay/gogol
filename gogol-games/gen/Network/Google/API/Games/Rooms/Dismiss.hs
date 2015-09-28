{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Rooms.Dismiss
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Dismiss an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.rooms.dismiss@.
module Network.Google.API.Games.Rooms.Dismiss
    (
    -- * REST Resource
      RoomsDismissAPI

    -- * Creating a Request
    , roomsDismiss'
    , RoomsDismiss'

    -- * Request Lenses
    , rQuotaUser
    , rPrettyPrint
    , rUserIp
    , rKey
    , rRoomId
    , rOauthToken
    , rFields
    , rAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.rooms.dismiss which the
-- 'RoomsDismiss'' request conforms to.
type RoomsDismissAPI =
     "rooms" :>
       Capture "roomId" Text :>
         "dismiss" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ()

-- | Dismiss an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ 'roomsDismiss'' smart constructor.
data RoomsDismiss' = RoomsDismiss'
    { _rQuotaUser   :: !(Maybe Text)
    , _rPrettyPrint :: !Bool
    , _rUserIp      :: !(Maybe Text)
    , _rKey         :: !(Maybe Text)
    , _rRoomId      :: !Text
    , _rOauthToken  :: !(Maybe Text)
    , _rFields      :: !(Maybe Text)
    , _rAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsDismiss'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rUserIp'
--
-- * 'rKey'
--
-- * 'rRoomId'
--
-- * 'rOauthToken'
--
-- * 'rFields'
--
-- * 'rAlt'
roomsDismiss'
    :: Text -- ^ 'roomId'
    -> RoomsDismiss'
roomsDismiss' pRRoomId_ =
    RoomsDismiss'
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rUserIp = Nothing
    , _rKey = Nothing
    , _rRoomId = pRRoomId_
    , _rOauthToken = Nothing
    , _rFields = Nothing
    , _rAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' RoomsDismiss' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' RoomsDismiss' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIp :: Lens' RoomsDismiss' (Maybe Text)
rUserIp = lens _rUserIp (\ s a -> s{_rUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' RoomsDismiss' (Maybe Text)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | The ID of the room.
rRoomId :: Lens' RoomsDismiss' Text
rRoomId = lens _rRoomId (\ s a -> s{_rRoomId = a})

-- | OAuth 2.0 token for the current user.
rOauthToken :: Lens' RoomsDismiss' (Maybe Text)
rOauthToken
  = lens _rOauthToken (\ s a -> s{_rOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' RoomsDismiss' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

-- | Data format for the response.
rAlt :: Lens' RoomsDismiss' Alt
rAlt = lens _rAlt (\ s a -> s{_rAlt = a})

instance GoogleRequest RoomsDismiss' where
        type Rs RoomsDismiss' = ()
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsDismiss'{..}
          = go _rQuotaUser (Just _rPrettyPrint) _rUserIp _rKey
              _rRoomId
              _rOauthToken
              _rFields
              (Just _rAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RoomsDismissAPI) r
                      u
