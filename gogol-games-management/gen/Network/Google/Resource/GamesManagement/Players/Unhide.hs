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
-- Module      : Network.Google.Resource.GamesManagement.Players.Unhide
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Unhide the given player\'s leaderboard scores from the given
-- application. This method is only available to user accounts for your
-- developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementPlayersUnhide@.
module Network.Google.Resource.GamesManagement.Players.Unhide
    (
    -- * REST Resource
      PlayersUnhideResource

    -- * Creating a Request
    , playersUnhide'
    , PlayersUnhide'

    -- * Request Lenses
    , puQuotaUser
    , puPrettyPrint
    , puUserIP
    , puApplicationId
    , puKey
    , puOAuthToken
    , puPlayerId
    , puFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementPlayersUnhide@ which the
-- 'PlayersUnhide'' request conforms to.
type PlayersUnhideResource =
     "applications" :>
       Capture "applicationId" Text :>
         "players" :>
           "hidden" :>
             Capture "playerId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Unhide the given player\'s leaderboard scores from the given
-- application. This method is only available to user accounts for your
-- developer console.
--
-- /See:/ 'playersUnhide'' smart constructor.
data PlayersUnhide' = PlayersUnhide'
    { _puQuotaUser     :: !(Maybe Text)
    , _puPrettyPrint   :: !Bool
    , _puUserIP        :: !(Maybe Text)
    , _puApplicationId :: !Text
    , _puKey           :: !(Maybe AuthKey)
    , _puOAuthToken    :: !(Maybe OAuthToken)
    , _puPlayerId      :: !Text
    , _puFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlayersUnhide'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puQuotaUser'
--
-- * 'puPrettyPrint'
--
-- * 'puUserIP'
--
-- * 'puApplicationId'
--
-- * 'puKey'
--
-- * 'puOAuthToken'
--
-- * 'puPlayerId'
--
-- * 'puFields'
playersUnhide'
    :: Text -- ^ 'applicationId'
    -> Text -- ^ 'playerId'
    -> PlayersUnhide'
playersUnhide' pPuApplicationId_ pPuPlayerId_ =
    PlayersUnhide'
    { _puQuotaUser = Nothing
    , _puPrettyPrint = True
    , _puUserIP = Nothing
    , _puApplicationId = pPuApplicationId_
    , _puKey = Nothing
    , _puOAuthToken = Nothing
    , _puPlayerId = pPuPlayerId_
    , _puFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
puQuotaUser :: Lens' PlayersUnhide' (Maybe Text)
puQuotaUser
  = lens _puQuotaUser (\ s a -> s{_puQuotaUser = a})

-- | Returns response with indentations and line breaks.
puPrettyPrint :: Lens' PlayersUnhide' Bool
puPrettyPrint
  = lens _puPrettyPrint
      (\ s a -> s{_puPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
puUserIP :: Lens' PlayersUnhide' (Maybe Text)
puUserIP = lens _puUserIP (\ s a -> s{_puUserIP = a})

-- | The application ID from the Google Play developer console.
puApplicationId :: Lens' PlayersUnhide' Text
puApplicationId
  = lens _puApplicationId
      (\ s a -> s{_puApplicationId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puKey :: Lens' PlayersUnhide' (Maybe AuthKey)
puKey = lens _puKey (\ s a -> s{_puKey = a})

-- | OAuth 2.0 token for the current user.
puOAuthToken :: Lens' PlayersUnhide' (Maybe OAuthToken)
puOAuthToken
  = lens _puOAuthToken (\ s a -> s{_puOAuthToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
puPlayerId :: Lens' PlayersUnhide' Text
puPlayerId
  = lens _puPlayerId (\ s a -> s{_puPlayerId = a})

-- | Selector specifying which fields to include in a partial response.
puFields :: Lens' PlayersUnhide' (Maybe Text)
puFields = lens _puFields (\ s a -> s{_puFields = a})

instance GoogleAuth PlayersUnhide' where
        authKey = puKey . _Just
        authToken = puOAuthToken . _Just

instance GoogleRequest PlayersUnhide' where
        type Rs PlayersUnhide' = ()
        request = requestWithRoute defReq gamesManagementURL
        requestWithRoute r u PlayersUnhide'{..}
          = go _puApplicationId _puPlayerId _puQuotaUser
              (Just _puPrettyPrint)
              _puUserIP
              _puFields
              _puKey
              _puOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlayersUnhideResource)
                      r
                      u
