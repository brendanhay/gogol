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
-- Module      : Network.Google.Resource.StorageTransfer.TransferOperations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | This method is not supported and the server returns \`UNIMPLEMENTED\`.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @StorageTransferTransferOperationsDelete@.
module Network.Google.Resource.StorageTransfer.TransferOperations.Delete
    (
    -- * REST Resource
      TransferOperationsDeleteResource

    -- * Creating a Request
    , transferOperationsDelete'
    , TransferOperationsDelete'

    -- * Request Lenses
    , todXgafv
    , todUploadProtocol
    , todPp
    , todAccessToken
    , todUploadType
    , todBearerToken
    , todName
    , todCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @StorageTransferTransferOperationsDelete@ method which the
-- 'TransferOperationsDelete'' request conforms to.
type TransferOperationsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | This method is not supported and the server returns \`UNIMPLEMENTED\`.
--
-- /See:/ 'transferOperationsDelete'' smart constructor.
data TransferOperationsDelete' = TransferOperationsDelete'
    { _todXgafv          :: !(Maybe Text)
    , _todUploadProtocol :: !(Maybe Text)
    , _todPp             :: !Bool
    , _todAccessToken    :: !(Maybe Text)
    , _todUploadType     :: !(Maybe Text)
    , _todBearerToken    :: !(Maybe Text)
    , _todName           :: !Text
    , _todCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferOperationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'todXgafv'
--
-- * 'todUploadProtocol'
--
-- * 'todPp'
--
-- * 'todAccessToken'
--
-- * 'todUploadType'
--
-- * 'todBearerToken'
--
-- * 'todName'
--
-- * 'todCallback'
transferOperationsDelete'
    :: Text -- ^ 'name'
    -> TransferOperationsDelete'
transferOperationsDelete' pTodName_ =
    TransferOperationsDelete'
    { _todXgafv = Nothing
    , _todUploadProtocol = Nothing
    , _todPp = True
    , _todAccessToken = Nothing
    , _todUploadType = Nothing
    , _todBearerToken = Nothing
    , _todName = pTodName_
    , _todCallback = Nothing
    }

-- | V1 error format.
todXgafv :: Lens' TransferOperationsDelete' (Maybe Text)
todXgafv = lens _todXgafv (\ s a -> s{_todXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
todUploadProtocol :: Lens' TransferOperationsDelete' (Maybe Text)
todUploadProtocol
  = lens _todUploadProtocol
      (\ s a -> s{_todUploadProtocol = a})

-- | Pretty-print response.
todPp :: Lens' TransferOperationsDelete' Bool
todPp = lens _todPp (\ s a -> s{_todPp = a})

-- | OAuth access token.
todAccessToken :: Lens' TransferOperationsDelete' (Maybe Text)
todAccessToken
  = lens _todAccessToken
      (\ s a -> s{_todAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
todUploadType :: Lens' TransferOperationsDelete' (Maybe Text)
todUploadType
  = lens _todUploadType
      (\ s a -> s{_todUploadType = a})

-- | OAuth bearer token.
todBearerToken :: Lens' TransferOperationsDelete' (Maybe Text)
todBearerToken
  = lens _todBearerToken
      (\ s a -> s{_todBearerToken = a})

-- | The name of the operation resource to be deleted.
todName :: Lens' TransferOperationsDelete' Text
todName = lens _todName (\ s a -> s{_todName = a})

-- | JSONP
todCallback :: Lens' TransferOperationsDelete' (Maybe Text)
todCallback
  = lens _todCallback (\ s a -> s{_todCallback = a})

instance GoogleRequest TransferOperationsDelete'
         where
        type Rs TransferOperationsDelete' = Empty
        requestClient TransferOperationsDelete'{..}
          = go _todName _todXgafv _todUploadProtocol
              (Just _todPp)
              _todAccessToken
              _todUploadType
              _todBearerToken
              _todCallback
              (Just AltJSON)
              storageTransfer
          where go
                  = buildClient
                      (Proxy :: Proxy TransferOperationsDeleteResource)
                      mempty
