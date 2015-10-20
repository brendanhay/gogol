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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the transfers for a customer by source user, destination user, or
-- status.
--
-- /See:/ <https://developers.google.com/admin-sdk/data-transfer/ Admin Data Transfer API Reference> for @datatransfer.transfers.list@.
module Network.Google.Resource.DataTransfer.Transfers.List
    (
    -- * REST Resource
      TransfersListResource

    -- * Creating a Request
    , transfersList
    , TransfersList

    -- * Request Lenses
    , tlStatus
    , tlOldOwnerUserId
    , tlNewOwnerUserId
    , tlCustomerId
    , tlPageToken
    , tlMaxResults
    ) where

import           Network.Google.DataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @datatransfer.transfers.list@ method which the
-- 'TransfersList' request conforms to.
type TransfersListResource =
     "transfers" :>
       QueryParam "status" Text :>
         QueryParam "oldOwnerUserId" Text :>
           QueryParam "newOwnerUserId" Text :>
             QueryParam "customerId" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] DataTransfersListResponse

-- | Lists the transfers for a customer by source user, destination user, or
-- status.
--
-- /See:/ 'transfersList' smart constructor.
data TransfersList = TransfersList
    { _tlStatus         :: !(Maybe Text)
    , _tlOldOwnerUserId :: !(Maybe Text)
    , _tlNewOwnerUserId :: !(Maybe Text)
    , _tlCustomerId     :: !(Maybe Text)
    , _tlPageToken      :: !(Maybe Text)
    , _tlMaxResults     :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransfersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlStatus'
--
-- * 'tlOldOwnerUserId'
--
-- * 'tlNewOwnerUserId'
--
-- * 'tlCustomerId'
--
-- * 'tlPageToken'
--
-- * 'tlMaxResults'
transfersList
    :: TransfersList
transfersList =
    TransfersList
    { _tlStatus = Nothing
    , _tlOldOwnerUserId = Nothing
    , _tlNewOwnerUserId = Nothing
    , _tlCustomerId = Nothing
    , _tlPageToken = Nothing
    , _tlMaxResults = Nothing
    }

-- | Status of the transfer.
tlStatus :: Lens' TransfersList (Maybe Text)
tlStatus = lens _tlStatus (\ s a -> s{_tlStatus = a})

-- | Source user\'s profile ID.
tlOldOwnerUserId :: Lens' TransfersList (Maybe Text)
tlOldOwnerUserId
  = lens _tlOldOwnerUserId
      (\ s a -> s{_tlOldOwnerUserId = a})

-- | Destination user\'s profile ID.
tlNewOwnerUserId :: Lens' TransfersList (Maybe Text)
tlNewOwnerUserId
  = lens _tlNewOwnerUserId
      (\ s a -> s{_tlNewOwnerUserId = a})

-- | Immutable ID of the Google Apps account.
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

instance GoogleRequest TransfersList where
        type Rs TransfersList = DataTransfersListResponse
        requestClient TransfersList{..}
          = go _tlStatus _tlOldOwnerUserId _tlNewOwnerUserId
              _tlCustomerId
              _tlPageToken
              _tlMaxResults
              (Just AltJSON)
              dataTransferService
          where go
                  = buildClient (Proxy :: Proxy TransfersListResource)
                      mempty
