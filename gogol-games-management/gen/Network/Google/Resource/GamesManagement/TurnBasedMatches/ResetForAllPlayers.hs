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
-- Module      : Network.Google.Resource.GamesManagement.TurnBasedMatches.ResetForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes turn-based matches where the only match participants are from
-- whitelisted tester accounts for your application. This method is only
-- available to user accounts for your developer console.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementTurnBasedMatchesResetForAllPlayers@.
module Network.Google.Resource.GamesManagement.TurnBasedMatches.ResetForAllPlayers
    (
    -- * REST Resource
      TurnBasedMatchesResetForAllPlayersResource

    -- * Creating a Request
    , turnBasedMatchesResetForAllPlayers'
    , TurnBasedMatchesResetForAllPlayers'

    -- * Request Lenses
    , tbmrfapQuotaUser
    , tbmrfapPrettyPrint
    , tbmrfapUserIP
    , tbmrfapKey
    , tbmrfapOAuthToken
    , tbmrfapFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementTurnBasedMatchesResetForAllPlayers@ method which the
-- 'TurnBasedMatchesResetForAllPlayers'' request conforms to.
type TurnBasedMatchesResetForAllPlayersResource =
     "turnbasedmatches" :>
       "resetForAllPlayers" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Deletes turn-based matches where the only match participants are from
-- whitelisted tester accounts for your application. This method is only
-- available to user accounts for your developer console.
--
-- /See:/ 'turnBasedMatchesResetForAllPlayers'' smart constructor.
data TurnBasedMatchesResetForAllPlayers' = TurnBasedMatchesResetForAllPlayers'
    { _tbmrfapQuotaUser   :: !(Maybe Text)
    , _tbmrfapPrettyPrint :: !Bool
    , _tbmrfapUserIP      :: !(Maybe Text)
    , _tbmrfapKey         :: !(Maybe AuthKey)
    , _tbmrfapOAuthToken  :: !(Maybe OAuthToken)
    , _tbmrfapFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesResetForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmrfapQuotaUser'
--
-- * 'tbmrfapPrettyPrint'
--
-- * 'tbmrfapUserIP'
--
-- * 'tbmrfapKey'
--
-- * 'tbmrfapOAuthToken'
--
-- * 'tbmrfapFields'
turnBasedMatchesResetForAllPlayers'
    :: TurnBasedMatchesResetForAllPlayers'
turnBasedMatchesResetForAllPlayers' =
    TurnBasedMatchesResetForAllPlayers'
    { _tbmrfapQuotaUser = Nothing
    , _tbmrfapPrettyPrint = True
    , _tbmrfapUserIP = Nothing
    , _tbmrfapKey = Nothing
    , _tbmrfapOAuthToken = Nothing
    , _tbmrfapFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmrfapQuotaUser :: Lens' TurnBasedMatchesResetForAllPlayers' (Maybe Text)
tbmrfapQuotaUser
  = lens _tbmrfapQuotaUser
      (\ s a -> s{_tbmrfapQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmrfapPrettyPrint :: Lens' TurnBasedMatchesResetForAllPlayers' Bool
tbmrfapPrettyPrint
  = lens _tbmrfapPrettyPrint
      (\ s a -> s{_tbmrfapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmrfapUserIP :: Lens' TurnBasedMatchesResetForAllPlayers' (Maybe Text)
tbmrfapUserIP
  = lens _tbmrfapUserIP
      (\ s a -> s{_tbmrfapUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmrfapKey :: Lens' TurnBasedMatchesResetForAllPlayers' (Maybe AuthKey)
tbmrfapKey
  = lens _tbmrfapKey (\ s a -> s{_tbmrfapKey = a})

-- | OAuth 2.0 token for the current user.
tbmrfapOAuthToken :: Lens' TurnBasedMatchesResetForAllPlayers' (Maybe OAuthToken)
tbmrfapOAuthToken
  = lens _tbmrfapOAuthToken
      (\ s a -> s{_tbmrfapOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tbmrfapFields :: Lens' TurnBasedMatchesResetForAllPlayers' (Maybe Text)
tbmrfapFields
  = lens _tbmrfapFields
      (\ s a -> s{_tbmrfapFields = a})

instance GoogleAuth
         TurnBasedMatchesResetForAllPlayers' where
        _AuthKey = tbmrfapKey . _Just
        _AuthToken = tbmrfapOAuthToken . _Just

instance GoogleRequest
         TurnBasedMatchesResetForAllPlayers' where
        type Rs TurnBasedMatchesResetForAllPlayers' = ()
        request = requestWith gamesManagementRequest
        requestWith rq
          TurnBasedMatchesResetForAllPlayers'{..}
          = go _tbmrfapQuotaUser (Just _tbmrfapPrettyPrint)
              _tbmrfapUserIP
              _tbmrfapFields
              _tbmrfapKey
              _tbmrfapOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy TurnBasedMatchesResetForAllPlayersResource)
                      rq
