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
-- Module      : Network.Google.Resource.Vault.Matters.Exports.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an export.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.exports.create@.
module Network.Google.Resource.Vault.Matters.Exports.Create
    (
    -- * REST Resource
      MattersExportsCreateResource

    -- * Creating a Request
    , mattersExportsCreate
    , MattersExportsCreate

    -- * Request Lenses
    , mecXgafv
    , mecUploadProtocol
    , mecAccessToken
    , mecUploadType
    , mecPayload
    , mecMatterId
    , mecCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.exports.create@ method which the
-- 'MattersExportsCreate' request conforms to.
type MattersExportsCreateResource =
     "v1" :>
       "matters" :>
         Capture "matterId" Text :>
           "exports" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Export :> Post '[JSON] Export

-- | Creates an export.
--
-- /See:/ 'mattersExportsCreate' smart constructor.
data MattersExportsCreate =
  MattersExportsCreate'
    { _mecXgafv :: !(Maybe Xgafv)
    , _mecUploadProtocol :: !(Maybe Text)
    , _mecAccessToken :: !(Maybe Text)
    , _mecUploadType :: !(Maybe Text)
    , _mecPayload :: !Export
    , _mecMatterId :: !Text
    , _mecCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersExportsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mecXgafv'
--
-- * 'mecUploadProtocol'
--
-- * 'mecAccessToken'
--
-- * 'mecUploadType'
--
-- * 'mecPayload'
--
-- * 'mecMatterId'
--
-- * 'mecCallback'
mattersExportsCreate
    :: Export -- ^ 'mecPayload'
    -> Text -- ^ 'mecMatterId'
    -> MattersExportsCreate
mattersExportsCreate pMecPayload_ pMecMatterId_ =
  MattersExportsCreate'
    { _mecXgafv = Nothing
    , _mecUploadProtocol = Nothing
    , _mecAccessToken = Nothing
    , _mecUploadType = Nothing
    , _mecPayload = pMecPayload_
    , _mecMatterId = pMecMatterId_
    , _mecCallback = Nothing
    }


-- | V1 error format.
mecXgafv :: Lens' MattersExportsCreate (Maybe Xgafv)
mecXgafv = lens _mecXgafv (\ s a -> s{_mecXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mecUploadProtocol :: Lens' MattersExportsCreate (Maybe Text)
mecUploadProtocol
  = lens _mecUploadProtocol
      (\ s a -> s{_mecUploadProtocol = a})

-- | OAuth access token.
mecAccessToken :: Lens' MattersExportsCreate (Maybe Text)
mecAccessToken
  = lens _mecAccessToken
      (\ s a -> s{_mecAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mecUploadType :: Lens' MattersExportsCreate (Maybe Text)
mecUploadType
  = lens _mecUploadType
      (\ s a -> s{_mecUploadType = a})

-- | Multipart request metadata.
mecPayload :: Lens' MattersExportsCreate Export
mecPayload
  = lens _mecPayload (\ s a -> s{_mecPayload = a})

-- | The matter ID.
mecMatterId :: Lens' MattersExportsCreate Text
mecMatterId
  = lens _mecMatterId (\ s a -> s{_mecMatterId = a})

-- | JSONP
mecCallback :: Lens' MattersExportsCreate (Maybe Text)
mecCallback
  = lens _mecCallback (\ s a -> s{_mecCallback = a})

instance GoogleRequest MattersExportsCreate where
        type Rs MattersExportsCreate = Export
        type Scopes MattersExportsCreate =
             '["https://www.googleapis.com/auth/ediscovery"]
        requestClient MattersExportsCreate'{..}
          = go _mecMatterId _mecXgafv _mecUploadProtocol
              _mecAccessToken
              _mecUploadType
              _mecCallback
              (Just AltJSON)
              _mecPayload
              vaultService
          where go
                  = buildClient
                      (Proxy :: Proxy MattersExportsCreateResource)
                      mempty
