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
-- Module      : Network.Google.Resource.CloudResourceManager.Organizations.SetIAMPolicy
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on a Organization resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudResourceManagerOrganizationsSetIAMPolicy@.
module Network.Google.Resource.CloudResourceManager.Organizations.SetIAMPolicy
    (
    -- * REST Resource
      OrganizationsSetIAMPolicyResource

    -- * Creating a Request
    , organizationsSetIAMPolicy'
    , OrganizationsSetIAMPolicy'

    -- * Request Lenses
    , osipXgafv
    , osipUploadProtocol
    , osipPp
    , osipAccessToken
    , osipUploadType
    , osipPayload
    , osipBearerToken
    , osipResource
    , osipCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudResourceManagerOrganizationsSetIAMPolicy@ method which the
-- 'OrganizationsSetIAMPolicy'' request conforms to.
type OrganizationsSetIAMPolicyResource =
     "v1beta1" :>
       "organizations" :>
         CaptureMode "resource" "setIamPolicy" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] SetIAMPolicyRequest :>
                             Post '[JSON] Policy

-- | Sets the access control policy on a Organization resource. Replaces any
-- existing policy.
--
-- /See:/ 'organizationsSetIAMPolicy'' smart constructor.
data OrganizationsSetIAMPolicy' = OrganizationsSetIAMPolicy'
    { _osipXgafv          :: !(Maybe Text)
    , _osipUploadProtocol :: !(Maybe Text)
    , _osipPp             :: !Bool
    , _osipAccessToken    :: !(Maybe Text)
    , _osipUploadType     :: !(Maybe Text)
    , _osipPayload        :: !SetIAMPolicyRequest
    , _osipBearerToken    :: !(Maybe Text)
    , _osipResource       :: !Text
    , _osipCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsSetIAMPolicy'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osipXgafv'
--
-- * 'osipUploadProtocol'
--
-- * 'osipPp'
--
-- * 'osipAccessToken'
--
-- * 'osipUploadType'
--
-- * 'osipPayload'
--
-- * 'osipBearerToken'
--
-- * 'osipResource'
--
-- * 'osipCallback'
organizationsSetIAMPolicy'
    :: SetIAMPolicyRequest -- ^ 'payload'
    -> Text -- ^ 'resource'
    -> OrganizationsSetIAMPolicy'
organizationsSetIAMPolicy' pOsipPayload_ pOsipResource_ =
    OrganizationsSetIAMPolicy'
    { _osipXgafv = Nothing
    , _osipUploadProtocol = Nothing
    , _osipPp = True
    , _osipAccessToken = Nothing
    , _osipUploadType = Nothing
    , _osipPayload = pOsipPayload_
    , _osipBearerToken = Nothing
    , _osipResource = pOsipResource_
    , _osipCallback = Nothing
    }

-- | V1 error format.
osipXgafv :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipXgafv
  = lens _osipXgafv (\ s a -> s{_osipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osipUploadProtocol :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipUploadProtocol
  = lens _osipUploadProtocol
      (\ s a -> s{_osipUploadProtocol = a})

-- | Pretty-print response.
osipPp :: Lens' OrganizationsSetIAMPolicy' Bool
osipPp = lens _osipPp (\ s a -> s{_osipPp = a})

-- | OAuth access token.
osipAccessToken :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipAccessToken
  = lens _osipAccessToken
      (\ s a -> s{_osipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osipUploadType :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipUploadType
  = lens _osipUploadType
      (\ s a -> s{_osipUploadType = a})

-- | Multipart request metadata.
osipPayload :: Lens' OrganizationsSetIAMPolicy' SetIAMPolicyRequest
osipPayload
  = lens _osipPayload (\ s a -> s{_osipPayload = a})

-- | OAuth bearer token.
osipBearerToken :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipBearerToken
  = lens _osipBearerToken
      (\ s a -> s{_osipBearerToken = a})

-- | REQUIRED: The resource for which policy is being specified. \`resource\`
-- is usually specified as a path, such as,
-- \`projects\/{project}\/zones\/{zone}\/disks\/{disk}\`.
osipResource :: Lens' OrganizationsSetIAMPolicy' Text
osipResource
  = lens _osipResource (\ s a -> s{_osipResource = a})

-- | JSONP
osipCallback :: Lens' OrganizationsSetIAMPolicy' (Maybe Text)
osipCallback
  = lens _osipCallback (\ s a -> s{_osipCallback = a})

instance GoogleRequest OrganizationsSetIAMPolicy'
         where
        type Rs OrganizationsSetIAMPolicy' = Policy
        requestClient OrganizationsSetIAMPolicy'{..}
          = go _osipResource _osipXgafv _osipUploadProtocol
              (Just _osipPp)
              _osipAccessToken
              _osipUploadType
              _osipBearerToken
              _osipCallback
              (Just AltJSON)
              _osipPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsSetIAMPolicyResource)
                      mempty
