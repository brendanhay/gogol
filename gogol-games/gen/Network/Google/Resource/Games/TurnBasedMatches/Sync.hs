{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.TurnBasedMatches.Sync
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns turn-based matches the player is or was involved in that changed
-- since the last sync call, with the least recent changes coming first.
-- Matches that should be removed from the local cache will have a status
-- of MATCH_DELETED.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesTurnBasedMatchesSync@.
module Network.Google.Resource.Games.TurnBasedMatches.Sync
    (
    -- * REST Resource
      TurnBasedMatchesSyncResource

    -- * Creating a Request
    , turnBasedMatchesSync'
    , TurnBasedMatchesSync'

    -- * Request Lenses
    , tbmsMaxCompletedMatches
    , tbmsQuotaUser
    , tbmsPrettyPrint
    , tbmsUserIP
    , tbmsKey
    , tbmsIncludeMatchData
    , tbmsLanguage
    , tbmsPageToken
    , tbmsOAuthToken
    , tbmsMaxResults
    , tbmsFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesTurnBasedMatchesSync@ which the
-- 'TurnBasedMatchesSync'' request conforms to.
type TurnBasedMatchesSyncResource =
     "turnbasedmatches" :>
       "sync" :>
         QueryParam "maxCompletedMatches" Int32 :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "includeMatchData" Bool :>
                     QueryParam "language" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "maxResults" Int32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] TurnBasedMatchSync

-- | Returns turn-based matches the player is or was involved in that changed
-- since the last sync call, with the least recent changes coming first.
-- Matches that should be removed from the local cache will have a status
-- of MATCH_DELETED.
--
-- /See:/ 'turnBasedMatchesSync'' smart constructor.
data TurnBasedMatchesSync' = TurnBasedMatchesSync'
    { _tbmsMaxCompletedMatches :: !(Maybe Int32)
    , _tbmsQuotaUser           :: !(Maybe Text)
    , _tbmsPrettyPrint         :: !Bool
    , _tbmsUserIP              :: !(Maybe Text)
    , _tbmsKey                 :: !(Maybe Key)
    , _tbmsIncludeMatchData    :: !(Maybe Bool)
    , _tbmsLanguage            :: !(Maybe Text)
    , _tbmsPageToken           :: !(Maybe Text)
    , _tbmsOAuthToken          :: !(Maybe OAuthToken)
    , _tbmsMaxResults          :: !(Maybe Int32)
    , _tbmsFields              :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TurnBasedMatchesSync'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbmsMaxCompletedMatches'
--
-- * 'tbmsQuotaUser'
--
-- * 'tbmsPrettyPrint'
--
-- * 'tbmsUserIP'
--
-- * 'tbmsKey'
--
-- * 'tbmsIncludeMatchData'
--
-- * 'tbmsLanguage'
--
-- * 'tbmsPageToken'
--
-- * 'tbmsOAuthToken'
--
-- * 'tbmsMaxResults'
--
-- * 'tbmsFields'
turnBasedMatchesSync'
    :: TurnBasedMatchesSync'
turnBasedMatchesSync' =
    TurnBasedMatchesSync'
    { _tbmsMaxCompletedMatches = Nothing
    , _tbmsQuotaUser = Nothing
    , _tbmsPrettyPrint = True
    , _tbmsUserIP = Nothing
    , _tbmsKey = Nothing
    , _tbmsIncludeMatchData = Nothing
    , _tbmsLanguage = Nothing
    , _tbmsPageToken = Nothing
    , _tbmsOAuthToken = Nothing
    , _tbmsMaxResults = Nothing
    , _tbmsFields = Nothing
    }

-- | The maximum number of completed or canceled matches to return in the
-- response. If not set, all matches returned could be completed or
-- canceled.
tbmsMaxCompletedMatches :: Lens' TurnBasedMatchesSync' (Maybe Int32)
tbmsMaxCompletedMatches
  = lens _tbmsMaxCompletedMatches
      (\ s a -> s{_tbmsMaxCompletedMatches = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tbmsQuotaUser :: Lens' TurnBasedMatchesSync' (Maybe Text)
tbmsQuotaUser
  = lens _tbmsQuotaUser
      (\ s a -> s{_tbmsQuotaUser = a})

-- | Returns response with indentations and line breaks.
tbmsPrettyPrint :: Lens' TurnBasedMatchesSync' Bool
tbmsPrettyPrint
  = lens _tbmsPrettyPrint
      (\ s a -> s{_tbmsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tbmsUserIP :: Lens' TurnBasedMatchesSync' (Maybe Text)
tbmsUserIP
  = lens _tbmsUserIP (\ s a -> s{_tbmsUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tbmsKey :: Lens' TurnBasedMatchesSync' (Maybe Key)
tbmsKey = lens _tbmsKey (\ s a -> s{_tbmsKey = a})

-- | True if match data should be returned in the response. Note that not all
-- data will necessarily be returned if include_match_data is true; the
-- server may decide to only return data for some of the matches to limit
-- download size for the client. The remainder of the data for these
-- matches will be retrievable on request.
tbmsIncludeMatchData :: Lens' TurnBasedMatchesSync' (Maybe Bool)
tbmsIncludeMatchData
  = lens _tbmsIncludeMatchData
      (\ s a -> s{_tbmsIncludeMatchData = a})

-- | The preferred language to use for strings returned by this method.
tbmsLanguage :: Lens' TurnBasedMatchesSync' (Maybe Text)
tbmsLanguage
  = lens _tbmsLanguage (\ s a -> s{_tbmsLanguage = a})

-- | The token returned by the previous request.
tbmsPageToken :: Lens' TurnBasedMatchesSync' (Maybe Text)
tbmsPageToken
  = lens _tbmsPageToken
      (\ s a -> s{_tbmsPageToken = a})

-- | OAuth 2.0 token for the current user.
tbmsOAuthToken :: Lens' TurnBasedMatchesSync' (Maybe OAuthToken)
tbmsOAuthToken
  = lens _tbmsOAuthToken
      (\ s a -> s{_tbmsOAuthToken = a})

-- | The maximum number of matches to return in the response, used for
-- paging. For any response, the actual number of matches to return may be
-- less than the specified maxResults.
tbmsMaxResults :: Lens' TurnBasedMatchesSync' (Maybe Int32)
tbmsMaxResults
  = lens _tbmsMaxResults
      (\ s a -> s{_tbmsMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tbmsFields :: Lens' TurnBasedMatchesSync' (Maybe Text)
tbmsFields
  = lens _tbmsFields (\ s a -> s{_tbmsFields = a})

instance GoogleAuth TurnBasedMatchesSync' where
        authKey = tbmsKey . _Just
        authToken = tbmsOAuthToken . _Just

instance GoogleRequest TurnBasedMatchesSync' where
        type Rs TurnBasedMatchesSync' = TurnBasedMatchSync
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u TurnBasedMatchesSync'{..}
          = go _tbmsMaxCompletedMatches _tbmsQuotaUser
              (Just _tbmsPrettyPrint)
              _tbmsUserIP
              _tbmsKey
              _tbmsIncludeMatchData
              _tbmsLanguage
              _tbmsPageToken
              _tbmsOAuthToken
              _tbmsMaxResults
              _tbmsFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TurnBasedMatchesSyncResource)
                      r
                      u
