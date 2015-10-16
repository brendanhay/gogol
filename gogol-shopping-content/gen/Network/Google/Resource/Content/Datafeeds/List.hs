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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the datafeeds in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentDatafeedsList@.
module Network.Google.Resource.Content.Datafeeds.List
    (
    -- * REST Resource
      DatafeedsListResource

    -- * Creating a Request
    , datafeedsList'
    , DatafeedsList'

    -- * Request Lenses
    , dlMerchantId
    , dlPageToken
    , dlMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentDatafeedsList@ method which the
-- 'DatafeedsList'' request conforms to.
type DatafeedsListResource =
     Capture "merchantId" Word64 :>
       "datafeeds" :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Word32 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] DatafeedsListResponse

-- | Lists the datafeeds in your Merchant Center account.
--
-- /See:/ 'datafeedsList'' smart constructor.
data DatafeedsList' = DatafeedsList'
    { _dlMerchantId :: !Word64
    , _dlPageToken  :: !(Maybe Text)
    , _dlMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlMerchantId'
--
-- * 'dlPageToken'
--
-- * 'dlMaxResults'
datafeedsList'
    :: Word64 -- ^ 'merchantId'
    -> DatafeedsList'
datafeedsList' pDlMerchantId_ =
    DatafeedsList'
    { _dlMerchantId = pDlMerchantId_
    , _dlPageToken = Nothing
    , _dlMaxResults = Nothing
    }

-- | The ID of the managing account.
dlMerchantId :: Lens' DatafeedsList' Word64
dlMerchantId
  = lens _dlMerchantId (\ s a -> s{_dlMerchantId = a})

-- | The token returned by the previous request.
dlPageToken :: Lens' DatafeedsList' (Maybe Text)
dlPageToken
  = lens _dlPageToken (\ s a -> s{_dlPageToken = a})

-- | The maximum number of products to return in the response, used for
-- paging.
dlMaxResults :: Lens' DatafeedsList' (Maybe Word32)
dlMaxResults
  = lens _dlMaxResults (\ s a -> s{_dlMaxResults = a})

instance GoogleRequest DatafeedsList' where
        type Rs DatafeedsList' = DatafeedsListResponse
        requestClient DatafeedsList'{..}
          = go _dlMerchantId _dlPageToken _dlMaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy DatafeedsListResource)
                      mempty
