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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.Pull
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Pulls messages from the server. Returns an empty list if there are no
-- messages available in the backlog. The server may return UNAVAILABLE if
-- there are too many concurrent pull requests pending for the given
-- subscription.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsSubscriptionsPull@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.Pull
    (
    -- * REST Resource
      ProjectsSubscriptionsPullResource

    -- * Creating a Request
    , projectsSubscriptionsPull'
    , ProjectsSubscriptionsPull'

    -- * Request Lenses
    , pspXgafv
    , pspQuotaUser
    , pspPrettyPrint
    , pspUploadProtocol
    , pspPp
    , pspAccessToken
    , pspUploadType
    , pspPayload
    , pspBearerToken
    , pspKey
    , pspOAuthToken
    , pspSubscription
    , pspFields
    , pspCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsSubscriptionsPull@ method which the
-- 'ProjectsSubscriptionsPull'' request conforms to.
type ProjectsSubscriptionsPullResource =
     "v1beta2" :>
       CaptureMode "subscription" "pull" Text :>
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
                                   ReqBody '[JSON] PullRequest :>
                                     Post '[JSON] PullResponse

-- | Pulls messages from the server. Returns an empty list if there are no
-- messages available in the backlog. The server may return UNAVAILABLE if
-- there are too many concurrent pull requests pending for the given
-- subscription.
--
-- /See:/ 'projectsSubscriptionsPull'' smart constructor.
data ProjectsSubscriptionsPull' = ProjectsSubscriptionsPull'
    { _pspXgafv          :: !(Maybe Text)
    , _pspQuotaUser      :: !(Maybe Text)
    , _pspPrettyPrint    :: !Bool
    , _pspUploadProtocol :: !(Maybe Text)
    , _pspPp             :: !Bool
    , _pspAccessToken    :: !(Maybe Text)
    , _pspUploadType     :: !(Maybe Text)
    , _pspPayload        :: !PullRequest
    , _pspBearerToken    :: !(Maybe Text)
    , _pspKey            :: !(Maybe AuthKey)
    , _pspOAuthToken     :: !(Maybe OAuthToken)
    , _pspSubscription   :: !Text
    , _pspFields         :: !(Maybe Text)
    , _pspCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsPull'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pspXgafv'
--
-- * 'pspQuotaUser'
--
-- * 'pspPrettyPrint'
--
-- * 'pspUploadProtocol'
--
-- * 'pspPp'
--
-- * 'pspAccessToken'
--
-- * 'pspUploadType'
--
-- * 'pspPayload'
--
-- * 'pspBearerToken'
--
-- * 'pspKey'
--
-- * 'pspOAuthToken'
--
-- * 'pspSubscription'
--
-- * 'pspFields'
--
-- * 'pspCallback'
projectsSubscriptionsPull'
    :: PullRequest -- ^ 'payload'
    -> Text -- ^ 'subscription'
    -> ProjectsSubscriptionsPull'
projectsSubscriptionsPull' pPspPayload_ pPspSubscription_ =
    ProjectsSubscriptionsPull'
    { _pspXgafv = Nothing
    , _pspQuotaUser = Nothing
    , _pspPrettyPrint = True
    , _pspUploadProtocol = Nothing
    , _pspPp = True
    , _pspAccessToken = Nothing
    , _pspUploadType = Nothing
    , _pspPayload = pPspPayload_
    , _pspBearerToken = Nothing
    , _pspKey = Nothing
    , _pspOAuthToken = Nothing
    , _pspSubscription = pPspSubscription_
    , _pspFields = Nothing
    , _pspCallback = Nothing
    }

-- | V1 error format.
pspXgafv :: Lens' ProjectsSubscriptionsPull' (Maybe Text)
pspXgafv = lens _pspXgafv (\ s a -> s{_pspXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pspQuotaUser :: Lens' ProjectsSubscriptionsPull' (Maybe Text)
pspQuotaUser
  = lens _pspQuotaUser (\ s a -> s{_pspQuotaUser = a})

-- | Returns response with indentations and line breaks.
pspPrettyPrint :: Lens' ProjectsSubscriptionsPull' Bool
pspPrettyPrint
  = lens _pspPrettyPrint
      (\ s a -> s{_pspPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pspUploadProtocol :: Lens' ProjectsSubscriptionsPull' (Maybe Text)
pspUploadProtocol
  = lens _pspUploadProtocol
      (\ s a -> s{_pspUploadProtocol = a})

-- | Pretty-print response.
pspPp :: Lens' ProjectsSubscriptionsPull' Bool
pspPp = lens _pspPp (\ s a -> s{_pspPp = a})

-- | OAuth access token.
pspAccessToken :: Lens' ProjectsSubscriptionsPull' (Maybe Text)
pspAccessToken
  = lens _pspAccessToken
      (\ s a -> s{_pspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pspUploadType :: Lens' ProjectsSubscriptionsPull' (Maybe Text)
pspUploadType
  = lens _pspUploadType
      (\ s a -> s{_pspUploadType = a})

-- | Multipart request metadata.
pspPayload :: Lens' ProjectsSubscriptionsPull' PullRequest
pspPayload
  = lens _pspPayload (\ s a -> s{_pspPayload = a})

-- | OAuth bearer token.
pspBearerToken :: Lens' ProjectsSubscriptionsPull' (Maybe Text)
pspBearerToken
  = lens _pspBearerToken
      (\ s a -> s{_pspBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pspKey :: Lens' ProjectsSubscriptionsPull' (Maybe AuthKey)
pspKey = lens _pspKey (\ s a -> s{_pspKey = a})

-- | OAuth 2.0 token for the current user.
pspOAuthToken :: Lens' ProjectsSubscriptionsPull' (Maybe OAuthToken)
pspOAuthToken
  = lens _pspOAuthToken
      (\ s a -> s{_pspOAuthToken = a})

-- | The subscription from which messages should be pulled.
pspSubscription :: Lens' ProjectsSubscriptionsPull' Text
pspSubscription
  = lens _pspSubscription
      (\ s a -> s{_pspSubscription = a})

-- | Selector specifying which fields to include in a partial response.
pspFields :: Lens' ProjectsSubscriptionsPull' (Maybe Text)
pspFields
  = lens _pspFields (\ s a -> s{_pspFields = a})

-- | JSONP
pspCallback :: Lens' ProjectsSubscriptionsPull' (Maybe Text)
pspCallback
  = lens _pspCallback (\ s a -> s{_pspCallback = a})

instance GoogleAuth ProjectsSubscriptionsPull' where
        _AuthKey = pspKey . _Just
        _AuthToken = pspOAuthToken . _Just

instance GoogleRequest ProjectsSubscriptionsPull'
         where
        type Rs ProjectsSubscriptionsPull' = PullResponse
        request = requestWith pubSubRequest
        requestWith rq ProjectsSubscriptionsPull'{..}
          = go _pspSubscription _pspXgafv _pspUploadProtocol
              (Just _pspPp)
              _pspAccessToken
              _pspUploadType
              _pspBearerToken
              _pspCallback
              _pspQuotaUser
              (Just _pspPrettyPrint)
              _pspFields
              _pspKey
              _pspOAuthToken
              (Just AltJSON)
              _pspPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsSubscriptionsPullResource)
                      rq
