{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Games.Quests.List
    (
    -- * REST Resource
      QuestsListAPI

    -- * Creating a Request
    , questsList
    , QuestsList

    -- * Request Lenses
    , qlQuotaUser
    , qlPrettyPrint
    , qlUserIp
    , qlKey
    , qlLanguage
    , qlPageToken
    , qlOauthToken
    , qlPlayerId
    , qlMaxResults
    , qlFields
    , qlAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesQuestsList@ which the
-- 'QuestsList' request conforms to.
type QuestsListAPI =
     "players" :>
       Capture "playerId" Text :>
         "quests" :>
           QueryParam "language" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 Get '[JSON] QuestListResponse

-- | Get a list of quests for your application and the currently
-- authenticated player.
--
-- /See:/ 'questsList' smart constructor.
data QuestsList = QuestsList
    { _qlQuotaUser   :: !(Maybe Text)
    , _qlPrettyPrint :: !Bool
    , _qlUserIp      :: !(Maybe Text)
    , _qlKey         :: !(Maybe Text)
    , _qlLanguage    :: !(Maybe Text)
    , _qlPageToken   :: !(Maybe Text)
    , _qlOauthToken  :: !(Maybe Text)
    , _qlPlayerId    :: !Text
    , _qlMaxResults  :: !(Maybe Int32)
    , _qlFields      :: !(Maybe Text)
    , _qlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'QuestsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qlQuotaUser'
--
-- * 'qlPrettyPrint'
--
-- * 'qlUserIp'
--
-- * 'qlKey'
--
-- * 'qlLanguage'
--
-- * 'qlPageToken'
--
-- * 'qlOauthToken'
--
-- * 'qlPlayerId'
--
-- * 'qlMaxResults'
--
-- * 'qlFields'
--
-- * 'qlAlt'
questsList
    :: Text -- ^ 'playerId'
    -> QuestsList
questsList pQlPlayerId_ =
    QuestsList
    { _qlQuotaUser = Nothing
    , _qlPrettyPrint = True
    , _qlUserIp = Nothing
    , _qlKey = Nothing
    , _qlLanguage = Nothing
    , _qlPageToken = Nothing
    , _qlOauthToken = Nothing
    , _qlPlayerId = pQlPlayerId_
    , _qlMaxResults = Nothing
    , _qlFields = Nothing
    , _qlAlt = "json"
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
qlUserIp :: Lens' QuestsList' (Maybe Text)
qlUserIp = lens _qlUserIp (\ s a -> s{_qlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
qlKey :: Lens' QuestsList' (Maybe Text)
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
qlOauthToken :: Lens' QuestsList' (Maybe Text)
qlOauthToken
  = lens _qlOauthToken (\ s a -> s{_qlOauthToken = a})

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

-- | Data format for the response.
qlAlt :: Lens' QuestsList' Text
qlAlt = lens _qlAlt (\ s a -> s{_qlAlt = a})

instance GoogleRequest QuestsList' where
        type Rs QuestsList' = QuestListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u QuestsList{..}
          = go _qlQuotaUser _qlPrettyPrint _qlUserIp _qlKey
              _qlLanguage
              _qlPageToken
              _qlOauthToken
              _qlPlayerId
              _qlMaxResults
              _qlFields
              _qlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy QuestsListAPI) r u
