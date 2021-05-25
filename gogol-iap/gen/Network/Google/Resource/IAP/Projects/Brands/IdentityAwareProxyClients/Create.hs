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
-- Module      : Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Identity Aware Proxy (IAP) OAuth client. The client is owned
-- by IAP. Requires that the brand for the project exists and that it is
-- set for internal-only use.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.brands.identityAwareProxyClients.create@.
module Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.Create
    (
    -- * REST Resource
      ProjectsBrandsIdentityAwareProxyClientsCreateResource

    -- * Creating a Request
    , projectsBrandsIdentityAwareProxyClientsCreate
    , ProjectsBrandsIdentityAwareProxyClientsCreate

    -- * Request Lenses
    , pbiapccParent
    , pbiapccXgafv
    , pbiapccUploadProtocol
    , pbiapccAccessToken
    , pbiapccUploadType
    , pbiapccPayload
    , pbiapccCallback
    ) where

import Network.Google.IAP.Types
import Network.Google.Prelude

-- | A resource alias for @iap.projects.brands.identityAwareProxyClients.create@ method which the
-- 'ProjectsBrandsIdentityAwareProxyClientsCreate' request conforms to.
type ProjectsBrandsIdentityAwareProxyClientsCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "identityAwareProxyClients" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] IdentityAwareProxyClient :>
                         Post '[JSON] IdentityAwareProxyClient

-- | Creates an Identity Aware Proxy (IAP) OAuth client. The client is owned
-- by IAP. Requires that the brand for the project exists and that it is
-- set for internal-only use.
--
-- /See:/ 'projectsBrandsIdentityAwareProxyClientsCreate' smart constructor.
data ProjectsBrandsIdentityAwareProxyClientsCreate =
  ProjectsBrandsIdentityAwareProxyClientsCreate'
    { _pbiapccParent :: !Text
    , _pbiapccXgafv :: !(Maybe Xgafv)
    , _pbiapccUploadProtocol :: !(Maybe Text)
    , _pbiapccAccessToken :: !(Maybe Text)
    , _pbiapccUploadType :: !(Maybe Text)
    , _pbiapccPayload :: !IdentityAwareProxyClient
    , _pbiapccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsBrandsIdentityAwareProxyClientsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbiapccParent'
--
-- * 'pbiapccXgafv'
--
-- * 'pbiapccUploadProtocol'
--
-- * 'pbiapccAccessToken'
--
-- * 'pbiapccUploadType'
--
-- * 'pbiapccPayload'
--
-- * 'pbiapccCallback'
projectsBrandsIdentityAwareProxyClientsCreate
    :: Text -- ^ 'pbiapccParent'
    -> IdentityAwareProxyClient -- ^ 'pbiapccPayload'
    -> ProjectsBrandsIdentityAwareProxyClientsCreate
projectsBrandsIdentityAwareProxyClientsCreate pPbiapccParent_ pPbiapccPayload_ =
  ProjectsBrandsIdentityAwareProxyClientsCreate'
    { _pbiapccParent = pPbiapccParent_
    , _pbiapccXgafv = Nothing
    , _pbiapccUploadProtocol = Nothing
    , _pbiapccAccessToken = Nothing
    , _pbiapccUploadType = Nothing
    , _pbiapccPayload = pPbiapccPayload_
    , _pbiapccCallback = Nothing
    }


-- | Required. Path to create the client in. In the following format:
-- projects\/{project_number\/id}\/brands\/{brand}. The project must belong
-- to a G Suite account.
pbiapccParent :: Lens' ProjectsBrandsIdentityAwareProxyClientsCreate Text
pbiapccParent
  = lens _pbiapccParent
      (\ s a -> s{_pbiapccParent = a})

-- | V1 error format.
pbiapccXgafv :: Lens' ProjectsBrandsIdentityAwareProxyClientsCreate (Maybe Xgafv)
pbiapccXgafv
  = lens _pbiapccXgafv (\ s a -> s{_pbiapccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbiapccUploadProtocol :: Lens' ProjectsBrandsIdentityAwareProxyClientsCreate (Maybe Text)
pbiapccUploadProtocol
  = lens _pbiapccUploadProtocol
      (\ s a -> s{_pbiapccUploadProtocol = a})

-- | OAuth access token.
pbiapccAccessToken :: Lens' ProjectsBrandsIdentityAwareProxyClientsCreate (Maybe Text)
pbiapccAccessToken
  = lens _pbiapccAccessToken
      (\ s a -> s{_pbiapccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbiapccUploadType :: Lens' ProjectsBrandsIdentityAwareProxyClientsCreate (Maybe Text)
pbiapccUploadType
  = lens _pbiapccUploadType
      (\ s a -> s{_pbiapccUploadType = a})

-- | Multipart request metadata.
pbiapccPayload :: Lens' ProjectsBrandsIdentityAwareProxyClientsCreate IdentityAwareProxyClient
pbiapccPayload
  = lens _pbiapccPayload
      (\ s a -> s{_pbiapccPayload = a})

-- | JSONP
pbiapccCallback :: Lens' ProjectsBrandsIdentityAwareProxyClientsCreate (Maybe Text)
pbiapccCallback
  = lens _pbiapccCallback
      (\ s a -> s{_pbiapccCallback = a})

instance GoogleRequest
           ProjectsBrandsIdentityAwareProxyClientsCreate
         where
        type Rs ProjectsBrandsIdentityAwareProxyClientsCreate
             = IdentityAwareProxyClient
        type Scopes
               ProjectsBrandsIdentityAwareProxyClientsCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsBrandsIdentityAwareProxyClientsCreate'{..}
          = go _pbiapccParent _pbiapccXgafv
              _pbiapccUploadProtocol
              _pbiapccAccessToken
              _pbiapccUploadType
              _pbiapccCallback
              (Just AltJSON)
              _pbiapccPayload
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsBrandsIdentityAwareProxyClientsCreateResource)
                      mempty
