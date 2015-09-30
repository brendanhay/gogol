{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.Rooms.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns invitations to join rooms.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesRoomsList@.
module Games.Rooms.List
    (
    -- * REST Resource
      RoomsListAPI

    -- * Creating a Request
    , roomsList
    , RoomsList

    -- * Request Lenses
    , rlQuotaUser
    , rlPrettyPrint
    , rlUserIp
    , rlKey
    , rlLanguage
    , rlPageToken
    , rlOauthToken
    , rlMaxResults
    , rlFields
    , rlAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsList@ which the
-- 'RoomsList' request conforms to.
type RoomsListAPI =
     "rooms" :>
       QueryParam "language" Text :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Int32 :> Get '[JSON] RoomList

-- | Returns invitations to join rooms.
--
-- /See:/ 'roomsList' smart constructor.
data RoomsList = RoomsList
    { _rlQuotaUser   :: !(Maybe Text)
    , _rlPrettyPrint :: !Bool
    , _rlUserIp      :: !(Maybe Text)
    , _rlKey         :: !(Maybe Text)
    , _rlLanguage    :: !(Maybe Text)
    , _rlPageToken   :: !(Maybe Text)
    , _rlOauthToken  :: !(Maybe Text)
    , _rlMaxResults  :: !(Maybe Int32)
    , _rlFields      :: !(Maybe Text)
    , _rlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsList'' with the minimum fields required to make a request.
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
-- * 'rlLanguage'
--
-- * 'rlPageToken'
--
-- * 'rlOauthToken'
--
-- * 'rlMaxResults'
--
-- * 'rlFields'
--
-- * 'rlAlt'
roomsList
    :: RoomsList
roomsList =
    RoomsList
    { _rlQuotaUser = Nothing
    , _rlPrettyPrint = True
    , _rlUserIp = Nothing
    , _rlKey = Nothing
    , _rlLanguage = Nothing
    , _rlPageToken = Nothing
    , _rlOauthToken = Nothing
    , _rlMaxResults = Nothing
    , _rlFields = Nothing
    , _rlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlQuotaUser :: Lens' RoomsList' (Maybe Text)
rlQuotaUser
  = lens _rlQuotaUser (\ s a -> s{_rlQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlPrettyPrint :: Lens' RoomsList' Bool
rlPrettyPrint
  = lens _rlPrettyPrint
      (\ s a -> s{_rlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlUserIp :: Lens' RoomsList' (Maybe Text)
rlUserIp = lens _rlUserIp (\ s a -> s{_rlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlKey :: Lens' RoomsList' (Maybe Text)
rlKey = lens _rlKey (\ s a -> s{_rlKey = a})

-- | The preferred language to use for strings returned by this method.
rlLanguage :: Lens' RoomsList' (Maybe Text)
rlLanguage
  = lens _rlLanguage (\ s a -> s{_rlLanguage = a})

-- | The token returned by the previous request.
rlPageToken :: Lens' RoomsList' (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | OAuth 2.0 token for the current user.
rlOauthToken :: Lens' RoomsList' (Maybe Text)
rlOauthToken
  = lens _rlOauthToken (\ s a -> s{_rlOauthToken = a})

-- | The maximum number of rooms to return in the response, used for paging.
-- For any response, the actual number of rooms to return may be less than
-- the specified maxResults.
rlMaxResults :: Lens' RoomsList' (Maybe Int32)
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rlFields :: Lens' RoomsList' (Maybe Text)
rlFields = lens _rlFields (\ s a -> s{_rlFields = a})

-- | Data format for the response.
rlAlt :: Lens' RoomsList' Text
rlAlt = lens _rlAlt (\ s a -> s{_rlAlt = a})

instance GoogleRequest RoomsList' where
        type Rs RoomsList' = RoomList
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsList{..}
          = go _rlQuotaUser _rlPrettyPrint _rlUserIp _rlKey
              _rlLanguage
              _rlPageToken
              _rlOauthToken
              _rlMaxResults
              _rlFields
              _rlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy RoomsListAPI) r u
