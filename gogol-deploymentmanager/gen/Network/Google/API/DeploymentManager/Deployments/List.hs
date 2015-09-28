{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DeploymentManager.Deployments.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all deployments for a given project.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.deployments.list@.
module Network.Google.API.DeploymentManager.Deployments.List
    (
    -- * REST Resource
      DeploymentsListAPI

    -- * Creating a Request
    , deploymentsList'
    , DeploymentsList'

    -- * Request Lenses
    , dlQuotaUser
    , dlPrettyPrint
    , dlProject
    , dlUserIp
    , dlKey
    , dlFilter
    , dlPageToken
    , dlOauthToken
    , dlMaxResults
    , dlFields
    , dlAlt
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for deploymentmanager.deployments.list which the
-- 'DeploymentsList'' request conforms to.
type DeploymentsListAPI =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
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
                               Get '[JSON] DeploymentsListResponse

-- | Lists all deployments for a given project.
--
-- /See:/ 'deploymentsList'' smart constructor.
data DeploymentsList' = DeploymentsList'
    { _dlQuotaUser   :: !(Maybe Text)
    , _dlPrettyPrint :: !Bool
    , _dlProject     :: !Text
    , _dlUserIp      :: !(Maybe Text)
    , _dlKey         :: !(Maybe Text)
    , _dlFilter      :: !(Maybe Text)
    , _dlPageToken   :: !(Maybe Text)
    , _dlOauthToken  :: !(Maybe Text)
    , _dlMaxResults  :: !Word32
    , _dlFields      :: !(Maybe Text)
    , _dlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlQuotaUser'
--
-- * 'dlPrettyPrint'
--
-- * 'dlProject'
--
-- * 'dlUserIp'
--
-- * 'dlKey'
--
-- * 'dlFilter'
--
-- * 'dlPageToken'
--
-- * 'dlOauthToken'
--
-- * 'dlMaxResults'
--
-- * 'dlFields'
--
-- * 'dlAlt'
deploymentsList'
    :: Text -- ^ 'project'
    -> DeploymentsList'
deploymentsList' pDlProject_ =
    DeploymentsList'
    { _dlQuotaUser = Nothing
    , _dlPrettyPrint = True
    , _dlProject = pDlProject_
    , _dlUserIp = Nothing
    , _dlKey = Nothing
    , _dlFilter = Nothing
    , _dlPageToken = Nothing
    , _dlOauthToken = Nothing
    , _dlMaxResults = 500
    , _dlFields = Nothing
    , _dlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dlQuotaUser :: Lens' DeploymentsList' (Maybe Text)
dlQuotaUser
  = lens _dlQuotaUser (\ s a -> s{_dlQuotaUser = a})

-- | Returns response with indentations and line breaks.
dlPrettyPrint :: Lens' DeploymentsList' Bool
dlPrettyPrint
  = lens _dlPrettyPrint
      (\ s a -> s{_dlPrettyPrint = a})

-- | The project ID for this request.
dlProject :: Lens' DeploymentsList' Text
dlProject
  = lens _dlProject (\ s a -> s{_dlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dlUserIp :: Lens' DeploymentsList' (Maybe Text)
dlUserIp = lens _dlUserIp (\ s a -> s{_dlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dlKey :: Lens' DeploymentsList' (Maybe Text)
dlKey = lens _dlKey (\ s a -> s{_dlKey = a})

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
dlFilter :: Lens' DeploymentsList' (Maybe Text)
dlFilter = lens _dlFilter (\ s a -> s{_dlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
dlPageToken :: Lens' DeploymentsList' (Maybe Text)
dlPageToken
  = lens _dlPageToken (\ s a -> s{_dlPageToken = a})

-- | OAuth 2.0 token for the current user.
dlOauthToken :: Lens' DeploymentsList' (Maybe Text)
dlOauthToken
  = lens _dlOauthToken (\ s a -> s{_dlOauthToken = a})

-- | Maximum count of results to be returned.
dlMaxResults :: Lens' DeploymentsList' Word32
dlMaxResults
  = lens _dlMaxResults (\ s a -> s{_dlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
dlFields :: Lens' DeploymentsList' (Maybe Text)
dlFields = lens _dlFields (\ s a -> s{_dlFields = a})

-- | Data format for the response.
dlAlt :: Lens' DeploymentsList' Alt
dlAlt = lens _dlAlt (\ s a -> s{_dlAlt = a})

instance GoogleRequest DeploymentsList' where
        type Rs DeploymentsList' = DeploymentsListResponse
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u DeploymentsList'{..}
          = go _dlQuotaUser (Just _dlPrettyPrint) _dlProject
              _dlUserIp
              _dlKey
              _dlFilter
              _dlPageToken
              _dlOauthToken
              (Just _dlMaxResults)
              _dlFields
              (Just _dlAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy DeploymentsListAPI)
                      r
                      u
