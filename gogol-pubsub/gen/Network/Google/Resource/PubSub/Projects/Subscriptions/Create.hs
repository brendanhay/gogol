{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.PubSub.Projects.Subscriptions.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a subscription to a given topic for a given subscriber. If the
-- subscription already exists, returns ALREADY_EXISTS. If the
-- corresponding topic doesn\'t exist, returns NOT_FOUND. If the name is
-- not provided in the request, the server will assign a random name for
-- this subscription on the same project as the topic.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Google Cloud Pub/Sub API Reference> for @PubsubProjectsSubscriptionsCreate@.
module PubSub.Projects.Subscriptions.Create
    (
    -- * REST Resource
      ProjectsSubscriptionsCreateAPI

    -- * Creating a Request
    , projectsSubscriptionsCreate
    , ProjectsSubscriptionsCreate

    -- * Request Lenses
    , pscXgafv
    , pscQuotaUser
    , pscPrettyPrint
    , pscUploadProtocol
    , pscPp
    , pscAccessToken
    , pscUploadType
    , pscBearerToken
    , pscKey
    , pscName
    , pscOauthToken
    , pscFields
    , pscCallback
    , pscAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.PubSub.Types

-- | A resource alias for @PubsubProjectsSubscriptionsCreate@ which the
-- 'ProjectsSubscriptionsCreate' request conforms to.
type ProjectsSubscriptionsCreateAPI =
     "v1beta2" :> "{+name}" :> Put '[JSON] Subscription

-- | Creates a subscription to a given topic for a given subscriber. If the
-- subscription already exists, returns ALREADY_EXISTS. If the
-- corresponding topic doesn\'t exist, returns NOT_FOUND. If the name is
-- not provided in the request, the server will assign a random name for
-- this subscription on the same project as the topic.
--
-- /See:/ 'projectsSubscriptionsCreate' smart constructor.
data ProjectsSubscriptionsCreate = ProjectsSubscriptionsCreate
    { _pscXgafv          :: !(Maybe Text)
    , _pscQuotaUser      :: !(Maybe Text)
    , _pscPrettyPrint    :: !Bool
    , _pscUploadProtocol :: !(Maybe Text)
    , _pscPp             :: !Bool
    , _pscAccessToken    :: !(Maybe Text)
    , _pscUploadType     :: !(Maybe Text)
    , _pscBearerToken    :: !(Maybe Text)
    , _pscKey            :: !(Maybe Text)
    , _pscName           :: !Text
    , _pscOauthToken     :: !(Maybe Text)
    , _pscFields         :: !(Maybe Text)
    , _pscCallback       :: !(Maybe Text)
    , _pscAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSubscriptionsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscXgafv'
--
-- * 'pscQuotaUser'
--
-- * 'pscPrettyPrint'
--
-- * 'pscUploadProtocol'
--
-- * 'pscPp'
--
-- * 'pscAccessToken'
--
-- * 'pscUploadType'
--
-- * 'pscBearerToken'
--
-- * 'pscKey'
--
-- * 'pscName'
--
-- * 'pscOauthToken'
--
-- * 'pscFields'
--
-- * 'pscCallback'
--
-- * 'pscAlt'
projectsSubscriptionsCreate
    :: Text -- ^ 'name'
    -> ProjectsSubscriptionsCreate
projectsSubscriptionsCreate pPscName_ =
    ProjectsSubscriptionsCreate
    { _pscXgafv = Nothing
    , _pscQuotaUser = Nothing
    , _pscPrettyPrint = True
    , _pscUploadProtocol = Nothing
    , _pscPp = True
    , _pscAccessToken = Nothing
    , _pscUploadType = Nothing
    , _pscBearerToken = Nothing
    , _pscKey = Nothing
    , _pscName = pPscName_
    , _pscOauthToken = Nothing
    , _pscFields = Nothing
    , _pscCallback = Nothing
    , _pscAlt = "json"
    }

-- | V1 error format.
pscXgafv :: Lens' ProjectsSubscriptionsCreate' (Maybe Text)
pscXgafv = lens _pscXgafv (\ s a -> s{_pscXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pscQuotaUser :: Lens' ProjectsSubscriptionsCreate' (Maybe Text)
pscQuotaUser
  = lens _pscQuotaUser (\ s a -> s{_pscQuotaUser = a})

-- | Returns response with indentations and line breaks.
pscPrettyPrint :: Lens' ProjectsSubscriptionsCreate' Bool
pscPrettyPrint
  = lens _pscPrettyPrint
      (\ s a -> s{_pscPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pscUploadProtocol :: Lens' ProjectsSubscriptionsCreate' (Maybe Text)
pscUploadProtocol
  = lens _pscUploadProtocol
      (\ s a -> s{_pscUploadProtocol = a})

-- | Pretty-print response.
pscPp :: Lens' ProjectsSubscriptionsCreate' Bool
pscPp = lens _pscPp (\ s a -> s{_pscPp = a})

-- | OAuth access token.
pscAccessToken :: Lens' ProjectsSubscriptionsCreate' (Maybe Text)
pscAccessToken
  = lens _pscAccessToken
      (\ s a -> s{_pscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pscUploadType :: Lens' ProjectsSubscriptionsCreate' (Maybe Text)
pscUploadType
  = lens _pscUploadType
      (\ s a -> s{_pscUploadType = a})

-- | OAuth bearer token.
pscBearerToken :: Lens' ProjectsSubscriptionsCreate' (Maybe Text)
pscBearerToken
  = lens _pscBearerToken
      (\ s a -> s{_pscBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pscKey :: Lens' ProjectsSubscriptionsCreate' (Maybe Text)
pscKey = lens _pscKey (\ s a -> s{_pscKey = a})

-- | The name of the subscription. It must have the format
-- \`\"projects\/{project}\/subscriptions\/{subscription}\"\`.
-- \`{subscription}\` must start with a letter, and contain only letters
-- (\`[A-Za-z]\`), numbers (\`[0-9]\`), dashes (\`-\`), underscores
-- (\`_\`), periods (\`.\`), tildes (\`~\`), plus (\`+\`) or percent signs
-- (\`%\`). It must be between 3 and 255 characters in length, and it must
-- not start with \`\"goog\"\`.
pscName :: Lens' ProjectsSubscriptionsCreate' Text
pscName = lens _pscName (\ s a -> s{_pscName = a})

-- | OAuth 2.0 token for the current user.
pscOauthToken :: Lens' ProjectsSubscriptionsCreate' (Maybe Text)
pscOauthToken
  = lens _pscOauthToken
      (\ s a -> s{_pscOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pscFields :: Lens' ProjectsSubscriptionsCreate' (Maybe Text)
pscFields
  = lens _pscFields (\ s a -> s{_pscFields = a})

-- | JSONP
pscCallback :: Lens' ProjectsSubscriptionsCreate' (Maybe Text)
pscCallback
  = lens _pscCallback (\ s a -> s{_pscCallback = a})

-- | Data format for response.
pscAlt :: Lens' ProjectsSubscriptionsCreate' Text
pscAlt = lens _pscAlt (\ s a -> s{_pscAlt = a})

instance GoogleRequest ProjectsSubscriptionsCreate'
         where
        type Rs ProjectsSubscriptionsCreate' = Subscription
        request = requestWithRoute defReq pubSubURL
        requestWithRoute r u ProjectsSubscriptionsCreate{..}
          = go _pscXgafv _pscQuotaUser _pscPrettyPrint
              _pscUploadProtocol
              _pscPp
              _pscAccessToken
              _pscUploadType
              _pscBearerToken
              _pscKey
              _pscName
              _pscOauthToken
              _pscFields
              _pscCallback
              _pscAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsSubscriptionsCreateAPI)
                      r
                      u
