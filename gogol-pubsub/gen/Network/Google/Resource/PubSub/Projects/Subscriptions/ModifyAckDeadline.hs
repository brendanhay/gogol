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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyAckDeadline
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Modifies the ack deadline for a specific message. This method is useful
-- to indicate that more time is needed to process a message by the
-- subscriber, or to make the message available for redelivery if the
-- processing was interrupted.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsSubscriptionsModifyAckDeadline@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.ModifyAckDeadline
    (
    -- * REST Resource
      ProjectsSubscriptionsModifyAckDeadlineResource

    -- * Creating a Request
    , projectsSubscriptionsModifyAckDeadline'
    , ProjectsSubscriptionsModifyAckDeadline'

    -- * Request Lenses
    , psmadXgafv
    , psmadQuotaUser
    , psmadPrettyPrint
    , psmadUploadProtocol
    , psmadPp
    , psmadAccessToken
    , psmadUploadType
    , psmadPayload
    , psmadBearerToken
    , psmadKey
    , psmadOAuthToken
    , psmadSubscription
    , psmadFields
    , psmadCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsSubscriptionsModifyAckDeadline@ which the
-- 'ProjectsSubscriptionsModifyAckDeadline'' request conforms to.
type ProjectsSubscriptionsModifyAckDeadlineResource =
     "v1beta2" :>
       CaptureMode "subscription" "modifyAckDeadline" Text
         :>
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
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] ModifyAckDeadlineRequest :>
                                     Post '[JSON] Empty

-- | Modifies the ack deadline for a specific message. This method is useful
-- to indicate that more time is needed to process a message by the
-- subscriber, or to make the message available for redelivery if the
-- processing was interrupted.
--
-- /See:/ 'projectsSubscriptionsModifyAckDeadline'' smart constructor.
data ProjectsSubscriptionsModifyAckDeadline' = ProjectsSubscriptionsModifyAckDeadline'
    { _psmadXgafv          :: !(Maybe Text)
    , _psmadQuotaUser      :: !(Maybe Text)
    , _psmadPrettyPrint    :: !Bool
    , _psmadUploadProtocol :: !(Maybe Text)
    , _psmadPp             :: !Bool
    , _psmadAccessToken    :: !(Maybe Text)
    , _psmadUploadType     :: !(Maybe Text)
    , _psmadPayload        :: !ModifyAckDeadlineRequest
    , _psmadBearerToken    :: !(Maybe Text)
    , _psmadKey            :: !(Maybe Key)
    , _psmadOAuthToken     :: !(Maybe OAuthToken)
    , _psmadSubscription   :: !Text
    , _psmadFields         :: !(Maybe Text)
    , _psmadCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsModifyAckDeadline'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psmadXgafv'
--
-- * 'psmadQuotaUser'
--
-- * 'psmadPrettyPrint'
--
-- * 'psmadUploadProtocol'
--
-- * 'psmadPp'
--
-- * 'psmadAccessToken'
--
-- * 'psmadUploadType'
--
-- * 'psmadPayload'
--
-- * 'psmadBearerToken'
--
-- * 'psmadKey'
--
-- * 'psmadOAuthToken'
--
-- * 'psmadSubscription'
--
-- * 'psmadFields'
--
-- * 'psmadCallback'
projectsSubscriptionsModifyAckDeadline'
    :: ModifyAckDeadlineRequest -- ^ 'payload'
    -> Text -- ^ 'subscription'
    -> ProjectsSubscriptionsModifyAckDeadline'
projectsSubscriptionsModifyAckDeadline' pPsmadPayload_ pPsmadSubscription_ =
    ProjectsSubscriptionsModifyAckDeadline'
    { _psmadXgafv = Nothing
    , _psmadQuotaUser = Nothing
    , _psmadPrettyPrint = True
    , _psmadUploadProtocol = Nothing
    , _psmadPp = True
    , _psmadAccessToken = Nothing
    , _psmadUploadType = Nothing
    , _psmadPayload = pPsmadPayload_
    , _psmadBearerToken = Nothing
    , _psmadKey = Nothing
    , _psmadOAuthToken = Nothing
    , _psmadSubscription = pPsmadSubscription_
    , _psmadFields = Nothing
    , _psmadCallback = Nothing
    }

-- | V1 error format.
psmadXgafv :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadXgafv
  = lens _psmadXgafv (\ s a -> s{_psmadXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
psmadQuotaUser :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadQuotaUser
  = lens _psmadQuotaUser
      (\ s a -> s{_psmadQuotaUser = a})

-- | Returns response with indentations and line breaks.
psmadPrettyPrint :: Lens' ProjectsSubscriptionsModifyAckDeadline' Bool
psmadPrettyPrint
  = lens _psmadPrettyPrint
      (\ s a -> s{_psmadPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psmadUploadProtocol :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadUploadProtocol
  = lens _psmadUploadProtocol
      (\ s a -> s{_psmadUploadProtocol = a})

-- | Pretty-print response.
psmadPp :: Lens' ProjectsSubscriptionsModifyAckDeadline' Bool
psmadPp = lens _psmadPp (\ s a -> s{_psmadPp = a})

-- | OAuth access token.
psmadAccessToken :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadAccessToken
  = lens _psmadAccessToken
      (\ s a -> s{_psmadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psmadUploadType :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadUploadType
  = lens _psmadUploadType
      (\ s a -> s{_psmadUploadType = a})

-- | Multipart request metadata.
psmadPayload :: Lens' ProjectsSubscriptionsModifyAckDeadline' ModifyAckDeadlineRequest
psmadPayload
  = lens _psmadPayload (\ s a -> s{_psmadPayload = a})

-- | OAuth bearer token.
psmadBearerToken :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadBearerToken
  = lens _psmadBearerToken
      (\ s a -> s{_psmadBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psmadKey :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Key)
psmadKey = lens _psmadKey (\ s a -> s{_psmadKey = a})

-- | OAuth 2.0 token for the current user.
psmadOAuthToken :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe OAuthToken)
psmadOAuthToken
  = lens _psmadOAuthToken
      (\ s a -> s{_psmadOAuthToken = a})

-- | The name of the subscription.
psmadSubscription :: Lens' ProjectsSubscriptionsModifyAckDeadline' Text
psmadSubscription
  = lens _psmadSubscription
      (\ s a -> s{_psmadSubscription = a})

-- | Selector specifying which fields to include in a partial response.
psmadFields :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadFields
  = lens _psmadFields (\ s a -> s{_psmadFields = a})

-- | JSONP
psmadCallback :: Lens' ProjectsSubscriptionsModifyAckDeadline' (Maybe Text)
psmadCallback
  = lens _psmadCallback
      (\ s a -> s{_psmadCallback = a})

instance GoogleAuth
         ProjectsSubscriptionsModifyAckDeadline' where
        authKey = psmadKey . _Just
        authToken = psmadOAuthToken . _Just

instance GoogleRequest
         ProjectsSubscriptionsModifyAckDeadline' where
        type Rs ProjectsSubscriptionsModifyAckDeadline' =
             Empty
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u
          ProjectsSubscriptionsModifyAckDeadline'{..}
          = go _psmadSubscription _psmadXgafv
              _psmadUploadProtocol
              (Just _psmadPp)
              _psmadAccessToken
              _psmadUploadType
              _psmadBearerToken
              _psmadCallback
              _psmadQuotaUser
              (Just _psmadPrettyPrint)
              _psmadFields
              _psmadKey
              _psmadOAuthToken
              (Just AltJSON)
              _psmadPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ProjectsSubscriptionsModifyAckDeadlineResource)
                      r
                      u
