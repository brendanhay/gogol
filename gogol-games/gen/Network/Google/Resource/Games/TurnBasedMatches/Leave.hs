{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Leave
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Leave a turn-based match when it is not the current player\'s turn,
-- without canceling the match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesLeave@.
module Network.Google.Resource.Games.TurnBasedMatches.Leave
    (
    -- * REST Resource
      TurnBasedMatchesLeaveResource

    -- * Creating a Request
    , turnBasedMatchesLeave'
    , TurnBasedMatchesLeave'

    -- * Request Lenses
    , tbmlbQuotaUser
    , tbmlbPrettyPrint
    , tbmlbUserIP
    , tbmlbKey
    , tbmlbLanguage
    , tbmlbOAuthToken
    , tbmlbMatchId
    , tbmlbFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesLeave@ which the
-- 'TurnBasedMatchesLeave'' request conforms to.
type TurnBasedMatchesLeaveResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "leave" :>
           QueryParam "language" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Put '[JSON] TurnBasedMatch

-- | Leave a turn-based match when it is not the current player\'s turn,
-- without canceling the match.
--
-- /See:/ 'turnBasedMatchesLeave'' smart constructor.
data TurnBasedMatchesLeave' = TurnBasedMatchesLeave'
    { _tbmlbQuotaUser   :: !(Maybe Text)
    , _tbmlbPrettyPrint :: !Bool
    , _tbmlbUserIP      :: !(Maybe Text)
    , _tbmlbKey         :: !(Maybe Key)
    , _tbmlbLanguage    :: !(Maybe Text)
    , _tbmlbOAuthToken  :: !(Maybe OAuthToken)
    , _tbmlbMatchId     :: !Text
    , _tbmlbFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesLeave'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmlbQuotaUser'
--
-- * 'tbmlbPrettyPrint'
--
-- * 'tbmlbUserIP'
--
-- * 'tbmlbKey'
--
-- * 'tbmlbLanguage'
--
-- * 'tbmlbOAuthToken'
--
-- * 'tbmlbMatchId'
--
-- * 'tbmlbFields'
turnBasedMatchesLeave'
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesLeave'
turnBasedMatchesLeave' pTbmlbMatchId_ =
    TurnBasedMatchesLeave'
    { _tbmlbQuotaUser = Nothing
    , _tbmlbPrettyPrint = True
    , _tbmlbUserIP = Nothing
    , _tbmlbKey = Nothing
    , _tbmlbLanguage = Nothing
    , _tbmlbOAuthToken = Nothing
    , _tbmlbMatchId = pTbmlbMatchId_
    , _tbmlbFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmlbQuotaUser :: Lens' TurnBasedMatchesLeave' (Maybe Text)
tbmlbQuotaUser
  = lens _tbmlbQuotaUser
      (\ s a -> s{_tbmlbQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmlbPrettyPrint :: Lens' TurnBasedMatchesLeave' Bool
tbmlbPrettyPrint
  = lens _tbmlbPrettyPrint
      (\ s a -> s{_tbmlbPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmlbUserIP :: Lens' TurnBasedMatchesLeave' (Maybe Text)
tbmlbUserIP
  = lens _tbmlbUserIP (\ s a -> s{_tbmlbUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmlbKey :: Lens' TurnBasedMatchesLeave' (Maybe Key)
tbmlbKey = lens _tbmlbKey (\ s a -> s{_tbmlbKey = a})

-- | The preferred language to use for strings returned by this method.
tbmlbLanguage :: Lens' TurnBasedMatchesLeave' (Maybe Text)
tbmlbLanguage
  = lens _tbmlbLanguage
      (\ s a -> s{_tbmlbLanguage = a})

-- | OAuth 2.0 token for the current user.
tbmlbOAuthToken :: Lens' TurnBasedMatchesLeave' (Maybe OAuthToken)
tbmlbOAuthToken
  = lens _tbmlbOAuthToken
      (\ s a -> s{_tbmlbOAuthToken = a})

-- | The ID of the match.
tbmlbMatchId :: Lens' TurnBasedMatchesLeave' Text
tbmlbMatchId
  = lens _tbmlbMatchId (\ s a -> s{_tbmlbMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmlbFields :: Lens' TurnBasedMatchesLeave' (Maybe Text)
tbmlbFields
  = lens _tbmlbFields (\ s a -> s{_tbmlbFields = a})

instance GoogleAuth TurnBasedMatchesLeave' where
        authKey = tbmlbKey . _Just
        authToken = tbmlbOAuthToken . _Just

instance GoogleRequest TurnBasedMatchesLeave' where
        type Rs TurnBasedMatchesLeave' = TurnBasedMatch
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesLeave'{..}
          = go _tbmlbMatchId _tbmlbLanguage _tbmlbQuotaUser
              (Just _tbmlbPrettyPrint)
              _tbmlbUserIP
              _tbmlbFields
              _tbmlbKey
              _tbmlbOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesLeaveResource)
                      r
                      u
