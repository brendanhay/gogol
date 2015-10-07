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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an existing subscription. All pending messages in the
-- subscription are immediately dropped. Calls to Pull after deletion will
-- return NOT_FOUND. After a subscription is deleted, a new one may be
-- created with the same name, but the new one has no association with the
-- old subscription, or its topic unless the same topic is specified.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsSubscriptionsDelete@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.Delete
    (
    -- * REST Resource
      ProjectsSubscriptionsDeleteResource

    -- * Creating a Request
    , projectsSubscriptionsDelete'
    , ProjectsSubscriptionsDelete'

    -- * Request Lenses
    , psdXgafv
    , psdQuotaUser
    , psdPrettyPrint
    , psdUploadProtocol
    , psdPp
    , psdAccessToken
    , psdUploadType
    , psdBearerToken
    , psdKey
    , psdOAuthToken
    , psdSubscription
    , psdFields
    , psdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsSubscriptionsDelete@ method which the
-- 'ProjectsSubscriptionsDelete'' request conforms to.
type ProjectsSubscriptionsDeleteResource =
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
                                   Delete '[JSON] Empty

-- | Deletes an existing subscription. All pending messages in the
-- subscription are immediately dropped. Calls to Pull after deletion will
-- return NOT_FOUND. After a subscription is deleted, a new one may be
-- created with the same name, but the new one has no association with the
-- old subscription, or its topic unless the same topic is specified.
--
-- /See:/ 'projectsSubscriptionsDelete'' smart constructor.
data ProjectsSubscriptionsDelete' = ProjectsSubscriptionsDelete'
    { _psdXgafv          :: !(Maybe Text)
    , _psdQuotaUser      :: !(Maybe Text)
    , _psdPrettyPrint    :: !Bool
    , _psdUploadProtocol :: !(Maybe Text)
    , _psdPp             :: !Bool
    , _psdAccessToken    :: !(Maybe Text)
    , _psdUploadType     :: !(Maybe Text)
    , _psdBearerToken    :: !(Maybe Text)
    , _psdKey            :: !(Maybe AuthKey)
    , _psdOAuthToken     :: !(Maybe OAuthToken)
    , _psdSubscription   :: !Text
    , _psdFields         :: !(Maybe Text)
    , _psdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdXgafv'
--
-- * 'psdQuotaUser'
--
-- * 'psdPrettyPrint'
--
-- * 'psdUploadProtocol'
--
-- * 'psdPp'
--
-- * 'psdAccessToken'
--
-- * 'psdUploadType'
--
-- * 'psdBearerToken'
--
-- * 'psdKey'
--
-- * 'psdOAuthToken'
--
-- * 'psdSubscription'
--
-- * 'psdFields'
--
-- * 'psdCallback'
projectsSubscriptionsDelete'
    :: Text -- ^ 'subscription'
    -> ProjectsSubscriptionsDelete'
projectsSubscriptionsDelete' pPsdSubscription_ =
    ProjectsSubscriptionsDelete'
    { _psdXgafv = Nothing
    , _psdQuotaUser = Nothing
    , _psdPrettyPrint = True
    , _psdUploadProtocol = Nothing
    , _psdPp = True
    , _psdAccessToken = Nothing
    , _psdUploadType = Nothing
    , _psdBearerToken = Nothing
    , _psdKey = Nothing
    , _psdOAuthToken = Nothing
    , _psdSubscription = pPsdSubscription_
    , _psdFields = Nothing
    , _psdCallback = Nothing
    }

-- | V1 error format.
psdXgafv :: Lens' ProjectsSubscriptionsDelete' (Maybe Text)
psdXgafv = lens _psdXgafv (\ s a -> s{_psdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
psdQuotaUser :: Lens' ProjectsSubscriptionsDelete' (Maybe Text)
psdQuotaUser
  = lens _psdQuotaUser (\ s a -> s{_psdQuotaUser = a})

-- | Returns response with indentations and line breaks.
psdPrettyPrint :: Lens' ProjectsSubscriptionsDelete' Bool
psdPrettyPrint
  = lens _psdPrettyPrint
      (\ s a -> s{_psdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psdUploadProtocol :: Lens' ProjectsSubscriptionsDelete' (Maybe Text)
psdUploadProtocol
  = lens _psdUploadProtocol
      (\ s a -> s{_psdUploadProtocol = a})

-- | Pretty-print response.
psdPp :: Lens' ProjectsSubscriptionsDelete' Bool
psdPp = lens _psdPp (\ s a -> s{_psdPp = a})

-- | OAuth access token.
psdAccessToken :: Lens' ProjectsSubscriptionsDelete' (Maybe Text)
psdAccessToken
  = lens _psdAccessToken
      (\ s a -> s{_psdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psdUploadType :: Lens' ProjectsSubscriptionsDelete' (Maybe Text)
psdUploadType
  = lens _psdUploadType
      (\ s a -> s{_psdUploadType = a})

-- | OAuth bearer token.
psdBearerToken :: Lens' ProjectsSubscriptionsDelete' (Maybe Text)
psdBearerToken
  = lens _psdBearerToken
      (\ s a -> s{_psdBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psdKey :: Lens' ProjectsSubscriptionsDelete' (Maybe AuthKey)
psdKey = lens _psdKey (\ s a -> s{_psdKey = a})

-- | OAuth 2.0 token for the current user.
psdOAuthToken :: Lens' ProjectsSubscriptionsDelete' (Maybe OAuthToken)
psdOAuthToken
  = lens _psdOAuthToken
      (\ s a -> s{_psdOAuthToken = a})

-- | The subscription to delete.
psdSubscription :: Lens' ProjectsSubscriptionsDelete' Text
psdSubscription
  = lens _psdSubscription
      (\ s a -> s{_psdSubscription = a})

-- | Selector specifying which fields to include in a partial response.
psdFields :: Lens' ProjectsSubscriptionsDelete' (Maybe Text)
psdFields
  = lens _psdFields (\ s a -> s{_psdFields = a})

-- | JSONP
psdCallback :: Lens' ProjectsSubscriptionsDelete' (Maybe Text)
psdCallback
  = lens _psdCallback (\ s a -> s{_psdCallback = a})

instance GoogleAuth ProjectsSubscriptionsDelete'
         where
        _AuthKey = psdKey . _Just
        _AuthToken = psdOAuthToken . _Just

instance GoogleRequest ProjectsSubscriptionsDelete'
         where
        type Rs ProjectsSubscriptionsDelete' = Empty
        request = requestWith pubSubRequest
        requestWith rq ProjectsSubscriptionsDelete'{..}
          = go _psdSubscription _psdXgafv _psdUploadProtocol
              (Just _psdPp)
              _psdAccessToken
              _psdUploadType
              _psdBearerToken
              _psdCallback
              _psdQuotaUser
              (Just _psdPrettyPrint)
              _psdFields
              _psdKey
              _psdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsSubscriptionsDeleteResource)
                      rq
