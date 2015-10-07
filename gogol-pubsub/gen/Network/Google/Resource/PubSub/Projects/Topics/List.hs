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
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists matching topics.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsTopicsList@.
module Network.Google.Resource.PubSub.Projects.Topics.List
    (
    -- * REST Resource
      ProjectsTopicsListResource

    -- * Creating a Request
    , projectsTopicsList'
    , ProjectsTopicsList'

    -- * Request Lenses
    , ptlXgafv
    , ptlQuotaUser
    , ptlPrettyPrint
    , ptlUploadProtocol
    , ptlProject
    , ptlPp
    , ptlAccessToken
    , ptlUploadType
    , ptlBearerToken
    , ptlKey
    , ptlPageToken
    , ptlOAuthToken
    , ptlPageSize
    , ptlFields
    , ptlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsTopicsList@ method which the
-- 'ProjectsTopicsList'' request conforms to.
type ProjectsTopicsListResource =
     "v1" :>
       Capture "project" Text :>
         "topics" :>
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
                                   QueryParam "key" AuthKey :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ListTopicsResponse

-- | Lists matching topics.
--
-- /See:/ 'projectsTopicsList'' smart constructor.
data ProjectsTopicsList' = ProjectsTopicsList'
    { _ptlXgafv          :: !(Maybe Text)
    , _ptlQuotaUser      :: !(Maybe Text)
    , _ptlPrettyPrint    :: !Bool
    , _ptlUploadProtocol :: !(Maybe Text)
    , _ptlProject        :: !Text
    , _ptlPp             :: !Bool
    , _ptlAccessToken    :: !(Maybe Text)
    , _ptlUploadType     :: !(Maybe Text)
    , _ptlBearerToken    :: !(Maybe Text)
    , _ptlKey            :: !(Maybe AuthKey)
    , _ptlPageToken      :: !(Maybe Text)
    , _ptlOAuthToken     :: !(Maybe OAuthToken)
    , _ptlPageSize       :: !(Maybe Int32)
    , _ptlFields         :: !(Maybe Text)
    , _ptlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptlXgafv'
--
-- * 'ptlQuotaUser'
--
-- * 'ptlPrettyPrint'
--
-- * 'ptlUploadProtocol'
--
-- * 'ptlProject'
--
-- * 'ptlPp'
--
-- * 'ptlAccessToken'
--
-- * 'ptlUploadType'
--
-- * 'ptlBearerToken'
--
-- * 'ptlKey'
--
-- * 'ptlPageToken'
--
-- * 'ptlOAuthToken'
--
-- * 'ptlPageSize'
--
-- * 'ptlFields'
--
-- * 'ptlCallback'
projectsTopicsList'
    :: Text -- ^ 'project'
    -> ProjectsTopicsList'
projectsTopicsList' pPtlProject_ =
    ProjectsTopicsList'
    { _ptlXgafv = Nothing
    , _ptlQuotaUser = Nothing
    , _ptlPrettyPrint = True
    , _ptlUploadProtocol = Nothing
    , _ptlProject = pPtlProject_
    , _ptlPp = True
    , _ptlAccessToken = Nothing
    , _ptlUploadType = Nothing
    , _ptlBearerToken = Nothing
    , _ptlKey = Nothing
    , _ptlPageToken = Nothing
    , _ptlOAuthToken = Nothing
    , _ptlPageSize = Nothing
    , _ptlFields = Nothing
    , _ptlCallback = Nothing
    }

-- | V1 error format.
ptlXgafv :: Lens' ProjectsTopicsList' (Maybe Text)
ptlXgafv = lens _ptlXgafv (\ s a -> s{_ptlXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ptlQuotaUser :: Lens' ProjectsTopicsList' (Maybe Text)
ptlQuotaUser
  = lens _ptlQuotaUser (\ s a -> s{_ptlQuotaUser = a})

-- | Returns response with indentations and line breaks.
ptlPrettyPrint :: Lens' ProjectsTopicsList' Bool
ptlPrettyPrint
  = lens _ptlPrettyPrint
      (\ s a -> s{_ptlPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptlUploadProtocol :: Lens' ProjectsTopicsList' (Maybe Text)
ptlUploadProtocol
  = lens _ptlUploadProtocol
      (\ s a -> s{_ptlUploadProtocol = a})

-- | The name of the cloud project that topics belong to.
ptlProject :: Lens' ProjectsTopicsList' Text
ptlProject
  = lens _ptlProject (\ s a -> s{_ptlProject = a})

-- | Pretty-print response.
ptlPp :: Lens' ProjectsTopicsList' Bool
ptlPp = lens _ptlPp (\ s a -> s{_ptlPp = a})

-- | OAuth access token.
ptlAccessToken :: Lens' ProjectsTopicsList' (Maybe Text)
ptlAccessToken
  = lens _ptlAccessToken
      (\ s a -> s{_ptlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptlUploadType :: Lens' ProjectsTopicsList' (Maybe Text)
ptlUploadType
  = lens _ptlUploadType
      (\ s a -> s{_ptlUploadType = a})

-- | OAuth bearer token.
ptlBearerToken :: Lens' ProjectsTopicsList' (Maybe Text)
ptlBearerToken
  = lens _ptlBearerToken
      (\ s a -> s{_ptlBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ptlKey :: Lens' ProjectsTopicsList' (Maybe AuthKey)
ptlKey = lens _ptlKey (\ s a -> s{_ptlKey = a})

-- | The value returned by the last ListTopicsResponse; indicates that this
-- is a continuation of a prior ListTopics call, and that the system should
-- return the next page of data.
ptlPageToken :: Lens' ProjectsTopicsList' (Maybe Text)
ptlPageToken
  = lens _ptlPageToken (\ s a -> s{_ptlPageToken = a})

-- | OAuth 2.0 token for the current user.
ptlOAuthToken :: Lens' ProjectsTopicsList' (Maybe OAuthToken)
ptlOAuthToken
  = lens _ptlOAuthToken
      (\ s a -> s{_ptlOAuthToken = a})

-- | Maximum number of topics to return.
ptlPageSize :: Lens' ProjectsTopicsList' (Maybe Int32)
ptlPageSize
  = lens _ptlPageSize (\ s a -> s{_ptlPageSize = a})

-- | Selector specifying which fields to include in a partial response.
ptlFields :: Lens' ProjectsTopicsList' (Maybe Text)
ptlFields
  = lens _ptlFields (\ s a -> s{_ptlFields = a})

-- | JSONP
ptlCallback :: Lens' ProjectsTopicsList' (Maybe Text)
ptlCallback
  = lens _ptlCallback (\ s a -> s{_ptlCallback = a})

instance GoogleAuth ProjectsTopicsList' where
        _AuthKey = ptlKey . _Just
        _AuthToken = ptlOAuthToken . _Just

instance GoogleRequest ProjectsTopicsList' where
        type Rs ProjectsTopicsList' = ListTopicsResponse
        request = requestWith pubSubRequest
        requestWith rq ProjectsTopicsList'{..}
          = go _ptlProject _ptlXgafv _ptlUploadProtocol
              (Just _ptlPp)
              _ptlAccessToken
              _ptlUploadType
              _ptlBearerToken
              _ptlPageToken
              _ptlPageSize
              _ptlCallback
              _ptlQuotaUser
              (Just _ptlPrettyPrint)
              _ptlFields
              _ptlKey
              _ptlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsTopicsListResource)
                      rq
