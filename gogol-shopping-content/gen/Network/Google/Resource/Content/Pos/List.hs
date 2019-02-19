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
-- Module      : Network.Google.Resource.Content.Pos.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the stores of the target merchant.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.pos.list@.
module Network.Google.Resource.Content.Pos.List
    (
    -- * REST Resource
      PosListResource

    -- * Creating a Request
    , posList
    , PosList

    -- * Request Lenses
    , posMerchantId
    , posTargetMerchantId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.pos.list@ method which the
-- 'PosList' request conforms to.
type PosListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "pos" :>
             Capture "targetMerchantId" (Textual Word64) :>
               "store" :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] PosListResponse

-- | Lists the stores of the target merchant.
--
-- /See:/ 'posList' smart constructor.
data PosList =
  PosList'
    { _posMerchantId       :: !(Textual Word64)
    , _posTargetMerchantId :: !(Textual Word64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posMerchantId'
--
-- * 'posTargetMerchantId'
posList
    :: Word64 -- ^ 'posMerchantId'
    -> Word64 -- ^ 'posTargetMerchantId'
    -> PosList
posList pPosMerchantId_ pPosTargetMerchantId_ =
  PosList'
    { _posMerchantId = _Coerce # pPosMerchantId_
    , _posTargetMerchantId = _Coerce # pPosTargetMerchantId_
    }


-- | The ID of the POS or inventory data provider.
posMerchantId :: Lens' PosList Word64
posMerchantId
  = lens _posMerchantId
      (\ s a -> s{_posMerchantId = a})
      . _Coerce

-- | The ID of the target merchant.
posTargetMerchantId :: Lens' PosList Word64
posTargetMerchantId
  = lens _posTargetMerchantId
      (\ s a -> s{_posTargetMerchantId = a})
      . _Coerce

instance GoogleRequest PosList where
        type Rs PosList = PosListResponse
        type Scopes PosList =
             '["https://www.googleapis.com/auth/content"]
        requestClient PosList'{..}
          = go _posMerchantId _posTargetMerchantId
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy PosListResource) mempty
