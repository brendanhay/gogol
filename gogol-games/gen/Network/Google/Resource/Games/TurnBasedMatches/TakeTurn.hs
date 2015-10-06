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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.TakeTurn
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Commit the results of a player turn.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesTakeTurn@.
module Network.Google.Resource.Games.TurnBasedMatches.TakeTurn
    (
    -- * REST Resource
      TurnBasedMatchesTakeTurnResource

    -- * Creating a Request
    , turnBasedMatchesTakeTurn'
    , TurnBasedMatchesTakeTurn'

    -- * Request Lenses
    , tbmttQuotaUser
    , tbmttPrettyPrint
    , tbmttUserIP
    , tbmttPayload
    , tbmttKey
    , tbmttLanguage
    , tbmttOAuthToken
    , tbmttMatchId
    , tbmttFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesTakeTurn@ which the
-- 'TurnBasedMatchesTakeTurn'' request conforms to.
type TurnBasedMatchesTakeTurnResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "turn" :>
           QueryParam "language" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TurnBasedMatchTurn :>
                             Put '[JSON] TurnBasedMatch

-- | Commit the results of a player turn.
--
-- /See:/ 'turnBasedMatchesTakeTurn'' smart constructor.
data TurnBasedMatchesTakeTurn' = TurnBasedMatchesTakeTurn'
    { _tbmttQuotaUser   :: !(Maybe Text)
    , _tbmttPrettyPrint :: !Bool
    , _tbmttUserIP      :: !(Maybe Text)
    , _tbmttPayload     :: !TurnBasedMatchTurn
    , _tbmttKey         :: !(Maybe AuthKey)
    , _tbmttLanguage    :: !(Maybe Text)
    , _tbmttOAuthToken  :: !(Maybe OAuthToken)
    , _tbmttMatchId     :: !Text
    , _tbmttFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesTakeTurn'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmttQuotaUser'
--
-- * 'tbmttPrettyPrint'
--
-- * 'tbmttUserIP'
--
-- * 'tbmttPayload'
--
-- * 'tbmttKey'
--
-- * 'tbmttLanguage'
--
-- * 'tbmttOAuthToken'
--
-- * 'tbmttMatchId'
--
-- * 'tbmttFields'
turnBasedMatchesTakeTurn'
    :: TurnBasedMatchTurn -- ^ 'payload'
    -> Text -- ^ 'matchId'
    -> TurnBasedMatchesTakeTurn'
turnBasedMatchesTakeTurn' pTbmttPayload_ pTbmttMatchId_ =
    TurnBasedMatchesTakeTurn'
    { _tbmttQuotaUser = Nothing
    , _tbmttPrettyPrint = True
    , _tbmttUserIP = Nothing
    , _tbmttPayload = pTbmttPayload_
    , _tbmttKey = Nothing
    , _tbmttLanguage = Nothing
    , _tbmttOAuthToken = Nothing
    , _tbmttMatchId = pTbmttMatchId_
    , _tbmttFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmttQuotaUser :: Lens' TurnBasedMatchesTakeTurn' (Maybe Text)
tbmttQuotaUser
  = lens _tbmttQuotaUser
      (\ s a -> s{_tbmttQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmttPrettyPrint :: Lens' TurnBasedMatchesTakeTurn' Bool
tbmttPrettyPrint
  = lens _tbmttPrettyPrint
      (\ s a -> s{_tbmttPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmttUserIP :: Lens' TurnBasedMatchesTakeTurn' (Maybe Text)
tbmttUserIP
  = lens _tbmttUserIP (\ s a -> s{_tbmttUserIP = a})

-- | Multipart request metadata.
tbmttPayload :: Lens' TurnBasedMatchesTakeTurn' TurnBasedMatchTurn
tbmttPayload
  = lens _tbmttPayload (\ s a -> s{_tbmttPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmttKey :: Lens' TurnBasedMatchesTakeTurn' (Maybe AuthKey)
tbmttKey = lens _tbmttKey (\ s a -> s{_tbmttKey = a})

-- | The preferred language to use for strings returned by this method.
tbmttLanguage :: Lens' TurnBasedMatchesTakeTurn' (Maybe Text)
tbmttLanguage
  = lens _tbmttLanguage
      (\ s a -> s{_tbmttLanguage = a})

-- | OAuth 2.0 token for the current user.
tbmttOAuthToken :: Lens' TurnBasedMatchesTakeTurn' (Maybe OAuthToken)
tbmttOAuthToken
  = lens _tbmttOAuthToken
      (\ s a -> s{_tbmttOAuthToken = a})

-- | The ID of the match.
tbmttMatchId :: Lens' TurnBasedMatchesTakeTurn' Text
tbmttMatchId
  = lens _tbmttMatchId (\ s a -> s{_tbmttMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmttFields :: Lens' TurnBasedMatchesTakeTurn' (Maybe Text)
tbmttFields
  = lens _tbmttFields (\ s a -> s{_tbmttFields = a})

instance GoogleAuth TurnBasedMatchesTakeTurn' where
        authKey = tbmttKey . _Just
        authToken = tbmttOAuthToken . _Just

instance GoogleRequest TurnBasedMatchesTakeTurn'
         where
        type Rs TurnBasedMatchesTakeTurn' = TurnBasedMatch
        request = requestWith gamesRequest
        requestWith rq TurnBasedMatchesTakeTurn'{..}
          = go _tbmttMatchId _tbmttLanguage _tbmttQuotaUser
              (Just _tbmttPrettyPrint)
              _tbmttUserIP
              _tbmttFields
              _tbmttKey
              _tbmttOAuthToken
              (Just AltJSON)
              _tbmttPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy TurnBasedMatchesTakeTurnResource)
                      rq
