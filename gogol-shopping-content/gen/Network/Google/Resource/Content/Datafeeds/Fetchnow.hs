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
-- Module      : Network.Google.Resource.Content.Datafeeds.Fetchnow
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Invokes a fetch for the datafeed in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.datafeeds.fetchnow@.
module Network.Google.Resource.Content.Datafeeds.Fetchnow
    (
    -- * REST Resource
      DatafeedsFetchnowResource

    -- * Creating a Request
    , datafeedsFetchnow
    , DatafeedsFetchnow

    -- * Request Lenses
    , dfMerchantId
    , dfDatafeedId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.fetchnow@ method which the
-- 'DatafeedsFetchnow' request conforms to.
type DatafeedsFetchnowResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "datafeeds" :>
             Capture "datafeedId" (Textual Word64) :>
               "fetchNow" :>
                 QueryParam "alt" AltJSON :>
                   Post '[JSON] DatafeedsFetchNowResponse

-- | Invokes a fetch for the datafeed in your Merchant Center account.
--
-- /See:/ 'datafeedsFetchnow' smart constructor.
data DatafeedsFetchnow =
  DatafeedsFetchnow'
    { _dfMerchantId :: !(Textual Word64)
    , _dfDatafeedId :: !(Textual Word64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedsFetchnow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfMerchantId'
--
-- * 'dfDatafeedId'
datafeedsFetchnow
    :: Word64 -- ^ 'dfMerchantId'
    -> Word64 -- ^ 'dfDatafeedId'
    -> DatafeedsFetchnow
datafeedsFetchnow pDfMerchantId_ pDfDatafeedId_ =
  DatafeedsFetchnow'
    { _dfMerchantId = _Coerce # pDfMerchantId_
    , _dfDatafeedId = _Coerce # pDfDatafeedId_
    }

-- | The ID of the account that manages the datafeed. This account cannot be
-- a multi-client account.
dfMerchantId :: Lens' DatafeedsFetchnow Word64
dfMerchantId
  = lens _dfMerchantId (\ s a -> s{_dfMerchantId = a})
      . _Coerce

-- | The ID of the datafeed to be fetched.
dfDatafeedId :: Lens' DatafeedsFetchnow Word64
dfDatafeedId
  = lens _dfDatafeedId (\ s a -> s{_dfDatafeedId = a})
      . _Coerce

instance GoogleRequest DatafeedsFetchnow where
        type Rs DatafeedsFetchnow = DatafeedsFetchNowResponse
        type Scopes DatafeedsFetchnow =
             '["https://www.googleapis.com/auth/content"]
        requestClient DatafeedsFetchnow'{..}
          = go _dfMerchantId _dfDatafeedId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedsFetchnowResource)
                      mempty
