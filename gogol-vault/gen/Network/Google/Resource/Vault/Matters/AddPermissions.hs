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
-- Module      : Network.Google.Resource.Vault.Matters.AddPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an account as a matter collaborator.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.addPermissions@.
module Network.Google.Resource.Vault.Matters.AddPermissions
    (
    -- * REST Resource
      MattersAddPermissionsResource

    -- * Creating a Request
    , mattersAddPermissions
    , MattersAddPermissions

    -- * Request Lenses
    , mapXgafv
    , mapUploadProtocol
    , mapAccessToken
    , mapUploadType
    , mapPayload
    , mapMatterId
    , mapCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.addPermissions@ method which the
-- 'MattersAddPermissions' request conforms to.
type MattersAddPermissionsResource =
     "v1" :>
       "matters" :>
         CaptureMode "matterId" "addPermissions" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AddMatterPermissionsRequest :>
                         Post '[JSON] MatterPermission

-- | Adds an account as a matter collaborator.
--
-- /See:/ 'mattersAddPermissions' smart constructor.
data MattersAddPermissions =
  MattersAddPermissions'
    { _mapXgafv :: !(Maybe Xgafv)
    , _mapUploadProtocol :: !(Maybe Text)
    , _mapAccessToken :: !(Maybe Text)
    , _mapUploadType :: !(Maybe Text)
    , _mapPayload :: !AddMatterPermissionsRequest
    , _mapMatterId :: !Text
    , _mapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersAddPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mapXgafv'
--
-- * 'mapUploadProtocol'
--
-- * 'mapAccessToken'
--
-- * 'mapUploadType'
--
-- * 'mapPayload'
--
-- * 'mapMatterId'
--
-- * 'mapCallback'
mattersAddPermissions
    :: AddMatterPermissionsRequest -- ^ 'mapPayload'
    -> Text -- ^ 'mapMatterId'
    -> MattersAddPermissions
mattersAddPermissions pMapPayload_ pMapMatterId_ =
  MattersAddPermissions'
    { _mapXgafv = Nothing
    , _mapUploadProtocol = Nothing
    , _mapAccessToken = Nothing
    , _mapUploadType = Nothing
    , _mapPayload = pMapPayload_
    , _mapMatterId = pMapMatterId_
    , _mapCallback = Nothing
    }


-- | V1 error format.
mapXgafv :: Lens' MattersAddPermissions (Maybe Xgafv)
mapXgafv = lens _mapXgafv (\ s a -> s{_mapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mapUploadProtocol :: Lens' MattersAddPermissions (Maybe Text)
mapUploadProtocol
  = lens _mapUploadProtocol
      (\ s a -> s{_mapUploadProtocol = a})

-- | OAuth access token.
mapAccessToken :: Lens' MattersAddPermissions (Maybe Text)
mapAccessToken
  = lens _mapAccessToken
      (\ s a -> s{_mapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mapUploadType :: Lens' MattersAddPermissions (Maybe Text)
mapUploadType
  = lens _mapUploadType
      (\ s a -> s{_mapUploadType = a})

-- | Multipart request metadata.
mapPayload :: Lens' MattersAddPermissions AddMatterPermissionsRequest
mapPayload
  = lens _mapPayload (\ s a -> s{_mapPayload = a})

-- | The matter ID.
mapMatterId :: Lens' MattersAddPermissions Text
mapMatterId
  = lens _mapMatterId (\ s a -> s{_mapMatterId = a})

-- | JSONP
mapCallback :: Lens' MattersAddPermissions (Maybe Text)
mapCallback
  = lens _mapCallback (\ s a -> s{_mapCallback = a})

instance GoogleRequest MattersAddPermissions where
        type Rs MattersAddPermissions = MatterPermission
        type Scopes MattersAddPermissions =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersAddPermissions'{..}
          = go _mapMatterId _mapXgafv _mapUploadProtocol
              _mapAccessToken
              _mapUploadType
              _mapCallback
              (Just AltJSON)
              _mapPayload
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersAddPermissionsResource)
                      mempty
