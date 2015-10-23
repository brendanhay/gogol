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
-- Module      : Network.Google.Resource.Content.Datafeedstatuses.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the statuses of the datafeeds in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.datafeedstatuses.list@.
module Network.Google.Resource.Content.Datafeedstatuses.List
    (
    -- * REST Resource
      DatafeedstatusesListResource

    -- * Creating a Request
    , datafeedstatusesList
    , DatafeedstatusesList

    -- * Request Lenses
    , dlMerchantId
    , dlPageToken
    , dlMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeedstatuses.list@ method which the
-- 'DatafeedstatusesList' request conforms to.
type DatafeedstatusesListResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (JSONText Word64) :>
           "datafeedstatuses" :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" (JSONText Word32) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] DatafeedstatusesListResponse

-- | Lists the statuses of the datafeeds in your Merchant Center account.
--
-- /See:/ 'datafeedstatusesList' smart constructor.
data DatafeedstatusesList = DatafeedstatusesList
    { _dlMerchantId :: !(JSONText Word64)
    , _dlPageToken  :: !(Maybe Text)
    , _dlMaxResults :: !(Maybe (JSONText Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedstatusesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlMerchantId'
--
-- * 'dlPageToken'
--
-- * 'dlMaxResults'
datafeedstatusesList
    :: Word64 -- ^ 'dlMerchantId'
    -> DatafeedstatusesList
datafeedstatusesList pDlMerchantId_ =
    DatafeedstatusesList
    { _dlMerchantId = pDlMerchantId_
    , _dlPageToken = Nothing
    , _dlMaxResults = Nothing
    }

-- | The ID of the managing account.
dlMerchantId :: Lens' DatafeedstatusesList Word64
dlMerchantId
  = lens _dlMerchantId (\ s a -> s{_dlMerchantId = a})
      . _Coerce

-- | The token returned by the previous request.
dlPageToken :: Lens' DatafeedstatusesList (Maybe Text)
dlPageToken
  = lens _dlPageToken (\ s a -> s{_dlPageToken = a})

-- | The maximum number of products to return in the response, used for
-- paging.
dlMaxResults :: Lens' DatafeedstatusesList (Maybe Word32)
dlMaxResults
  = lens _dlMaxResults (\ s a -> s{_dlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest DatafeedstatusesList where
        type Rs DatafeedstatusesList =
             DatafeedstatusesListResponse
        requestClient DatafeedstatusesList{..}
          = go _dlMerchantId _dlPageToken _dlMaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedstatusesListResource)
                      mempty
