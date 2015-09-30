{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
    , rlUserIp
    , rlKey
    , rlRoomId
    , rlLanguage
    , rlOauthToken
    , rlFields
    , rlAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsLeave@ which the
-- 'RoomsLeave'' request conforms to.
type RoomsLeaveResource =
     "rooms" :>
       Capture "roomId" Text :>
         "leave" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "language" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Room

-- | Leave a room. For internal use by the Games SDK only. Calling this
-- method directly is unsupported.
--
-- /See:/ 'roomsLeave'' smart constructor.
data RoomsLeave' = RoomsLeave'
    { _rlQuotaUser   :: !(Maybe Text)
    , _rlPrettyPrint :: !Bool
    , _rlUserIp      :: !(Maybe Text)
    , _rlKey         :: !(Maybe Text)
    , _rlRoomId      :: !Text
    , _rlLanguage    :: !(Maybe Text)
    , _rlOauthToken  :: !(Maybe Text)
    , _rlFields      :: !(Maybe Text)
    , _rlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsLeave'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlQuotaUser'
--
-- * 'rlPrettyPrint'
--
-- * 'rlUserIp'
--
-- * 'rlKey'
--
-- * 'rlRoomId'
--
-- * 'rlLanguage'
--
-- * 'rlOauthToken'
--
-- * 'rlFields'
--
-- * 'rlAlt'
roomsLeave'
    :: Text -- ^ 'roomId'
    -> RoomsLeave'
roomsLeave' pRlRoomId_ =
    RoomsLeave'
    { _rlQuotaUser = Nothing
    , _rlPrettyPrint = True
    , _rlUserIp = Nothing
    , _rlKey = Nothing
    , _rlRoomId = pRlRoomId_
    , _rlLanguage = Nothing
    , _rlOauthToken = Nothing
    , _rlFields = Nothing
    , _rlAlt = JSON
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
rlUserIp :: Lens' RoomsLeave' (Maybe Text)
rlUserIp = lens _rlUserIp (\ s a -> s{_rlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlKey :: Lens' RoomsLeave' (Maybe Text)
rlKey = lens _rlKey (\ s a -> s{_rlKey = a})

-- | The ID of the room.
rlRoomId :: Lens' RoomsLeave' Text
rlRoomId = lens _rlRoomId (\ s a -> s{_rlRoomId = a})

-- | The preferred language to use for strings returned by this method.
rlLanguage :: Lens' RoomsLeave' (Maybe Text)
rlLanguage
  = lens _rlLanguage (\ s a -> s{_rlLanguage = a})

-- | OAuth 2.0 token for the current user.
rlOauthToken :: Lens' RoomsLeave' (Maybe Text)
rlOauthToken
  = lens _rlOauthToken (\ s a -> s{_rlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlFields :: Lens' RoomsLeave' (Maybe Text)
rlFields = lens _rlFields (\ s a -> s{_rlFields = a})

-- | Data format for the response.
rlAlt :: Lens' RoomsLeave' Alt
rlAlt = lens _rlAlt (\ s a -> s{_rlAlt = a})

instance GoogleRequest RoomsLeave' where
        type Rs RoomsLeave' = Room
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsLeave'{..}
          = go _rlQuotaUser (Just _rlPrettyPrint) _rlUserIp
              _rlKey
              _rlRoomId
              _rlLanguage
              _rlOauthToken
              _rlFields
              (Just _rlAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RoomsLeaveResource)
                      r
                      u
