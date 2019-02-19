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
-- Module      : Network.Google.Resource.Content.Pos.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a store for the given merchant.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.pos.insert@.
module Network.Google.Resource.Content.Pos.Insert
    (
    -- * REST Resource
      PosInsertResource

    -- * Creating a Request
    , posInsert
    , PosInsert

    -- * Request Lenses
    , ppMerchantId
    , ppTargetMerchantId
    , ppPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.pos.insert@ method which the
-- 'PosInsert' request conforms to.
type PosInsertResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "pos" :>
             Capture "targetMerchantId" (Textual Word64) :>
               "store" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] PosStore :> Post '[JSON] PosStore

-- | Creates a store for the given merchant.
--
-- /See:/ 'posInsert' smart constructor.
data PosInsert =
  PosInsert'
    { _ppMerchantId       :: !(Textual Word64)
    , _ppTargetMerchantId :: !(Textual Word64)
    , _ppPayload          :: !PosStore
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppMerchantId'
--
-- * 'ppTargetMerchantId'
--
-- * 'ppPayload'
posInsert
    :: Word64 -- ^ 'ppMerchantId'
    -> Word64 -- ^ 'ppTargetMerchantId'
    -> PosStore -- ^ 'ppPayload'
    -> PosInsert
posInsert pPpMerchantId_ pPpTargetMerchantId_ pPpPayload_ =
  PosInsert'
    { _ppMerchantId = _Coerce # pPpMerchantId_
    , _ppTargetMerchantId = _Coerce # pPpTargetMerchantId_
    , _ppPayload = pPpPayload_
    }


-- | The ID of the POS or inventory data provider.
ppMerchantId :: Lens' PosInsert Word64
ppMerchantId
  = lens _ppMerchantId (\ s a -> s{_ppMerchantId = a})
      . _Coerce

-- | The ID of the target merchant.
ppTargetMerchantId :: Lens' PosInsert Word64
ppTargetMerchantId
  = lens _ppTargetMerchantId
      (\ s a -> s{_ppTargetMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
ppPayload :: Lens' PosInsert PosStore
ppPayload
  = lens _ppPayload (\ s a -> s{_ppPayload = a})

instance GoogleRequest PosInsert where
        type Rs PosInsert = PosStore
        type Scopes PosInsert =
             '["https://www.googleapis.com/auth/content"]
        requestClient PosInsert'{..}
          = go _ppMerchantId _ppTargetMerchantId (Just AltJSON)
              _ppPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy PosInsertResource)
                      mempty
