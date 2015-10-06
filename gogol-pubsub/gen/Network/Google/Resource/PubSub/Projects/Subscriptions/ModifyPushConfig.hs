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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyPushConfig
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
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsSubscriptionsModifyPushConfig@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyPushConfig
    (
    -- * REST Resource
      ProjectsSubscriptionsModifyPushConfigResource

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
    , psmpcPayload
    , psmpcBearerToken
    , psmpcKey
    , psmpcOAuthToken
    , psmpcSubscription
    , psmpcFields
    , psmpcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsSubscriptionsModifyPushConfig@ which the
-- 'ProjectsSubscriptionsModifyPushConfig'' request conforms to.
type ProjectsSubscriptionsModifyPushConfigResource =
     "v1beta2" :>
       CaptureMode "subscription" "modifyPushConfig" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] ModifyPushConfigRequest :>
                                     Post '[JSON] Empty

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
    , _psmpcPayload        :: !ModifyPushConfigRequest
    , _psmpcBearerToken    :: !(Maybe Text)
    , _psmpcKey            :: !(Maybe AuthKey)
    , _psmpcOAuthToken     :: !(Maybe OAuthToken)
    , _psmpcSubscription   :: !Text
    , _psmpcFields         :: !(Maybe Text)
    , _psmpcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'psmpcPayload'
--
-- * 'psmpcBearerToken'
--
-- * 'psmpcKey'
--
-- * 'psmpcOAuthToken'
--
-- * 'psmpcSubscription'
--
-- * 'psmpcFields'
--
-- * 'psmpcCallback'
projectsSubscriptionsModifyPushConfig'
    :: ModifyPushConfigRequest -- ^ 'payload'
    -> Text -- ^ 'subscription'
    -> ProjectsSubscriptionsModifyPushConfig'
projectsSubscriptionsModifyPushConfig' pPsmpcPayload_ pPsmpcSubscription_ =
    ProjectsSubscriptionsModifyPushConfig'
    { _psmpcXgafv = Nothing
    , _psmpcQuotaUser = Nothing
    , _psmpcPrettyPrint = True
    , _psmpcUploadProtocol = Nothing
    , _psmpcPp = True
    , _psmpcAccessToken = Nothing
    , _psmpcUploadType = Nothing
    , _psmpcPayload = pPsmpcPayload_
    , _psmpcBearerToken = Nothing
    , _psmpcKey = Nothing
    , _psmpcOAuthToken = Nothing
    , _psmpcSubscription = pPsmpcSubscription_
    , _psmpcFields = Nothing
    , _psmpcCallback = Nothing
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

-- | Multipart request metadata.
psmpcPayload :: Lens' ProjectsSubscriptionsModifyPushConfig' ModifyPushConfigRequest
psmpcPayload
  = lens _psmpcPayload (\ s a -> s{_psmpcPayload = a})

-- | OAuth bearer token.
psmpcBearerToken :: Lens' ProjectsSubscriptionsModifyPushConfig' (Maybe Text)
psmpcBearerToken
  = lens _psmpcBearerToken
      (\ s a -> s{_psmpcBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psmpcKey :: Lens' ProjectsSubscriptionsModifyPushConfig' (Maybe AuthKey)
psmpcKey = lens _psmpcKey (\ s a -> s{_psmpcKey = a})

-- | OAuth 2.0 token for the current user.
psmpcOAuthToken :: Lens' ProjectsSubscriptionsModifyPushConfig' (Maybe OAuthToken)
psmpcOAuthToken
  = lens _psmpcOAuthToken
      (\ s a -> s{_psmpcOAuthToken = a})

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

instance GoogleAuth
         ProjectsSubscriptionsModifyPushConfig' where
        _AuthKey = psmpcKey . _Just
        _AuthToken = psmpcOAuthToken . _Just

instance GoogleRequest
         ProjectsSubscriptionsModifyPushConfig' where
        type Rs ProjectsSubscriptionsModifyPushConfig' =
             Empty
        request = requestWith pubSubRequest
        requestWith rq
          ProjectsSubscriptionsModifyPushConfig'{..}
          = go _psmpcSubscription _psmpcXgafv
              _psmpcUploadProtocol
              (Just _psmpcPp)
              _psmpcAccessToken
              _psmpcUploadType
              _psmpcBearerToken
              _psmpcCallback
              _psmpcQuotaUser
              (Just _psmpcPrettyPrint)
              _psmpcFields
              _psmpcKey
              _psmpcOAuthToken
              (Just AltJSON)
              _psmpcPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ProjectsSubscriptionsModifyPushConfigResource)
                      rq
