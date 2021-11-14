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
-- Module      : Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Identity Aware Proxy (IAP) OAuth client. Useful for removing
-- obsolete clients, managing the number of clients in a given project, and
-- cleaning up after tests. Requires that the client is owned by IAP.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.brands.identityAwareProxyClients.delete@.
module Network.Google.Resource.IAP.Projects.Brands.IdentityAwareProxyClients.Delete
    (
    -- * REST Resource
      ProjectsBrandsIdentityAwareProxyClientsDeleteResource

    -- * Creating a Request
    , projectsBrandsIdentityAwareProxyClientsDelete
    , ProjectsBrandsIdentityAwareProxyClientsDelete

    -- * Request Lenses
    , pbiapcdXgafv
    , pbiapcdUploadProtocol
    , pbiapcdAccessToken
    , pbiapcdUploadType
    , pbiapcdName
    , pbiapcdCallback
    ) where

import Network.Google.IAP.Types
import Network.Google.Prelude

-- | A resource alias for @iap.projects.brands.identityAwareProxyClients.delete@ method which the
-- 'ProjectsBrandsIdentityAwareProxyClientsDelete' request conforms to.
type ProjectsBrandsIdentityAwareProxyClientsDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an Identity Aware Proxy (IAP) OAuth client. Useful for removing
-- obsolete clients, managing the number of clients in a given project, and
-- cleaning up after tests. Requires that the client is owned by IAP.
--
-- /See:/ 'projectsBrandsIdentityAwareProxyClientsDelete' smart constructor.
data ProjectsBrandsIdentityAwareProxyClientsDelete =
  ProjectsBrandsIdentityAwareProxyClientsDelete'
    { _pbiapcdXgafv :: !(Maybe Xgafv)
    , _pbiapcdUploadProtocol :: !(Maybe Text)
    , _pbiapcdAccessToken :: !(Maybe Text)
    , _pbiapcdUploadType :: !(Maybe Text)
    , _pbiapcdName :: !Text
    , _pbiapcdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsBrandsIdentityAwareProxyClientsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbiapcdXgafv'
--
-- * 'pbiapcdUploadProtocol'
--
-- * 'pbiapcdAccessToken'
--
-- * 'pbiapcdUploadType'
--
-- * 'pbiapcdName'
--
-- * 'pbiapcdCallback'
projectsBrandsIdentityAwareProxyClientsDelete
    :: Text -- ^ 'pbiapcdName'
    -> ProjectsBrandsIdentityAwareProxyClientsDelete
projectsBrandsIdentityAwareProxyClientsDelete pPbiapcdName_ =
  ProjectsBrandsIdentityAwareProxyClientsDelete'
    { _pbiapcdXgafv = Nothing
    , _pbiapcdUploadProtocol = Nothing
    , _pbiapcdAccessToken = Nothing
    , _pbiapcdUploadType = Nothing
    , _pbiapcdName = pPbiapcdName_
    , _pbiapcdCallback = Nothing
    }


-- | V1 error format.
pbiapcdXgafv :: Lens' ProjectsBrandsIdentityAwareProxyClientsDelete (Maybe Xgafv)
pbiapcdXgafv
  = lens _pbiapcdXgafv (\ s a -> s{_pbiapcdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbiapcdUploadProtocol :: Lens' ProjectsBrandsIdentityAwareProxyClientsDelete (Maybe Text)
pbiapcdUploadProtocol
  = lens _pbiapcdUploadProtocol
      (\ s a -> s{_pbiapcdUploadProtocol = a})

-- | OAuth access token.
pbiapcdAccessToken :: Lens' ProjectsBrandsIdentityAwareProxyClientsDelete (Maybe Text)
pbiapcdAccessToken
  = lens _pbiapcdAccessToken
      (\ s a -> s{_pbiapcdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbiapcdUploadType :: Lens' ProjectsBrandsIdentityAwareProxyClientsDelete (Maybe Text)
pbiapcdUploadType
  = lens _pbiapcdUploadType
      (\ s a -> s{_pbiapcdUploadType = a})

-- | Required. Name of the Identity Aware Proxy client to be deleted. In the
-- following format:
-- projects\/{project_number\/id}\/brands\/{brand}\/identityAwareProxyClients\/{client_id}.
pbiapcdName :: Lens' ProjectsBrandsIdentityAwareProxyClientsDelete Text
pbiapcdName
  = lens _pbiapcdName (\ s a -> s{_pbiapcdName = a})

-- | JSONP
pbiapcdCallback :: Lens' ProjectsBrandsIdentityAwareProxyClientsDelete (Maybe Text)
pbiapcdCallback
  = lens _pbiapcdCallback
      (\ s a -> s{_pbiapcdCallback = a})

instance GoogleRequest
           ProjectsBrandsIdentityAwareProxyClientsDelete
         where
        type Rs ProjectsBrandsIdentityAwareProxyClientsDelete
             = Empty
        type Scopes
               ProjectsBrandsIdentityAwareProxyClientsDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsBrandsIdentityAwareProxyClientsDelete'{..}
          = go _pbiapcdName _pbiapcdXgafv
              _pbiapcdUploadProtocol
              _pbiapcdAccessToken
              _pbiapcdUploadType
              _pbiapcdCallback
              (Just AltJSON)
              iAPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsBrandsIdentityAwareProxyClientsDeleteResource)
                      mempty
