{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Games.Players.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the collection of players for the currently authenticated user.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @games.players.list@.
module Network.Google.API.Games.Players.List
    (
    -- * REST Resource
      PlayersListAPI

    -- * Creating a Request
    , playersList'
    , PlayersList'

    -- * Request Lenses
    , plQuotaUser
    , plPrettyPrint
    , plUserIp
    , plCollection
    , plKey
    , plLanguage
    , plPageToken
    , plOauthToken
    , plMaxResults
    , plFields
    , plAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for games.players.list which the
-- 'PlayersList'' request conforms to.
type PlayersListAPI =
     "players" :>
       "me" :>
         "players" :>
           Capture "collection" PlayersList'Collection :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "language" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Nat :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] PlayerListResponse

-- | Get the collection of players for the currently authenticated user.
--
-- /See:/ 'playersList'' smart constructor.
data PlayersList' = PlayersList'
    { _plQuotaUser   :: !(Maybe Text)
    , _plPrettyPrint :: !Bool
    , _plUserIp      :: !(Maybe Text)
    , _plCollection  :: !PlayersList'Collection
    , _plKey         :: !(Maybe Text)
    , _plLanguage    :: !(Maybe Text)
    , _plPageToken   :: !(Maybe Text)
    , _plOauthToken  :: !(Maybe Text)
    , _plMaxResults  :: !(Maybe Nat)
    , _plFields      :: !(Maybe Text)
    , _plAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plQuotaUser'
--
-- * 'plPrettyPrint'
--
-- * 'plUserIp'
--
-- * 'plCollection'
--
-- * 'plKey'
--
-- * 'plLanguage'
--
-- * 'plPageToken'
--
-- * 'plOauthToken'
--
-- * 'plMaxResults'
--
-- * 'plFields'
--
-- * 'plAlt'
playersList'
    :: PlayersList'Collection -- ^ 'collection'
    -> PlayersList'
playersList' pPlCollection_ =
    PlayersList'
    { _plQuotaUser = Nothing
    , _plPrettyPrint = True
    , _plUserIp = Nothing
    , _plCollection = pPlCollection_
    , _plKey = Nothing
    , _plLanguage = Nothing
    , _plPageToken = Nothing
    , _plOauthToken = Nothing
    , _plMaxResults = Nothing
    , _plFields = Nothing
    , _plAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plQuotaUser :: Lens' PlayersList' (Maybe Text)
plQuotaUser
  = lens _plQuotaUser (\ s a -> s{_plQuotaUser = a})

-- | Returns response with indentations and line breaks.
plPrettyPrint :: Lens' PlayersList' Bool
plPrettyPrint
  = lens _plPrettyPrint
      (\ s a -> s{_plPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plUserIp :: Lens' PlayersList' (Maybe Text)
plUserIp = lens _plUserIp (\ s a -> s{_plUserIp = a})

-- | Collection of players being retrieved
plCollection :: Lens' PlayersList' PlayersList'Collection
plCollection
  = lens _plCollection (\ s a -> s{_plCollection = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' PlayersList' (Maybe Text)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | The preferred language to use for strings returned by this method.
plLanguage :: Lens' PlayersList' (Maybe Text)
plLanguage
  = lens _plLanguage (\ s a -> s{_plLanguage = a})

-- | The token returned by the previous request.
plPageToken :: Lens' PlayersList' (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | OAuth 2.0 token for the current user.
plOauthToken :: Lens' PlayersList' (Maybe Text)
plOauthToken
  = lens _plOauthToken (\ s a -> s{_plOauthToken = a})

-- | The maximum number of player resources to return in the response, used
-- for paging. For any response, the actual number of player resources
-- returned may be less than the specified maxResults.
plMaxResults :: Lens' PlayersList' (Maybe Natural)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})
      . mapping _Nat

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' PlayersList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

-- | Data format for the response.
plAlt :: Lens' PlayersList' Alt
plAlt = lens _plAlt (\ s a -> s{_plAlt = a})

instance GoogleRequest PlayersList' where
        type Rs PlayersList' = PlayerListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u PlayersList'{..}
          = go _plQuotaUser (Just _plPrettyPrint) _plUserIp
              _plCollection
              _plKey
              _plLanguage
              _plPageToken
              _plOauthToken
              _plMaxResults
              _plFields
              (Just _plAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PlayersListAPI) r u
