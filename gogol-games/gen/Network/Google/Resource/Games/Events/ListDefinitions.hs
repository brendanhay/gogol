{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Games.Events.ListDefinitions
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of the event definitions in this application.
--
-- /See:/ <https://developers.google.com/games/services/ Google Play Game Services API Reference> for @GamesEventsListDefinitions@.
module Games.Events.ListDefinitions
    (
    -- * REST Resource
      EventsListDefinitionsAPI

    -- * Creating a Request
    , eventsListDefinitions
    , EventsListDefinitions

    -- * Request Lenses
    , eldQuotaUser
    , eldPrettyPrint
    , eldUserIp
    , eldKey
    , eldLanguage
    , eldPageToken
    , eldOauthToken
    , eldMaxResults
    , eldFields
    , eldAlt
    ) where

import           Network.Google.Games.Types
import           Network.Google.Prelude

-- | A resource alias for @GamesEventsListDefinitions@ which the
-- 'EventsListDefinitions' request conforms to.
type EventsListDefinitionsAPI =
     "eventDefinitions" :>
       QueryParam "language" Text :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Int32 :>
             Get '[JSON] EventDefinitionListResponse

-- | Returns a list of the event definitions in this application.
--
-- /See:/ 'eventsListDefinitions' smart constructor.
data EventsListDefinitions = EventsListDefinitions
    { _eldQuotaUser   :: !(Maybe Text)
    , _eldPrettyPrint :: !Bool
    , _eldUserIp      :: !(Maybe Text)
    , _eldKey         :: !(Maybe Text)
    , _eldLanguage    :: !(Maybe Text)
    , _eldPageToken   :: !(Maybe Text)
    , _eldOauthToken  :: !(Maybe Text)
    , _eldMaxResults  :: !(Maybe Int32)
    , _eldFields      :: !(Maybe Text)
    , _eldAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EventsListDefinitions'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eldQuotaUser'
--
-- * 'eldPrettyPrint'
--
-- * 'eldUserIp'
--
-- * 'eldKey'
--
-- * 'eldLanguage'
--
-- * 'eldPageToken'
--
-- * 'eldOauthToken'
--
-- * 'eldMaxResults'
--
-- * 'eldFields'
--
-- * 'eldAlt'
eventsListDefinitions
    :: EventsListDefinitions
eventsListDefinitions =
    EventsListDefinitions
    { _eldQuotaUser = Nothing
    , _eldPrettyPrint = True
    , _eldUserIp = Nothing
    , _eldKey = Nothing
    , _eldLanguage = Nothing
    , _eldPageToken = Nothing
    , _eldOauthToken = Nothing
    , _eldMaxResults = Nothing
    , _eldFields = Nothing
    , _eldAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eldQuotaUser :: Lens' EventsListDefinitions' (Maybe Text)
eldQuotaUser
  = lens _eldQuotaUser (\ s a -> s{_eldQuotaUser = a})

-- | Returns response with indentations and line breaks.
eldPrettyPrint :: Lens' EventsListDefinitions' Bool
eldPrettyPrint
  = lens _eldPrettyPrint
      (\ s a -> s{_eldPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eldUserIp :: Lens' EventsListDefinitions' (Maybe Text)
eldUserIp
  = lens _eldUserIp (\ s a -> s{_eldUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eldKey :: Lens' EventsListDefinitions' (Maybe Text)
eldKey = lens _eldKey (\ s a -> s{_eldKey = a})

-- | The preferred language to use for strings returned by this method.
eldLanguage :: Lens' EventsListDefinitions' (Maybe Text)
eldLanguage
  = lens _eldLanguage (\ s a -> s{_eldLanguage = a})

-- | The token returned by the previous request.
eldPageToken :: Lens' EventsListDefinitions' (Maybe Text)
eldPageToken
  = lens _eldPageToken (\ s a -> s{_eldPageToken = a})

-- | OAuth 2.0 token for the current user.
eldOauthToken :: Lens' EventsListDefinitions' (Maybe Text)
eldOauthToken
  = lens _eldOauthToken
      (\ s a -> s{_eldOauthToken = a})

-- | The maximum number of event definitions to return in the response, used
-- for paging. For any response, the actual number of event definitions to
-- return may be less than the specified maxResults.
eldMaxResults :: Lens' EventsListDefinitions' (Maybe Int32)
eldMaxResults
  = lens _eldMaxResults
      (\ s a -> s{_eldMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
eldFields :: Lens' EventsListDefinitions' (Maybe Text)
eldFields
  = lens _eldFields (\ s a -> s{_eldFields = a})

-- | Data format for the response.
eldAlt :: Lens' EventsListDefinitions' Text
eldAlt = lens _eldAlt (\ s a -> s{_eldAlt = a})

instance GoogleRequest EventsListDefinitions' where
        type Rs EventsListDefinitions' =
             EventDefinitionListResponse
        request = requestWithRoute defReq gamesURL
        requestWithRoute r u EventsListDefinitions{..}
          = go _eldQuotaUser _eldPrettyPrint _eldUserIp _eldKey
              _eldLanguage
              _eldPageToken
              _eldOauthToken
              _eldMaxResults
              _eldFields
              _eldAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EventsListDefinitionsAPI)
                      r
                      u
