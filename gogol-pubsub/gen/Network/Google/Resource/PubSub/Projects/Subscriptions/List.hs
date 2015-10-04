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
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists matching subscriptions.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsSubscriptionsList@.
module Network.Google.Resource.PubSub.Projects.Subscriptions.List
    (
    -- * REST Resource
      ProjectsSubscriptionsListResource

    -- * Creating a Request
    , projectsSubscriptionsList'
    , ProjectsSubscriptionsList'

    -- * Request Lenses
    , pslXgafv
    , pslQuotaUser
    , pslPrettyPrint
    , pslUploadProtocol
    , pslProject
    , pslPp
    , pslAccessToken
    , pslUploadType
    , pslBearerToken
    , pslKey
    , pslPageToken
    , pslOAuthToken
    , pslPageSize
    , pslFields
    , pslCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsSubscriptionsList@ which the
-- 'ProjectsSubscriptionsList'' request conforms to.
type ProjectsSubscriptionsListResource =
     "v1beta2" :>
       Capture "project" Text :>
         "subscriptions" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" Int32 :>
                           QueryParam "callback" Text :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" Key :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ListSubscriptionsResponse

-- | Lists matching subscriptions.
--
-- /See:/ 'projectsSubscriptionsList'' smart constructor.
data ProjectsSubscriptionsList' = ProjectsSubscriptionsList'
    { _pslXgafv          :: !(Maybe Text)
    , _pslQuotaUser      :: !(Maybe Text)
    , _pslPrettyPrint    :: !Bool
    , _pslUploadProtocol :: !(Maybe Text)
    , _pslProject        :: !Text
    , _pslPp             :: !Bool
    , _pslAccessToken    :: !(Maybe Text)
    , _pslUploadType     :: !(Maybe Text)
    , _pslBearerToken    :: !(Maybe Text)
    , _pslKey            :: !(Maybe Key)
    , _pslPageToken      :: !(Maybe Text)
    , _pslOAuthToken     :: !(Maybe OAuthToken)
    , _pslPageSize       :: !(Maybe Int32)
    , _pslFields         :: !(Maybe Text)
    , _pslCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pslXgafv'
--
-- * 'pslQuotaUser'
--
-- * 'pslPrettyPrint'
--
-- * 'pslUploadProtocol'
--
-- * 'pslProject'
--
-- * 'pslPp'
--
-- * 'pslAccessToken'
--
-- * 'pslUploadType'
--
-- * 'pslBearerToken'
--
-- * 'pslKey'
--
-- * 'pslPageToken'
--
-- * 'pslOAuthToken'
--
-- * 'pslPageSize'
--
-- * 'pslFields'
--
-- * 'pslCallback'
projectsSubscriptionsList'
    :: Text -- ^ 'project'
    -> ProjectsSubscriptionsList'
projectsSubscriptionsList' pPslProject_ =
    ProjectsSubscriptionsList'
    { _pslXgafv = Nothing
    , _pslQuotaUser = Nothing
    , _pslPrettyPrint = True
    , _pslUploadProtocol = Nothing
    , _pslProject = pPslProject_
    , _pslPp = True
    , _pslAccessToken = Nothing
    , _pslUploadType = Nothing
    , _pslBearerToken = Nothing
    , _pslKey = Nothing
    , _pslPageToken = Nothing
    , _pslOAuthToken = Nothing
    , _pslPageSize = Nothing
    , _pslFields = Nothing
    , _pslCallback = Nothing
    }

-- | V1 error format.
pslXgafv :: Lens' ProjectsSubscriptionsList' (Maybe Text)
pslXgafv = lens _pslXgafv (\ s a -> s{_pslXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pslQuotaUser :: Lens' ProjectsSubscriptionsList' (Maybe Text)
pslQuotaUser
  = lens _pslQuotaUser (\ s a -> s{_pslQuotaUser = a})

-- | Returns response with indentations and line breaks.
pslPrettyPrint :: Lens' ProjectsSubscriptionsList' Bool
pslPrettyPrint
  = lens _pslPrettyPrint
      (\ s a -> s{_pslPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pslUploadProtocol :: Lens' ProjectsSubscriptionsList' (Maybe Text)
pslUploadProtocol
  = lens _pslUploadProtocol
      (\ s a -> s{_pslUploadProtocol = a})

-- | The name of the cloud project that subscriptions belong to.
pslProject :: Lens' ProjectsSubscriptionsList' Text
pslProject
  = lens _pslProject (\ s a -> s{_pslProject = a})

-- | Pretty-print response.
pslPp :: Lens' ProjectsSubscriptionsList' Bool
pslPp = lens _pslPp (\ s a -> s{_pslPp = a})

-- | OAuth access token.
pslAccessToken :: Lens' ProjectsSubscriptionsList' (Maybe Text)
pslAccessToken
  = lens _pslAccessToken
      (\ s a -> s{_pslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pslUploadType :: Lens' ProjectsSubscriptionsList' (Maybe Text)
pslUploadType
  = lens _pslUploadType
      (\ s a -> s{_pslUploadType = a})

-- | OAuth bearer token.
pslBearerToken :: Lens' ProjectsSubscriptionsList' (Maybe Text)
pslBearerToken
  = lens _pslBearerToken
      (\ s a -> s{_pslBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pslKey :: Lens' ProjectsSubscriptionsList' (Maybe Key)
pslKey = lens _pslKey (\ s a -> s{_pslKey = a})

-- | The value returned by the last ListSubscriptionsResponse; indicates that
-- this is a continuation of a prior ListSubscriptions call, and that the
-- system should return the next page of data.
pslPageToken :: Lens' ProjectsSubscriptionsList' (Maybe Text)
pslPageToken
  = lens _pslPageToken (\ s a -> s{_pslPageToken = a})

-- | OAuth 2.0 token for the current user.
pslOAuthToken :: Lens' ProjectsSubscriptionsList' (Maybe OAuthToken)
pslOAuthToken
  = lens _pslOAuthToken
      (\ s a -> s{_pslOAuthToken = a})

-- | Maximum number of subscriptions to return.
pslPageSize :: Lens' ProjectsSubscriptionsList' (Maybe Int32)
pslPageSize
  = lens _pslPageSize (\ s a -> s{_pslPageSize = a})

-- | Selector specifying which fields to include in a partial response.
pslFields :: Lens' ProjectsSubscriptionsList' (Maybe Text)
pslFields
  = lens _pslFields (\ s a -> s{_pslFields = a})

-- | JSONP
pslCallback :: Lens' ProjectsSubscriptionsList' (Maybe Text)
pslCallback
  = lens _pslCallback (\ s a -> s{_pslCallback = a})

instance GoogleAuth ProjectsSubscriptionsList' where
        authKey = pslKey . _Just
        authToken = pslOAuthToken . _Just

instance GoogleRequest ProjectsSubscriptionsList'
         where
        type Rs ProjectsSubscriptionsList' =
             ListSubscriptionsResponse
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u ProjectsSubscriptionsList'{..}
          = go _pslProject _pslXgafv _pslUploadProtocol
              (Just _pslPp)
              _pslAccessToken
              _pslUploadType
              _pslBearerToken
              _pslPageToken
              _pslPageSize
              _pslCallback
              _pslQuotaUser
              (Just _pslPrettyPrint)
              _pslFields
              _pslKey
              _pslOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsSubscriptionsListResource)
                      r
                      u
