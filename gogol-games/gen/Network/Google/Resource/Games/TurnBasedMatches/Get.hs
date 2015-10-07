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
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the data for a turn-based match.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesGet@.
module Network.Google.Resource.Games.TurnBasedMatches.Get
    (
    -- * REST Resource
      TurnBasedMatchesGetResource

    -- * Creating a Request
    , turnBasedMatchesGet'
    , TurnBasedMatchesGet'

    -- * Request Lenses
    , tbmgQuotaUser
    , tbmgPrettyPrint
    , tbmgUserIP
    , tbmgKey
    , tbmgIncludeMatchData
    , tbmgLanguage
    , tbmgOAuthToken
    , tbmgMatchId
    , tbmgFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesGet@ method which the
-- 'TurnBasedMatchesGet'' request conforms to.
type TurnBasedMatchesGetResource =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         QueryParam "includeMatchData" Bool :>
           QueryParam "language" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] TurnBasedMatch

-- | Get the data for a turn-based match.
--
-- /See:/ 'turnBasedMatchesGet'' smart constructor.
data TurnBasedMatchesGet' = TurnBasedMatchesGet'
    { _tbmgQuotaUser        :: !(Maybe Text)
    , _tbmgPrettyPrint      :: !Bool
    , _tbmgUserIP           :: !(Maybe Text)
    , _tbmgKey              :: !(Maybe AuthKey)
    , _tbmgIncludeMatchData :: !(Maybe Bool)
    , _tbmgLanguage         :: !(Maybe Text)
    , _tbmgOAuthToken       :: !(Maybe OAuthToken)
    , _tbmgMatchId          :: !Text
    , _tbmgFields           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmgQuotaUser'
--
-- * 'tbmgPrettyPrint'
--
-- * 'tbmgUserIP'
--
-- * 'tbmgKey'
--
-- * 'tbmgIncludeMatchData'
--
-- * 'tbmgLanguage'
--
-- * 'tbmgOAuthToken'
--
-- * 'tbmgMatchId'
--
-- * 'tbmgFields'
turnBasedMatchesGet'
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesGet'
turnBasedMatchesGet' pTbmgMatchId_ =
    TurnBasedMatchesGet'
    { _tbmgQuotaUser = Nothing
    , _tbmgPrettyPrint = True
    , _tbmgUserIP = Nothing
    , _tbmgKey = Nothing
    , _tbmgIncludeMatchData = Nothing
    , _tbmgLanguage = Nothing
    , _tbmgOAuthToken = Nothing
    , _tbmgMatchId = pTbmgMatchId_
    , _tbmgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmgQuotaUser :: Lens' TurnBasedMatchesGet' (Maybe Text)
tbmgQuotaUser
  = lens _tbmgQuotaUser
      (\ s a -> s{_tbmgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmgPrettyPrint :: Lens' TurnBasedMatchesGet' Bool
tbmgPrettyPrint
  = lens _tbmgPrettyPrint
      (\ s a -> s{_tbmgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmgUserIP :: Lens' TurnBasedMatchesGet' (Maybe Text)
tbmgUserIP
  = lens _tbmgUserIP (\ s a -> s{_tbmgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmgKey :: Lens' TurnBasedMatchesGet' (Maybe AuthKey)
tbmgKey = lens _tbmgKey (\ s a -> s{_tbmgKey = a})

-- | Get match data along with metadata.
tbmgIncludeMatchData :: Lens' TurnBasedMatchesGet' (Maybe Bool)
tbmgIncludeMatchData
  = lens _tbmgIncludeMatchData
      (\ s a -> s{_tbmgIncludeMatchData = a})

-- | The preferred language to use for strings returned by this method.
tbmgLanguage :: Lens' TurnBasedMatchesGet' (Maybe Text)
tbmgLanguage
  = lens _tbmgLanguage (\ s a -> s{_tbmgLanguage = a})

-- | OAuth 2.0 token for the current user.
tbmgOAuthToken :: Lens' TurnBasedMatchesGet' (Maybe OAuthToken)
tbmgOAuthToken
  = lens _tbmgOAuthToken
      (\ s a -> s{_tbmgOAuthToken = a})

-- | The ID of the match.
tbmgMatchId :: Lens' TurnBasedMatchesGet' Text
tbmgMatchId
  = lens _tbmgMatchId (\ s a -> s{_tbmgMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmgFields :: Lens' TurnBasedMatchesGet' (Maybe Text)
tbmgFields
  = lens _tbmgFields (\ s a -> s{_tbmgFields = a})

instance GoogleAuth TurnBasedMatchesGet' where
        _AuthKey = tbmgKey . _Just
        _AuthToken = tbmgOAuthToken . _Just

instance GoogleRequest TurnBasedMatchesGet' where
        type Rs TurnBasedMatchesGet' = TurnBasedMatch
        request = requestWith gamesRequest
        requestWith rq TurnBasedMatchesGet'{..}
          = go _tbmgMatchId _tbmgIncludeMatchData _tbmgLanguage
              _tbmgQuotaUser
              (Just _tbmgPrettyPrint)
              _tbmgUserIP
              _tbmgFields
              _tbmgKey
              _tbmgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy TurnBasedMatchesGetResource)
                      rq
