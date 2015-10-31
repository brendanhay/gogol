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
-- Module      : Network.Google.Resource.Content.Datafeeds.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a datafeed of your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.datafeeds.update@.
module Network.Google.Resource.Content.Datafeeds.Update
    (
    -- * REST Resource
      DatafeedsUpdateResource

    -- * Creating a Request
    , datafeedsUpdate
    , DatafeedsUpdate

    -- * Request Lenses
    , duMerchantId
    , duPayload
    , duDatafeedId
    , duDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.update@ method which the
-- 'DatafeedsUpdate' request conforms to.
type DatafeedsUpdateResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "datafeeds" :>
             Capture "datafeedId" (Textual Word64) :>
               QueryParam "dryRun" Bool :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Datafeed :> Put '[JSON] Datafeed

-- | Updates a datafeed of your Merchant Center account.
--
-- /See:/ 'datafeedsUpdate' smart constructor.
data DatafeedsUpdate = DatafeedsUpdate
    { _duMerchantId :: !(Textual Word64)
    , _duPayload    :: !Datafeed
    , _duDatafeedId :: !(Textual Word64)
    , _duDryRun     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duMerchantId'
--
-- * 'duPayload'
--
-- * 'duDatafeedId'
--
-- * 'duDryRun'
datafeedsUpdate
    :: Word64 -- ^ 'duMerchantId'
    -> Datafeed -- ^ 'duPayload'
    -> Word64 -- ^ 'duDatafeedId'
    -> DatafeedsUpdate
datafeedsUpdate pDuMerchantId_ pDuPayload_ pDuDatafeedId_ =
    DatafeedsUpdate
    { _duMerchantId = _Coerce # pDuMerchantId_
    , _duPayload = pDuPayload_
    , _duDatafeedId = _Coerce # pDuDatafeedId_
    , _duDryRun = Nothing
    }

duMerchantId :: Lens' DatafeedsUpdate Word64
duMerchantId
  = lens _duMerchantId (\ s a -> s{_duMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
duPayload :: Lens' DatafeedsUpdate Datafeed
duPayload
  = lens _duPayload (\ s a -> s{_duPayload = a})

duDatafeedId :: Lens' DatafeedsUpdate Word64
duDatafeedId
  = lens _duDatafeedId (\ s a -> s{_duDatafeedId = a})
      . _Coerce

-- | Flag to run the request in dry-run mode.
duDryRun :: Lens' DatafeedsUpdate (Maybe Bool)
duDryRun = lens _duDryRun (\ s a -> s{_duDryRun = a})

instance GoogleRequest DatafeedsUpdate where
        type Rs DatafeedsUpdate = Datafeed
        type Scopes DatafeedsUpdate =
             '["https://www.googleapis.com/auth/content"]
        requestClient DatafeedsUpdate{..}
          = go _duMerchantId _duDatafeedId _duDryRun
              (Just AltJSON)
              _duPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedsUpdateResource)
                      mempty
