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
-- Module      : Network.Google.Resource.Content.Regionalinventory.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the regional inventory of a product in your Merchant Center
-- account. If a regional inventory with the same region ID already exists,
-- this method updates that entry.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.regionalinventory.insert@.
module Network.Google.Resource.Content.Regionalinventory.Insert
    (
    -- * REST Resource
      RegionalinventoryInsertResource

    -- * Creating a Request
    , regionalinventoryInsert
    , RegionalinventoryInsert

    -- * Request Lenses
    , riMerchantId
    , riPayload
    , riProductId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.regionalinventory.insert@ method which the
-- 'RegionalinventoryInsert' request conforms to.
type RegionalinventoryInsertResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "products" :>
             Capture "productId" Text :>
               "regionalinventory" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] RegionalInventory :>
                     Post '[JSON] RegionalInventory

-- | Update the regional inventory of a product in your Merchant Center
-- account. If a regional inventory with the same region ID already exists,
-- this method updates that entry.
--
-- /See:/ 'regionalinventoryInsert' smart constructor.
data RegionalinventoryInsert =
  RegionalinventoryInsert'
    { _riMerchantId :: !(Textual Word64)
    , _riPayload    :: !RegionalInventory
    , _riProductId  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionalinventoryInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riMerchantId'
--
-- * 'riPayload'
--
-- * 'riProductId'
regionalinventoryInsert
    :: Word64 -- ^ 'riMerchantId'
    -> RegionalInventory -- ^ 'riPayload'
    -> Text -- ^ 'riProductId'
    -> RegionalinventoryInsert
regionalinventoryInsert pRiMerchantId_ pRiPayload_ pRiProductId_ =
  RegionalinventoryInsert'
    { _riMerchantId = _Coerce # pRiMerchantId_
    , _riPayload = pRiPayload_
    , _riProductId = pRiProductId_
    }


-- | The ID of the account that contains the product. This account cannot be
-- a multi-client account.
riMerchantId :: Lens' RegionalinventoryInsert Word64
riMerchantId
  = lens _riMerchantId (\ s a -> s{_riMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
riPayload :: Lens' RegionalinventoryInsert RegionalInventory
riPayload
  = lens _riPayload (\ s a -> s{_riPayload = a})

-- | The REST ID of the product for which to update the regional inventory.
riProductId :: Lens' RegionalinventoryInsert Text
riProductId
  = lens _riProductId (\ s a -> s{_riProductId = a})

instance GoogleRequest RegionalinventoryInsert where
        type Rs RegionalinventoryInsert = RegionalInventory
        type Scopes RegionalinventoryInsert =
             '["https://www.googleapis.com/auth/content"]
        requestClient RegionalinventoryInsert'{..}
          = go _riMerchantId _riProductId (Just AltJSON)
              _riPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionalinventoryInsertResource)
                      mempty
