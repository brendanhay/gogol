{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.PubSub.Projects.Subscriptions.Pull
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
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @pubsub.projects.subscriptions.pull@.
module Network.Google.API.PubSub.Projects.Subscriptions.Pull
    (
    -- * REST Resource
      ProjectsSubscriptionsPullAPI

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
    , pspBearerToken
    , pspKey
    , pspOauthToken
    , pspSubscription
    , pspFields
    , pspCallback
    , pspAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for pubsub.projects.subscriptions.pull which the
-- 'ProjectsSubscriptionsPull'' request conforms to.
type ProjectsSubscriptionsPullAPI =
     "v1beta2" :>
       "{+subscription}:pull" :>
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
                                 QueryParam "alt" Text :>
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
    , _pspBearerToken    :: !(Maybe Text)
    , _pspKey            :: !(Maybe Text)
    , _pspOauthToken     :: !(Maybe Text)
    , _pspSubscription   :: !Text
    , _pspFields         :: !(Maybe Text)
    , _pspCallback       :: !(Maybe Text)
    , _pspAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'pspBearerToken'
--
-- * 'pspKey'
--
-- * 'pspOauthToken'
--
-- * 'pspSubscription'
--
-- * 'pspFields'
--
-- * 'pspCallback'
--
-- * 'pspAlt'
projectsSubscriptionsPull'
    :: Text -- ^ 'subscription'
    -> ProjectsSubscriptionsPull'
projectsSubscriptionsPull' pPspSubscription_ =
    ProjectsSubscriptionsPull'
    { _pspXgafv = Nothing
    , _pspQuotaUser = Nothing
    , _pspPrettyPrint = True
    , _pspUploadProtocol = Nothing
    , _pspPp = True
    , _pspAccessToken = Nothing
    , _pspUploadType = Nothing
    , _pspBearerToken = Nothing
    , _pspKey = Nothing
    , _pspOauthToken = Nothing
    , _pspSubscription = pPspSubscription_
    , _pspFields = Nothing
    , _pspCallback = Nothing
    , _pspAlt = "json"
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

-- | OAuth bearer token.
pspBearerToken :: Lens' ProjectsSubscriptionsPull' (Maybe Text)
pspBearerToken
  = lens _pspBearerToken
      (\ s a -> s{_pspBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pspKey :: Lens' ProjectsSubscriptionsPull' (Maybe Text)
pspKey = lens _pspKey (\ s a -> s{_pspKey = a})

-- | OAuth 2.0 token for the current user.
pspOauthToken :: Lens' ProjectsSubscriptionsPull' (Maybe Text)
pspOauthToken
  = lens _pspOauthToken
      (\ s a -> s{_pspOauthToken = a})

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

-- | Data format for response.
pspAlt :: Lens' ProjectsSubscriptionsPull' Text
pspAlt = lens _pspAlt (\ s a -> s{_pspAlt = a})

instance GoogleRequest ProjectsSubscriptionsPull'
         where
        type Rs ProjectsSubscriptionsPull' = PullResponse
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u ProjectsSubscriptionsPull'{..}
          = go _pspXgafv _pspQuotaUser (Just _pspPrettyPrint)
              _pspUploadProtocol
              (Just _pspPp)
              _pspAccessToken
              _pspUploadType
              _pspBearerToken
              _pspKey
              _pspOauthToken
              _pspSubscription
              _pspFields
              _pspCallback
              (Just _pspAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsSubscriptionsPullAPI)
                      r
                      u
