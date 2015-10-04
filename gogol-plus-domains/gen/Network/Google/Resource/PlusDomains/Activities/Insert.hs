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
-- Module      : Network.Google.Resource.PlusDomains.Activities.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a new activity for the authenticated user.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsActivitiesInsert@.
module Network.Google.Resource.PlusDomains.Activities.Insert
    (
    -- * REST Resource
      ActivitiesInsertResource

    -- * Creating a Request
    , activitiesInsert'
    , ActivitiesInsert'

    -- * Request Lenses
    , aiQuotaUser
    , aiPrettyPrint
    , aiUserIP
    , aiPayload
    , aiUserId
    , aiKey
    , aiPreview
    , aiOAuthToken
    , aiFields
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsActivitiesInsert@ which the
-- 'ActivitiesInsert'' request conforms to.
type ActivitiesInsertResource =
     "people" :>
       Capture "userId" Text :>
         "activities" :>
           QueryParam "preview" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Activity :> Post '[JSON] Activity

-- | Create a new activity for the authenticated user.
--
-- /See:/ 'activitiesInsert'' smart constructor.
data ActivitiesInsert' = ActivitiesInsert'
    { _aiQuotaUser   :: !(Maybe Text)
    , _aiPrettyPrint :: !Bool
    , _aiUserIP      :: !(Maybe Text)
    , _aiPayload     :: !Activity
    , _aiUserId      :: !Text
    , _aiKey         :: !(Maybe Key)
    , _aiPreview     :: !(Maybe Bool)
    , _aiOAuthToken  :: !(Maybe OAuthToken)
    , _aiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiQuotaUser'
--
-- * 'aiPrettyPrint'
--
-- * 'aiUserIP'
--
-- * 'aiPayload'
--
-- * 'aiUserId'
--
-- * 'aiKey'
--
-- * 'aiPreview'
--
-- * 'aiOAuthToken'
--
-- * 'aiFields'
activitiesInsert'
    :: Activity -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> ActivitiesInsert'
activitiesInsert' pAiPayload_ pAiUserId_ =
    ActivitiesInsert'
    { _aiQuotaUser = Nothing
    , _aiPrettyPrint = True
    , _aiUserIP = Nothing
    , _aiPayload = pAiPayload_
    , _aiUserId = pAiUserId_
    , _aiKey = Nothing
    , _aiPreview = Nothing
    , _aiOAuthToken = Nothing
    , _aiFields = Nothing
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
aiUserIP :: Lens' ActivitiesInsert' (Maybe Text)
aiUserIP = lens _aiUserIP (\ s a -> s{_aiUserIP = a})

-- | Multipart request metadata.
aiPayload :: Lens' ActivitiesInsert' Activity
aiPayload
  = lens _aiPayload (\ s a -> s{_aiPayload = a})

-- | The ID of the user to create the activity on behalf of. Its value should
-- be \"me\", to indicate the authenticated user.
aiUserId :: Lens' ActivitiesInsert' Text
aiUserId = lens _aiUserId (\ s a -> s{_aiUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiKey :: Lens' ActivitiesInsert' (Maybe Key)
aiKey = lens _aiKey (\ s a -> s{_aiKey = a})

-- | If \"true\", extract the potential media attachments for a URL. The
-- response will include all possible attachments for a URL, including
-- video, photos, and articles based on the content of the page.
aiPreview :: Lens' ActivitiesInsert' (Maybe Bool)
aiPreview
  = lens _aiPreview (\ s a -> s{_aiPreview = a})

-- | OAuth 2.0 token for the current user.
aiOAuthToken :: Lens' ActivitiesInsert' (Maybe OAuthToken)
aiOAuthToken
  = lens _aiOAuthToken (\ s a -> s{_aiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aiFields :: Lens' ActivitiesInsert' (Maybe Text)
aiFields = lens _aiFields (\ s a -> s{_aiFields = a})

instance GoogleAuth ActivitiesInsert' where
        authKey = aiKey . _Just
        authToken = aiOAuthToken . _Just

instance GoogleRequest ActivitiesInsert' where
        type Rs ActivitiesInsert' = Activity
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u ActivitiesInsert'{..}
          = go _aiUserId _aiPreview _aiQuotaUser
              (Just _aiPrettyPrint)
              _aiUserIP
              _aiFields
              _aiKey
              _aiOAuthToken
              (Just AltJSON)
              _aiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ActivitiesInsertResource)
                      r
                      u
