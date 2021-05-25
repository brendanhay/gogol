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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Assets.RunDiscovery
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs asset discovery. The discovery is tracked with a long-running
-- operation. This API can only be called with limited frequency for an
-- organization. If it is called too frequently the caller will receive a
-- TOO_MANY_REQUESTS error.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.assets.runDiscovery@.
module Network.Google.Resource.SecurityCenter.Organizations.Assets.RunDiscovery
    (
    -- * REST Resource
      OrganizationsAssetsRunDiscoveryResource

    -- * Creating a Request
    , organizationsAssetsRunDiscovery
    , OrganizationsAssetsRunDiscovery

    -- * Request Lenses
    , oardParent
    , oardXgafv
    , oardUploadProtocol
    , oardAccessToken
    , oardUploadType
    , oardPayload
    , oardCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.assets.runDiscovery@ method which the
-- 'OrganizationsAssetsRunDiscovery' request conforms to.
type OrganizationsAssetsRunDiscoveryResource =
     "v1p1beta1" :>
       Capture "parent" Text :>
         "assets:runDiscovery" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] RunAssetDiscoveryRequest :>
                         Post '[JSON] Operation

-- | Runs asset discovery. The discovery is tracked with a long-running
-- operation. This API can only be called with limited frequency for an
-- organization. If it is called too frequently the caller will receive a
-- TOO_MANY_REQUESTS error.
--
-- /See:/ 'organizationsAssetsRunDiscovery' smart constructor.
data OrganizationsAssetsRunDiscovery =
  OrganizationsAssetsRunDiscovery'
    { _oardParent :: !Text
    , _oardXgafv :: !(Maybe Xgafv)
    , _oardUploadProtocol :: !(Maybe Text)
    , _oardAccessToken :: !(Maybe Text)
    , _oardUploadType :: !(Maybe Text)
    , _oardPayload :: !RunAssetDiscoveryRequest
    , _oardCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsAssetsRunDiscovery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oardParent'
--
-- * 'oardXgafv'
--
-- * 'oardUploadProtocol'
--
-- * 'oardAccessToken'
--
-- * 'oardUploadType'
--
-- * 'oardPayload'
--
-- * 'oardCallback'
organizationsAssetsRunDiscovery
    :: Text -- ^ 'oardParent'
    -> RunAssetDiscoveryRequest -- ^ 'oardPayload'
    -> OrganizationsAssetsRunDiscovery
organizationsAssetsRunDiscovery pOardParent_ pOardPayload_ =
  OrganizationsAssetsRunDiscovery'
    { _oardParent = pOardParent_
    , _oardXgafv = Nothing
    , _oardUploadProtocol = Nothing
    , _oardAccessToken = Nothing
    , _oardUploadType = Nothing
    , _oardPayload = pOardPayload_
    , _oardCallback = Nothing
    }


-- | Required. Name of the organization to run asset discovery for. Its
-- format is \"organizations\/[organization_id]\".
oardParent :: Lens' OrganizationsAssetsRunDiscovery Text
oardParent
  = lens _oardParent (\ s a -> s{_oardParent = a})

-- | V1 error format.
oardXgafv :: Lens' OrganizationsAssetsRunDiscovery (Maybe Xgafv)
oardXgafv
  = lens _oardXgafv (\ s a -> s{_oardXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oardUploadProtocol :: Lens' OrganizationsAssetsRunDiscovery (Maybe Text)
oardUploadProtocol
  = lens _oardUploadProtocol
      (\ s a -> s{_oardUploadProtocol = a})

-- | OAuth access token.
oardAccessToken :: Lens' OrganizationsAssetsRunDiscovery (Maybe Text)
oardAccessToken
  = lens _oardAccessToken
      (\ s a -> s{_oardAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oardUploadType :: Lens' OrganizationsAssetsRunDiscovery (Maybe Text)
oardUploadType
  = lens _oardUploadType
      (\ s a -> s{_oardUploadType = a})

-- | Multipart request metadata.
oardPayload :: Lens' OrganizationsAssetsRunDiscovery RunAssetDiscoveryRequest
oardPayload
  = lens _oardPayload (\ s a -> s{_oardPayload = a})

-- | JSONP
oardCallback :: Lens' OrganizationsAssetsRunDiscovery (Maybe Text)
oardCallback
  = lens _oardCallback (\ s a -> s{_oardCallback = a})

instance GoogleRequest
           OrganizationsAssetsRunDiscovery
         where
        type Rs OrganizationsAssetsRunDiscovery = Operation
        type Scopes OrganizationsAssetsRunDiscovery =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsAssetsRunDiscovery'{..}
          = go _oardParent _oardXgafv _oardUploadProtocol
              _oardAccessToken
              _oardUploadType
              _oardCallback
              (Just AltJSON)
              _oardPayload
              securityCenterService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsAssetsRunDiscoveryResource)
                      mempty
