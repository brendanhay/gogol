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
-- Module      : Network.Google.Resource.DataTransfer.Transfers.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a data transfer request.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @datatransfer.transfers.insert@.
module Network.Google.Resource.DataTransfer.Transfers.Insert
    (
    -- * REST Resource
      TransfersInsertResource

    -- * Creating a Request
    , transfersInsert
    , TransfersInsert

    -- * Request Lenses
    , tiXgafv
    , tiUploadProtocol
    , tiAccessToken
    , tiUploadType
    , tiPayload
    , tiCallback
    ) where

import Network.Google.DataTransfer.Types
import Network.Google.Prelude

-- | A resource alias for @datatransfer.transfers.insert@ method which the
-- 'TransfersInsert' request conforms to.
type TransfersInsertResource =
     "admin" :>
       "datatransfer" :>
         "v1" :>
           "transfers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DataTransfer :>
                           Post '[JSON] DataTransfer

-- | Inserts a data transfer request.
--
-- /See:/ 'transfersInsert' smart constructor.
data TransfersInsert =
  TransfersInsert'
    { _tiXgafv :: !(Maybe Xgafv)
    , _tiUploadProtocol :: !(Maybe Text)
    , _tiAccessToken :: !(Maybe Text)
    , _tiUploadType :: !(Maybe Text)
    , _tiPayload :: !DataTransfer
    , _tiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransfersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiXgafv'
--
-- * 'tiUploadProtocol'
--
-- * 'tiAccessToken'
--
-- * 'tiUploadType'
--
-- * 'tiPayload'
--
-- * 'tiCallback'
transfersInsert
    :: DataTransfer -- ^ 'tiPayload'
    -> TransfersInsert
transfersInsert pTiPayload_ =
  TransfersInsert'
    { _tiXgafv = Nothing
    , _tiUploadProtocol = Nothing
    , _tiAccessToken = Nothing
    , _tiUploadType = Nothing
    , _tiPayload = pTiPayload_
    , _tiCallback = Nothing
    }


-- | V1 error format.
tiXgafv :: Lens' TransfersInsert (Maybe Xgafv)
tiXgafv = lens _tiXgafv (\ s a -> s{_tiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tiUploadProtocol :: Lens' TransfersInsert (Maybe Text)
tiUploadProtocol
  = lens _tiUploadProtocol
      (\ s a -> s{_tiUploadProtocol = a})

-- | OAuth access token.
tiAccessToken :: Lens' TransfersInsert (Maybe Text)
tiAccessToken
  = lens _tiAccessToken
      (\ s a -> s{_tiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tiUploadType :: Lens' TransfersInsert (Maybe Text)
tiUploadType
  = lens _tiUploadType (\ s a -> s{_tiUploadType = a})

-- | Multipart request metadata.
tiPayload :: Lens' TransfersInsert DataTransfer
tiPayload
  = lens _tiPayload (\ s a -> s{_tiPayload = a})

-- | JSONP
tiCallback :: Lens' TransfersInsert (Maybe Text)
tiCallback
  = lens _tiCallback (\ s a -> s{_tiCallback = a})

instance GoogleRequest TransfersInsert where
        type Rs TransfersInsert = DataTransfer
        type Scopes TransfersInsert =
             '["https://www.googleapis.com/auth/admin.datatransfer"]
        requestClient TransfersInsert'{..}
          = go _tiXgafv _tiUploadProtocol _tiAccessToken
              _tiUploadType
              _tiCallback
              (Just AltJSON)
              _tiPayload
              dataTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy TransfersInsertResource)
                      mempty
