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
-- Module      : Network.Google.Resource.StorageTransfer.TransferOperations.Pause
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Pauses a transfer operation.
--
-- /See:/ <https://cloud.google.com/storage/transfer Storage Transfer API Reference> for @storagetransfer.transferOperations.pause@.
module Network.Google.Resource.StorageTransfer.TransferOperations.Pause
    (
    -- * REST Resource
      TransferOperationsPauseResource

    -- * Creating a Request
    , transferOperationsPause
    , TransferOperationsPause

    -- * Request Lenses
    , topXgafv
    , topUploadProtocol
    , topAccessToken
    , topUploadType
    , topPayload
    , topName
    , topCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @storagetransfer.transferOperations.pause@ method which the
-- 'TransferOperationsPause' request conforms to.
type TransferOperationsPauseResource =
     "v1" :>
       CaptureMode "name" "pause" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PauseTransferOperationRequest :>
                       Post '[JSON] Empty

-- | Pauses a transfer operation.
--
-- /See:/ 'transferOperationsPause' smart constructor.
data TransferOperationsPause =
  TransferOperationsPause'
    { _topXgafv          :: !(Maybe Xgafv)
    , _topUploadProtocol :: !(Maybe Text)
    , _topAccessToken    :: !(Maybe Text)
    , _topUploadType     :: !(Maybe Text)
    , _topPayload        :: !PauseTransferOperationRequest
    , _topName           :: !Text
    , _topCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransferOperationsPause' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'topXgafv'
--
-- * 'topUploadProtocol'
--
-- * 'topAccessToken'
--
-- * 'topUploadType'
--
-- * 'topPayload'
--
-- * 'topName'
--
-- * 'topCallback'
transferOperationsPause
    :: PauseTransferOperationRequest -- ^ 'topPayload'
    -> Text -- ^ 'topName'
    -> TransferOperationsPause
transferOperationsPause pTopPayload_ pTopName_ =
  TransferOperationsPause'
    { _topXgafv = Nothing
    , _topUploadProtocol = Nothing
    , _topAccessToken = Nothing
    , _topUploadType = Nothing
    , _topPayload = pTopPayload_
    , _topName = pTopName_
    , _topCallback = Nothing
    }


-- | V1 error format.
topXgafv :: Lens' TransferOperationsPause (Maybe Xgafv)
topXgafv = lens _topXgafv (\ s a -> s{_topXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
topUploadProtocol :: Lens' TransferOperationsPause (Maybe Text)
topUploadProtocol
  = lens _topUploadProtocol
      (\ s a -> s{_topUploadProtocol = a})

-- | OAuth access token.
topAccessToken :: Lens' TransferOperationsPause (Maybe Text)
topAccessToken
  = lens _topAccessToken
      (\ s a -> s{_topAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
topUploadType :: Lens' TransferOperationsPause (Maybe Text)
topUploadType
  = lens _topUploadType
      (\ s a -> s{_topUploadType = a})

-- | Multipart request metadata.
topPayload :: Lens' TransferOperationsPause PauseTransferOperationRequest
topPayload
  = lens _topPayload (\ s a -> s{_topPayload = a})

-- | The name of the transfer operation. Required.
topName :: Lens' TransferOperationsPause Text
topName = lens _topName (\ s a -> s{_topName = a})

-- | JSONP
topCallback :: Lens' TransferOperationsPause (Maybe Text)
topCallback
  = lens _topCallback (\ s a -> s{_topCallback = a})

instance GoogleRequest TransferOperationsPause where
        type Rs TransferOperationsPause = Empty
        type Scopes TransferOperationsPause =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient TransferOperationsPause'{..}
          = go _topName _topXgafv _topUploadProtocol
              _topAccessToken
              _topUploadType
              _topCallback
              (Just AltJSON)
              _topPayload
              storageTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy TransferOperationsPauseResource)
                      mempty
