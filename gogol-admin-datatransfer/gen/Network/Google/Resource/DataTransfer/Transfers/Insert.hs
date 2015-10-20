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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a data transfer request.
--
-- /See:/ <https://developers.google.com/admin-sdk/data-transfer/ Admin Data Transfer API Reference> for @datatransfer.transfers.insert@.
module Network.Google.Resource.DataTransfer.Transfers.Insert
    (
    -- * REST Resource
      TransfersInsertResource

    -- * Creating a Request
    , transfersInsert
    , TransfersInsert

    -- * Request Lenses
    , tiPayload
    ) where

import           Network.Google.DataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @datatransfer.transfers.insert@ method which the
-- 'TransfersInsert' request conforms to.
type TransfersInsertResource =
     "transfers" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON] DataTransfer :>
           Post '[JSON] DataTransfer

-- | Inserts a data transfer request.
--
-- /See:/ 'transfersInsert' smart constructor.
newtype TransfersInsert = TransfersInsert
    { _tiPayload :: DataTransfer
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransfersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiPayload'
transfersInsert
    :: DataTransfer -- ^ 'tiPayload'
    -> TransfersInsert
transfersInsert pTiPayload_ =
    TransfersInsert
    { _tiPayload = pTiPayload_
    }

-- | Multipart request metadata.
tiPayload :: Lens' TransfersInsert DataTransfer
tiPayload
  = lens _tiPayload (\ s a -> s{_tiPayload = a})

instance GoogleRequest TransfersInsert where
        type Rs TransfersInsert = DataTransfer
        requestClient TransfersInsert{..}
          = go (Just AltJSON) _tiPayload dataTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy TransfersInsertResource)
                      mempty
