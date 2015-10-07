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
-- Module      : Network.Google.Resource.GamesManagement.Scores.ResetMultipleForAllPlayers
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Resets scores for the leaderboards with the given IDs for all players.
-- This method is only available to user accounts for your developer
-- console. Only draft leaderboards may be reset.
--
-- /See:/ <https://developers.google.com/games/services Google Play Game Services Management API Reference> for @GamesManagementScoresResetMultipleForAllPlayers@.
module Network.Google.Resource.GamesManagement.Scores.ResetMultipleForAllPlayers
    (
    -- * REST Resource
      ScoresResetMultipleForAllPlayersResource

    -- * Creating a Request
    , scoresResetMultipleForAllPlayers'
    , ScoresResetMultipleForAllPlayers'

    -- * Request Lenses
    , srmfapQuotaUser
    , srmfapPrettyPrint
    , srmfapUserIP
    , srmfapPayload
    , srmfapKey
    , srmfapOAuthToken
    , srmfapFields
    ) where

import           Network.Google.GamesManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesManagementScoresResetMultipleForAllPlayers@ method which the
-- 'ScoresResetMultipleForAllPlayers'' request conforms to.
type ScoresResetMultipleForAllPlayersResource =
     "scores" :>
       "resetMultipleForAllPlayers" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ScoresResetMultipleForAllRequest :>
                         Post '[JSON] ()

-- | Resets scores for the leaderboards with the given IDs for all players.
-- This method is only available to user accounts for your developer
-- console. Only draft leaderboards may be reset.
--
-- /See:/ 'scoresResetMultipleForAllPlayers'' smart constructor.
data ScoresResetMultipleForAllPlayers' = ScoresResetMultipleForAllPlayers'
    { _srmfapQuotaUser   :: !(Maybe Text)
    , _srmfapPrettyPrint :: !Bool
    , _srmfapUserIP      :: !(Maybe Text)
    , _srmfapPayload     :: !ScoresResetMultipleForAllRequest
    , _srmfapKey         :: !(Maybe AuthKey)
    , _srmfapOAuthToken  :: !(Maybe OAuthToken)
    , _srmfapFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScoresResetMultipleForAllPlayers'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srmfapQuotaUser'
--
-- * 'srmfapPrettyPrint'
--
-- * 'srmfapUserIP'
--
-- * 'srmfapPayload'
--
-- * 'srmfapKey'
--
-- * 'srmfapOAuthToken'
--
-- * 'srmfapFields'
scoresResetMultipleForAllPlayers'
    :: ScoresResetMultipleForAllRequest -- ^ 'payload'
    -> ScoresResetMultipleForAllPlayers'
scoresResetMultipleForAllPlayers' pSrmfapPayload_ =
    ScoresResetMultipleForAllPlayers'
    { _srmfapQuotaUser = Nothing
    , _srmfapPrettyPrint = True
    , _srmfapUserIP = Nothing
    , _srmfapPayload = pSrmfapPayload_
    , _srmfapKey = Nothing
    , _srmfapOAuthToken = Nothing
    , _srmfapFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
srmfapQuotaUser :: Lens' ScoresResetMultipleForAllPlayers' (Maybe Text)
srmfapQuotaUser
  = lens _srmfapQuotaUser
      (\ s a -> s{_srmfapQuotaUser = a})

-- | Returns response with indentations and line breaks.
srmfapPrettyPrint :: Lens' ScoresResetMultipleForAllPlayers' Bool
srmfapPrettyPrint
  = lens _srmfapPrettyPrint
      (\ s a -> s{_srmfapPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
srmfapUserIP :: Lens' ScoresResetMultipleForAllPlayers' (Maybe Text)
srmfapUserIP
  = lens _srmfapUserIP (\ s a -> s{_srmfapUserIP = a})

-- | Multipart request metadata.
srmfapPayload :: Lens' ScoresResetMultipleForAllPlayers' ScoresResetMultipleForAllRequest
srmfapPayload
  = lens _srmfapPayload
      (\ s a -> s{_srmfapPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
srmfapKey :: Lens' ScoresResetMultipleForAllPlayers' (Maybe AuthKey)
srmfapKey
  = lens _srmfapKey (\ s a -> s{_srmfapKey = a})

-- | OAuth 2.0 token for the current user.
srmfapOAuthToken :: Lens' ScoresResetMultipleForAllPlayers' (Maybe OAuthToken)
srmfapOAuthToken
  = lens _srmfapOAuthToken
      (\ s a -> s{_srmfapOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
srmfapFields :: Lens' ScoresResetMultipleForAllPlayers' (Maybe Text)
srmfapFields
  = lens _srmfapFields (\ s a -> s{_srmfapFields = a})

instance GoogleAuth ScoresResetMultipleForAllPlayers'
         where
        _AuthKey = srmfapKey . _Just
        _AuthToken = srmfapOAuthToken . _Just

instance GoogleRequest
         ScoresResetMultipleForAllPlayers' where
        type Rs ScoresResetMultipleForAllPlayers' = ()
        request = requestWith gamesManagementRequest
        requestWith rq ScoresResetMultipleForAllPlayers'{..}
          = go _srmfapQuotaUser (Just _srmfapPrettyPrint)
              _srmfapUserIP
              _srmfapFields
              _srmfapKey
              _srmfapOAuthToken
              (Just AltJSON)
              _srmfapPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ScoresResetMultipleForAllPlayersResource)
                      rq
