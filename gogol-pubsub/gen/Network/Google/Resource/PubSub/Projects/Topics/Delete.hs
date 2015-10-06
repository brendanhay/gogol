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
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the topic with the given name. Returns NOT_FOUND if the topic
-- does not exist. After a topic is deleted, a new topic may be created
-- with the same name; this is an entirely new topic with none of the old
-- configuration or subscriptions. Existing subscriptions to this topic are
-- not deleted, but their \`topic\` field is set to \`_deleted-topic_\`.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsTopicsDelete@.
module Network.Google.Resource.PubSub.Projects.Topics.Delete
    (
    -- * REST Resource
      ProjectsTopicsDeleteResource

    -- * Creating a Request
    , projectsTopicsDelete'
    , ProjectsTopicsDelete'

    -- * Request Lenses
    , ptdXgafv
    , ptdQuotaUser
    , ptdPrettyPrint
    , ptdUploadProtocol
    , ptdPp
    , ptdAccessToken
    , ptdUploadType
    , ptdTopic
    , ptdBearerToken
    , ptdKey
    , ptdOAuthToken
    , ptdFields
    , ptdCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsTopicsDelete@ which the
-- 'ProjectsTopicsDelete'' request conforms to.
type ProjectsTopicsDeleteResource =
     "v1beta2" :>
       Capture "topic" Text :>
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

-- | Deletes the topic with the given name. Returns NOT_FOUND if the topic
-- does not exist. After a topic is deleted, a new topic may be created
-- with the same name; this is an entirely new topic with none of the old
-- configuration or subscriptions. Existing subscriptions to this topic are
-- not deleted, but their \`topic\` field is set to \`_deleted-topic_\`.
--
-- /See:/ 'projectsTopicsDelete'' smart constructor.
data ProjectsTopicsDelete' = ProjectsTopicsDelete'
    { _ptdXgafv          :: !(Maybe Text)
    , _ptdQuotaUser      :: !(Maybe Text)
    , _ptdPrettyPrint    :: !Bool
    , _ptdUploadProtocol :: !(Maybe Text)
    , _ptdPp             :: !Bool
    , _ptdAccessToken    :: !(Maybe Text)
    , _ptdUploadType     :: !(Maybe Text)
    , _ptdTopic          :: !Text
    , _ptdBearerToken    :: !(Maybe Text)
    , _ptdKey            :: !(Maybe AuthKey)
    , _ptdOAuthToken     :: !(Maybe OAuthToken)
    , _ptdFields         :: !(Maybe Text)
    , _ptdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptdXgafv'
--
-- * 'ptdQuotaUser'
--
-- * 'ptdPrettyPrint'
--
-- * 'ptdUploadProtocol'
--
-- * 'ptdPp'
--
-- * 'ptdAccessToken'
--
-- * 'ptdUploadType'
--
-- * 'ptdTopic'
--
-- * 'ptdBearerToken'
--
-- * 'ptdKey'
--
-- * 'ptdOAuthToken'
--
-- * 'ptdFields'
--
-- * 'ptdCallback'
projectsTopicsDelete'
    :: Text -- ^ 'topic'
    -> ProjectsTopicsDelete'
projectsTopicsDelete' pPtdTopic_ =
    ProjectsTopicsDelete'
    { _ptdXgafv = Nothing
    , _ptdQuotaUser = Nothing
    , _ptdPrettyPrint = True
    , _ptdUploadProtocol = Nothing
    , _ptdPp = True
    , _ptdAccessToken = Nothing
    , _ptdUploadType = Nothing
    , _ptdTopic = pPtdTopic_
    , _ptdBearerToken = Nothing
    , _ptdKey = Nothing
    , _ptdOAuthToken = Nothing
    , _ptdFields = Nothing
    , _ptdCallback = Nothing
    }

-- | V1 error format.
ptdXgafv :: Lens' ProjectsTopicsDelete' (Maybe Text)
ptdXgafv = lens _ptdXgafv (\ s a -> s{_ptdXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ptdQuotaUser :: Lens' ProjectsTopicsDelete' (Maybe Text)
ptdQuotaUser
  = lens _ptdQuotaUser (\ s a -> s{_ptdQuotaUser = a})

-- | Returns response with indentations and line breaks.
ptdPrettyPrint :: Lens' ProjectsTopicsDelete' Bool
ptdPrettyPrint
  = lens _ptdPrettyPrint
      (\ s a -> s{_ptdPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptdUploadProtocol :: Lens' ProjectsTopicsDelete' (Maybe Text)
ptdUploadProtocol
  = lens _ptdUploadProtocol
      (\ s a -> s{_ptdUploadProtocol = a})

-- | Pretty-print response.
ptdPp :: Lens' ProjectsTopicsDelete' Bool
ptdPp = lens _ptdPp (\ s a -> s{_ptdPp = a})

-- | OAuth access token.
ptdAccessToken :: Lens' ProjectsTopicsDelete' (Maybe Text)
ptdAccessToken
  = lens _ptdAccessToken
      (\ s a -> s{_ptdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptdUploadType :: Lens' ProjectsTopicsDelete' (Maybe Text)
ptdUploadType
  = lens _ptdUploadType
      (\ s a -> s{_ptdUploadType = a})

-- | Name of the topic to delete.
ptdTopic :: Lens' ProjectsTopicsDelete' Text
ptdTopic = lens _ptdTopic (\ s a -> s{_ptdTopic = a})

-- | OAuth bearer token.
ptdBearerToken :: Lens' ProjectsTopicsDelete' (Maybe Text)
ptdBearerToken
  = lens _ptdBearerToken
      (\ s a -> s{_ptdBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ptdKey :: Lens' ProjectsTopicsDelete' (Maybe AuthKey)
ptdKey = lens _ptdKey (\ s a -> s{_ptdKey = a})

-- | OAuth 2.0 token for the current user.
ptdOAuthToken :: Lens' ProjectsTopicsDelete' (Maybe OAuthToken)
ptdOAuthToken
  = lens _ptdOAuthToken
      (\ s a -> s{_ptdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ptdFields :: Lens' ProjectsTopicsDelete' (Maybe Text)
ptdFields
  = lens _ptdFields (\ s a -> s{_ptdFields = a})

-- | JSONP
ptdCallback :: Lens' ProjectsTopicsDelete' (Maybe Text)
ptdCallback
  = lens _ptdCallback (\ s a -> s{_ptdCallback = a})

instance GoogleAuth ProjectsTopicsDelete' where
        authKey = ptdKey . _Just
        authToken = ptdOAuthToken . _Just

instance GoogleRequest ProjectsTopicsDelete' where
        type Rs ProjectsTopicsDelete' = Empty
        request = requestWith pubSubRequest
        requestWith rq ProjectsTopicsDelete'{..}
          = go _ptdTopic _ptdXgafv _ptdUploadProtocol
              (Just _ptdPp)
              _ptdAccessToken
              _ptdUploadType
              _ptdBearerToken
              _ptdCallback
              _ptdQuotaUser
              (Just _ptdPrettyPrint)
              _ptdFields
              _ptdKey
              _ptdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsTopicsDeleteResource)
                      rq
