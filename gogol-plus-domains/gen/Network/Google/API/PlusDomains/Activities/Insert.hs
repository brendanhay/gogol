{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.PlusDomains.Activities.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new activity for the authenticated user.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.activities.insert@.
module Network.Google.API.PlusDomains.Activities.Insert
    (
    -- * REST Resource
      ActivitiesInsertAPI

    -- * Creating a Request
    , activitiesInsert'
    , ActivitiesInsert'

    -- * Request Lenses
    , aiQuotaUser
    , aiPrettyPrint
    , aiUserIp
    , aiUserId
    , aiKey
    , aiPreview
    , aiOauthToken
    , aiFields
    , aiAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for plusDomains.activities.insert which the
-- 'ActivitiesInsert'' request conforms to.
type ActivitiesInsertAPI =
     "people" :>
       Capture "userId" Text :>
         "activities" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "preview" Bool :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Activity

-- | Create a new activity for the authenticated user.
--
-- /See:/ 'activitiesInsert'' smart constructor.
data ActivitiesInsert' = ActivitiesInsert'
    { _aiQuotaUser   :: !(Maybe Text)
    , _aiPrettyPrint :: !Bool
    , _aiUserIp      :: !(Maybe Text)
    , _aiUserId      :: !Text
    , _aiKey         :: !(Maybe Text)
    , _aiPreview     :: !(Maybe Bool)
    , _aiOauthToken  :: !(Maybe Text)
    , _aiFields      :: !(Maybe Text)
    , _aiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiQuotaUser'
--
-- * 'aiPrettyPrint'
--
-- * 'aiUserIp'
--
-- * 'aiUserId'
--
-- * 'aiKey'
--
-- * 'aiPreview'
--
-- * 'aiOauthToken'
--
-- * 'aiFields'
--
-- * 'aiAlt'
activitiesInsert'
    :: Text -- ^ 'userId'
    -> ActivitiesInsert'
activitiesInsert' pAiUserId_ =
    ActivitiesInsert'
    { _aiQuotaUser = Nothing
    , _aiPrettyPrint = True
    , _aiUserIp = Nothing
    , _aiUserId = pAiUserId_
    , _aiKey = Nothing
    , _aiPreview = Nothing
    , _aiOauthToken = Nothing
    , _aiFields = Nothing
    , _aiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aiQuotaUser :: Lens' ActivitiesInsert' (Maybe Text)
aiQuotaUser
  = lens _aiQuotaUser (\ s a -> s{_aiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aiPrettyPrint :: Lens' ActivitiesInsert' Bool
aiPrettyPrint
  = lens _aiPrettyPrint
      (\ s a -> s{_aiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aiUserIp :: Lens' ActivitiesInsert' (Maybe Text)
aiUserIp = lens _aiUserIp (\ s a -> s{_aiUserIp = a})

-- | The ID of the user to create the activity on behalf of. Its value should
-- be \"me\", to indicate the authenticated user.
aiUserId :: Lens' ActivitiesInsert' Text
aiUserId = lens _aiUserId (\ s a -> s{_aiUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' ActivitiesInsert' (Maybe Text)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | If \"true\", extract the potential media attachments for a URL. The
-- response will include all possible attachments for a URL, including
-- video, photos, and articles based on the content of the page.
aiPreview :: Lens' ActivitiesInsert' (Maybe Bool)
aiPreview
  = lens _aiPreview (\ s a -> s{_aiPreview = a})

-- | OAuth 2.0 token for the current user.
aiOauthToken :: Lens' ActivitiesInsert' (Maybe Text)
aiOauthToken
  = lens _aiOauthToken (\ s a -> s{_aiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' ActivitiesInsert' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

-- | Data format for the response.
aiAlt :: Lens' ActivitiesInsert' Alt
aiAlt = lens _aiAlt (\ s a -> s{_aiAlt = a})

instance GoogleRequest ActivitiesInsert' where
        type Rs ActivitiesInsert' = Activity
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u ActivitiesInsert'{..}
          = go _aiQuotaUser (Just _aiPrettyPrint) _aiUserIp
              _aiUserId
              _aiKey
              _aiPreview
              _aiOauthToken
              _aiFields
              (Just _aiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ActivitiesInsertAPI)
                      r
                      u
