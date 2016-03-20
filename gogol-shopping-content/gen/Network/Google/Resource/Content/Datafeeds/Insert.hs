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
-- Module      : Network.Google.Resource.Content.Datafeeds.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers a datafeed with your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.datafeeds.insert@.
module Network.Google.Resource.Content.Datafeeds.Insert
    (
    -- * REST Resource
      DatafeedsInsertResource

    -- * Creating a Request
    , datafeedsInsert
    , DatafeedsInsert

    -- * Request Lenses
    , diMerchantId
    , diPayload
    , diDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.insert@ method which the
-- 'DatafeedsInsert' request conforms to.
type DatafeedsInsertResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "datafeeds" :>
             QueryParam "dryRun" Bool :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Datafeed :> Post '[JSON] Datafeed

-- | Registers a datafeed with your Merchant Center account.
--
-- /See:/ 'datafeedsInsert' smart constructor.
data DatafeedsInsert = DatafeedsInsert
    { _diMerchantId :: !(Textual Word64)
    , _diPayload    :: !Datafeed
    , _diDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diMerchantId'
--
-- * 'diPayload'
--
-- * 'diDryRun'
datafeedsInsert
    :: Word64 -- ^ 'diMerchantId'
    -> Datafeed -- ^ 'diPayload'
    -> DatafeedsInsert
datafeedsInsert pDiMerchantId_ pDiPayload_ =
    DatafeedsInsert
    { _diMerchantId = _Coerce # pDiMerchantId_
    , _diPayload = pDiPayload_
    , _diDryRun = Nothing
    }

diMerchantId :: Lens' DatafeedsInsert Word64
diMerchantId
  = lens _diMerchantId (\ s a -> s{_diMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
diPayload :: Lens' DatafeedsInsert Datafeed
diPayload
  = lens _diPayload (\ s a -> s{_diPayload = a})

-- | Flag to run the request in dry-run mode.
diDryRun :: Lens' DatafeedsInsert (Maybe Bool)
diDryRun = lens _diDryRun (\ s a -> s{_diDryRun = a})

instance GoogleRequest DatafeedsInsert where
        type Rs DatafeedsInsert = Datafeed
        requestClient DatafeedsInsert{..}
          = go _diMerchantId _diDryRun (Just AltJSON)
              _diPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedsInsertResource)
                      mempty
