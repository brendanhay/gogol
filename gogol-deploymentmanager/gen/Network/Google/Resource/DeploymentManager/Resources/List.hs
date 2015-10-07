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
-- Module      : Network.Google.Resource.DeploymentManager.Resources.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all resources in a given deployment.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerResourcesList@.
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
    , rlUserIP
    , rlKey
    , rlFilter
    , rlPageToken
    , rlOAuthToken
    , rlMaxResults
    , rlFields
    , rlDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerResourcesList@ method which the
-- 'ResourcesList'' request conforms to.
type ResourcesListResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             "resources" :>
               QueryParam "filter" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ResourcesListResponse

-- | Lists all resources in a given deployment.
--
-- /See:/ 'resourcesList'' smart constructor.
data ResourcesList' = ResourcesList'
    { _rlQuotaUser   :: !(Maybe Text)
    , _rlPrettyPrint :: !Bool
    , _rlProject     :: !Text
    , _rlUserIP      :: !(Maybe Text)
    , _rlKey         :: !(Maybe AuthKey)
    , _rlFilter      :: !(Maybe Text)
    , _rlPageToken   :: !(Maybe Text)
    , _rlOAuthToken  :: !(Maybe OAuthToken)
    , _rlMaxResults  :: !Word32
    , _rlFields      :: !(Maybe Text)
    , _rlDeployment  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'rlUserIP'
--
-- * 'rlKey'
--
-- * 'rlFilter'
--
-- * 'rlPageToken'
--
-- * 'rlOAuthToken'
--
-- * 'rlMaxResults'
--
-- * 'rlFields'
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
    , _rlUserIP = Nothing
    , _rlKey = Nothing
    , _rlFilter = Nothing
    , _rlPageToken = Nothing
    , _rlOAuthToken = Nothing
    , _rlMaxResults = 500
    , _rlFields = Nothing
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
rlUserIP :: Lens' ResourcesList' (Maybe Text)
rlUserIP = lens _rlUserIP (\ s a -> s{_rlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlKey :: Lens' ResourcesList' (Maybe AuthKey)
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
rlOAuthToken :: Lens' ResourcesList' (Maybe OAuthToken)
rlOAuthToken
  = lens _rlOAuthToken (\ s a -> s{_rlOAuthToken = a})

-- | Maximum count of results to be returned.
rlMaxResults :: Lens' ResourcesList' Word32
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rlFields :: Lens' ResourcesList' (Maybe Text)
rlFields = lens _rlFields (\ s a -> s{_rlFields = a})

-- | The name of the deployment for this request.
rlDeployment :: Lens' ResourcesList' Text
rlDeployment
  = lens _rlDeployment (\ s a -> s{_rlDeployment = a})

instance GoogleAuth ResourcesList' where
        _AuthKey = rlKey . _Just
        _AuthToken = rlOAuthToken . _Just

instance GoogleRequest ResourcesList' where
        type Rs ResourcesList' = ResourcesListResponse
        request = requestWith deploymentManagerRequest
        requestWith rq ResourcesList'{..}
          = go _rlProject _rlDeployment _rlFilter _rlPageToken
              (Just _rlMaxResults)
              _rlQuotaUser
              (Just _rlPrettyPrint)
              _rlUserIP
              _rlFields
              _rlKey
              _rlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ResourcesListResource)
                      rq
