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
-- Module      : Network.Google.Resource.YouTube.Subscriptions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a subscription.
--
-- /See:/ <https://developers.google.com/youtube/v3 YouTube Data API Reference> for @YouTubeSubscriptionsDelete@.
module Network.Google.Resource.YouTube.Subscriptions.Delete
    (
    -- * REST Resource
      SubscriptionsDeleteResource

    -- * Creating a Request
    , subscriptionsDelete'
    , SubscriptionsDelete'

    -- * Request Lenses
    , sdQuotaUser
    , sdPrettyPrint
    , sdUserIp
    , sdKey
    , sdId
    , sdOauthToken
    , sdFields
    , sdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeSubscriptionsDelete@ which the
-- 'SubscriptionsDelete'' request conforms to.
type SubscriptionsDeleteResource =
     "subscriptions" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "id" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a subscription.
--
-- /See:/ 'subscriptionsDelete'' smart constructor.
data SubscriptionsDelete' = SubscriptionsDelete'
    { _sdQuotaUser   :: !(Maybe Text)
    , _sdPrettyPrint :: !Bool
    , _sdUserIp      :: !(Maybe Text)
    , _sdKey         :: !(Maybe Text)
    , _sdId          :: !Text
    , _sdOauthToken  :: !(Maybe Text)
    , _sdFields      :: !(Maybe Text)
    , _sdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdQuotaUser'
--
-- * 'sdPrettyPrint'
--
-- * 'sdUserIp'
--
-- * 'sdKey'
--
-- * 'sdId'
--
-- * 'sdOauthToken'
--
-- * 'sdFields'
--
-- * 'sdAlt'
subscriptionsDelete'
    :: Text -- ^ 'id'
    -> SubscriptionsDelete'
subscriptionsDelete' pSdId_ =
    SubscriptionsDelete'
    { _sdQuotaUser = Nothing
    , _sdPrettyPrint = True
    , _sdUserIp = Nothing
    , _sdKey = Nothing
    , _sdId = pSdId_
    , _sdOauthToken = Nothing
    , _sdFields = Nothing
    , _sdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sdQuotaUser :: Lens' SubscriptionsDelete' (Maybe Text)
sdQuotaUser
  = lens _sdQuotaUser (\ s a -> s{_sdQuotaUser = a})

-- | Returns response with indentations and line breaks.
sdPrettyPrint :: Lens' SubscriptionsDelete' Bool
sdPrettyPrint
  = lens _sdPrettyPrint
      (\ s a -> s{_sdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sdUserIp :: Lens' SubscriptionsDelete' (Maybe Text)
sdUserIp = lens _sdUserIp (\ s a -> s{_sdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sdKey :: Lens' SubscriptionsDelete' (Maybe Text)
sdKey = lens _sdKey (\ s a -> s{_sdKey = a})

-- | The id parameter specifies the YouTube subscription ID for the resource
-- that is being deleted. In a subscription resource, the id property
-- specifies the YouTube subscription ID.
sdId :: Lens' SubscriptionsDelete' Text
sdId = lens _sdId (\ s a -> s{_sdId = a})

-- | OAuth 2.0 token for the current user.
sdOauthToken :: Lens' SubscriptionsDelete' (Maybe Text)
sdOauthToken
  = lens _sdOauthToken (\ s a -> s{_sdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sdFields :: Lens' SubscriptionsDelete' (Maybe Text)
sdFields = lens _sdFields (\ s a -> s{_sdFields = a})

-- | Data format for the response.
sdAlt :: Lens' SubscriptionsDelete' Alt
sdAlt = lens _sdAlt (\ s a -> s{_sdAlt = a})

instance GoogleRequest SubscriptionsDelete' where
        type Rs SubscriptionsDelete' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u SubscriptionsDelete'{..}
          = go _sdQuotaUser (Just _sdPrettyPrint) _sdUserIp
              _sdKey
              (Just _sdId)
              _sdOauthToken
              _sdFields
              (Just _sdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsDeleteResource)
                      r
                      u
