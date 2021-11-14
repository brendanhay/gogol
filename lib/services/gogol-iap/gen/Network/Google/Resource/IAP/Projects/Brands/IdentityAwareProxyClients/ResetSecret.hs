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
-- Module      : Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.ResetSecret
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets an Identity Aware Proxy (IAP) OAuth client secret. Useful if the
-- secret was compromised. Requires that the client is owned by IAP.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.brands.identityAwareProxyClients.resetSecret@.
module Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.ResetSecret
    (
    -- * REST Resource
      ProjectsBrandsIdentityAwareProxyClientsResetSecretResource

    -- * Creating a Request
    , projectsBrandsIdentityAwareProxyClientsResetSecret
    , ProjectsBrandsIdentityAwareProxyClientsResetSecret

    -- * Request Lenses
    , pbiapcrsXgafv
    , pbiapcrsUploadProtocol
    , pbiapcrsAccessToken
    , pbiapcrsUploadType
    , pbiapcrsPayload
    , pbiapcrsName
    , pbiapcrsCallback
    ) where

import Network.Google.IAP.Types
import Network.Google.Prelude

-- | A resource alias for @iap.projects.brands.identityAwareProxyClients.resetSecret@ method which the
-- 'ProjectsBrandsIdentityAwareProxyClientsResetSecret' request conforms to.
type ProjectsBrandsIdentityAwareProxyClientsResetSecretResource
     =
     "v1" :>
       CaptureMode "name" "resetSecret" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       ResetIdentityAwareProxyClientSecretRequest
                       :> Post '[JSON] IdentityAwareProxyClient

-- | Resets an Identity Aware Proxy (IAP) OAuth client secret. Useful if the
-- secret was compromised. Requires that the client is owned by IAP.
--
-- /See:/ 'projectsBrandsIdentityAwareProxyClientsResetSecret' smart constructor.
data ProjectsBrandsIdentityAwareProxyClientsResetSecret =
  ProjectsBrandsIdentityAwareProxyClientsResetSecret'
    { _pbiapcrsXgafv :: !(Maybe Xgafv)
    , _pbiapcrsUploadProtocol :: !(Maybe Text)
    , _pbiapcrsAccessToken :: !(Maybe Text)
    , _pbiapcrsUploadType :: !(Maybe Text)
    , _pbiapcrsPayload :: !ResetIdentityAwareProxyClientSecretRequest
    , _pbiapcrsName :: !Text
    , _pbiapcrsCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsBrandsIdentityAwareProxyClientsResetSecret' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbiapcrsXgafv'
--
-- * 'pbiapcrsUploadProtocol'
--
-- * 'pbiapcrsAccessToken'
--
-- * 'pbiapcrsUploadType'
--
-- * 'pbiapcrsPayload'
--
-- * 'pbiapcrsName'
--
-- * 'pbiapcrsCallback'
projectsBrandsIdentityAwareProxyClientsResetSecret
    :: ResetIdentityAwareProxyClientSecretRequest -- ^ 'pbiapcrsPayload'
    -> Text -- ^ 'pbiapcrsName'
    -> ProjectsBrandsIdentityAwareProxyClientsResetSecret
projectsBrandsIdentityAwareProxyClientsResetSecret pPbiapcrsPayload_ pPbiapcrsName_ =
  ProjectsBrandsIdentityAwareProxyClientsResetSecret'
    { _pbiapcrsXgafv = Nothing
    , _pbiapcrsUploadProtocol = Nothing
    , _pbiapcrsAccessToken = Nothing
    , _pbiapcrsUploadType = Nothing
    , _pbiapcrsPayload = pPbiapcrsPayload_
    , _pbiapcrsName = pPbiapcrsName_
    , _pbiapcrsCallback = Nothing
    }


-- | V1 error format.
pbiapcrsXgafv :: Lens' ProjectsBrandsIdentityAwareProxyClientsResetSecret (Maybe Xgafv)
pbiapcrsXgafv
  = lens _pbiapcrsXgafv
      (\ s a -> s{_pbiapcrsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbiapcrsUploadProtocol :: Lens' ProjectsBrandsIdentityAwareProxyClientsResetSecret (Maybe Text)
pbiapcrsUploadProtocol
  = lens _pbiapcrsUploadProtocol
      (\ s a -> s{_pbiapcrsUploadProtocol = a})

-- | OAuth access token.
pbiapcrsAccessToken :: Lens' ProjectsBrandsIdentityAwareProxyClientsResetSecret (Maybe Text)
pbiapcrsAccessToken
  = lens _pbiapcrsAccessToken
      (\ s a -> s{_pbiapcrsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbiapcrsUploadType :: Lens' ProjectsBrandsIdentityAwareProxyClientsResetSecret (Maybe Text)
pbiapcrsUploadType
  = lens _pbiapcrsUploadType
      (\ s a -> s{_pbiapcrsUploadType = a})

-- | Multipart request metadata.
pbiapcrsPayload :: Lens' ProjectsBrandsIdentityAwareProxyClientsResetSecret ResetIdentityAwareProxyClientSecretRequest
pbiapcrsPayload
  = lens _pbiapcrsPayload
      (\ s a -> s{_pbiapcrsPayload = a})

-- | Required. Name of the Identity Aware Proxy client to that will have its
-- secret reset. In the following format:
-- projects\/{project_number\/id}\/brands\/{brand}\/identityAwareProxyClients\/{client_id}.
pbiapcrsName :: Lens' ProjectsBrandsIdentityAwareProxyClientsResetSecret Text
pbiapcrsName
  = lens _pbiapcrsName (\ s a -> s{_pbiapcrsName = a})

-- | JSONP
pbiapcrsCallback :: Lens' ProjectsBrandsIdentityAwareProxyClientsResetSecret (Maybe Text)
pbiapcrsCallback
  = lens _pbiapcrsCallback
      (\ s a -> s{_pbiapcrsCallback = a})

instance GoogleRequest
           ProjectsBrandsIdentityAwareProxyClientsResetSecret
         where
        type Rs
               ProjectsBrandsIdentityAwareProxyClientsResetSecret
             = IdentityAwareProxyClient
        type Scopes
               ProjectsBrandsIdentityAwareProxyClientsResetSecret
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsBrandsIdentityAwareProxyClientsResetSecret'{..}
          = go _pbiapcrsName _pbiapcrsXgafv
              _pbiapcrsUploadProtocol
              _pbiapcrsAccessToken
              _pbiapcrsUploadType
              _pbiapcrsCallback
              (Just AltJSON)
              _pbiapcrsPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsBrandsIdentityAwareProxyClientsResetSecretResource)
                      mempty
