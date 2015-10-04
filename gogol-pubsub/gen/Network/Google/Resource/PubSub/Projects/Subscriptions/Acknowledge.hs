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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.Acknowledge
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Acknowledges the messages associated with the ack tokens in the
-- AcknowledgeRequest. The Pub\/Sub system can remove the relevant messages
-- from the subscription. Acknowledging a message whose ack deadline has
-- expired may succeed, but such a message may be redelivered later.
-- Acknowledging a message more than once will not result in an error.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsSubscriptionsAcknowledge@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.Acknowledge
    (
    -- * REST Resource
      ProjectsSubscriptionsAcknowledgeResource

    -- * Creating a Request
    , projectsSubscriptionsAcknowledge'
    , ProjectsSubscriptionsAcknowledge'

    -- * Request Lenses
    , psaXgafv
    , psaQuotaUser
    , psaPrettyPrint
    , psaUploadProtocol
    , psaPp
    , psaAccessToken
    , psaUploadType
    , psaPayload
    , psaBearerToken
    , psaKey
    , psaOAuthToken
    , psaSubscription
    , psaFields
    , psaCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsSubscriptionsAcknowledge@ which the
-- 'ProjectsSubscriptionsAcknowledge'' request conforms to.
type ProjectsSubscriptionsAcknowledgeResource =
     "v1beta2" :>
       CaptureMode "subscription" "acknowledge" Text :>
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
                                   ReqBody '[JSON] AcknowledgeRequest :>
                                     Post '[JSON] Empty

-- | Acknowledges the messages associated with the ack tokens in the
-- AcknowledgeRequest. The Pub\/Sub system can remove the relevant messages
-- from the subscription. Acknowledging a message whose ack deadline has
-- expired may succeed, but such a message may be redelivered later.
-- Acknowledging a message more than once will not result in an error.
--
-- /See:/ 'projectsSubscriptionsAcknowledge'' smart constructor.
data ProjectsSubscriptionsAcknowledge' = ProjectsSubscriptionsAcknowledge'
    { _psaXgafv          :: !(Maybe Text)
    , _psaQuotaUser      :: !(Maybe Text)
    , _psaPrettyPrint    :: !Bool
    , _psaUploadProtocol :: !(Maybe Text)
    , _psaPp             :: !Bool
    , _psaAccessToken    :: !(Maybe Text)
    , _psaUploadType     :: !(Maybe Text)
    , _psaPayload        :: !AcknowledgeRequest
    , _psaBearerToken    :: !(Maybe Text)
    , _psaKey            :: !(Maybe Key)
    , _psaOAuthToken     :: !(Maybe OAuthToken)
    , _psaSubscription   :: !Text
    , _psaFields         :: !(Maybe Text)
    , _psaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsAcknowledge'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psaXgafv'
--
-- * 'psaQuotaUser'
--
-- * 'psaPrettyPrint'
--
-- * 'psaUploadProtocol'
--
-- * 'psaPp'
--
-- * 'psaAccessToken'
--
-- * 'psaUploadType'
--
-- * 'psaPayload'
--
-- * 'psaBearerToken'
--
-- * 'psaKey'
--
-- * 'psaOAuthToken'
--
-- * 'psaSubscription'
--
-- * 'psaFields'
--
-- * 'psaCallback'
projectsSubscriptionsAcknowledge'
    :: AcknowledgeRequest -- ^ 'payload'
    -> Text -- ^ 'subscription'
    -> ProjectsSubscriptionsAcknowledge'
projectsSubscriptionsAcknowledge' pPsaPayload_ pPsaSubscription_ =
    ProjectsSubscriptionsAcknowledge'
    { _psaXgafv = Nothing
    , _psaQuotaUser = Nothing
    , _psaPrettyPrint = True
    , _psaUploadProtocol = Nothing
    , _psaPp = True
    , _psaAccessToken = Nothing
    , _psaUploadType = Nothing
    , _psaPayload = pPsaPayload_
    , _psaBearerToken = Nothing
    , _psaKey = Nothing
    , _psaOAuthToken = Nothing
    , _psaSubscription = pPsaSubscription_
    , _psaFields = Nothing
    , _psaCallback = Nothing
    }

-- | V1 error format.
psaXgafv :: Lens' ProjectsSubscriptionsAcknowledge' (Maybe Text)
psaXgafv = lens _psaXgafv (\ s a -> s{_psaXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
psaQuotaUser :: Lens' ProjectsSubscriptionsAcknowledge' (Maybe Text)
psaQuotaUser
  = lens _psaQuotaUser (\ s a -> s{_psaQuotaUser = a})

-- | Returns response with indentations and line breaks.
psaPrettyPrint :: Lens' ProjectsSubscriptionsAcknowledge' Bool
psaPrettyPrint
  = lens _psaPrettyPrint
      (\ s a -> s{_psaPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psaUploadProtocol :: Lens' ProjectsSubscriptionsAcknowledge' (Maybe Text)
psaUploadProtocol
  = lens _psaUploadProtocol
      (\ s a -> s{_psaUploadProtocol = a})

-- | Pretty-print response.
psaPp :: Lens' ProjectsSubscriptionsAcknowledge' Bool
psaPp = lens _psaPp (\ s a -> s{_psaPp = a})

-- | OAuth access token.
psaAccessToken :: Lens' ProjectsSubscriptionsAcknowledge' (Maybe Text)
psaAccessToken
  = lens _psaAccessToken
      (\ s a -> s{_psaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psaUploadType :: Lens' ProjectsSubscriptionsAcknowledge' (Maybe Text)
psaUploadType
  = lens _psaUploadType
      (\ s a -> s{_psaUploadType = a})

-- | Multipart request metadata.
psaPayload :: Lens' ProjectsSubscriptionsAcknowledge' AcknowledgeRequest
psaPayload
  = lens _psaPayload (\ s a -> s{_psaPayload = a})

-- | OAuth bearer token.
psaBearerToken :: Lens' ProjectsSubscriptionsAcknowledge' (Maybe Text)
psaBearerToken
  = lens _psaBearerToken
      (\ s a -> s{_psaBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psaKey :: Lens' ProjectsSubscriptionsAcknowledge' (Maybe Key)
psaKey = lens _psaKey (\ s a -> s{_psaKey = a})

-- | OAuth 2.0 token for the current user.
psaOAuthToken :: Lens' ProjectsSubscriptionsAcknowledge' (Maybe OAuthToken)
psaOAuthToken
  = lens _psaOAuthToken
      (\ s a -> s{_psaOAuthToken = a})

-- | The subscription whose message is being acknowledged.
psaSubscription :: Lens' ProjectsSubscriptionsAcknowledge' Text
psaSubscription
  = lens _psaSubscription
      (\ s a -> s{_psaSubscription = a})

-- | Selector specifying which fields to include in a partial response.
psaFields :: Lens' ProjectsSubscriptionsAcknowledge' (Maybe Text)
psaFields
  = lens _psaFields (\ s a -> s{_psaFields = a})

-- | JSONP
psaCallback :: Lens' ProjectsSubscriptionsAcknowledge' (Maybe Text)
psaCallback
  = lens _psaCallback (\ s a -> s{_psaCallback = a})

instance GoogleAuth ProjectsSubscriptionsAcknowledge'
         where
        authKey = psaKey . _Just
        authToken = psaOAuthToken . _Just

instance GoogleRequest
         ProjectsSubscriptionsAcknowledge' where
        type Rs ProjectsSubscriptionsAcknowledge' = Empty
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u
          ProjectsSubscriptionsAcknowledge'{..}
          = go _psaSubscription _psaXgafv _psaUploadProtocol
              (Just _psaPp)
              _psaAccessToken
              _psaUploadType
              _psaBearerToken
              _psaCallback
              _psaQuotaUser
              (Just _psaPrettyPrint)
              _psaFields
              _psaKey
              _psaOAuthToken
              (Just AltJSON)
              _psaPayload
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy ProjectsSubscriptionsAcknowledgeResource)
                      r
                      u
