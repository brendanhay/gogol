{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns turn-based matches the player is or was involved in.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesList@.
module Games.TurnBasedMatches.List
    (
    -- * REST Resource
      TurnBasedMatchesListAPI

    -- * Creating a Request
    , turnBasedMatchesList
    , TurnBasedMatchesList

    -- * Request Lenses
    , tbmlMaxCompletedMatches
    , tbmlQuotaUser
    , tbmlPrettyPrint
    , tbmlUserIp
    , tbmlKey
    , tbmlIncludeMatchData
    , tbmlLanguage
    , tbmlPageToken
    , tbmlOauthToken
    , tbmlMaxResults
    , tbmlFields
    , tbmlAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesList@ which the
-- 'TurnBasedMatchesList' request conforms to.
type TurnBasedMatchesListAPI =
     "turnbasedmatches" :>
       QueryParam "maxCompletedMatches" Int32 :>
         QueryParam "includeMatchData" Bool :>
           QueryParam "language" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 Get '[JSON] TurnBasedMatchList

-- | Returns turn-based matches the player is or was involved in.
--
-- /See:/ 'turnBasedMatchesList' smart constructor.
data TurnBasedMatchesList = TurnBasedMatchesList
    { _tbmlMaxCompletedMatches :: !(Maybe Int32)
    , _tbmlQuotaUser           :: !(Maybe Text)
    , _tbmlPrettyPrint         :: !Bool
    , _tbmlUserIp              :: !(Maybe Text)
    , _tbmlKey                 :: !(Maybe Text)
    , _tbmlIncludeMatchData    :: !(Maybe Bool)
    , _tbmlLanguage            :: !(Maybe Text)
    , _tbmlPageToken           :: !(Maybe Text)
    , _tbmlOauthToken          :: !(Maybe Text)
    , _tbmlMaxResults          :: !(Maybe Int32)
    , _tbmlFields              :: !(Maybe Text)
    , _tbmlAlt                 :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmlMaxCompletedMatches'
--
-- * 'tbmlQuotaUser'
--
-- * 'tbmlPrettyPrint'
--
-- * 'tbmlUserIp'
--
-- * 'tbmlKey'
--
-- * 'tbmlIncludeMatchData'
--
-- * 'tbmlLanguage'
--
-- * 'tbmlPageToken'
--
-- * 'tbmlOauthToken'
--
-- * 'tbmlMaxResults'
--
-- * 'tbmlFields'
--
-- * 'tbmlAlt'
turnBasedMatchesList
    :: TurnBasedMatchesList
turnBasedMatchesList =
    TurnBasedMatchesList
    { _tbmlMaxCompletedMatches = Nothing
    , _tbmlQuotaUser = Nothing
    , _tbmlPrettyPrint = True
    , _tbmlUserIp = Nothing
    , _tbmlKey = Nothing
    , _tbmlIncludeMatchData = Nothing
    , _tbmlLanguage = Nothing
    , _tbmlPageToken = Nothing
    , _tbmlOauthToken = Nothing
    , _tbmlMaxResults = Nothing
    , _tbmlFields = Nothing
    , _tbmlAlt = "json"
    }

-- | The maximum number of completed or canceled matches to return in the
-- response. If not set, all matches returned could be completed or
-- canceled.
tbmlMaxCompletedMatches :: Lens' TurnBasedMatchesList' (Maybe Int32)
tbmlMaxCompletedMatches
  = lens _tbmlMaxCompletedMatches
      (\ s a -> s{_tbmlMaxCompletedMatches = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmlQuotaUser :: Lens' TurnBasedMatchesList' (Maybe Text)
tbmlQuotaUser
  = lens _tbmlQuotaUser
      (\ s a -> s{_tbmlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmlPrettyPrint :: Lens' TurnBasedMatchesList' Bool
tbmlPrettyPrint
  = lens _tbmlPrettyPrint
      (\ s a -> s{_tbmlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmlUserIp :: Lens' TurnBasedMatchesList' (Maybe Text)
tbmlUserIp
  = lens _tbmlUserIp (\ s a -> s{_tbmlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmlKey :: Lens' TurnBasedMatchesList' (Maybe Text)
tbmlKey = lens _tbmlKey (\ s a -> s{_tbmlKey = a})

-- | True if match data should be returned in the response. Note that not all
-- data will necessarily be returned if include_match_data is true; the
-- server may decide to only return data for some of the matches to limit
-- download size for the client. The remainder of the data for these
-- matches will be retrievable on request.
tbmlIncludeMatchData :: Lens' TurnBasedMatchesList' (Maybe Bool)
tbmlIncludeMatchData
  = lens _tbmlIncludeMatchData
      (\ s a -> s{_tbmlIncludeMatchData = a})

-- | The preferred language to use for strings returned by this method.
tbmlLanguage :: Lens' TurnBasedMatchesList' (Maybe Text)
tbmlLanguage
  = lens _tbmlLanguage (\ s a -> s{_tbmlLanguage = a})

-- | The token returned by the previous request.
tbmlPageToken :: Lens' TurnBasedMatchesList' (Maybe Text)
tbmlPageToken
  = lens _tbmlPageToken
      (\ s a -> s{_tbmlPageToken = a})

-- | OAuth 2.0 token for the current user.
tbmlOauthToken :: Lens' TurnBasedMatchesList' (Maybe Text)
tbmlOauthToken
  = lens _tbmlOauthToken
      (\ s a -> s{_tbmlOauthToken = a})

-- | The maximum number of matches to return in the response, used for
-- paging. For any response, the actual number of matches to return may be
-- less than the specified maxResults.
tbmlMaxResults :: Lens' TurnBasedMatchesList' (Maybe Int32)
tbmlMaxResults
  = lens _tbmlMaxResults
      (\ s a -> s{_tbmlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tbmlFields :: Lens' TurnBasedMatchesList' (Maybe Text)
tbmlFields
  = lens _tbmlFields (\ s a -> s{_tbmlFields = a})

-- | Data format for the response.
tbmlAlt :: Lens' TurnBasedMatchesList' Text
tbmlAlt = lens _tbmlAlt (\ s a -> s{_tbmlAlt = a})

instance GoogleRequest TurnBasedMatchesList' where
        type Rs TurnBasedMatchesList' = TurnBasedMatchList
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesList{..}
          = go _tbmlMaxCompletedMatches _tbmlQuotaUser
              _tbmlPrettyPrint
              _tbmlUserIp
              _tbmlKey
              _tbmlIncludeMatchData
              _tbmlLanguage
              _tbmlPageToken
              _tbmlOauthToken
              _tbmlMaxResults
              _tbmlFields
              _tbmlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesListAPI)
                      r
                      u
