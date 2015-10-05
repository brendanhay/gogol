{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.Rooms.Join
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Join a room. For internal use by the Games SDK only. Calling this method
-- directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesRoomsJoin@.
module Network.Google.Resource.Games.Rooms.Join
    (
    -- * REST Resource
      RoomsJoinResource

    -- * Creating a Request
    , roomsJoin'
    , RoomsJoin'

    -- * Request Lenses
    , rjQuotaUser
    , rjPrettyPrint
    , rjUserIP
    , rjPayload
    , rjKey
    , rjRoomId
    , rjLanguage
    , rjOAuthToken
    , rjFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsJoin@ which the
-- 'RoomsJoin'' request conforms to.
type RoomsJoinResource =
     "rooms" :>
       Capture "roomId" Text :>
         "join" :>
           QueryParam "language" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RoomJoinRequest :> Post '[JSON] Room

-- | Join a room. For internal use by the Games SDK only. Calling this method
-- directly is unsupported.
--
-- /See:/ 'roomsJoin'' smart constructor.
data RoomsJoin' = RoomsJoin'
    { _rjQuotaUser   :: !(Maybe Text)
    , _rjPrettyPrint :: !Bool
    , _rjUserIP      :: !(Maybe Text)
    , _rjPayload     :: !RoomJoinRequest
    , _rjKey         :: !(Maybe Key)
    , _rjRoomId      :: !Text
    , _rjLanguage    :: !(Maybe Text)
    , _rjOAuthToken  :: !(Maybe OAuthToken)
    , _rjFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsJoin'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rjQuotaUser'
--
-- * 'rjPrettyPrint'
--
-- * 'rjUserIP'
--
-- * 'rjPayload'
--
-- * 'rjKey'
--
-- * 'rjRoomId'
--
-- * 'rjLanguage'
--
-- * 'rjOAuthToken'
--
-- * 'rjFields'
roomsJoin'
    :: RoomJoinRequest -- ^ 'payload'
    -> Text -- ^ 'roomId'
    -> RoomsJoin'
roomsJoin' pRjPayload_ pRjRoomId_ =
    RoomsJoin'
    { _rjQuotaUser = Nothing
    , _rjPrettyPrint = True
    , _rjUserIP = Nothing
    , _rjPayload = pRjPayload_
    , _rjKey = Nothing
    , _rjRoomId = pRjRoomId_
    , _rjLanguage = Nothing
    , _rjOAuthToken = Nothing
    , _rjFields = Nothing
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
rjUserIP :: Lens' RoomsJoin' (Maybe Text)
rjUserIP = lens _rjUserIP (\ s a -> s{_rjUserIP = a})

-- | Multipart request metadata.
rjPayload :: Lens' RoomsJoin' RoomJoinRequest
rjPayload
  = lens _rjPayload (\ s a -> s{_rjPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rjKey :: Lens' RoomsJoin' (Maybe Key)
rjKey = lens _rjKey (\ s a -> s{_rjKey = a})

-- | The ID of the room.
rjRoomId :: Lens' RoomsJoin' Text
rjRoomId = lens _rjRoomId (\ s a -> s{_rjRoomId = a})

-- | The preferred language to use for strings returned by this method.
rjLanguage :: Lens' RoomsJoin' (Maybe Text)
rjLanguage
  = lens _rjLanguage (\ s a -> s{_rjLanguage = a})

-- | OAuth 2.0 token for the current user.
rjOAuthToken :: Lens' RoomsJoin' (Maybe OAuthToken)
rjOAuthToken
  = lens _rjOAuthToken (\ s a -> s{_rjOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rjFields :: Lens' RoomsJoin' (Maybe Text)
rjFields = lens _rjFields (\ s a -> s{_rjFields = a})

instance GoogleAuth RoomsJoin' where
        authKey = rjKey . _Just
        authToken = rjOAuthToken . _Just

instance GoogleRequest RoomsJoin' where
        type Rs RoomsJoin' = Room
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsJoin'{..}
          = go _rjRoomId _rjLanguage _rjQuotaUser
              (Just _rjPrettyPrint)
              _rjUserIP
              _rjFields
              _rjKey
              _rjOAuthToken
              (Just AltJSON)
              _rjPayload
          where go
                  = clientWithRoute (Proxy :: Proxy RoomsJoinResource)
                      r
                      u
