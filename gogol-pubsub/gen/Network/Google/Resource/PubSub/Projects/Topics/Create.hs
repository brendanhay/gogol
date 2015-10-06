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
-- Module      : Network.Google.Resource.PubSub.Projects.Topics.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates the given topic with the given name.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsTopicsCreate@.
module Network.Google.Resource.PubSub.Projects.Topics.Create
    (
    -- * REST Resource
      ProjectsTopicsCreateResource

    -- * Creating a Request
    , projectsTopicsCreate'
    , ProjectsTopicsCreate'

    -- * Request Lenses
    , ptcXgafv
    , ptcQuotaUser
    , ptcPrettyPrint
    , ptcUploadProtocol
    , ptcPp
    , ptcAccessToken
    , ptcUploadType
    , ptcPayload
    , ptcBearerToken
    , ptcKey
    , ptcName
    , ptcOAuthToken
    , ptcFields
    , ptcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsTopicsCreate@ which the
-- 'ProjectsTopicsCreate'' request conforms to.
type ProjectsTopicsCreateResource =
     "v1beta2" :>
       Capture "name" Text :>
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
                                   ReqBody '[JSON] Topic :> Put '[JSON] Topic

-- | Creates the given topic with the given name.
--
-- /See:/ 'projectsTopicsCreate'' smart constructor.
data ProjectsTopicsCreate' = ProjectsTopicsCreate'
    { _ptcXgafv          :: !(Maybe Text)
    , _ptcQuotaUser      :: !(Maybe Text)
    , _ptcPrettyPrint    :: !Bool
    , _ptcUploadProtocol :: !(Maybe Text)
    , _ptcPp             :: !Bool
    , _ptcAccessToken    :: !(Maybe Text)
    , _ptcUploadType     :: !(Maybe Text)
    , _ptcPayload        :: !Topic
    , _ptcBearerToken    :: !(Maybe Text)
    , _ptcKey            :: !(Maybe AuthKey)
    , _ptcName           :: !Text
    , _ptcOAuthToken     :: !(Maybe OAuthToken)
    , _ptcFields         :: !(Maybe Text)
    , _ptcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsTopicsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcXgafv'
--
-- * 'ptcQuotaUser'
--
-- * 'ptcPrettyPrint'
--
-- * 'ptcUploadProtocol'
--
-- * 'ptcPp'
--
-- * 'ptcAccessToken'
--
-- * 'ptcUploadType'
--
-- * 'ptcPayload'
--
-- * 'ptcBearerToken'
--
-- * 'ptcKey'
--
-- * 'ptcName'
--
-- * 'ptcOAuthToken'
--
-- * 'ptcFields'
--
-- * 'ptcCallback'
projectsTopicsCreate'
    :: Topic -- ^ 'payload'
    -> Text -- ^ 'name'
    -> ProjectsTopicsCreate'
projectsTopicsCreate' pPtcPayload_ pPtcName_ =
    ProjectsTopicsCreate'
    { _ptcXgafv = Nothing
    , _ptcQuotaUser = Nothing
    , _ptcPrettyPrint = True
    , _ptcUploadProtocol = Nothing
    , _ptcPp = True
    , _ptcAccessToken = Nothing
    , _ptcUploadType = Nothing
    , _ptcPayload = pPtcPayload_
    , _ptcBearerToken = Nothing
    , _ptcKey = Nothing
    , _ptcName = pPtcName_
    , _ptcOAuthToken = Nothing
    , _ptcFields = Nothing
    , _ptcCallback = Nothing
    }

-- | V1 error format.
ptcXgafv :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcXgafv = lens _ptcXgafv (\ s a -> s{_ptcXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ptcQuotaUser :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcQuotaUser
  = lens _ptcQuotaUser (\ s a -> s{_ptcQuotaUser = a})

-- | Returns response with indentations and line breaks.
ptcPrettyPrint :: Lens' ProjectsTopicsCreate' Bool
ptcPrettyPrint
  = lens _ptcPrettyPrint
      (\ s a -> s{_ptcPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcUploadProtocol :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcUploadProtocol
  = lens _ptcUploadProtocol
      (\ s a -> s{_ptcUploadProtocol = a})

-- | Pretty-print response.
ptcPp :: Lens' ProjectsTopicsCreate' Bool
ptcPp = lens _ptcPp (\ s a -> s{_ptcPp = a})

-- | OAuth access token.
ptcAccessToken :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcAccessToken
  = lens _ptcAccessToken
      (\ s a -> s{_ptcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcUploadType :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcUploadType
  = lens _ptcUploadType
      (\ s a -> s{_ptcUploadType = a})

-- | Multipart request metadata.
ptcPayload :: Lens' ProjectsTopicsCreate' Topic
ptcPayload
  = lens _ptcPayload (\ s a -> s{_ptcPayload = a})

-- | OAuth bearer token.
ptcBearerToken :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcBearerToken
  = lens _ptcBearerToken
      (\ s a -> s{_ptcBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ptcKey :: Lens' ProjectsTopicsCreate' (Maybe AuthKey)
ptcKey = lens _ptcKey (\ s a -> s{_ptcKey = a})

-- | The name of the topic. It must have the format
-- \`\"projects\/{project}\/topics\/{topic}\"\`. \`{topic}\` must start
-- with a letter, and contain only letters (\`[A-Za-z]\`), numbers
-- (\`[0-9]\`), dashes (\`-\`), underscores (\`_\`), periods (\`.\`),
-- tildes (\`~\`), plus (\`+\`) or percent signs (\`%\`). It must be
-- between 3 and 255 characters in length, and it must not start with
-- \`\"goog\"\`.
ptcName :: Lens' ProjectsTopicsCreate' Text
ptcName = lens _ptcName (\ s a -> s{_ptcName = a})

-- | OAuth 2.0 token for the current user.
ptcOAuthToken :: Lens' ProjectsTopicsCreate' (Maybe OAuthToken)
ptcOAuthToken
  = lens _ptcOAuthToken
      (\ s a -> s{_ptcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ptcFields :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcFields
  = lens _ptcFields (\ s a -> s{_ptcFields = a})

-- | JSONP
ptcCallback :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcCallback
  = lens _ptcCallback (\ s a -> s{_ptcCallback = a})

instance GoogleAuth ProjectsTopicsCreate' where
        _AuthKey = ptcKey . _Just
        _AuthToken = ptcOAuthToken . _Just

instance GoogleRequest ProjectsTopicsCreate' where
        type Rs ProjectsTopicsCreate' = Topic
        request = requestWith pubSubRequest
        requestWith rq ProjectsTopicsCreate'{..}
          = go _ptcName _ptcXgafv _ptcUploadProtocol
              (Just _ptcPp)
              _ptcAccessToken
              _ptcUploadType
              _ptcBearerToken
              _ptcCallback
              _ptcQuotaUser
              (Just _ptcPrettyPrint)
              _ptcFields
              _ptcKey
              _ptcOAuthToken
              (Just AltJSON)
              _ptcPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsTopicsCreateResource)
                      rq
