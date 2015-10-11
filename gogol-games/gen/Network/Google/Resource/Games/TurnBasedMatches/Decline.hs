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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Decline
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Decline an invitation to play a turn-based match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesDecline@.
module Network.Google.Resource.Games.TurnBasedMatches.Decline
    (
    -- * REST Resource
      TurnBasedMatchesDeclineResource

    -- * Creating a Request
    , turnBasedMatchesDecline'
    , TurnBasedMatchesDecline'

    -- * Request Lenses
    , tQuotaUser
    , tPrettyPrint
    , tUserIP
    , tKey
    , tLanguage
    , tOAuthToken
    , tMatchId
    , tFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesDecline@ method which the
-- 'TurnBasedMatchesDecline'' request conforms to.
type TurnBasedMatchesDeclineResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "decline" :>
           QueryParam "language" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Put '[JSON] TurnBasedMatch

-- | Decline an invitation to play a turn-based match.
--
-- /See:/ 'turnBasedMatchesDecline'' smart constructor.
data TurnBasedMatchesDecline' = TurnBasedMatchesDecline'
    { _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tUserIP      :: !(Maybe Text)
    , _tKey         :: !(Maybe AuthKey)
    , _tLanguage    :: !(Maybe Text)
    , _tOAuthToken  :: !(Maybe OAuthToken)
    , _tMatchId     :: !Text
    , _tFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesDecline'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tQuotaUser'
--
-- * 'tPrettyPrint'
--
-- * 'tUserIP'
--
-- * 'tKey'
--
-- * 'tLanguage'
--
-- * 'tOAuthToken'
--
-- * 'tMatchId'
--
-- * 'tFields'
turnBasedMatchesDecline'
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesDecline'
turnBasedMatchesDecline' pTMatchId_ =
    TurnBasedMatchesDecline'
    { _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tUserIP = Nothing
    , _tKey = Nothing
    , _tLanguage = Nothing
    , _tOAuthToken = Nothing
    , _tMatchId = pTMatchId_
    , _tFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TurnBasedMatchesDecline' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIP :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tUserIP = lens _tUserIP (\ s a -> s{_tUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TurnBasedMatchesDecline' (Maybe AuthKey)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | The preferred language to use for strings returned by this method.
tLanguage :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tLanguage
  = lens _tLanguage (\ s a -> s{_tLanguage = a})

-- | OAuth 2.0 token for the current user.
tOAuthToken :: Lens' TurnBasedMatchesDecline' (Maybe OAuthToken)
tOAuthToken
  = lens _tOAuthToken (\ s a -> s{_tOAuthToken = a})

-- | The ID of the match.
tMatchId :: Lens' TurnBasedMatchesDecline' Text
tMatchId = lens _tMatchId (\ s a -> s{_tMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TurnBasedMatchesDecline' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

instance GoogleAuth TurnBasedMatchesDecline' where
        _AuthKey = tKey . _Just
        _AuthToken = tOAuthToken . _Just

instance GoogleRequest TurnBasedMatchesDecline' where
        type Rs TurnBasedMatchesDecline' = TurnBasedMatch
        request = requestWith gamesRequest
        requestWith rq TurnBasedMatchesDecline'{..}
          = go _tMatchId _tLanguage _tQuotaUser
              (Just _tPrettyPrint)
              _tUserIP
              _tFields
              _tKey
              _tOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy TurnBasedMatchesDeclineResource)
                      rq
