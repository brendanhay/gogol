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
-- Module      : Network.Google.Resource.Vault.Matters.RemovePermissions
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an account as a matter collaborator.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.removePermissions@.
module Network.Google.Resource.Vault.Matters.RemovePermissions
    (
    -- * REST Resource
      MattersRemovePermissionsResource

    -- * Creating a Request
    , mattersRemovePermissions
    , MattersRemovePermissions

    -- * Request Lenses
    , mrpXgafv
    , mrpUploadProtocol
    , mrpAccessToken
    , mrpUploadType
    , mrpPayload
    , mrpMatterId
    , mrpCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.removePermissions@ method which the
-- 'MattersRemovePermissions' request conforms to.
type MattersRemovePermissionsResource =
     "v1" :>
       "matters" :>
         CaptureMode "matterId" "removePermissions" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] RemoveMatterPermissionsRequest :>
                         Post '[JSON] Empty

-- | Removes an account as a matter collaborator.
--
-- /See:/ 'mattersRemovePermissions' smart constructor.
data MattersRemovePermissions =
  MattersRemovePermissions'
    { _mrpXgafv :: !(Maybe Xgafv)
    , _mrpUploadProtocol :: !(Maybe Text)
    , _mrpAccessToken :: !(Maybe Text)
    , _mrpUploadType :: !(Maybe Text)
    , _mrpPayload :: !RemoveMatterPermissionsRequest
    , _mrpMatterId :: !Text
    , _mrpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersRemovePermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrpXgafv'
--
-- * 'mrpUploadProtocol'
--
-- * 'mrpAccessToken'
--
-- * 'mrpUploadType'
--
-- * 'mrpPayload'
--
-- * 'mrpMatterId'
--
-- * 'mrpCallback'
mattersRemovePermissions
    :: RemoveMatterPermissionsRequest -- ^ 'mrpPayload'
    -> Text -- ^ 'mrpMatterId'
    -> MattersRemovePermissions
mattersRemovePermissions pMrpPayload_ pMrpMatterId_ =
  MattersRemovePermissions'
    { _mrpXgafv = Nothing
    , _mrpUploadProtocol = Nothing
    , _mrpAccessToken = Nothing
    , _mrpUploadType = Nothing
    , _mrpPayload = pMrpPayload_
    , _mrpMatterId = pMrpMatterId_
    , _mrpCallback = Nothing
    }


-- | V1 error format.
mrpXgafv :: Lens' MattersRemovePermissions (Maybe Xgafv)
mrpXgafv = lens _mrpXgafv (\ s a -> s{_mrpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mrpUploadProtocol :: Lens' MattersRemovePermissions (Maybe Text)
mrpUploadProtocol
  = lens _mrpUploadProtocol
      (\ s a -> s{_mrpUploadProtocol = a})

-- | OAuth access token.
mrpAccessToken :: Lens' MattersRemovePermissions (Maybe Text)
mrpAccessToken
  = lens _mrpAccessToken
      (\ s a -> s{_mrpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mrpUploadType :: Lens' MattersRemovePermissions (Maybe Text)
mrpUploadType
  = lens _mrpUploadType
      (\ s a -> s{_mrpUploadType = a})

-- | Multipart request metadata.
mrpPayload :: Lens' MattersRemovePermissions RemoveMatterPermissionsRequest
mrpPayload
  = lens _mrpPayload (\ s a -> s{_mrpPayload = a})

-- | The matter ID.
mrpMatterId :: Lens' MattersRemovePermissions Text
mrpMatterId
  = lens _mrpMatterId (\ s a -> s{_mrpMatterId = a})

-- | JSONP
mrpCallback :: Lens' MattersRemovePermissions (Maybe Text)
mrpCallback
  = lens _mrpCallback (\ s a -> s{_mrpCallback = a})

instance GoogleRequest MattersRemovePermissions where
        type Rs MattersRemovePermissions = Empty
        type Scopes MattersRemovePermissions =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersRemovePermissions'{..}
          = go _mrpMatterId _mrpXgafv _mrpUploadProtocol
              _mrpAccessToken
              _mrpUploadType
              _mrpCallback
              (Just AltJSON)
              _mrpPayload
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersRemovePermissionsResource)
                      mempty
