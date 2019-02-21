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
-- Module      : Network.Google.Resource.StorageTransfer.TransferOperations.Cancel
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a transfer. Use the get method to check whether the cancellation
-- succeeded or whether the operation completed despite cancellation.
--
-- /See:/ <https://cloud.google.com/storage/transfer Storage Transfer API Reference> for @storagetransfer.transferOperations.cancel@.
module Network.Google.Resource.StorageTransfer.TransferOperations.Cancel
    (
    -- * REST Resource
      TransferOperationsCancelResource

    -- * Creating a Request
    , transferOperationsCancel
    , TransferOperationsCancel

    -- * Request Lenses
    , tocXgafv
    , tocUploadProtocol
    , tocAccessToken
    , tocUploadType
    , tocName
    , tocCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferOperations.cancel@ method which the
-- 'TransferOperationsCancel' request conforms to.
type TransferOperationsCancelResource =
     "v1" :>
       CaptureMode "name" "cancel" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Cancels a transfer. Use the get method to check whether the cancellation
-- succeeded or whether the operation completed despite cancellation.
--
-- /See:/ 'transferOperationsCancel' smart constructor.
data TransferOperationsCancel =
  TransferOperationsCancel'
    { _tocXgafv          :: !(Maybe Xgafv)
    , _tocUploadProtocol :: !(Maybe Text)
    , _tocAccessToken    :: !(Maybe Text)
    , _tocUploadType     :: !(Maybe Text)
    , _tocName           :: !Text
    , _tocCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransferOperationsCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tocXgafv'
--
-- * 'tocUploadProtocol'
--
-- * 'tocAccessToken'
--
-- * 'tocUploadType'
--
-- * 'tocName'
--
-- * 'tocCallback'
transferOperationsCancel
    :: Text -- ^ 'tocName'
    -> TransferOperationsCancel
transferOperationsCancel pTocName_ =
  TransferOperationsCancel'
    { _tocXgafv = Nothing
    , _tocUploadProtocol = Nothing
    , _tocAccessToken = Nothing
    , _tocUploadType = Nothing
    , _tocName = pTocName_
    , _tocCallback = Nothing
    }


-- | V1 error format.
tocXgafv :: Lens' TransferOperationsCancel (Maybe Xgafv)
tocXgafv = lens _tocXgafv (\ s a -> s{_tocXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tocUploadProtocol :: Lens' TransferOperationsCancel (Maybe Text)
tocUploadProtocol
  = lens _tocUploadProtocol
      (\ s a -> s{_tocUploadProtocol = a})

-- | OAuth access token.
tocAccessToken :: Lens' TransferOperationsCancel (Maybe Text)
tocAccessToken
  = lens _tocAccessToken
      (\ s a -> s{_tocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tocUploadType :: Lens' TransferOperationsCancel (Maybe Text)
tocUploadType
  = lens _tocUploadType
      (\ s a -> s{_tocUploadType = a})

-- | The name of the operation resource to be cancelled.
tocName :: Lens' TransferOperationsCancel Text
tocName = lens _tocName (\ s a -> s{_tocName = a})

-- | JSONP
tocCallback :: Lens' TransferOperationsCancel (Maybe Text)
tocCallback
  = lens _tocCallback (\ s a -> s{_tocCallback = a})

instance GoogleRequest TransferOperationsCancel where
        type Rs TransferOperationsCancel = Empty
        type Scopes TransferOperationsCancel =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TransferOperationsCancel'{..}
          = go _tocName _tocXgafv _tocUploadProtocol
              _tocAccessToken
              _tocUploadType
              _tocCallback
              (Just AltJSON)
              storageTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy TransferOperationsCancelResource)
                      mempty
