{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Rooms.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns invitations to join rooms.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.rooms.list@.
module Network.Google.API.Games.Rooms.List
    (
    -- * REST Resource
      RoomsListAPI

    -- * Creating a Request
    , roomsList'
    , RoomsList'

    -- * Request Lenses
    , rooQuotaUser
    , rooPrettyPrint
    , rooUserIp
    , rooKey
    , rooLanguage
    , rooPageToken
    , rooOauthToken
    , rooMaxResults
    , rooFields
    , rooAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.rooms.list which the
-- 'RoomsList'' request conforms to.
type RoomsListAPI =
     "rooms" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "language" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "maxResults" Nat :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] RoomList

-- | Returns invitations to join rooms.
--
-- /See:/ 'roomsList'' smart constructor.
data RoomsList' = RoomsList'
    { _rooQuotaUser   :: !(Maybe Text)
    , _rooPrettyPrint :: !Bool
    , _rooUserIp      :: !(Maybe Text)
    , _rooKey         :: !(Maybe Text)
    , _rooLanguage    :: !(Maybe Text)
    , _rooPageToken   :: !(Maybe Text)
    , _rooOauthToken  :: !(Maybe Text)
    , _rooMaxResults  :: !(Maybe Nat)
    , _rooFields      :: !(Maybe Text)
    , _rooAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rooQuotaUser'
--
-- * 'rooPrettyPrint'
--
-- * 'rooUserIp'
--
-- * 'rooKey'
--
-- * 'rooLanguage'
--
-- * 'rooPageToken'
--
-- * 'rooOauthToken'
--
-- * 'rooMaxResults'
--
-- * 'rooFields'
--
-- * 'rooAlt'
roomsList'
    :: RoomsList'
roomsList' =
    RoomsList'
    { _rooQuotaUser = Nothing
    , _rooPrettyPrint = True
    , _rooUserIp = Nothing
    , _rooKey = Nothing
    , _rooLanguage = Nothing
    , _rooPageToken = Nothing
    , _rooOauthToken = Nothing
    , _rooMaxResults = Nothing
    , _rooFields = Nothing
    , _rooAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rooQuotaUser :: Lens' RoomsList' (Maybe Text)
rooQuotaUser
  = lens _rooQuotaUser (\ s a -> s{_rooQuotaUser = a})

-- | Returns response with indentations and line breaks.
rooPrettyPrint :: Lens' RoomsList' Bool
rooPrettyPrint
  = lens _rooPrettyPrint
      (\ s a -> s{_rooPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rooUserIp :: Lens' RoomsList' (Maybe Text)
rooUserIp
  = lens _rooUserIp (\ s a -> s{_rooUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rooKey :: Lens' RoomsList' (Maybe Text)
rooKey = lens _rooKey (\ s a -> s{_rooKey = a})

-- | The preferred language to use for strings returned by this method.
rooLanguage :: Lens' RoomsList' (Maybe Text)
rooLanguage
  = lens _rooLanguage (\ s a -> s{_rooLanguage = a})

-- | The token returned by the previous request.
rooPageToken :: Lens' RoomsList' (Maybe Text)
rooPageToken
  = lens _rooPageToken (\ s a -> s{_rooPageToken = a})

-- | OAuth 2.0 token for the current user.
rooOauthToken :: Lens' RoomsList' (Maybe Text)
rooOauthToken
  = lens _rooOauthToken
      (\ s a -> s{_rooOauthToken = a})

-- | The maximum number of rooms to return in the response, used for paging.
-- For any response, the actual number of rooms to return may be less than
-- the specified maxResults.
rooMaxResults :: Lens' RoomsList' (Maybe Natural)
rooMaxResults
  = lens _rooMaxResults
      (\ s a -> s{_rooMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
rooFields :: Lens' RoomsList' (Maybe Text)
rooFields
  = lens _rooFields (\ s a -> s{_rooFields = a})

-- | Data format for the response.
rooAlt :: Lens' RoomsList' Alt
rooAlt = lens _rooAlt (\ s a -> s{_rooAlt = a})

instance GoogleRequest RoomsList' where
        type Rs RoomsList' = RoomList
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsList'{..}
          = go _rooQuotaUser (Just _rooPrettyPrint) _rooUserIp
              _rooKey
              _rooLanguage
              _rooPageToken
              _rooOauthToken
              _rooMaxResults
              _rooFields
              (Just _rooAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RoomsListAPI) r u
