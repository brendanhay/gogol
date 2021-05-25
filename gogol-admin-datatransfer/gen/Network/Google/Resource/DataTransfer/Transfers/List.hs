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
-- Module      : Network.Google.Resource.DataTransfer.Transfers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the transfers for a customer by source user, destination user, or
-- status.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @datatransfer.transfers.list@.
module Network.Google.Resource.DataTransfer.Transfers.List
    (
    -- * REST Resource
      TransfersListResource

    -- * Creating a Request
    , transfersList
    , TransfersList

    -- * Request Lenses
    , tlStatus
    , tlXgafv
    , tlOldOwnerUserId
    , tlUploadProtocol
    , tlAccessToken
    , tlUploadType
    , tlNewOwnerUserId
    , tlCustomerId
    , tlPageToken
    , tlMaxResults
    , tlCallback
    ) where

import Network.Google.DataTransfer.Types
import Network.Google.Prelude

-- | A resource alias for @datatransfer.transfers.list@ method which the
-- 'TransfersList' request conforms to.
type TransfersListResource =
     "admin" :>
       "datatransfer" :>
         "v1" :>
           "transfers" :>
             QueryParam "status" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "oldOwnerUserId" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "newOwnerUserId" Text :>
                           QueryParam "customerId" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] DataTransfersListResponse

-- | Lists the transfers for a customer by source user, destination user, or
-- status.
--
-- /See:/ 'transfersList' smart constructor.
data TransfersList =
  TransfersList'
    { _tlStatus :: !(Maybe Text)
    , _tlXgafv :: !(Maybe Xgafv)
    , _tlOldOwnerUserId :: !(Maybe Text)
    , _tlUploadProtocol :: !(Maybe Text)
    , _tlAccessToken :: !(Maybe Text)
    , _tlUploadType :: !(Maybe Text)
    , _tlNewOwnerUserId :: !(Maybe Text)
    , _tlCustomerId :: !(Maybe Text)
    , _tlPageToken :: !(Maybe Text)
    , _tlMaxResults :: !(Maybe (Textual Int32))
    , _tlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TransfersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlStatus'
--
-- * 'tlXgafv'
--
-- * 'tlOldOwnerUserId'
--
-- * 'tlUploadProtocol'
--
-- * 'tlAccessToken'
--
-- * 'tlUploadType'
--
-- * 'tlNewOwnerUserId'
--
-- * 'tlCustomerId'
--
-- * 'tlPageToken'
--
-- * 'tlMaxResults'
--
-- * 'tlCallback'
transfersList
    :: TransfersList
transfersList =
  TransfersList'
    { _tlStatus = Nothing
    , _tlXgafv = Nothing
    , _tlOldOwnerUserId = Nothing
    , _tlUploadProtocol = Nothing
    , _tlAccessToken = Nothing
    , _tlUploadType = Nothing
    , _tlNewOwnerUserId = Nothing
    , _tlCustomerId = Nothing
    , _tlPageToken = Nothing
    , _tlMaxResults = Nothing
    , _tlCallback = Nothing
    }


-- | Status of the transfer.
tlStatus :: Lens' TransfersList (Maybe Text)
tlStatus = lens _tlStatus (\ s a -> s{_tlStatus = a})

-- | V1 error format.
tlXgafv :: Lens' TransfersList (Maybe Xgafv)
tlXgafv = lens _tlXgafv (\ s a -> s{_tlXgafv = a})

-- | Source user\'s profile ID.
tlOldOwnerUserId :: Lens' TransfersList (Maybe Text)
tlOldOwnerUserId
  = lens _tlOldOwnerUserId
      (\ s a -> s{_tlOldOwnerUserId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tlUploadProtocol :: Lens' TransfersList (Maybe Text)
tlUploadProtocol
  = lens _tlUploadProtocol
      (\ s a -> s{_tlUploadProtocol = a})

-- | OAuth access token.
tlAccessToken :: Lens' TransfersList (Maybe Text)
tlAccessToken
  = lens _tlAccessToken
      (\ s a -> s{_tlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tlUploadType :: Lens' TransfersList (Maybe Text)
tlUploadType
  = lens _tlUploadType (\ s a -> s{_tlUploadType = a})

-- | Destination user\'s profile ID.
tlNewOwnerUserId :: Lens' TransfersList (Maybe Text)
tlNewOwnerUserId
  = lens _tlNewOwnerUserId
      (\ s a -> s{_tlNewOwnerUserId = a})

-- | Immutable ID of the Google Workspace account.
tlCustomerId :: Lens' TransfersList (Maybe Text)
tlCustomerId
  = lens _tlCustomerId (\ s a -> s{_tlCustomerId = a})

-- | Token to specify the next page in the list.
tlPageToken :: Lens' TransfersList (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | Maximum number of results to return. Default is 100.
tlMaxResults :: Lens' TransfersList (Maybe Int32)
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})
      . mapping _Coerce

-- | JSONP
tlCallback :: Lens' TransfersList (Maybe Text)
tlCallback
  = lens _tlCallback (\ s a -> s{_tlCallback = a})

instance GoogleRequest TransfersList where
        type Rs TransfersList = DataTransfersListResponse
        type Scopes TransfersList =
             '["https://www.googleapis.com/auth/admin.datatransfer",
               "https://www.googleapis.com/auth/admin.datatransfer.readonly"]
        requestClient TransfersList'{..}
          = go _tlStatus _tlXgafv _tlOldOwnerUserId
              _tlUploadProtocol
              _tlAccessToken
              _tlUploadType
              _tlNewOwnerUserId
              _tlCustomerId
              _tlPageToken
              _tlMaxResults
              _tlCallback
              (Just AltJSON)
              dataTransferService
          where go
                  = buildClient (Proxy :: Proxy TransfersListResource)
                      mempty
