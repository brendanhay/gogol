{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the configuration details of a subscription.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsSubscriptionsGet@.
module PubSub.Projects.Subscriptions.Get
    (
    -- * REST Resource
      ProjectsSubscriptionsGetAPI

    -- * Creating a Request
    , projectsSubscriptionsGet
    , ProjectsSubscriptionsGet

    -- * Request Lenses
    , psgXgafv
    , psgQuotaUser
    , psgPrettyPrint
    , psgUploadProtocol
    , psgPp
    , psgAccessToken
    , psgUploadType
    , psgBearerToken
    , psgKey
    , psgOauthToken
    , psgSubscription
    , psgFields
    , psgCallback
    , psgAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsSubscriptionsGet@ which the
-- 'ProjectsSubscriptionsGet' request conforms to.
type ProjectsSubscriptionsGetAPI =
     "v1beta2" :>
       "{+subscription}" :> Get '[JSON] Subscription

-- | Gets the configuration details of a subscription.
--
-- /See:/ 'projectsSubscriptionsGet' smart constructor.
data ProjectsSubscriptionsGet = ProjectsSubscriptionsGet
    { _psgXgafv          :: !(Maybe Text)
    , _psgQuotaUser      :: !(Maybe Text)
    , _psgPrettyPrint    :: !Bool
    , _psgUploadProtocol :: !(Maybe Text)
    , _psgPp             :: !Bool
    , _psgAccessToken    :: !(Maybe Text)
    , _psgUploadType     :: !(Maybe Text)
    , _psgBearerToken    :: !(Maybe Text)
    , _psgKey            :: !(Maybe Text)
    , _psgOauthToken     :: !(Maybe Text)
    , _psgSubscription   :: !Text
    , _psgFields         :: !(Maybe Text)
    , _psgCallback       :: !(Maybe Text)
    , _psgAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgXgafv'
--
-- * 'psgQuotaUser'
--
-- * 'psgPrettyPrint'
--
-- * 'psgUploadProtocol'
--
-- * 'psgPp'
--
-- * 'psgAccessToken'
--
-- * 'psgUploadType'
--
-- * 'psgBearerToken'
--
-- * 'psgKey'
--
-- * 'psgOauthToken'
--
-- * 'psgSubscription'
--
-- * 'psgFields'
--
-- * 'psgCallback'
--
-- * 'psgAlt'
projectsSubscriptionsGet
    :: Text -- ^ 'subscription'
    -> ProjectsSubscriptionsGet
projectsSubscriptionsGet pPsgSubscription_ =
    ProjectsSubscriptionsGet
    { _psgXgafv = Nothing
    , _psgQuotaUser = Nothing
    , _psgPrettyPrint = True
    , _psgUploadProtocol = Nothing
    , _psgPp = True
    , _psgAccessToken = Nothing
    , _psgUploadType = Nothing
    , _psgBearerToken = Nothing
    , _psgKey = Nothing
    , _psgOauthToken = Nothing
    , _psgSubscription = pPsgSubscription_
    , _psgFields = Nothing
    , _psgCallback = Nothing
    , _psgAlt = "json"
    }

-- | V1 error format.
psgXgafv :: Lens' ProjectsSubscriptionsGet' (Maybe Text)
psgXgafv = lens _psgXgafv (\ s a -> s{_psgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
psgQuotaUser :: Lens' ProjectsSubscriptionsGet' (Maybe Text)
psgQuotaUser
  = lens _psgQuotaUser (\ s a -> s{_psgQuotaUser = a})

-- | Returns response with indentations and line breaks.
psgPrettyPrint :: Lens' ProjectsSubscriptionsGet' Bool
psgPrettyPrint
  = lens _psgPrettyPrint
      (\ s a -> s{_psgPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgUploadProtocol :: Lens' ProjectsSubscriptionsGet' (Maybe Text)
psgUploadProtocol
  = lens _psgUploadProtocol
      (\ s a -> s{_psgUploadProtocol = a})

-- | Pretty-print response.
psgPp :: Lens' ProjectsSubscriptionsGet' Bool
psgPp = lens _psgPp (\ s a -> s{_psgPp = a})

-- | OAuth access token.
psgAccessToken :: Lens' ProjectsSubscriptionsGet' (Maybe Text)
psgAccessToken
  = lens _psgAccessToken
      (\ s a -> s{_psgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgUploadType :: Lens' ProjectsSubscriptionsGet' (Maybe Text)
psgUploadType
  = lens _psgUploadType
      (\ s a -> s{_psgUploadType = a})

-- | OAuth bearer token.
psgBearerToken :: Lens' ProjectsSubscriptionsGet' (Maybe Text)
psgBearerToken
  = lens _psgBearerToken
      (\ s a -> s{_psgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psgKey :: Lens' ProjectsSubscriptionsGet' (Maybe Text)
psgKey = lens _psgKey (\ s a -> s{_psgKey = a})

-- | OAuth 2.0 token for the current user.
psgOauthToken :: Lens' ProjectsSubscriptionsGet' (Maybe Text)
psgOauthToken
  = lens _psgOauthToken
      (\ s a -> s{_psgOauthToken = a})

-- | The name of the subscription to get.
psgSubscription :: Lens' ProjectsSubscriptionsGet' Text
psgSubscription
  = lens _psgSubscription
      (\ s a -> s{_psgSubscription = a})

-- | Selector specifying which fields to include in a partial response.
psgFields :: Lens' ProjectsSubscriptionsGet' (Maybe Text)
psgFields
  = lens _psgFields (\ s a -> s{_psgFields = a})

-- | JSONP
psgCallback :: Lens' ProjectsSubscriptionsGet' (Maybe Text)
psgCallback
  = lens _psgCallback (\ s a -> s{_psgCallback = a})

-- | Data format for response.
psgAlt :: Lens' ProjectsSubscriptionsGet' Text
psgAlt = lens _psgAlt (\ s a -> s{_psgAlt = a})

instance GoogleRequest ProjectsSubscriptionsGet'
         where
        type Rs ProjectsSubscriptionsGet' = Subscription
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u ProjectsSubscriptionsGet{..}
          = go _psgXgafv _psgQuotaUser _psgPrettyPrint
              _psgUploadProtocol
              _psgPp
              _psgAccessToken
              _psgUploadType
              _psgBearerToken
              _psgKey
              _psgOauthToken
              _psgSubscription
              _psgFields
              _psgCallback
              _psgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsSubscriptionsGetAPI)
                      r
                      u
