{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.PubSub.Projects.Subscriptions.ModifyPushConfig
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies the PushConfig for a specified subscription. This may be used
-- to change a push subscription to a pull one (signified by an empty
-- PushConfig) or vice versa, or change the endpoint URL and other
-- attributes of a push subscription. Messages will accumulate for delivery
-- continuously through the call regardless of changes to the PushConfig.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.modifyPushConfig@.
module Network.Google.API.PubSub.Projects.Subscriptions.ModifyPushConfig
    (
    -- * REST Resource
      ProjectsSubscriptionsModifyPushConfigAPI

    -- * Creating a Request
    , projectsSubscriptionsModifyPushConfig'
    , ProjectsSubscriptionsModifyPushConfig'

    -- * Request Lenses
    , psmpcXgafv
    , psmpcQuotaUser
    , psmpcPrettyPrint
    , psmpcUploadProtocol
    , psmpcPp
    , psmpcAccessToken
    , psmpcUploadType
    , psmpcBearerToken
    , psmpcKey
    , psmpcOauthToken
    , psmpcSubscription
    , psmpcFields
    , psmpcCallback
    , psmpcAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for pubsub.projects.subscriptions.modifyPushConfig which the
-- 'ProjectsSubscriptionsModifyPushConfig'' request conforms to.
type ProjectsSubscriptionsModifyPushConfigAPI =
     "v1beta2" :>
       "{+subscription}:modifyPushConfig" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "pp" Bool :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "bearer_token" Text :>
                         QueryParam "key" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" Text :> Post '[JSON] Empty

-- | Modifies the PushConfig for a specified subscription. This may be used
-- to change a push subscription to a pull one (signified by an empty
-- PushConfig) or vice versa, or change the endpoint URL and other
-- attributes of a push subscription. Messages will accumulate for delivery
-- continuously through the call regardless of changes to the PushConfig.
--
-- /See:/ 'projectsSubscriptionsModifyPushConfig'' smart constructor.
data ProjectsSubscriptionsModifyPushConfig' = ProjectsSubscriptionsModifyPushConfig'
    { _psmpcXgafv          :: !(Maybe Text)
    , _psmpcQuotaUser      :: !(Maybe Text)
    , _psmpcPrettyPrint    :: !Bool
    , _psmpcUploadProtocol :: !(Maybe Text)
    , _psmpcPp             :: !Bool
    , _psmpcAccessToken    :: !(Maybe Text)
    , _psmpcUploadType     :: !(Maybe Text)
    , _psmpcBearerToken    :: !(Maybe Text)
    , _psmpcKey            :: !(Maybe Text)
    , _psmpcOauthToken     :: !(Maybe Text)
    , _psmpcSubscription   :: !Text
    , _psmpcFields         :: !(Maybe Text)
    , _psmpcCallback       :: !(Maybe Text)
    , _psmpcAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsModifyPushConfig'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psmpcXgafv'
--
-- * 'psmpcQuotaUser'
--
-- * 'psmpcPrettyPrint'
--
-- * 'psmpcUploadProtocol'
--
-- * 'psmpcPp'
--
-- * 'psmpcAccessToken'
--
-- * 'psmpcUploadType'
--
-- * 'psmpcBearerToken'
--
-- * 'psmpcKey'
--
-- * 'psmpcOauthToken'
--
-- * 'psmpcSubscription'
--
-- * 'psmpcFields'
--
-- * 'psmpcCallback'
--
-- * 'psmpcAlt'
projectsSubscriptionsModifyPushConfig'
    :: Text -- ^ 'subscription'
    -> ProjectsSubscriptionsModifyPushConfig'
projectsSubscriptionsModifyPushConfig' pPsmpcSubscription_ =
    ProjectsSubscriptionsModifyPushConfig'
    { _psmpcXgafv = Nothing
    , _psmpcQuotaUser = Nothing
    , _psmpcPrettyPrint = True
    , _psmpcUploadProtocol = Nothing
    , _psmpcPp = True
    , _psmpcAccessToken = Nothing
    , _psmpcUploadType = Nothing
    , _psmpcBearerToken = Nothing
    , _psmpcKey = Nothing
    , _psmpcOauthToken = Nothing
    , _psmpcSubscription = pPsmpcSubscription_
    , _psmpcFields = Nothing
    , _psmpcCallback = Nothing
    , _psmpcAlt = "json"
    }

-- | V1 error format.
psmpcXgafv :: Lens' ProjectsSubscriptionsModifyPushConfig' (Maybe Text)
psmpcXgafv
  = lens _psmpcXgafv (\ s a -> s{_psmpcXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
psmpcQuotaUser :: Lens' ProjectsSubscriptionsModifyPushConfig' (Maybe Text)
psmpcQuotaUser
  = lens _psmpcQuotaUser
      (\ s a -> s{_psmpcQuotaUser = a})

-- | Returns response with indentations and line breaks.
psmpcPrettyPrint :: Lens' ProjectsSubscriptionsModifyPushConfig' Bool
psmpcPrettyPrint
  = lens _psmpcPrettyPrint
      (\ s a -> s{_psmpcPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psmpcUploadProtocol :: Lens' ProjectsSubscriptionsModifyPushConfig' (Maybe Text)
psmpcUploadProtocol
  = lens _psmpcUploadProtocol
      (\ s a -> s{_psmpcUploadProtocol = a})

-- | Pretty-print response.
psmpcPp :: Lens' ProjectsSubscriptionsModifyPushConfig' Bool
psmpcPp = lens _psmpcPp (\ s a -> s{_psmpcPp = a})

-- | OAuth access token.
psmpcAccessToken :: Lens' ProjectsSubscriptionsModifyPushConfig' (Maybe Text)
psmpcAccessToken
  = lens _psmpcAccessToken
      (\ s a -> s{_psmpcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psmpcUploadType :: Lens' ProjectsSubscriptionsModifyPushConfig' (Maybe Text)
psmpcUploadType
  = lens _psmpcUploadType
      (\ s a -> s{_psmpcUploadType = a})

-- | OAuth bearer token.
psmpcBearerToken :: Lens' ProjectsSubscriptionsModifyPushConfig' (Maybe Text)
psmpcBearerToken
  = lens _psmpcBearerToken
      (\ s a -> s{_psmpcBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psmpcKey :: Lens' ProjectsSubscriptionsModifyPushConfig' (Maybe Text)
psmpcKey = lens _psmpcKey (\ s a -> s{_psmpcKey = a})

-- | OAuth 2.0 token for the current user.
psmpcOauthToken :: Lens' ProjectsSubscriptionsModifyPushConfig' (Maybe Text)
psmpcOauthToken
  = lens _psmpcOauthToken
      (\ s a -> s{_psmpcOauthToken = a})

-- | The name of the subscription.
psmpcSubscription :: Lens' ProjectsSubscriptionsModifyPushConfig' Text
psmpcSubscription
  = lens _psmpcSubscription
      (\ s a -> s{_psmpcSubscription = a})

-- | Selector specifying which fields to include in a partial response.
psmpcFields :: Lens' ProjectsSubscriptionsModifyPushConfig' (Maybe Text)
psmpcFields
  = lens _psmpcFields (\ s a -> s{_psmpcFields = a})

-- | JSONP
psmpcCallback :: Lens' ProjectsSubscriptionsModifyPushConfig' (Maybe Text)
psmpcCallback
  = lens _psmpcCallback
      (\ s a -> s{_psmpcCallback = a})

-- | Data format for response.
psmpcAlt :: Lens' ProjectsSubscriptionsModifyPushConfig' Text
psmpcAlt = lens _psmpcAlt (\ s a -> s{_psmpcAlt = a})

instance GoogleRequest
         ProjectsSubscriptionsModifyPushConfig' where
        type Rs ProjectsSubscriptionsModifyPushConfig' =
             Empty
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u
          ProjectsSubscriptionsModifyPushConfig'{..}
          = go _psmpcXgafv _psmpcQuotaUser
              (Just _psmpcPrettyPrint)
              _psmpcUploadProtocol
              (Just _psmpcPp)
              _psmpcAccessToken
              _psmpcUploadType
              _psmpcBearerToken
              _psmpcKey
              _psmpcOauthToken
              _psmpcSubscription
              _psmpcFields
              _psmpcCallback
              (Just _psmpcAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ProjectsSubscriptionsModifyPushConfigAPI)
                      r
                      u
