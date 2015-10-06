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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Join
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Join a turn-based match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesJoin@.
module Network.Google.Resource.Games.TurnBasedMatches.Join
    (
    -- * REST Resource
      TurnBasedMatchesJoinResource

    -- * Creating a Request
    , turnBasedMatchesJoin'
    , TurnBasedMatchesJoin'

    -- * Request Lenses
    , tbmjQuotaUser
    , tbmjPrettyPrint
    , tbmjUserIP
    , tbmjKey
    , tbmjLanguage
    , tbmjOAuthToken
    , tbmjMatchId
    , tbmjFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesJoin@ which the
-- 'TurnBasedMatchesJoin'' request conforms to.
type TurnBasedMatchesJoinResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "join" :>
           QueryParam "language" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Put '[JSON] TurnBasedMatch

-- | Join a turn-based match.
--
-- /See:/ 'turnBasedMatchesJoin'' smart constructor.
data TurnBasedMatchesJoin' = TurnBasedMatchesJoin'
    { _tbmjQuotaUser   :: !(Maybe Text)
    , _tbmjPrettyPrint :: !Bool
    , _tbmjUserIP      :: !(Maybe Text)
    , _tbmjKey         :: !(Maybe AuthKey)
    , _tbmjLanguage    :: !(Maybe Text)
    , _tbmjOAuthToken  :: !(Maybe OAuthToken)
    , _tbmjMatchId     :: !Text
    , _tbmjFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesJoin'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmjQuotaUser'
--
-- * 'tbmjPrettyPrint'
--
-- * 'tbmjUserIP'
--
-- * 'tbmjKey'
--
-- * 'tbmjLanguage'
--
-- * 'tbmjOAuthToken'
--
-- * 'tbmjMatchId'
--
-- * 'tbmjFields'
turnBasedMatchesJoin'
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesJoin'
turnBasedMatchesJoin' pTbmjMatchId_ =
    TurnBasedMatchesJoin'
    { _tbmjQuotaUser = Nothing
    , _tbmjPrettyPrint = True
    , _tbmjUserIP = Nothing
    , _tbmjKey = Nothing
    , _tbmjLanguage = Nothing
    , _tbmjOAuthToken = Nothing
    , _tbmjMatchId = pTbmjMatchId_
    , _tbmjFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmjQuotaUser :: Lens' TurnBasedMatchesJoin' (Maybe Text)
tbmjQuotaUser
  = lens _tbmjQuotaUser
      (\ s a -> s{_tbmjQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmjPrettyPrint :: Lens' TurnBasedMatchesJoin' Bool
tbmjPrettyPrint
  = lens _tbmjPrettyPrint
      (\ s a -> s{_tbmjPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmjUserIP :: Lens' TurnBasedMatchesJoin' (Maybe Text)
tbmjUserIP
  = lens _tbmjUserIP (\ s a -> s{_tbmjUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmjKey :: Lens' TurnBasedMatchesJoin' (Maybe AuthKey)
tbmjKey = lens _tbmjKey (\ s a -> s{_tbmjKey = a})

-- | The preferred language to use for strings returned by this method.
tbmjLanguage :: Lens' TurnBasedMatchesJoin' (Maybe Text)
tbmjLanguage
  = lens _tbmjLanguage (\ s a -> s{_tbmjLanguage = a})

-- | OAuth 2.0 token for the current user.
tbmjOAuthToken :: Lens' TurnBasedMatchesJoin' (Maybe OAuthToken)
tbmjOAuthToken
  = lens _tbmjOAuthToken
      (\ s a -> s{_tbmjOAuthToken = a})

-- | The ID of the match.
tbmjMatchId :: Lens' TurnBasedMatchesJoin' Text
tbmjMatchId
  = lens _tbmjMatchId (\ s a -> s{_tbmjMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmjFields :: Lens' TurnBasedMatchesJoin' (Maybe Text)
tbmjFields
  = lens _tbmjFields (\ s a -> s{_tbmjFields = a})

instance GoogleAuth TurnBasedMatchesJoin' where
        _AuthKey = tbmjKey . _Just
        _AuthToken = tbmjOAuthToken . _Just

instance GoogleRequest TurnBasedMatchesJoin' where
        type Rs TurnBasedMatchesJoin' = TurnBasedMatch
        request = requestWith gamesRequest
        requestWith rq TurnBasedMatchesJoin'{..}
          = go _tbmjMatchId _tbmjLanguage _tbmjQuotaUser
              (Just _tbmjPrettyPrint)
              _tbmjUserIP
              _tbmjFields
              _tbmjKey
              _tbmjOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy TurnBasedMatchesJoinResource)
                      rq
