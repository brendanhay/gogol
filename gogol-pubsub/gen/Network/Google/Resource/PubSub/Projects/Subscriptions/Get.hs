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
module Network.Google.Resource.PubSub.Projects.Subscriptions.Get
    (
    -- * REST Resource
      ProjectsSubscriptionsGetResource

    -- * Creating a Request
    , projectsSubscriptionsGet'
    , ProjectsSubscriptionsGet'

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
    , psgOAuthToken
    , psgSubscription
    , psgFields
    , psgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsSubscriptionsGet@ method which the
-- 'ProjectsSubscriptionsGet'' request conforms to.
type ProjectsSubscriptionsGetResource =
     "v1beta2" :>
       Capture "subscription" Text :>
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
                                   Get '[JSON] Subscription

-- | Gets the configuration details of a subscription.
--
-- /See:/ 'projectsSubscriptionsGet'' smart constructor.
data ProjectsSubscriptionsGet' = ProjectsSubscriptionsGet'
    { _psgXgafv          :: !(Maybe Text)
    , _psgQuotaUser      :: !(Maybe Text)
    , _psgPrettyPrint    :: !Bool
    , _psgUploadProtocol :: !(Maybe Text)
    , _psgPp             :: !Bool
    , _psgAccessToken    :: !(Maybe Text)
    , _psgUploadType     :: !(Maybe Text)
    , _psgBearerToken    :: !(Maybe Text)
    , _psgKey            :: !(Maybe AuthKey)
    , _psgOAuthToken     :: !(Maybe OAuthToken)
    , _psgSubscription   :: !Text
    , _psgFields         :: !(Maybe Text)
    , _psgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'psgOAuthToken'
--
-- * 'psgSubscription'
--
-- * 'psgFields'
--
-- * 'psgCallback'
projectsSubscriptionsGet'
    :: Text -- ^ 'subscription'
    -> ProjectsSubscriptionsGet'
projectsSubscriptionsGet' pPsgSubscription_ =
    ProjectsSubscriptionsGet'
    { _psgXgafv = Nothing
    , _psgQuotaUser = Nothing
    , _psgPrettyPrint = True
    , _psgUploadProtocol = Nothing
    , _psgPp = True
    , _psgAccessToken = Nothing
    , _psgUploadType = Nothing
    , _psgBearerToken = Nothing
    , _psgKey = Nothing
    , _psgOAuthToken = Nothing
    , _psgSubscription = pPsgSubscription_
    , _psgFields = Nothing
    , _psgCallback = Nothing
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
psgKey :: Lens' ProjectsSubscriptionsGet' (Maybe AuthKey)
psgKey = lens _psgKey (\ s a -> s{_psgKey = a})

-- | OAuth 2.0 token for the current user.
psgOAuthToken :: Lens' ProjectsSubscriptionsGet' (Maybe OAuthToken)
psgOAuthToken
  = lens _psgOAuthToken
      (\ s a -> s{_psgOAuthToken = a})

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

instance GoogleAuth ProjectsSubscriptionsGet' where
        _AuthKey = psgKey . _Just
        _AuthToken = psgOAuthToken . _Just

instance GoogleRequest ProjectsSubscriptionsGet'
         where
        type Rs ProjectsSubscriptionsGet' = Subscription
        request = requestWith pubSubRequest
        requestWith rq ProjectsSubscriptionsGet'{..}
          = go _psgSubscription _psgXgafv _psgUploadProtocol
              (Just _psgPp)
              _psgAccessToken
              _psgUploadType
              _psgBearerToken
              _psgCallback
              _psgQuotaUser
              (Just _psgPrettyPrint)
              _psgFields
              _psgKey
              _psgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsSubscriptionsGetResource)
                      rq
