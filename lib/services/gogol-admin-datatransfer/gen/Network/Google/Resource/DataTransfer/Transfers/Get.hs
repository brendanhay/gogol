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
-- Module      : Network.Google.Resource.DataTransfer.Transfers.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a data transfer request by its resource ID.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @datatransfer.transfers.get@.
module Network.Google.Resource.DataTransfer.Transfers.Get
    (
    -- * REST Resource
      TransfersGetResource

    -- * Creating a Request
    , transfersGet
    , TransfersGet

    -- * Request Lenses
    , tgXgafv
    , tgUploadProtocol
    , tgAccessToken
    , tgUploadType
    , tgDataTransferId
    , tgCallback
    ) where

import Network.Google.DataTransfer.Types
import Network.Google.Prelude

-- | A resource alias for @datatransfer.transfers.get@ method which the
-- 'TransfersGet' request conforms to.
type TransfersGetResource =
     "admin" :>
       "datatransfer" :>
         "v1" :>
           "transfers" :>
             Capture "dataTransferId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] DataTransfer

-- | Retrieves a data transfer request by its resource ID.
--
-- /See:/ 'transfersGet' smart constructor.
data TransfersGet =
  TransfersGet'
    { _tgXgafv :: !(Maybe Xgafv)
    , _tgUploadProtocol :: !(Maybe Text)
    , _tgAccessToken :: !(Maybe Text)
    , _tgUploadType :: !(Maybe Text)
    , _tgDataTransferId :: !Text
    , _tgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransfersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgXgafv'
--
-- * 'tgUploadProtocol'
--
-- * 'tgAccessToken'
--
-- * 'tgUploadType'
--
-- * 'tgDataTransferId'
--
-- * 'tgCallback'
transfersGet
    :: Text -- ^ 'tgDataTransferId'
    -> TransfersGet
transfersGet pTgDataTransferId_ =
  TransfersGet'
    { _tgXgafv = Nothing
    , _tgUploadProtocol = Nothing
    , _tgAccessToken = Nothing
    , _tgUploadType = Nothing
    , _tgDataTransferId = pTgDataTransferId_
    , _tgCallback = Nothing
    }


-- | V1 error format.
tgXgafv :: Lens' TransfersGet (Maybe Xgafv)
tgXgafv = lens _tgXgafv (\ s a -> s{_tgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tgUploadProtocol :: Lens' TransfersGet (Maybe Text)
tgUploadProtocol
  = lens _tgUploadProtocol
      (\ s a -> s{_tgUploadProtocol = a})

-- | OAuth access token.
tgAccessToken :: Lens' TransfersGet (Maybe Text)
tgAccessToken
  = lens _tgAccessToken
      (\ s a -> s{_tgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tgUploadType :: Lens' TransfersGet (Maybe Text)
tgUploadType
  = lens _tgUploadType (\ s a -> s{_tgUploadType = a})

-- | ID of the resource to be retrieved. This is returned in the response
-- from the insert method.
tgDataTransferId :: Lens' TransfersGet Text
tgDataTransferId
  = lens _tgDataTransferId
      (\ s a -> s{_tgDataTransferId = a})

-- | JSONP
tgCallback :: Lens' TransfersGet (Maybe Text)
tgCallback
  = lens _tgCallback (\ s a -> s{_tgCallback = a})

instance GoogleRequest TransfersGet where
        type Rs TransfersGet = DataTransfer
        type Scopes TransfersGet =
             '["https://www.googleapis.com/auth/admin.datatransfer",
               "https://www.googleapis.com/auth/admin.datatransfer.readonly"]
        requestClient TransfersGet'{..}
          = go _tgDataTransferId _tgXgafv _tgUploadProtocol
              _tgAccessToken
              _tgUploadType
              _tgCallback
              (Just AltJSON)
              dataTransferService
          where go
                  = buildClient (Proxy :: Proxy TransfersGetResource)
                      mempty
