{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Rooms.Decline
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Decline an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.rooms.decline@.
module Network.Google.API.Games.Rooms.Decline
    (
    -- * REST Resource
      RoomsDeclineAPI

    -- * Creating a Request
    , roomsDecline'
    , RoomsDecline'

    -- * Request Lenses
    , rdQuotaUser
    , rdPrettyPrint
    , rdUserIp
    , rdKey
    , rdRoomId
    , rdLanguage
    , rdOauthToken
    , rdFields
    , rdAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.rooms.decline which the
-- 'RoomsDecline'' request conforms to.
type RoomsDeclineAPI =
     "rooms" :>
       Capture "roomId" Text :>
         "decline" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "language" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Room

-- | Decline an invitation to join a room. For internal use by the Games SDK
-- only. Calling this method directly is unsupported.
--
-- /See:/ 'roomsDecline'' smart constructor.
data RoomsDecline' = RoomsDecline'
    { _rdQuotaUser   :: !(Maybe Text)
    , _rdPrettyPrint :: !Bool
    , _rdUserIp      :: !(Maybe Text)
    , _rdKey         :: !(Maybe Text)
    , _rdRoomId      :: !Text
    , _rdLanguage    :: !(Maybe Text)
    , _rdOauthToken  :: !(Maybe Text)
    , _rdFields      :: !(Maybe Text)
    , _rdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsDecline'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdQuotaUser'
--
-- * 'rdPrettyPrint'
--
-- * 'rdUserIp'
--
-- * 'rdKey'
--
-- * 'rdRoomId'
--
-- * 'rdLanguage'
--
-- * 'rdOauthToken'
--
-- * 'rdFields'
--
-- * 'rdAlt'
roomsDecline'
    :: Text -- ^ 'roomId'
    -> RoomsDecline'
roomsDecline' pRdRoomId_ =
    RoomsDecline'
    { _rdQuotaUser = Nothing
    , _rdPrettyPrint = True
    , _rdUserIp = Nothing
    , _rdKey = Nothing
    , _rdRoomId = pRdRoomId_
    , _rdLanguage = Nothing
    , _rdOauthToken = Nothing
    , _rdFields = Nothing
    , _rdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rdQuotaUser :: Lens' RoomsDecline' (Maybe Text)
rdQuotaUser
  = lens _rdQuotaUser (\ s a -> s{_rdQuotaUser = a})

-- | Returns response with indentations and line breaks.
rdPrettyPrint :: Lens' RoomsDecline' Bool
rdPrettyPrint
  = lens _rdPrettyPrint
      (\ s a -> s{_rdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rdUserIp :: Lens' RoomsDecline' (Maybe Text)
rdUserIp = lens _rdUserIp (\ s a -> s{_rdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rdKey :: Lens' RoomsDecline' (Maybe Text)
rdKey = lens _rdKey (\ s a -> s{_rdKey = a})

-- | The ID of the room.
rdRoomId :: Lens' RoomsDecline' Text
rdRoomId = lens _rdRoomId (\ s a -> s{_rdRoomId = a})

-- | The preferred language to use for strings returned by this method.
rdLanguage :: Lens' RoomsDecline' (Maybe Text)
rdLanguage
  = lens _rdLanguage (\ s a -> s{_rdLanguage = a})

-- | OAuth 2.0 token for the current user.
rdOauthToken :: Lens' RoomsDecline' (Maybe Text)
rdOauthToken
  = lens _rdOauthToken (\ s a -> s{_rdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rdFields :: Lens' RoomsDecline' (Maybe Text)
rdFields = lens _rdFields (\ s a -> s{_rdFields = a})

-- | Data format for the response.
rdAlt :: Lens' RoomsDecline' Alt
rdAlt = lens _rdAlt (\ s a -> s{_rdAlt = a})

instance GoogleRequest RoomsDecline' where
        type Rs RoomsDecline' = Room
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsDecline'{..}
          = go _rdQuotaUser (Just _rdPrettyPrint) _rdUserIp
              _rdKey
              _rdRoomId
              _rdLanguage
              _rdOauthToken
              _rdFields
              (Just _rdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RoomsDeclineAPI) r
                      u
