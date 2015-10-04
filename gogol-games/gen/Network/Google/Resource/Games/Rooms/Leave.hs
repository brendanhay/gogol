{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.Rooms.Leave
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Leave a room. For internal use by the Games SDK only. Calling this
-- method directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesRoomsLeave@.
module Network.Google.Resource.Games.Rooms.Leave
    (
    -- * REST Resource
      RoomsLeaveResource

    -- * Creating a Request
    , roomsLeave'
    , RoomsLeave'

    -- * Request Lenses
    , rlQuotaUser
    , rlPrettyPrint
    , rlUserIP
    , rlPayload
    , rlKey
    , rlRoomId
    , rlLanguage
    , rlOAuthToken
    , rlFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsLeave@ which the
-- 'RoomsLeave'' request conforms to.
type RoomsLeaveResource =
     "rooms" :>
       Capture "roomId" Text :>
         "leave" :>
           QueryParam "language" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[OctetStream] RoomLeaveRequest :>
                             Post '[JSON] Room

-- | Leave a room. For internal use by the Games SDK only. Calling this
-- method directly is unsupported.
--
-- /See:/ 'roomsLeave'' smart constructor.
data RoomsLeave' = RoomsLeave'
    { _rlQuotaUser   :: !(Maybe Text)
    , _rlPrettyPrint :: !Bool
    , _rlUserIP      :: !(Maybe Text)
    , _rlPayload     :: !RoomLeaveRequest
    , _rlKey         :: !(Maybe Key)
    , _rlRoomId      :: !Text
    , _rlLanguage    :: !(Maybe Text)
    , _rlOAuthToken  :: !(Maybe OAuthToken)
    , _rlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsLeave'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlQuotaUser'
--
-- * 'rlPrettyPrint'
--
-- * 'rlUserIP'
--
-- * 'rlPayload'
--
-- * 'rlKey'
--
-- * 'rlRoomId'
--
-- * 'rlLanguage'
--
-- * 'rlOAuthToken'
--
-- * 'rlFields'
roomsLeave'
    :: RoomLeaveRequest -- ^ 'payload'
    -> Text -- ^ 'roomId'
    -> RoomsLeave'
roomsLeave' pRlPayload_ pRlRoomId_ =
    RoomsLeave'
    { _rlQuotaUser = Nothing
    , _rlPrettyPrint = True
    , _rlUserIP = Nothing
    , _rlPayload = pRlPayload_
    , _rlKey = Nothing
    , _rlRoomId = pRlRoomId_
    , _rlLanguage = Nothing
    , _rlOAuthToken = Nothing
    , _rlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlQuotaUser :: Lens' RoomsLeave' (Maybe Text)
rlQuotaUser
  = lens _rlQuotaUser (\ s a -> s{_rlQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlPrettyPrint :: Lens' RoomsLeave' Bool
rlPrettyPrint
  = lens _rlPrettyPrint
      (\ s a -> s{_rlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlUserIP :: Lens' RoomsLeave' (Maybe Text)
rlUserIP = lens _rlUserIP (\ s a -> s{_rlUserIP = a})

-- | Multipart request metadata.
rlPayload :: Lens' RoomsLeave' RoomLeaveRequest
rlPayload
  = lens _rlPayload (\ s a -> s{_rlPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlKey :: Lens' RoomsLeave' (Maybe Key)
rlKey = lens _rlKey (\ s a -> s{_rlKey = a})

-- | The ID of the room.
rlRoomId :: Lens' RoomsLeave' Text
rlRoomId = lens _rlRoomId (\ s a -> s{_rlRoomId = a})

-- | The preferred language to use for strings returned by this method.
rlLanguage :: Lens' RoomsLeave' (Maybe Text)
rlLanguage
  = lens _rlLanguage (\ s a -> s{_rlLanguage = a})

-- | OAuth 2.0 token for the current user.
rlOAuthToken :: Lens' RoomsLeave' (Maybe OAuthToken)
rlOAuthToken
  = lens _rlOAuthToken (\ s a -> s{_rlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlFields :: Lens' RoomsLeave' (Maybe Text)
rlFields = lens _rlFields (\ s a -> s{_rlFields = a})

instance GoogleAuth RoomsLeave' where
        authKey = rlKey . _Just
        authToken = rlOAuthToken . _Just

instance GoogleRequest RoomsLeave' where
        type Rs RoomsLeave' = Room
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsLeave'{..}
          = go _rlRoomId _rlLanguage _rlQuotaUser
              (Just _rlPrettyPrint)
              _rlUserIP
              _rlFields
              _rlKey
              _rlOAuthToken
              (Just AltJSON)
              _rlPayload
          where go
                  = clientWithRoute (Proxy :: Proxy RoomsLeaveResource)
                      r
                      u
