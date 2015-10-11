{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Games.Players.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the collection of players for the currently authenticated user.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesPlayersList@.
module Network.Google.Resource.Games.Players.List
    (
    -- * REST Resource
      PlayersListResource

    -- * Creating a Request
    , playersList'
    , PlayersList'

    -- * Request Lenses
    , plQuotaUser
    , plPrettyPrint
    , plUserIP
    , plCollection
    , plKey
    , plLanguage
    , plPageToken
    , plOAuthToken
    , plMaxResults
    , plFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesPlayersList@ method which the
-- 'PlayersList'' request conforms to.
type PlayersListResource =
     "players" :>
       "me" :>
         "players" :>
           Capture "collection" PlayersListCollection :>
             QueryParam "language" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             Header "Authorization" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] PlayerListResponse

-- | Get the collection of players for the currently authenticated user.
--
-- /See:/ 'playersList'' smart constructor.
data PlayersList' = PlayersList'
    { _plQuotaUser   :: !(Maybe Text)
    , _plPrettyPrint :: !Bool
    , _plUserIP      :: !(Maybe Text)
    , _plCollection  :: !PlayersListCollection
    , _plKey         :: !(Maybe AuthKey)
    , _plLanguage    :: !(Maybe Text)
    , _plPageToken   :: !(Maybe Text)
    , _plOAuthToken  :: !(Maybe OAuthToken)
    , _plMaxResults  :: !(Maybe Int32)
    , _plFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plQuotaUser'
--
-- * 'plPrettyPrint'
--
-- * 'plUserIP'
--
-- * 'plCollection'
--
-- * 'plKey'
--
-- * 'plLanguage'
--
-- * 'plPageToken'
--
-- * 'plOAuthToken'
--
-- * 'plMaxResults'
--
-- * 'plFields'
playersList'
    :: PlayersListCollection -- ^ 'collection'
    -> PlayersList'
playersList' pPlCollection_ =
    PlayersList'
    { _plQuotaUser = Nothing
    , _plPrettyPrint = True
    , _plUserIP = Nothing
    , _plCollection = pPlCollection_
    , _plKey = Nothing
    , _plLanguage = Nothing
    , _plPageToken = Nothing
    , _plOAuthToken = Nothing
    , _plMaxResults = Nothing
    , _plFields = Nothing
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
plUserIP :: Lens' PlayersList' (Maybe Text)
plUserIP = lens _plUserIP (\ s a -> s{_plUserIP = a})

-- | Collection of players being retrieved
plCollection :: Lens' PlayersList' PlayersListCollection
plCollection
  = lens _plCollection (\ s a -> s{_plCollection = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' PlayersList' (Maybe AuthKey)
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
plOAuthToken :: Lens' PlayersList' (Maybe OAuthToken)
plOAuthToken
  = lens _plOAuthToken (\ s a -> s{_plOAuthToken = a})

-- | The maximum number of player resources to return in the response, used
-- for paging. For any response, the actual number of player resources
-- returned may be less than the specified maxResults.
plMaxResults :: Lens' PlayersList' (Maybe Int32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' PlayersList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

instance GoogleAuth PlayersList' where
        _AuthKey = plKey . _Just
        _AuthToken = plOAuthToken . _Just

instance GoogleRequest PlayersList' where
        type Rs PlayersList' = PlayerListResponse
        request = requestWith gamesRequest
        requestWith rq PlayersList'{..}
          = go _plCollection _plLanguage _plPageToken
              _plMaxResults
              _plQuotaUser
              (Just _plPrettyPrint)
              _plUserIP
              _plFields
              _plKey
              _plOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy PlayersListResource) rq
