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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.CancelPreview
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Cancels and removes the preview currently associated with the
-- deployment.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerDeploymentsCancelPreview@.
module Network.Google.Resource.DeploymentManager.Deployments.CancelPreview
    (
    -- * REST Resource
      DeploymentsCancelPreviewResource

    -- * Creating a Request
    , deploymentsCancelPreview'
    , DeploymentsCancelPreview'

    -- * Request Lenses
    , dcpQuotaUser
    , dcpPrettyPrint
    , dcpProject
    , dcpUserIP
    , dcpPayload
    , dcpKey
    , dcpOAuthToken
    , dcpFields
    , dcpDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerDeploymentsCancelPreview@ method which the
-- 'DeploymentsCancelPreview'' request conforms to.
type DeploymentsCancelPreviewResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             "cancelPreview" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] DeploymentsCancelPreviewRequest :>
                               Post '[JSON] Operation

-- | Cancels and removes the preview currently associated with the
-- deployment.
--
-- /See:/ 'deploymentsCancelPreview'' smart constructor.
data DeploymentsCancelPreview' = DeploymentsCancelPreview'
    { _dcpQuotaUser   :: !(Maybe Text)
    , _dcpPrettyPrint :: !Bool
    , _dcpProject     :: !Text
    , _dcpUserIP      :: !(Maybe Text)
    , _dcpPayload     :: !DeploymentsCancelPreviewRequest
    , _dcpKey         :: !(Maybe AuthKey)
    , _dcpOAuthToken  :: !(Maybe OAuthToken)
    , _dcpFields      :: !(Maybe Text)
    , _dcpDeployment  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsCancelPreview'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpQuotaUser'
--
-- * 'dcpPrettyPrint'
--
-- * 'dcpProject'
--
-- * 'dcpUserIP'
--
-- * 'dcpPayload'
--
-- * 'dcpKey'
--
-- * 'dcpOAuthToken'
--
-- * 'dcpFields'
--
-- * 'dcpDeployment'
deploymentsCancelPreview'
    :: Text -- ^ 'project'
    -> DeploymentsCancelPreviewRequest -- ^ 'payload'
    -> Text -- ^ 'deployment'
    -> DeploymentsCancelPreview'
deploymentsCancelPreview' pDcpProject_ pDcpPayload_ pDcpDeployment_ =
    DeploymentsCancelPreview'
    { _dcpQuotaUser = Nothing
    , _dcpPrettyPrint = True
    , _dcpProject = pDcpProject_
    , _dcpUserIP = Nothing
    , _dcpPayload = pDcpPayload_
    , _dcpKey = Nothing
    , _dcpOAuthToken = Nothing
    , _dcpFields = Nothing
    , _dcpDeployment = pDcpDeployment_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dcpQuotaUser :: Lens' DeploymentsCancelPreview' (Maybe Text)
dcpQuotaUser
  = lens _dcpQuotaUser (\ s a -> s{_dcpQuotaUser = a})

-- | Returns response with indentations and line breaks.
dcpPrettyPrint :: Lens' DeploymentsCancelPreview' Bool
dcpPrettyPrint
  = lens _dcpPrettyPrint
      (\ s a -> s{_dcpPrettyPrint = a})

-- | The project ID for this request.
dcpProject :: Lens' DeploymentsCancelPreview' Text
dcpProject
  = lens _dcpProject (\ s a -> s{_dcpProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dcpUserIP :: Lens' DeploymentsCancelPreview' (Maybe Text)
dcpUserIP
  = lens _dcpUserIP (\ s a -> s{_dcpUserIP = a})

-- | Multipart request metadata.
dcpPayload :: Lens' DeploymentsCancelPreview' DeploymentsCancelPreviewRequest
dcpPayload
  = lens _dcpPayload (\ s a -> s{_dcpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dcpKey :: Lens' DeploymentsCancelPreview' (Maybe AuthKey)
dcpKey = lens _dcpKey (\ s a -> s{_dcpKey = a})

-- | OAuth 2.0 token for the current user.
dcpOAuthToken :: Lens' DeploymentsCancelPreview' (Maybe OAuthToken)
dcpOAuthToken
  = lens _dcpOAuthToken
      (\ s a -> s{_dcpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dcpFields :: Lens' DeploymentsCancelPreview' (Maybe Text)
dcpFields
  = lens _dcpFields (\ s a -> s{_dcpFields = a})

-- | The name of the deployment for this request.
dcpDeployment :: Lens' DeploymentsCancelPreview' Text
dcpDeployment
  = lens _dcpDeployment
      (\ s a -> s{_dcpDeployment = a})

instance GoogleAuth DeploymentsCancelPreview' where
        _AuthKey = dcpKey . _Just
        _AuthToken = dcpOAuthToken . _Just

instance GoogleRequest DeploymentsCancelPreview'
         where
        type Rs DeploymentsCancelPreview' = Operation
        request = requestWith deploymentManagerRequest
        requestWith rq DeploymentsCancelPreview'{..}
          = go _dcpProject _dcpDeployment _dcpQuotaUser
              (Just _dcpPrettyPrint)
              _dcpUserIP
              _dcpFields
              _dcpKey
              _dcpOAuthToken
              (Just AltJSON)
              _dcpPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy DeploymentsCancelPreviewResource)
                      rq
