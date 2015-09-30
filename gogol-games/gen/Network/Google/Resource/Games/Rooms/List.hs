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
module Network.Google.Resource.Games.Rooms.List
    (
    -- * REST Resource
      RoomsListResource

    -- * Creating a Request
    , roomsList'
    , RoomsList'

    -- * Request Lenses
    , rQuotaUser
    , rPrettyPrint
    , rUserIp
    , rKey
    , rLanguage
    , rPageToken
    , rOauthToken
    , rMaxResults
    , rFields
    , rAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesRoomsList@ which the
-- 'RoomsList'' request conforms to.
type RoomsListResource =
     "rooms" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "language" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "maxResults" Int32 :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] RoomList

-- | Returns invitations to join rooms.
--
-- /See:/ 'roomsList'' smart constructor.
data RoomsList' = RoomsList'
    { _rQuotaUser   :: !(Maybe Text)
    , _rPrettyPrint :: !Bool
    , _rUserIp      :: !(Maybe Text)
    , _rKey         :: !(Maybe Text)
    , _rLanguage    :: !(Maybe Text)
    , _rPageToken   :: !(Maybe Text)
    , _rOauthToken  :: !(Maybe Text)
    , _rMaxResults  :: !(Maybe Int32)
    , _rFields      :: !(Maybe Text)
    , _rAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RoomsList'' with the minimum fields required to make a request.
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
-- * 'rLanguage'
--
-- * 'rPageToken'
--
-- * 'rOauthToken'
--
-- * 'rMaxResults'
--
-- * 'rFields'
--
-- * 'rAlt'
roomsList'
    :: RoomsList'
roomsList' =
    RoomsList'
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rUserIp = Nothing
    , _rKey = Nothing
    , _rLanguage = Nothing
    , _rPageToken = Nothing
    , _rOauthToken = Nothing
    , _rMaxResults = Nothing
    , _rFields = Nothing
    , _rAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' RoomsList' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' RoomsList' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIp :: Lens' RoomsList' (Maybe Text)
rUserIp = lens _rUserIp (\ s a -> s{_rUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' RoomsList' (Maybe Text)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | The preferred language to use for strings returned by this method.
rLanguage :: Lens' RoomsList' (Maybe Text)
rLanguage
  = lens _rLanguage (\ s a -> s{_rLanguage = a})

-- | The token returned by the previous request.
rPageToken :: Lens' RoomsList' (Maybe Text)
rPageToken
  = lens _rPageToken (\ s a -> s{_rPageToken = a})

-- | OAuth 2.0 token for the current user.
rOauthToken :: Lens' RoomsList' (Maybe Text)
rOauthToken
  = lens _rOauthToken (\ s a -> s{_rOauthToken = a})

-- | The maximum number of rooms to return in the response, used for paging.
-- For any response, the actual number of rooms to return may be less than
-- the specified maxResults.
rMaxResults :: Lens' RoomsList' (Maybe Int32)
rMaxResults
  = lens _rMaxResults (\ s a -> s{_rMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' RoomsList' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

-- | Data format for the response.
rAlt :: Lens' RoomsList' Alt
rAlt = lens _rAlt (\ s a -> s{_rAlt = a})

instance GoogleRequest RoomsList' where
        type Rs RoomsList' = RoomList
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u RoomsList'{..}
          = go _rQuotaUser (Just _rPrettyPrint) _rUserIp _rKey
              _rLanguage
              _rPageToken
              _rOauthToken
              _rMaxResults
              _rFields
              (Just _rAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy RoomsListResource)
                      r
                      u
