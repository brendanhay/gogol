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
-- | Retrieves the status of a datafeed from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentDatafeedstatusesGet@.
module Network.Google.Resource.Content.Datafeedstatuses.Get
    (
    -- * REST Resource
      DatafeedstatusesGetResource

    -- * Creating a Request
    , datafeedstatusesGet'
    , DatafeedstatusesGet'

    -- * Request Lenses
    , dMerchantId
    , dDatafeedId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentDatafeedstatusesGet@ method which the
-- 'DatafeedstatusesGet'' request conforms to.
type DatafeedstatusesGetResource =
     Capture "merchantId" Word64 :>
       "datafeedstatuses" :>
         Capture "datafeedId" Word64 :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] DatafeedStatus

-- | Retrieves the status of a datafeed from your Merchant Center account.
--
-- /See:/ 'datafeedstatusesGet'' smart constructor.
data DatafeedstatusesGet' = DatafeedstatusesGet'
    { _dMerchantId :: !Word64
    , _dDatafeedId :: !Word64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedstatusesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dMerchantId'
--
-- * 'dDatafeedId'
datafeedstatusesGet'
    :: Word64 -- ^ 'merchantId'
    -> Word64 -- ^ 'datafeedId'
    -> DatafeedstatusesGet'
datafeedstatusesGet' pDMerchantId_ pDDatafeedId_ =
    DatafeedstatusesGet'
    { _dMerchantId = pDMerchantId_
    , _dDatafeedId = pDDatafeedId_
    }

dMerchantId :: Lens' DatafeedstatusesGet' Word64
dMerchantId
  = lens _dMerchantId (\ s a -> s{_dMerchantId = a})

dDatafeedId :: Lens' DatafeedstatusesGet' Word64
dDatafeedId
  = lens _dDatafeedId (\ s a -> s{_dDatafeedId = a})

instance GoogleRequest DatafeedstatusesGet' where
        type Rs DatafeedstatusesGet' = DatafeedStatus
        requestClient DatafeedstatusesGet'{..}
          = go _dMerchantId _dDatafeedId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedstatusesGetResource)
                      mempty
