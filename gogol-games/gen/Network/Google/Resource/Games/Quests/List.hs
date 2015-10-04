{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.Quests.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a list of quests for your application and the currently
-- authenticated player.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesQuestsList@.
module Network.Google.Resource.Games.Quests.List
    (
    -- * REST Resource
      QuestsListResource

    -- * Creating a Request
    , questsList'
    , QuestsList'

    -- * Request Lenses
    , qlQuotaUser
    , qlPrettyPrint
    , qlUserIP
    , qlKey
    , qlLanguage
    , qlPageToken
    , qlOAuthToken
    , qlPlayerId
    , qlMaxResults
    , qlFields
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesQuestsList@ which the
-- 'QuestsList'' request conforms to.
type QuestsListResource =
     "players" :>
       Capture "playerId" Text :>
         "quests" :>
           QueryParam "language" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] QuestListResponse

-- | Get a list of quests for your application and the currently
-- authenticated player.
--
-- /See:/ 'questsList'' smart constructor.
data QuestsList' = QuestsList'
    { _qlQuotaUser   :: !(Maybe Text)
    , _qlPrettyPrint :: !Bool
    , _qlUserIP      :: !(Maybe Text)
    , _qlKey         :: !(Maybe Key)
    , _qlLanguage    :: !(Maybe Text)
    , _qlPageToken   :: !(Maybe Text)
    , _qlOAuthToken  :: !(Maybe OAuthToken)
    , _qlPlayerId    :: !Text
    , _qlMaxResults  :: !(Maybe Int32)
    , _qlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qlQuotaUser'
--
-- * 'qlPrettyPrint'
--
-- * 'qlUserIP'
--
-- * 'qlKey'
--
-- * 'qlLanguage'
--
-- * 'qlPageToken'
--
-- * 'qlOAuthToken'
--
-- * 'qlPlayerId'
--
-- * 'qlMaxResults'
--
-- * 'qlFields'
questsList'
    :: Text -- ^ 'playerId'
    -> QuestsList'
questsList' pQlPlayerId_ =
    QuestsList'
    { _qlQuotaUser = Nothing
    , _qlPrettyPrint = True
    , _qlUserIP = Nothing
    , _qlKey = Nothing
    , _qlLanguage = Nothing
    , _qlPageToken = Nothing
    , _qlOAuthToken = Nothing
    , _qlPlayerId = pQlPlayerId_
    , _qlMaxResults = Nothing
    , _qlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
qlQuotaUser :: Lens' QuestsList' (Maybe Text)
qlQuotaUser
  = lens _qlQuotaUser (\ s a -> s{_qlQuotaUser = a})

-- | Returns response with indentations and line breaks.
qlPrettyPrint :: Lens' QuestsList' Bool
qlPrettyPrint
  = lens _qlPrettyPrint
      (\ s a -> s{_qlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
qlUserIP :: Lens' QuestsList' (Maybe Text)
qlUserIP = lens _qlUserIP (\ s a -> s{_qlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qlKey :: Lens' QuestsList' (Maybe Key)
qlKey = lens _qlKey (\ s a -> s{_qlKey = a})

-- | The preferred language to use for strings returned by this method.
qlLanguage :: Lens' QuestsList' (Maybe Text)
qlLanguage
  = lens _qlLanguage (\ s a -> s{_qlLanguage = a})

-- | The token returned by the previous request.
qlPageToken :: Lens' QuestsList' (Maybe Text)
qlPageToken
  = lens _qlPageToken (\ s a -> s{_qlPageToken = a})

-- | OAuth 2.0 token for the current user.
qlOAuthToken :: Lens' QuestsList' (Maybe OAuthToken)
qlOAuthToken
  = lens _qlOAuthToken (\ s a -> s{_qlOAuthToken = a})

-- | A player ID. A value of me may be used in place of the authenticated
-- player\'s ID.
qlPlayerId :: Lens' QuestsList' Text
qlPlayerId
  = lens _qlPlayerId (\ s a -> s{_qlPlayerId = a})

-- | The maximum number of quest resources to return in the response, used
-- for paging. For any response, the actual number of quest resources
-- returned may be less than the specified maxResults. Acceptable values
-- are 1 to 50, inclusive. (Default: 50).
qlMaxResults :: Lens' QuestsList' (Maybe Int32)
qlMaxResults
  = lens _qlMaxResults (\ s a -> s{_qlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
qlFields :: Lens' QuestsList' (Maybe Text)
qlFields = lens _qlFields (\ s a -> s{_qlFields = a})

instance GoogleAuth QuestsList' where
        authKey = qlKey . _Just
        authToken = qlOAuthToken . _Just

instance GoogleRequest QuestsList' where
        type Rs QuestsList' = QuestListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u QuestsList'{..}
          = go _qlPlayerId _qlLanguage _qlPageToken
              _qlMaxResults
              _qlQuotaUser
              (Just _qlPrettyPrint)
              _qlUserIP
              _qlFields
              _qlKey
              _qlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy QuestsListResource)
                      r
                      u
