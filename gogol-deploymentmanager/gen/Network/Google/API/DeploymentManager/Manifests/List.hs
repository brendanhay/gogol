{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DeploymentManager.Manifests.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all manifests for a given deployment.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.manifests.list@.
module Network.Google.API.DeploymentManager.Manifests.List
    (
    -- * REST Resource
      ManifestsListAPI

    -- * Creating a Request
    , manifestsList'
    , ManifestsList'

    -- * Request Lenses
    , mlQuotaUser
    , mlPrettyPrint
    , mlProject
    , mlUserIp
    , mlKey
    , mlFilter
    , mlPageToken
    , mlOauthToken
    , mlMaxResults
    , mlFields
    , mlAlt
    , mlDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for deploymentmanager.manifests.list which the
-- 'ManifestsList'' request conforms to.
type ManifestsListAPI =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             "manifests" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "maxResults" Word32 :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :>
                                   Get '[JSON] ManifestsListResponse

-- | Lists all manifests for a given deployment.
--
-- /See:/ 'manifestsList'' smart constructor.
data ManifestsList' = ManifestsList'
    { _mlQuotaUser   :: !(Maybe Text)
    , _mlPrettyPrint :: !Bool
    , _mlProject     :: !Text
    , _mlUserIp      :: !(Maybe Text)
    , _mlKey         :: !(Maybe Text)
    , _mlFilter      :: !(Maybe Text)
    , _mlPageToken   :: !(Maybe Text)
    , _mlOauthToken  :: !(Maybe Text)
    , _mlMaxResults  :: !Word32
    , _mlFields      :: !(Maybe Text)
    , _mlAlt         :: !Alt
    , _mlDeployment  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManifestsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlQuotaUser'
--
-- * 'mlPrettyPrint'
--
-- * 'mlProject'
--
-- * 'mlUserIp'
--
-- * 'mlKey'
--
-- * 'mlFilter'
--
-- * 'mlPageToken'
--
-- * 'mlOauthToken'
--
-- * 'mlMaxResults'
--
-- * 'mlFields'
--
-- * 'mlAlt'
--
-- * 'mlDeployment'
manifestsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'deployment'
    -> ManifestsList'
manifestsList' pMlProject_ pMlDeployment_ =
    ManifestsList'
    { _mlQuotaUser = Nothing
    , _mlPrettyPrint = True
    , _mlProject = pMlProject_
    , _mlUserIp = Nothing
    , _mlKey = Nothing
    , _mlFilter = Nothing
    , _mlPageToken = Nothing
    , _mlOauthToken = Nothing
    , _mlMaxResults = 500
    , _mlFields = Nothing
    , _mlAlt = JSON
    , _mlDeployment = pMlDeployment_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlQuotaUser :: Lens' ManifestsList' (Maybe Text)
mlQuotaUser
  = lens _mlQuotaUser (\ s a -> s{_mlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlPrettyPrint :: Lens' ManifestsList' Bool
mlPrettyPrint
  = lens _mlPrettyPrint
      (\ s a -> s{_mlPrettyPrint = a})

-- | The project ID for this request.
mlProject :: Lens' ManifestsList' Text
mlProject
  = lens _mlProject (\ s a -> s{_mlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlUserIp :: Lens' ManifestsList' (Maybe Text)
mlUserIp = lens _mlUserIp (\ s a -> s{_mlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlKey :: Lens' ManifestsList' (Maybe Text)
mlKey = lens _mlKey (\ s a -> s{_mlKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
mlFilter :: Lens' ManifestsList' (Maybe Text)
mlFilter = lens _mlFilter (\ s a -> s{_mlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
mlPageToken :: Lens' ManifestsList' (Maybe Text)
mlPageToken
  = lens _mlPageToken (\ s a -> s{_mlPageToken = a})

-- | OAuth 2.0 token for the current user.
mlOauthToken :: Lens' ManifestsList' (Maybe Text)
mlOauthToken
  = lens _mlOauthToken (\ s a -> s{_mlOauthToken = a})

-- | Maximum count of results to be returned.
mlMaxResults :: Lens' ManifestsList' Word32
mlMaxResults
  = lens _mlMaxResults (\ s a -> s{_mlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mlFields :: Lens' ManifestsList' (Maybe Text)
mlFields = lens _mlFields (\ s a -> s{_mlFields = a})

-- | Data format for the response.
mlAlt :: Lens' ManifestsList' Alt
mlAlt = lens _mlAlt (\ s a -> s{_mlAlt = a})

-- | The name of the deployment for this request.
mlDeployment :: Lens' ManifestsList' Text
mlDeployment
  = lens _mlDeployment (\ s a -> s{_mlDeployment = a})

instance GoogleRequest ManifestsList' where
        type Rs ManifestsList' = ManifestsListResponse
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u ManifestsList'{..}
          = go _mlQuotaUser (Just _mlPrettyPrint) _mlProject
              _mlUserIp
              _mlKey
              _mlFilter
              _mlPageToken
              _mlOauthToken
              (Just _mlMaxResults)
              _mlFields
              (Just _mlAlt)
              _mlDeployment
          where go
                  = clientWithRoute (Proxy :: Proxy ManifestsListAPI) r
                      u
