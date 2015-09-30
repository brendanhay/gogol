{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mirror.Subscriptions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a subscription.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorSubscriptionsDelete@.
module Mirror.Subscriptions.Delete
    (
    -- * REST Resource
      SubscriptionsDeleteAPI

    -- * Creating a Request
    , subscriptionsDelete
    , SubscriptionsDelete

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

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorSubscriptionsDelete@ which the
-- 'SubscriptionsDelete' request conforms to.
type SubscriptionsDeleteAPI =
     "subscriptions" :>
       Capture "id" Text :> Delete '[JSON] ()

-- | Deletes a subscription.
--
-- /See:/ 'subscriptionsDelete' smart constructor.
data SubscriptionsDelete = SubscriptionsDelete
    { _sdQuotaUser   :: !(Maybe Text)
    , _sdPrettyPrint :: !Bool
    , _sdUserIp      :: !(Maybe Text)
    , _sdKey         :: !(Maybe Text)
    , _sdId          :: !Text
    , _sdOauthToken  :: !(Maybe Text)
    , _sdFields      :: !(Maybe Text)
    , _sdAlt         :: !Text
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
subscriptionsDelete
    :: Text -- ^ 'id'
    -> SubscriptionsDelete
subscriptionsDelete pSdId_ =
    SubscriptionsDelete
    { _sdQuotaUser = Nothing
    , _sdPrettyPrint = True
    , _sdUserIp = Nothing
    , _sdKey = Nothing
    , _sdId = pSdId_
    , _sdOauthToken = Nothing
    , _sdFields = Nothing
    , _sdAlt = "json"
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

-- | The ID of the subscription.
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
sdAlt :: Lens' SubscriptionsDelete' Text
sdAlt = lens _sdAlt (\ s a -> s{_sdAlt = a})

instance GoogleRequest SubscriptionsDelete' where
        type Rs SubscriptionsDelete' = ()
        request = requestWithRoute defReq mirrorURL
        requestWithRoute r u SubscriptionsDelete{..}
          = go _sdQuotaUser _sdPrettyPrint _sdUserIp _sdKey
              _sdId
              _sdOauthToken
              _sdFields
              _sdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubscriptionsDeleteAPI)
                      r
                      u
