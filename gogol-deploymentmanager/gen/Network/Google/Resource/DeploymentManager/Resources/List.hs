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
-- Module      : Network.Google.Resource.DeploymentManager.Resources.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all resources in a given deployment.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentmanagerResourcesList@.
module Network.Google.Resource.DeploymentManager.Resources.List
    (
    -- * REST Resource
      ResourcesListResource

    -- * Creating a Request
    , resourcesList'
    , ResourcesList'

    -- * Request Lenses
    , rlQuotaUser
    , rlPrettyPrint
    , rlProject
    , rlUserIp
    , rlKey
    , rlFilter
    , rlPageToken
    , rlOauthToken
    , rlMaxResults
    , rlFields
    , rlAlt
    , rlDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentmanagerResourcesList@ which the
-- 'ResourcesList'' request conforms to.
type ResourcesListResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             "resources" :>
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
                                   Get '[JSON] ResourcesListResponse

-- | Lists all resources in a given deployment.
--
-- /See:/ 'resourcesList'' smart constructor.
data ResourcesList' = ResourcesList'
    { _rlQuotaUser   :: !(Maybe Text)
    , _rlPrettyPrint :: !Bool
    , _rlProject     :: !Text
    , _rlUserIp      :: !(Maybe Text)
    , _rlKey         :: !(Maybe Text)
    , _rlFilter      :: !(Maybe Text)
    , _rlPageToken   :: !(Maybe Text)
    , _rlOauthToken  :: !(Maybe Text)
    , _rlMaxResults  :: !Word32
    , _rlFields      :: !(Maybe Text)
    , _rlAlt         :: !Alt
    , _rlDeployment  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ResourcesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlQuotaUser'
--
-- * 'rlPrettyPrint'
--
-- * 'rlProject'
--
-- * 'rlUserIp'
--
-- * 'rlKey'
--
-- * 'rlFilter'
--
-- * 'rlPageToken'
--
-- * 'rlOauthToken'
--
-- * 'rlMaxResults'
--
-- * 'rlFields'
--
-- * 'rlAlt'
--
-- * 'rlDeployment'
resourcesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'deployment'
    -> ResourcesList'
resourcesList' pRlProject_ pRlDeployment_ =
    ResourcesList'
    { _rlQuotaUser = Nothing
    , _rlPrettyPrint = True
    , _rlProject = pRlProject_
    , _rlUserIp = Nothing
    , _rlKey = Nothing
    , _rlFilter = Nothing
    , _rlPageToken = Nothing
    , _rlOauthToken = Nothing
    , _rlMaxResults = 500
    , _rlFields = Nothing
    , _rlAlt = JSON
    , _rlDeployment = pRlDeployment_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlQuotaUser :: Lens' ResourcesList' (Maybe Text)
rlQuotaUser
  = lens _rlQuotaUser (\ s a -> s{_rlQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlPrettyPrint :: Lens' ResourcesList' Bool
rlPrettyPrint
  = lens _rlPrettyPrint
      (\ s a -> s{_rlPrettyPrint = a})

-- | The project ID for this request.
rlProject :: Lens' ResourcesList' Text
rlProject
  = lens _rlProject (\ s a -> s{_rlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlUserIp :: Lens' ResourcesList' (Maybe Text)
rlUserIp = lens _rlUserIp (\ s a -> s{_rlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlKey :: Lens' ResourcesList' (Maybe Text)
rlKey = lens _rlKey (\ s a -> s{_rlKey = a})

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
rlFilter :: Lens' ResourcesList' (Maybe Text)
rlFilter = lens _rlFilter (\ s a -> s{_rlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
rlPageToken :: Lens' ResourcesList' (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | OAuth 2.0 token for the current user.
rlOauthToken :: Lens' ResourcesList' (Maybe Text)
rlOauthToken
  = lens _rlOauthToken (\ s a -> s{_rlOauthToken = a})

-- | Maximum count of results to be returned.
rlMaxResults :: Lens' ResourcesList' Word32
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rlFields :: Lens' ResourcesList' (Maybe Text)
rlFields = lens _rlFields (\ s a -> s{_rlFields = a})

-- | Data format for the response.
rlAlt :: Lens' ResourcesList' Alt
rlAlt = lens _rlAlt (\ s a -> s{_rlAlt = a})

-- | The name of the deployment for this request.
rlDeployment :: Lens' ResourcesList' Text
rlDeployment
  = lens _rlDeployment (\ s a -> s{_rlDeployment = a})

instance GoogleRequest ResourcesList' where
        type Rs ResourcesList' = ResourcesListResponse
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u ResourcesList'{..}
          = go _rlQuotaUser (Just _rlPrettyPrint) _rlProject
              _rlUserIp
              _rlKey
              _rlFilter
              _rlPageToken
              _rlOauthToken
              (Just _rlMaxResults)
              _rlFields
              (Just _rlAlt)
              _rlDeployment
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ResourcesListResource)
                      r
                      u
