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
-- Module      : Network.Google.Resource.Content.Pos.Sale
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submit a sale event for the given merchant.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.pos.sale@.
module Network.Google.Resource.Content.Pos.Sale
    (
    -- * REST Resource
      PosSaleResource

    -- * Creating a Request
    , posSale'
    , PosSale'

    -- * Request Lenses
    , psMerchantId
    , psTargetMerchantId
    , psPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.pos.sale@ method which the
-- 'PosSale'' request conforms to.
type PosSaleResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "pos" :>
             Capture "targetMerchantId" (Textual Word64) :>
               "sale" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] PosSaleRequest :>
                     Post '[JSON] PosSaleResponse

-- | Submit a sale event for the given merchant.
--
-- /See:/ 'posSale'' smart constructor.
data PosSale' = PosSale''
    { _psMerchantId       :: !(Textual Word64)
    , _psTargetMerchantId :: !(Textual Word64)
    , _psPayload          :: !PosSaleRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PosSale'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psMerchantId'
--
-- * 'psTargetMerchantId'
--
-- * 'psPayload'
posSale'
    :: Word64 -- ^ 'psMerchantId'
    -> Word64 -- ^ 'psTargetMerchantId'
    -> PosSaleRequest -- ^ 'psPayload'
    -> PosSale'
posSale' pPsMerchantId_ pPsTargetMerchantId_ pPsPayload_ =
    PosSale''
    { _psMerchantId = _Coerce # pPsMerchantId_
    , _psTargetMerchantId = _Coerce # pPsTargetMerchantId_
    , _psPayload = pPsPayload_
    }

-- | The ID of the POS or inventory data provider.
psMerchantId :: Lens' PosSale' Word64
psMerchantId
  = lens _psMerchantId (\ s a -> s{_psMerchantId = a})
      . _Coerce

-- | The ID of the target merchant.
psTargetMerchantId :: Lens' PosSale' Word64
psTargetMerchantId
  = lens _psTargetMerchantId
      (\ s a -> s{_psTargetMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
psPayload :: Lens' PosSale' PosSaleRequest
psPayload
  = lens _psPayload (\ s a -> s{_psPayload = a})

instance GoogleRequest PosSale' where
        type Rs PosSale' = PosSaleResponse
        type Scopes PosSale' =
             '["https://www.googleapis.com/auth/content"]
        requestClient PosSale''{..}
          = go _psMerchantId _psTargetMerchantId (Just AltJSON)
              _psPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy PosSaleResource) mempty
