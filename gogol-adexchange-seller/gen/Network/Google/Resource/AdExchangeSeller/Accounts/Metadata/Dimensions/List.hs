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
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.Metadata.Dimensions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the metadata for the dimensions available to this AdExchange
-- account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @adexchangeseller.accounts.metadata.dimensions.list@.
module Network.Google.Resource.AdExchangeSeller.Accounts.Metadata.Dimensions.List
    (
    -- * REST Resource
      AccountsMetadataDimensionsListResource

    -- * Creating a Request
    , accountsMetadataDimensionsList
    , AccountsMetadataDimensionsList

    -- * Request Lenses
    , amdlAccountId
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangeseller.accounts.metadata.dimensions.list@ method which the
-- 'AccountsMetadataDimensionsList' request conforms to.
type AccountsMetadataDimensionsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "metadata" :>
           "dimensions" :>
             QueryParam "alt" AltJSON :> Get '[JSON] Metadata

-- | List the metadata for the dimensions available to this AdExchange
-- account.
--
-- /See:/ 'accountsMetadataDimensionsList' smart constructor.
newtype AccountsMetadataDimensionsList = AccountsMetadataDimensionsList
    { _amdlAccountId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsMetadataDimensionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amdlAccountId'
accountsMetadataDimensionsList
    :: Text -- ^ 'amdlAccountId'
    -> AccountsMetadataDimensionsList
accountsMetadataDimensionsList pAmdlAccountId_ =
    AccountsMetadataDimensionsList
    { _amdlAccountId = pAmdlAccountId_
    }

-- | Account with visibility to the dimensions.
amdlAccountId :: Lens' AccountsMetadataDimensionsList Text
amdlAccountId
  = lens _amdlAccountId
      (\ s a -> s{_amdlAccountId = a})

instance GoogleRequest AccountsMetadataDimensionsList
         where
        type Rs AccountsMetadataDimensionsList = Metadata
        requestClient AccountsMetadataDimensionsList{..}
          = go _amdlAccountId (Just AltJSON)
              adExchangeSellerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy AccountsMetadataDimensionsListResource)
                      mempty
