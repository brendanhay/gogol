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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.LeaveTurn
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Leave a turn-based match during the current player\'s turn, without
-- canceling the match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesLeaveTurn@.
module Network.Google.Resource.Games.TurnBasedMatches.LeaveTurn
    (
    -- * REST Resource
      TurnBasedMatchesLeaveTurnResource

    -- * Creating a Request
    , turnBasedMatchesLeaveTurn'
    , TurnBasedMatchesLeaveTurn'

    -- * Request Lenses
    , tbmltQuotaUser
    , tbmltPrettyPrint
    , tbmltUserIP
    , tbmltKey
    , tbmltLanguage
    , tbmltPendingParticipantId
    , tbmltOAuthToken
    , tbmltMatchId
    , tbmltMatchVersion
    , tbmltFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesLeaveTurn@ which the
-- 'TurnBasedMatchesLeaveTurn'' request conforms to.
type TurnBasedMatchesLeaveTurnResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         "leaveTurn" :>
           QueryParam "matchVersion" Int32 :>
             QueryParam "language" Text :>
               QueryParam "pendingParticipantId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Put '[JSON] TurnBasedMatch

-- | Leave a turn-based match during the current player\'s turn, without
-- canceling the match.
--
-- /See:/ 'turnBasedMatchesLeaveTurn'' smart constructor.
data TurnBasedMatchesLeaveTurn' = TurnBasedMatchesLeaveTurn'
    { _tbmltQuotaUser            :: !(Maybe Text)
    , _tbmltPrettyPrint          :: !Bool
    , _tbmltUserIP               :: !(Maybe Text)
    , _tbmltKey                  :: !(Maybe AuthKey)
    , _tbmltLanguage             :: !(Maybe Text)
    , _tbmltPendingParticipantId :: !(Maybe Text)
    , _tbmltOAuthToken           :: !(Maybe OAuthToken)
    , _tbmltMatchId              :: !Text
    , _tbmltMatchVersion         :: !Int32
    , _tbmltFields               :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesLeaveTurn'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmltQuotaUser'
--
-- * 'tbmltPrettyPrint'
--
-- * 'tbmltUserIP'
--
-- * 'tbmltKey'
--
-- * 'tbmltLanguage'
--
-- * 'tbmltPendingParticipantId'
--
-- * 'tbmltOAuthToken'
--
-- * 'tbmltMatchId'
--
-- * 'tbmltMatchVersion'
--
-- * 'tbmltFields'
turnBasedMatchesLeaveTurn'
    :: Text -- ^ 'matchId'
    -> Int32 -- ^ 'matchVersion'
    -> TurnBasedMatchesLeaveTurn'
turnBasedMatchesLeaveTurn' pTbmltMatchId_ pTbmltMatchVersion_ =
    TurnBasedMatchesLeaveTurn'
    { _tbmltQuotaUser = Nothing
    , _tbmltPrettyPrint = True
    , _tbmltUserIP = Nothing
    , _tbmltKey = Nothing
    , _tbmltLanguage = Nothing
    , _tbmltPendingParticipantId = Nothing
    , _tbmltOAuthToken = Nothing
    , _tbmltMatchId = pTbmltMatchId_
    , _tbmltMatchVersion = pTbmltMatchVersion_
    , _tbmltFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmltQuotaUser :: Lens' TurnBasedMatchesLeaveTurn' (Maybe Text)
tbmltQuotaUser
  = lens _tbmltQuotaUser
      (\ s a -> s{_tbmltQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmltPrettyPrint :: Lens' TurnBasedMatchesLeaveTurn' Bool
tbmltPrettyPrint
  = lens _tbmltPrettyPrint
      (\ s a -> s{_tbmltPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmltUserIP :: Lens' TurnBasedMatchesLeaveTurn' (Maybe Text)
tbmltUserIP
  = lens _tbmltUserIP (\ s a -> s{_tbmltUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmltKey :: Lens' TurnBasedMatchesLeaveTurn' (Maybe AuthKey)
tbmltKey = lens _tbmltKey (\ s a -> s{_tbmltKey = a})

-- | The preferred language to use for strings returned by this method.
tbmltLanguage :: Lens' TurnBasedMatchesLeaveTurn' (Maybe Text)
tbmltLanguage
  = lens _tbmltLanguage
      (\ s a -> s{_tbmltLanguage = a})

-- | The ID of another participant who should take their turn next. If not
-- set, the match will wait for other player(s) to join via automatching;
-- this is only valid if automatch criteria is set on the match with
-- remaining slots for automatched players.
tbmltPendingParticipantId :: Lens' TurnBasedMatchesLeaveTurn' (Maybe Text)
tbmltPendingParticipantId
  = lens _tbmltPendingParticipantId
      (\ s a -> s{_tbmltPendingParticipantId = a})

-- | OAuth 2.0 token for the current user.
tbmltOAuthToken :: Lens' TurnBasedMatchesLeaveTurn' (Maybe OAuthToken)
tbmltOAuthToken
  = lens _tbmltOAuthToken
      (\ s a -> s{_tbmltOAuthToken = a})

-- | The ID of the match.
tbmltMatchId :: Lens' TurnBasedMatchesLeaveTurn' Text
tbmltMatchId
  = lens _tbmltMatchId (\ s a -> s{_tbmltMatchId = a})

-- | The version of the match being updated.
tbmltMatchVersion :: Lens' TurnBasedMatchesLeaveTurn' Int32
tbmltMatchVersion
  = lens _tbmltMatchVersion
      (\ s a -> s{_tbmltMatchVersion = a})

-- | Selector specifying which fields to include in a partial response.
tbmltFields :: Lens' TurnBasedMatchesLeaveTurn' (Maybe Text)
tbmltFields
  = lens _tbmltFields (\ s a -> s{_tbmltFields = a})

instance GoogleAuth TurnBasedMatchesLeaveTurn' where
        authKey = tbmltKey . _Just
        authToken = tbmltOAuthToken . _Just

instance GoogleRequest TurnBasedMatchesLeaveTurn'
         where
        type Rs TurnBasedMatchesLeaveTurn' = TurnBasedMatch
        request = requestWith gamesRequest
        requestWith rq TurnBasedMatchesLeaveTurn'{..}
          = go _tbmltMatchId (Just _tbmltMatchVersion)
              _tbmltLanguage
              _tbmltPendingParticipantId
              _tbmltQuotaUser
              (Just _tbmltPrettyPrint)
              _tbmltUserIP
              _tbmltFields
              _tbmltKey
              _tbmltOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy TurnBasedMatchesLeaveTurnResource)
                      rq
