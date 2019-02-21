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
-- Module      : Network.Google.Resource.Content.Pos.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a store for the given merchant.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.pos.delete@.
module Network.Google.Resource.Content.Pos.Delete
    (
    -- * REST Resource
      PosDeleteResource

    -- * Creating a Request
    , posDelete
    , PosDelete

    -- * Request Lenses
    , pdMerchantId
    , pdStoreCode
    , pdTargetMerchantId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.pos.delete@ method which the
-- 'PosDelete' request conforms to.
type PosDeleteResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "pos" :>
             Capture "targetMerchantId" (Textual Word64) :>
               "store" :>
                 Capture "storeCode" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a store for the given merchant.
--
-- /See:/ 'posDelete' smart constructor.
data PosDelete =
  PosDelete'
    { _pdMerchantId       :: !(Textual Word64)
    , _pdStoreCode        :: !Text
    , _pdTargetMerchantId :: !(Textual Word64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdMerchantId'
--
-- * 'pdStoreCode'
--
-- * 'pdTargetMerchantId'
posDelete
    :: Word64 -- ^ 'pdMerchantId'
    -> Text -- ^ 'pdStoreCode'
    -> Word64 -- ^ 'pdTargetMerchantId'
    -> PosDelete
posDelete pPdMerchantId_ pPdStoreCode_ pPdTargetMerchantId_ =
  PosDelete'
    { _pdMerchantId = _Coerce # pPdMerchantId_
    , _pdStoreCode = pPdStoreCode_
    , _pdTargetMerchantId = _Coerce # pPdTargetMerchantId_
    }


-- | The ID of the POS or inventory data provider.
pdMerchantId :: Lens' PosDelete Word64
pdMerchantId
  = lens _pdMerchantId (\ s a -> s{_pdMerchantId = a})
      . _Coerce

-- | A store code that is unique per merchant.
pdStoreCode :: Lens' PosDelete Text
pdStoreCode
  = lens _pdStoreCode (\ s a -> s{_pdStoreCode = a})

-- | The ID of the target merchant.
pdTargetMerchantId :: Lens' PosDelete Word64
pdTargetMerchantId
  = lens _pdTargetMerchantId
      (\ s a -> s{_pdTargetMerchantId = a})
      . _Coerce

instance GoogleRequest PosDelete where
        type Rs PosDelete = ()
        type Scopes PosDelete =
             '["https://www.googleapis.com/auth/content"]
        requestClient PosDelete'{..}
          = go _pdMerchantId _pdTargetMerchantId _pdStoreCode
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy PosDeleteResource)
                      mempty
