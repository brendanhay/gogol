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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a data transfer request by its resource ID.
--
-- /See:/ <https://developers.google.com/admin-sdk/data-transfer/ Admin Data Transfer API Reference> for @datatransfer.transfers.get@.
module Network.Google.Resource.DataTransfer.Transfers.Get
    (
    -- * REST Resource
      TransfersGetResource

    -- * Creating a Request
    , transfersGet'
    , TransfersGet'

    -- * Request Lenses
    , tgDataTransferId
    ) where

import           Network.Google.DataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @datatransfer.transfers.get@ method which the
-- 'TransfersGet'' request conforms to.
type TransfersGetResource =
     "transfers" :>
       Capture "dataTransferId" Text :>
         QueryParam "alt" AltJSON :> Get '[JSON] DataTransfer

-- | Retrieves a data transfer request by its resource ID.
--
-- /See:/ 'transfersGet'' smart constructor.
newtype TransfersGet' = TransfersGet'
    { _tgDataTransferId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransfersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgDataTransferId'
transfersGet'
    :: Text -- ^ 'tgDataTransferId'
    -> TransfersGet'
transfersGet' pTgDataTransferId_ =
    TransfersGet'
    { _tgDataTransferId = pTgDataTransferId_
    }

-- | ID of the resource to be retrieved. This is returned in the response
-- from the insert method.
tgDataTransferId :: Lens' TransfersGet' Text
tgDataTransferId
  = lens _tgDataTransferId
      (\ s a -> s{_tgDataTransferId = a})

instance GoogleRequest TransfersGet' where
        type Rs TransfersGet' = DataTransfer
        requestClient TransfersGet'{..}
          = go _tgDataTransferId (Just AltJSON)
              dataTransferService
          where go
                  = buildClient (Proxy :: Proxy TransfersGetResource)
                      mempty
