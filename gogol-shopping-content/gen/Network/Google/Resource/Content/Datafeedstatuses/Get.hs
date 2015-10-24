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
-- Module      : Network.Google.Resource.Content.Datafeedstatuses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the status of a datafeed from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.datafeedstatuses.get@.
module Network.Google.Resource.Content.Datafeedstatuses.Get
    (
    -- * REST Resource
      DatafeedstatusesGetResource

    -- * Creating a Request
    , datafeedstatusesGet
    , DatafeedstatusesGet

    -- * Request Lenses
    , dggMerchantId
    , dggDatafeedId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeedstatuses.get@ method which the
-- 'DatafeedstatusesGet' request conforms to.
type DatafeedstatusesGetResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "datafeedstatuses" :>
             Capture "datafeedId" (Textual Word64) :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] DatafeedStatus

-- | Retrieves the status of a datafeed from your Merchant Center account.
--
-- /See:/ 'datafeedstatusesGet' smart constructor.
data DatafeedstatusesGet = DatafeedstatusesGet
    { _dggMerchantId :: !(Textual Word64)
    , _dggDatafeedId :: !(Textual Word64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedstatusesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dggMerchantId'
--
-- * 'dggDatafeedId'
datafeedstatusesGet
    :: Word64 -- ^ 'dggMerchantId'
    -> Word64 -- ^ 'dggDatafeedId'
    -> DatafeedstatusesGet
datafeedstatusesGet pDggMerchantId_ pDggDatafeedId_ =
    DatafeedstatusesGet
    { _dggMerchantId = _Coerce # pDggMerchantId_
    , _dggDatafeedId = _Coerce # pDggDatafeedId_
    }

dggMerchantId :: Lens' DatafeedstatusesGet Word64
dggMerchantId
  = lens _dggMerchantId
      (\ s a -> s{_dggMerchantId = a})
      . _Coerce

dggDatafeedId :: Lens' DatafeedstatusesGet Word64
dggDatafeedId
  = lens _dggDatafeedId
      (\ s a -> s{_dggDatafeedId = a})
      . _Coerce

instance GoogleRequest DatafeedstatusesGet where
        type Rs DatafeedstatusesGet = DatafeedStatus
        requestClient DatafeedstatusesGet{..}
          = go _dggMerchantId _dggDatafeedId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedstatusesGetResource)
                      mempty
