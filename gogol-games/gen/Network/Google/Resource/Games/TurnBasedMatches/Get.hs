{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Games.TurnBasedMatches.Get
    (
    -- * REST Resource
      TurnBasedMatchesGetAPI

    -- * Creating a Request
    , turnBasedMatchesGet
    , TurnBasedMatchesGet

    -- * Request Lenses
    , tbmgQuotaUser
    , tbmgPrettyPrint
    , tbmgUserIp
    , tbmgKey
    , tbmgIncludeMatchData
    , tbmgLanguage
    , tbmgOauthToken
    , tbmgMatchId
    , tbmgFields
    , tbmgAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesGet@ which the
-- 'TurnBasedMatchesGet' request conforms to.
type TurnBasedMatchesGetAPI =
     "turnbasedmatches" :>
       Capture "matchId" Text :>
         QueryParam "includeMatchData" Bool :>
           QueryParam "language" Text :>
             Get '[JSON] TurnBasedMatch

-- | Get the data for a turn-based match.
--
-- /See:/ 'turnBasedMatchesGet' smart constructor.
data TurnBasedMatchesGet = TurnBasedMatchesGet
    { _tbmgQuotaUser        :: !(Maybe Text)
    , _tbmgPrettyPrint      :: !Bool
    , _tbmgUserIp           :: !(Maybe Text)
    , _tbmgKey              :: !(Maybe Text)
    , _tbmgIncludeMatchData :: !(Maybe Bool)
    , _tbmgLanguage         :: !(Maybe Text)
    , _tbmgOauthToken       :: !(Maybe Text)
    , _tbmgMatchId          :: !Text
    , _tbmgFields           :: !(Maybe Text)
    , _tbmgAlt              :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmgQuotaUser'
--
-- * 'tbmgPrettyPrint'
--
-- * 'tbmgUserIp'
--
-- * 'tbmgKey'
--
-- * 'tbmgIncludeMatchData'
--
-- * 'tbmgLanguage'
--
-- * 'tbmgOauthToken'
--
-- * 'tbmgMatchId'
--
-- * 'tbmgFields'
--
-- * 'tbmgAlt'
turnBasedMatchesGet
    :: Text -- ^ 'matchId'
    -> TurnBasedMatchesGet
turnBasedMatchesGet pTbmgMatchId_ =
    TurnBasedMatchesGet
    { _tbmgQuotaUser = Nothing
    , _tbmgPrettyPrint = True
    , _tbmgUserIp = Nothing
    , _tbmgKey = Nothing
    , _tbmgIncludeMatchData = Nothing
    , _tbmgLanguage = Nothing
    , _tbmgOauthToken = Nothing
    , _tbmgMatchId = pTbmgMatchId_
    , _tbmgFields = Nothing
    , _tbmgAlt = "json"
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
tbmgUserIp :: Lens' TurnBasedMatchesGet' (Maybe Text)
tbmgUserIp
  = lens _tbmgUserIp (\ s a -> s{_tbmgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmgKey :: Lens' TurnBasedMatchesGet' (Maybe Text)
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
tbmgOauthToken :: Lens' TurnBasedMatchesGet' (Maybe Text)
tbmgOauthToken
  = lens _tbmgOauthToken
      (\ s a -> s{_tbmgOauthToken = a})

-- | The ID of the match.
tbmgMatchId :: Lens' TurnBasedMatchesGet' Text
tbmgMatchId
  = lens _tbmgMatchId (\ s a -> s{_tbmgMatchId = a})

-- | Selector specifying which fields to include in a partial response.
tbmgFields :: Lens' TurnBasedMatchesGet' (Maybe Text)
tbmgFields
  = lens _tbmgFields (\ s a -> s{_tbmgFields = a})

-- | Data format for the response.
tbmgAlt :: Lens' TurnBasedMatchesGet' Text
tbmgAlt = lens _tbmgAlt (\ s a -> s{_tbmgAlt = a})

instance GoogleRequest TurnBasedMatchesGet' where
        type Rs TurnBasedMatchesGet' = TurnBasedMatch
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesGet{..}
          = go _tbmgQuotaUser _tbmgPrettyPrint _tbmgUserIp
              _tbmgKey
              _tbmgIncludeMatchData
              _tbmgLanguage
              _tbmgOauthToken
              _tbmgMatchId
              _tbmgFields
              _tbmgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesGetAPI)
                      r
                      u
