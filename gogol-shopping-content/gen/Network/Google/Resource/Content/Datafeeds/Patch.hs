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
-- Module      : Network.Google.Resource.Content.Datafeeds.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a datafeed of your Merchant Center account. This method supports
-- patch semantics.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.datafeeds.patch@.
module Network.Google.Resource.Content.Datafeeds.Patch
    (
    -- * REST Resource
      DatafeedsPatchResource

    -- * Creating a Request
    , datafeedsPatch
    , DatafeedsPatch

    -- * Request Lenses
    , dpMerchantId
    , dpPayload
    , dpDatafeedId
    , dpDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.patch@ method which the
-- 'DatafeedsPatch' request conforms to.
type DatafeedsPatchResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (JSONText Word64) :>
           "datafeeds" :>
             Capture "datafeedId" (JSONText Word64) :>
               QueryParam "dryRun" Bool :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Datafeed :> Patch '[JSON] Datafeed

-- | Updates a datafeed of your Merchant Center account. This method supports
-- patch semantics.
--
-- /See:/ 'datafeedsPatch' smart constructor.
data DatafeedsPatch = DatafeedsPatch
    { _dpMerchantId :: !(JSONText Word64)
    , _dpPayload    :: !Datafeed
    , _dpDatafeedId :: !(JSONText Word64)
    , _dpDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpMerchantId'
--
-- * 'dpPayload'
--
-- * 'dpDatafeedId'
--
-- * 'dpDryRun'
datafeedsPatch
    :: Word64 -- ^ 'dpMerchantId'
    -> Datafeed -- ^ 'dpPayload'
    -> Word64 -- ^ 'dpDatafeedId'
    -> DatafeedsPatch
datafeedsPatch pDpMerchantId_ pDpPayload_ pDpDatafeedId_ =
    DatafeedsPatch
    { _dpMerchantId = _Coerce # pDpMerchantId_
    , _dpPayload = pDpPayload_
    , _dpDatafeedId = _Coerce # pDpDatafeedId_
    , _dpDryRun = Nothing
    }

dpMerchantId :: Lens' DatafeedsPatch Word64
dpMerchantId
  = lens _dpMerchantId (\ s a -> s{_dpMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
dpPayload :: Lens' DatafeedsPatch Datafeed
dpPayload
  = lens _dpPayload (\ s a -> s{_dpPayload = a})

dpDatafeedId :: Lens' DatafeedsPatch Word64
dpDatafeedId
  = lens _dpDatafeedId (\ s a -> s{_dpDatafeedId = a})
      . _Coerce

-- | Flag to run the request in dry-run mode.
dpDryRun :: Lens' DatafeedsPatch (Maybe Bool)
dpDryRun = lens _dpDryRun (\ s a -> s{_dpDryRun = a})

instance GoogleRequest DatafeedsPatch where
        type Rs DatafeedsPatch = Datafeed
        requestClient DatafeedsPatch{..}
          = go _dpMerchantId _dpDatafeedId _dpDryRun
              (Just AltJSON)
              _dpPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy DatafeedsPatchResource)
                      mempty
