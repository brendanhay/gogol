{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module PubSub.Projects.Topics.Create
    (
    -- * REST Resource
      ProjectsTopicsCreateAPI

    -- * Creating a Request
    , projectsTopicsCreate
    , ProjectsTopicsCreate

    -- * Request Lenses
    , ptcXgafv
    , ptcQuotaUser
    , ptcPrettyPrint
    , ptcUploadProtocol
    , ptcPp
    , ptcAccessToken
    , ptcUploadType
    , ptcBearerToken
    , ptcKey
    , ptcName
    , ptcOauthToken
    , ptcFields
    , ptcCallback
    , ptcAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsTopicsCreate@ which the
-- 'ProjectsTopicsCreate' request conforms to.
type ProjectsTopicsCreateAPI =
     "v1beta2" :> "{+name}" :> Put '[JSON] Topic

-- | Creates the given topic with the given name.
--
-- /See:/ 'projectsTopicsCreate' smart constructor.
data ProjectsTopicsCreate = ProjectsTopicsCreate
    { _ptcXgafv          :: !(Maybe Text)
    , _ptcQuotaUser      :: !(Maybe Text)
    , _ptcPrettyPrint    :: !Bool
    , _ptcUploadProtocol :: !(Maybe Text)
    , _ptcPp             :: !Bool
    , _ptcAccessToken    :: !(Maybe Text)
    , _ptcUploadType     :: !(Maybe Text)
    , _ptcBearerToken    :: !(Maybe Text)
    , _ptcKey            :: !(Maybe Text)
    , _ptcName           :: !Text
    , _ptcOauthToken     :: !(Maybe Text)
    , _ptcFields         :: !(Maybe Text)
    , _ptcCallback       :: !(Maybe Text)
    , _ptcAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'ptcBearerToken'
--
-- * 'ptcKey'
--
-- * 'ptcName'
--
-- * 'ptcOauthToken'
--
-- * 'ptcFields'
--
-- * 'ptcCallback'
--
-- * 'ptcAlt'
projectsTopicsCreate
    :: Text -- ^ 'name'
    -> ProjectsTopicsCreate
projectsTopicsCreate pPtcName_ =
    ProjectsTopicsCreate
    { _ptcXgafv = Nothing
    , _ptcQuotaUser = Nothing
    , _ptcPrettyPrint = True
    , _ptcUploadProtocol = Nothing
    , _ptcPp = True
    , _ptcAccessToken = Nothing
    , _ptcUploadType = Nothing
    , _ptcBearerToken = Nothing
    , _ptcKey = Nothing
    , _ptcName = pPtcName_
    , _ptcOauthToken = Nothing
    , _ptcFields = Nothing
    , _ptcCallback = Nothing
    , _ptcAlt = "json"
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

-- | OAuth bearer token.
ptcBearerToken :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcBearerToken
  = lens _ptcBearerToken
      (\ s a -> s{_ptcBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ptcKey :: Lens' ProjectsTopicsCreate' (Maybe Text)
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
ptcOauthToken :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcOauthToken
  = lens _ptcOauthToken
      (\ s a -> s{_ptcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ptcFields :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcFields
  = lens _ptcFields (\ s a -> s{_ptcFields = a})

-- | JSONP
ptcCallback :: Lens' ProjectsTopicsCreate' (Maybe Text)
ptcCallback
  = lens _ptcCallback (\ s a -> s{_ptcCallback = a})

-- | Data format for response.
ptcAlt :: Lens' ProjectsTopicsCreate' Text
ptcAlt = lens _ptcAlt (\ s a -> s{_ptcAlt = a})

instance GoogleRequest ProjectsTopicsCreate' where
        type Rs ProjectsTopicsCreate' = Topic
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u ProjectsTopicsCreate{..}
          = go _ptcXgafv _ptcQuotaUser _ptcPrettyPrint
              _ptcUploadProtocol
              _ptcPp
              _ptcAccessToken
              _ptcUploadType
              _ptcBearerToken
              _ptcKey
              _ptcName
              _ptcOauthToken
              _ptcFields
              _ptcCallback
              _ptcAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsTopicsCreateAPI)
                      r
                      u
