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
    , sdUserIP
    , sdKey
    , sdId
    , sdOAuthToken
    , sdFields
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTube.Types

-- | A resource alias for @YouTubeSubscriptionsDelete@ which the
-- 'SubscriptionsDelete'' request conforms to.
type SubscriptionsDeleteResource =
     "subscriptions" :>
       QueryParam "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a subscription.
--
-- /See:/ 'subscriptionsDelete'' smart constructor.
data SubscriptionsDelete' = SubscriptionsDelete'
    { _sdQuotaUser   :: !(Maybe Text)
    , _sdPrettyPrint :: !Bool
    , _sdUserIP      :: !(Maybe Text)
    , _sdKey         :: !(Maybe Key)
    , _sdId          :: !Text
    , _sdOAuthToken  :: !(Maybe OAuthToken)
    , _sdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubscriptionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdQuotaUser'
--
-- * 'sdPrettyPrint'
--
-- * 'sdUserIP'
--
-- * 'sdKey'
--
-- * 'sdId'
--
-- * 'sdOAuthToken'
--
-- * 'sdFields'
subscriptionsDelete'
    :: Text -- ^ 'id'
    -> SubscriptionsDelete'
subscriptionsDelete' pSdId_ =
    SubscriptionsDelete'
    { _sdQuotaUser = Nothing
    , _sdPrettyPrint = True
    , _sdUserIP = Nothing
    , _sdKey = Nothing
    , _sdId = pSdId_
    , _sdOAuthToken = Nothing
    , _sdFields = Nothing
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
sdUserIP :: Lens' SubscriptionsDelete' (Maybe Text)
sdUserIP = lens _sdUserIP (\ s a -> s{_sdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sdKey :: Lens' SubscriptionsDelete' (Maybe Key)
sdKey = lens _sdKey (\ s a -> s{_sdKey = a})

-- | The id parameter specifies the YouTube subscription ID for the resource
-- that is being deleted. In a subscription resource, the id property
-- specifies the YouTube subscription ID.
sdId :: Lens' SubscriptionsDelete' Text
sdId = lens _sdId (\ s a -> s{_sdId = a})

-- | OAuth 2.0 token for the current user.
sdOAuthToken :: Lens' SubscriptionsDelete' (Maybe OAuthToken)
sdOAuthToken
  = lens _sdOAuthToken (\ s a -> s{_sdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sdFields :: Lens' SubscriptionsDelete' (Maybe Text)
sdFields = lens _sdFields (\ s a -> s{_sdFields = a})

instance GoogleAuth SubscriptionsDelete' where
        authKey = sdKey . _Just
        authToken = sdOAuthToken . _Just

instance GoogleRequest SubscriptionsDelete' where
        type Rs SubscriptionsDelete' = ()
        request = requestWithRoute defReq youTubeURL
        requestWithRoute r u SubscriptionsDelete'{..}
          = go (Just _sdId) _sdQuotaUser (Just _sdPrettyPrint)
              _sdUserIP
              _sdFields
              _sdKey
              _sdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsDeleteResource)
                      r
                      u
