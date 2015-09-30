{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.Rooms.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the data for a room.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesRoomsGet@.
module Games.Rooms.Get
    (
    -- * REST Resource
      RoomsGetAPI

    -- * Creating a Request
    , roomsGet
    , RoomsGet

    -- * Request Lenses
    , rgQuotaUser
    , rgPrettyPrint
    , rgUserIp
    , rgKey
    , rgRoomId
    , rgLanguage
    , rgOauthToken
    , rgFields
    , rgAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsGet@ which the
-- 'RoomsGet' request conforms to.
type RoomsGetAPI =
     "rooms" :>
       Capture "roomId" Text :>
         QueryParam "language" Text :> Get '[JSON] Room

-- | Get the data for a room.
--
-- /See:/ 'roomsGet' smart constructor.
data RoomsGet = RoomsGet
    { _rgQuotaUser   :: !(Maybe Text)
    , _rgPrettyPrint :: !Bool
    , _rgUserIp      :: !(Maybe Text)
    , _rgKey         :: !(Maybe Text)
    , _rgRoomId      :: !Text
    , _rgLanguage    :: !(Maybe Text)
    , _rgOauthToken  :: !(Maybe Text)
    , _rgFields      :: !(Maybe Text)
    , _rgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgUserIp'
--
-- * 'rgKey'
--
-- * 'rgRoomId'
--
-- * 'rgLanguage'
--
-- * 'rgOauthToken'
--
-- * 'rgFields'
--
-- * 'rgAlt'
roomsGet
    :: Text -- ^ 'roomId'
    -> RoomsGet
roomsGet pRgRoomId_ =
    RoomsGet
    { _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgUserIp = Nothing
    , _rgKey = Nothing
    , _rgRoomId = pRgRoomId_
    , _rgLanguage = Nothing
    , _rgOauthToken = Nothing
    , _rgFields = Nothing
    , _rgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgQuotaUser :: Lens' RoomsGet' (Maybe Text)
rgQuotaUser
  = lens _rgQuotaUser (\ s a -> s{_rgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgPrettyPrint :: Lens' RoomsGet' Bool
rgPrettyPrint
  = lens _rgPrettyPrint
      (\ s a -> s{_rgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgUserIp :: Lens' RoomsGet' (Maybe Text)
rgUserIp = lens _rgUserIp (\ s a -> s{_rgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' RoomsGet' (Maybe Text)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | The ID of the room.
rgRoomId :: Lens' RoomsGet' Text
rgRoomId = lens _rgRoomId (\ s a -> s{_rgRoomId = a})

-- | The preferred language to use for strings returned by this method.
rgLanguage :: Lens' RoomsGet' (Maybe Text)
rgLanguage
  = lens _rgLanguage (\ s a -> s{_rgLanguage = a})

-- | OAuth 2.0 token for the current user.
rgOauthToken :: Lens' RoomsGet' (Maybe Text)
rgOauthToken
  = lens _rgOauthToken (\ s a -> s{_rgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' RoomsGet' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

-- | Data format for the response.
rgAlt :: Lens' RoomsGet' Text
rgAlt = lens _rgAlt (\ s a -> s{_rgAlt = a})

instance GoogleRequest RoomsGet' where
        type Rs RoomsGet' = Room
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsGet{..}
          = go _rgQuotaUser _rgPrettyPrint _rgUserIp _rgKey
              _rgRoomId
              _rgLanguage
              _rgOauthToken
              _rgFields
              _rgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RoomsGetAPI) r u
