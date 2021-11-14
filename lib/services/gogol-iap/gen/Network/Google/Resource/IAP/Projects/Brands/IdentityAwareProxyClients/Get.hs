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
-- Module      : Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an Identity Aware Proxy (IAP) OAuth client. Requires that the
-- client is owned by IAP.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.brands.identityAwareProxyClients.get@.
module Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.Get
    (
    -- * REST Resource
      ProjectsBrandsIdentityAwareProxyClientsGetResource

    -- * Creating a Request
    , projectsBrandsIdentityAwareProxyClientsGet
    , ProjectsBrandsIdentityAwareProxyClientsGet

    -- * Request Lenses
    , pbiapcgXgafv
    , pbiapcgUploadProtocol
    , pbiapcgAccessToken
    , pbiapcgUploadType
    , pbiapcgName
    , pbiapcgCallback
    ) where

import Network.Google.IAP.Types
import Network.Google.Prelude

-- | A resource alias for @iap.projects.brands.identityAwareProxyClients.get@ method which the
-- 'ProjectsBrandsIdentityAwareProxyClientsGet' request conforms to.
type ProjectsBrandsIdentityAwareProxyClientsGetResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] IdentityAwareProxyClient

-- | Retrieves an Identity Aware Proxy (IAP) OAuth client. Requires that the
-- client is owned by IAP.
--
-- /See:/ 'projectsBrandsIdentityAwareProxyClientsGet' smart constructor.
data ProjectsBrandsIdentityAwareProxyClientsGet =
  ProjectsBrandsIdentityAwareProxyClientsGet'
    { _pbiapcgXgafv :: !(Maybe Xgafv)
    , _pbiapcgUploadProtocol :: !(Maybe Text)
    , _pbiapcgAccessToken :: !(Maybe Text)
    , _pbiapcgUploadType :: !(Maybe Text)
    , _pbiapcgName :: !Text
    , _pbiapcgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsBrandsIdentityAwareProxyClientsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbiapcgXgafv'
--
-- * 'pbiapcgUploadProtocol'
--
-- * 'pbiapcgAccessToken'
--
-- * 'pbiapcgUploadType'
--
-- * 'pbiapcgName'
--
-- * 'pbiapcgCallback'
projectsBrandsIdentityAwareProxyClientsGet
    :: Text -- ^ 'pbiapcgName'
    -> ProjectsBrandsIdentityAwareProxyClientsGet
projectsBrandsIdentityAwareProxyClientsGet pPbiapcgName_ =
  ProjectsBrandsIdentityAwareProxyClientsGet'
    { _pbiapcgXgafv = Nothing
    , _pbiapcgUploadProtocol = Nothing
    , _pbiapcgAccessToken = Nothing
    , _pbiapcgUploadType = Nothing
    , _pbiapcgName = pPbiapcgName_
    , _pbiapcgCallback = Nothing
    }


-- | V1 error format.
pbiapcgXgafv :: Lens' ProjectsBrandsIdentityAwareProxyClientsGet (Maybe Xgafv)
pbiapcgXgafv
  = lens _pbiapcgXgafv (\ s a -> s{_pbiapcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbiapcgUploadProtocol :: Lens' ProjectsBrandsIdentityAwareProxyClientsGet (Maybe Text)
pbiapcgUploadProtocol
  = lens _pbiapcgUploadProtocol
      (\ s a -> s{_pbiapcgUploadProtocol = a})

-- | OAuth access token.
pbiapcgAccessToken :: Lens' ProjectsBrandsIdentityAwareProxyClientsGet (Maybe Text)
pbiapcgAccessToken
  = lens _pbiapcgAccessToken
      (\ s a -> s{_pbiapcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbiapcgUploadType :: Lens' ProjectsBrandsIdentityAwareProxyClientsGet (Maybe Text)
pbiapcgUploadType
  = lens _pbiapcgUploadType
      (\ s a -> s{_pbiapcgUploadType = a})

-- | Required. Name of the Identity Aware Proxy client to be fetched. In the
-- following format:
-- projects\/{project_number\/id}\/brands\/{brand}\/identityAwareProxyClients\/{client_id}.
pbiapcgName :: Lens' ProjectsBrandsIdentityAwareProxyClientsGet Text
pbiapcgName
  = lens _pbiapcgName (\ s a -> s{_pbiapcgName = a})

-- | JSONP
pbiapcgCallback :: Lens' ProjectsBrandsIdentityAwareProxyClientsGet (Maybe Text)
pbiapcgCallback
  = lens _pbiapcgCallback
      (\ s a -> s{_pbiapcgCallback = a})

instance GoogleRequest
           ProjectsBrandsIdentityAwareProxyClientsGet
         where
        type Rs ProjectsBrandsIdentityAwareProxyClientsGet =
             IdentityAwareProxyClient
        type Scopes
               ProjectsBrandsIdentityAwareProxyClientsGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsBrandsIdentityAwareProxyClientsGet'{..}
          = go _pbiapcgName _pbiapcgXgafv
              _pbiapcgUploadProtocol
              _pbiapcgAccessToken
              _pbiapcgUploadType
              _pbiapcgCallback
              (Just AltJSON)
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsBrandsIdentityAwareProxyClientsGetResource)
                      mempty
