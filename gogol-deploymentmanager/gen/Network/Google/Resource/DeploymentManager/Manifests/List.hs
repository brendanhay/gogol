{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DeploymentManager.Manifests.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all manifests for a given deployment.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerManifestsList@.
module Network.Google.Resource.DeploymentManager.Manifests.List
    (
    -- * REST Resource
      ManifestsListResource

    -- * Creating a Request
    , manifestsList'
    , ManifestsList'

    -- * Request Lenses
    , mlQuotaUser
    , mlPrettyPrint
    , mlProject
    , mlUserIP
    , mlKey
    , mlFilter
    , mlPageToken
    , mlOAuthToken
    , mlMaxResults
    , mlFields
    , mlDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerManifestsList@ which the
-- 'ManifestsList'' request conforms to.
type ManifestsListResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             "manifests" :>
               QueryParam "filter" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "pageToken" Text :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ManifestsListResponse

-- | Lists all manifests for a given deployment.
--
-- /See:/ 'manifestsList'' smart constructor.
data ManifestsList' = ManifestsList'
    { _mlQuotaUser   :: !(Maybe Text)
    , _mlPrettyPrint :: !Bool
    , _mlProject     :: !Text
    , _mlUserIP      :: !(Maybe Text)
    , _mlKey         :: !(Maybe Key)
    , _mlFilter      :: !(Maybe Text)
    , _mlPageToken   :: !(Maybe Text)
    , _mlOAuthToken  :: !(Maybe OAuthToken)
    , _mlMaxResults  :: !Word32
    , _mlFields      :: !(Maybe Text)
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
-- * 'mlUserIP'
--
-- * 'mlKey'
--
-- * 'mlFilter'
--
-- * 'mlPageToken'
--
-- * 'mlOAuthToken'
--
-- * 'mlMaxResults'
--
-- * 'mlFields'
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
    , _mlUserIP = Nothing
    , _mlKey = Nothing
    , _mlFilter = Nothing
    , _mlPageToken = Nothing
    , _mlOAuthToken = Nothing
    , _mlMaxResults = 500
    , _mlFields = Nothing
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
mlUserIP :: Lens' ManifestsList' (Maybe Text)
mlUserIP = lens _mlUserIP (\ s a -> s{_mlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlKey :: Lens' ManifestsList' (Maybe Key)
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
mlOAuthToken :: Lens' ManifestsList' (Maybe OAuthToken)
mlOAuthToken
  = lens _mlOAuthToken (\ s a -> s{_mlOAuthToken = a})

-- | Maximum count of results to be returned.
mlMaxResults :: Lens' ManifestsList' Word32
mlMaxResults
  = lens _mlMaxResults (\ s a -> s{_mlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mlFields :: Lens' ManifestsList' (Maybe Text)
mlFields = lens _mlFields (\ s a -> s{_mlFields = a})

-- | The name of the deployment for this request.
mlDeployment :: Lens' ManifestsList' Text
mlDeployment
  = lens _mlDeployment (\ s a -> s{_mlDeployment = a})

instance GoogleAuth ManifestsList' where
        authKey = mlKey . _Just
        authToken = mlOAuthToken . _Just

instance GoogleRequest ManifestsList' where
        type Rs ManifestsList' = ManifestsListResponse
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u ManifestsList'{..}
          = go _mlFilter (Just _mlMaxResults) _mlPageToken
              _mlProject
              _mlDeployment
              _mlQuotaUser
              (Just _mlPrettyPrint)
              _mlUserIP
              _mlFields
              _mlKey
              _mlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ManifestsListResource)
                      r
                      u
