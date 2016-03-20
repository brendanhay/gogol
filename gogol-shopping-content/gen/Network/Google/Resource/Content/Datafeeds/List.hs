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
-- Module      : Network.Google.Resource.Content.Datafeeds.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the datafeeds in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.datafeeds.list@.
module Network.Google.Resource.Content.Datafeeds.List
    (
    -- * REST Resource
      DatafeedsListResource

    -- * Creating a Request
    , datafeedsList
    , DatafeedsList

    -- * Request Lenses
    , datMerchantId
    , datPageToken
    , datMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.list@ method which the
-- 'DatafeedsList' request conforms to.
type DatafeedsListResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "datafeeds" :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" (Textual Word32) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] DatafeedsListResponse

-- | Lists the datafeeds in your Merchant Center account.
--
-- /See:/ 'datafeedsList' smart constructor.
data DatafeedsList = DatafeedsList
    { _datMerchantId :: !(Textual Word64)
    , _datPageToken  :: !(Maybe Text)
    , _datMaxResults :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datMerchantId'
--
-- * 'datPageToken'
--
-- * 'datMaxResults'
datafeedsList
    :: Word64 -- ^ 'datMerchantId'
    -> DatafeedsList
datafeedsList pDatMerchantId_ =
    DatafeedsList
    { _datMerchantId = _Coerce # pDatMerchantId_
    , _datPageToken = Nothing
    , _datMaxResults = Nothing
    }

-- | The ID of the managing account.
datMerchantId :: Lens' DatafeedsList Word64
datMerchantId
  = lens _datMerchantId
      (\ s a -> s{_datMerchantId = a})
      . _Coerce

-- | The token returned by the previous request.
datPageToken :: Lens' DatafeedsList (Maybe Text)
datPageToken
  = lens _datPageToken (\ s a -> s{_datPageToken = a})

-- | The maximum number of products to return in the response, used for
-- paging.
datMaxResults :: Lens' DatafeedsList (Maybe Word32)
datMaxResults
  = lens _datMaxResults
      (\ s a -> s{_datMaxResults = a})
      . mapping _Coerce

instance GoogleRequest DatafeedsList where
        type Rs DatafeedsList = DatafeedsListResponse
        requestClient DatafeedsList{..}
          = go _datMerchantId _datPageToken _datMaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy DatafeedsListResource)
                      mempty
