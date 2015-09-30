{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Games.Rooms.Leave
    (
    -- * REST Resource
      RoomsLeaveAPI

    -- * Creating a Request
    , roomsLeave
    , RoomsLeave

    -- * Request Lenses
    , rllQuotaUser
    , rllPrettyPrint
    , rllUserIp
    , rllKey
    , rllRoomId
    , rllLanguage
    , rllOauthToken
    , rllFields
    , rllAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsLeave@ which the
-- 'RoomsLeave' request conforms to.
type RoomsLeaveAPI =
     "rooms" :>
       Capture "roomId" Text :>
         "leave" :>
           QueryParam "language" Text :> Post '[JSON] Room

-- | Leave a room. For internal use by the Games SDK only. Calling this
-- method directly is unsupported.
--
-- /See:/ 'roomsLeave' smart constructor.
data RoomsLeave = RoomsLeave
    { _rllQuotaUser   :: !(Maybe Text)
    , _rllPrettyPrint :: !Bool
    , _rllUserIp      :: !(Maybe Text)
    , _rllKey         :: !(Maybe Text)
    , _rllRoomId      :: !Text
    , _rllLanguage    :: !(Maybe Text)
    , _rllOauthToken  :: !(Maybe Text)
    , _rllFields      :: !(Maybe Text)
    , _rllAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsLeave'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rllQuotaUser'
--
-- * 'rllPrettyPrint'
--
-- * 'rllUserIp'
--
-- * 'rllKey'
--
-- * 'rllRoomId'
--
-- * 'rllLanguage'
--
-- * 'rllOauthToken'
--
-- * 'rllFields'
--
-- * 'rllAlt'
roomsLeave
    :: Text -- ^ 'roomId'
    -> RoomsLeave
roomsLeave pRllRoomId_ =
    RoomsLeave
    { _rllQuotaUser = Nothing
    , _rllPrettyPrint = True
    , _rllUserIp = Nothing
    , _rllKey = Nothing
    , _rllRoomId = pRllRoomId_
    , _rllLanguage = Nothing
    , _rllOauthToken = Nothing
    , _rllFields = Nothing
    , _rllAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rllQuotaUser :: Lens' RoomsLeave' (Maybe Text)
rllQuotaUser
  = lens _rllQuotaUser (\ s a -> s{_rllQuotaUser = a})

-- | Returns response with indentations and line breaks.
rllPrettyPrint :: Lens' RoomsLeave' Bool
rllPrettyPrint
  = lens _rllPrettyPrint
      (\ s a -> s{_rllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rllUserIp :: Lens' RoomsLeave' (Maybe Text)
rllUserIp
  = lens _rllUserIp (\ s a -> s{_rllUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rllKey :: Lens' RoomsLeave' (Maybe Text)
rllKey = lens _rllKey (\ s a -> s{_rllKey = a})

-- | The ID of the room.
rllRoomId :: Lens' RoomsLeave' Text
rllRoomId
  = lens _rllRoomId (\ s a -> s{_rllRoomId = a})

-- | The preferred language to use for strings returned by this method.
rllLanguage :: Lens' RoomsLeave' (Maybe Text)
rllLanguage
  = lens _rllLanguage (\ s a -> s{_rllLanguage = a})

-- | OAuth 2.0 token for the current user.
rllOauthToken :: Lens' RoomsLeave' (Maybe Text)
rllOauthToken
  = lens _rllOauthToken
      (\ s a -> s{_rllOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rllFields :: Lens' RoomsLeave' (Maybe Text)
rllFields
  = lens _rllFields (\ s a -> s{_rllFields = a})

-- | Data format for the response.
rllAlt :: Lens' RoomsLeave' Text
rllAlt = lens _rllAlt (\ s a -> s{_rllAlt = a})

instance GoogleRequest RoomsLeave' where
        type Rs RoomsLeave' = Room
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsLeave{..}
          = go _rllQuotaUser _rllPrettyPrint _rllUserIp _rllKey
              _rllRoomId
              _rllLanguage
              _rllOauthToken
              _rllFields
              _rllAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RoomsLeaveAPI) r u
