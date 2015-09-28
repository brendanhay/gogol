{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Rooms.Join
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Join a room. For internal use by the Games SDK only. Calling this method
-- directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.rooms.join@.
module Network.Google.API.Games.Rooms.Join
    (
    -- * REST Resource
      RoomsJoinAPI

    -- * Creating a Request
    , roomsJoin'
    , RoomsJoin'

    -- * Request Lenses
    , rjQuotaUser
    , rjPrettyPrint
    , rjUserIp
    , rjKey
    , rjRoomId
    , rjLanguage
    , rjOauthToken
    , rjFields
    , rjAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.rooms.join which the
-- 'RoomsJoin'' request conforms to.
type RoomsJoinAPI =
     "rooms" :>
       Capture "roomId" Text :>
         "join" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "language" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Room

-- | Join a room. For internal use by the Games SDK only. Calling this method
-- directly is unsupported.
--
-- /See:/ 'roomsJoin'' smart constructor.
data RoomsJoin' = RoomsJoin'
    { _rjQuotaUser   :: !(Maybe Text)
    , _rjPrettyPrint :: !Bool
    , _rjUserIp      :: !(Maybe Text)
    , _rjKey         :: !(Maybe Text)
    , _rjRoomId      :: !Text
    , _rjLanguage    :: !(Maybe Text)
    , _rjOauthToken  :: !(Maybe Text)
    , _rjFields      :: !(Maybe Text)
    , _rjAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsJoin'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rjQuotaUser'
--
-- * 'rjPrettyPrint'
--
-- * 'rjUserIp'
--
-- * 'rjKey'
--
-- * 'rjRoomId'
--
-- * 'rjLanguage'
--
-- * 'rjOauthToken'
--
-- * 'rjFields'
--
-- * 'rjAlt'
roomsJoin'
    :: Text -- ^ 'roomId'
    -> RoomsJoin'
roomsJoin' pRjRoomId_ =
    RoomsJoin'
    { _rjQuotaUser = Nothing
    , _rjPrettyPrint = True
    , _rjUserIp = Nothing
    , _rjKey = Nothing
    , _rjRoomId = pRjRoomId_
    , _rjLanguage = Nothing
    , _rjOauthToken = Nothing
    , _rjFields = Nothing
    , _rjAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rjQuotaUser :: Lens' RoomsJoin' (Maybe Text)
rjQuotaUser
  = lens _rjQuotaUser (\ s a -> s{_rjQuotaUser = a})

-- | Returns response with indentations and line breaks.
rjPrettyPrint :: Lens' RoomsJoin' Bool
rjPrettyPrint
  = lens _rjPrettyPrint
      (\ s a -> s{_rjPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rjUserIp :: Lens' RoomsJoin' (Maybe Text)
rjUserIp = lens _rjUserIp (\ s a -> s{_rjUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rjKey :: Lens' RoomsJoin' (Maybe Text)
rjKey = lens _rjKey (\ s a -> s{_rjKey = a})

-- | The ID of the room.
rjRoomId :: Lens' RoomsJoin' Text
rjRoomId = lens _rjRoomId (\ s a -> s{_rjRoomId = a})

-- | The preferred language to use for strings returned by this method.
rjLanguage :: Lens' RoomsJoin' (Maybe Text)
rjLanguage
  = lens _rjLanguage (\ s a -> s{_rjLanguage = a})

-- | OAuth 2.0 token for the current user.
rjOauthToken :: Lens' RoomsJoin' (Maybe Text)
rjOauthToken
  = lens _rjOauthToken (\ s a -> s{_rjOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rjFields :: Lens' RoomsJoin' (Maybe Text)
rjFields = lens _rjFields (\ s a -> s{_rjFields = a})

-- | Data format for the response.
rjAlt :: Lens' RoomsJoin' Alt
rjAlt = lens _rjAlt (\ s a -> s{_rjAlt = a})

instance GoogleRequest RoomsJoin' where
        type Rs RoomsJoin' = Room
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsJoin'{..}
          = go _rjQuotaUser (Just _rjPrettyPrint) _rjUserIp
              _rjKey
              _rjRoomId
              _rjLanguage
              _rjOauthToken
              _rjFields
              (Just _rjAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RoomsJoinAPI) r u
