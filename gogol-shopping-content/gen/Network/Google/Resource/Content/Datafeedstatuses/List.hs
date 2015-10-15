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
-- | Lists the statuses of the datafeeds in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentDatafeedstatusesList@.
module Network.Google.Resource.Content.Datafeedstatuses.List
    (
    -- * REST Resource
      DatafeedstatusesListResource

    -- * Creating a Request
    , datafeedstatusesList'
    , DatafeedstatusesList'

    -- * Request Lenses
    , dllMerchantId
    , dllPageToken
    , dllMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentDatafeedstatusesList@ method which the
-- 'DatafeedstatusesList'' request conforms to.
type DatafeedstatusesListResource =
     Capture "merchantId" Word64 :>
       "datafeedstatuses" :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Word32 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] DatafeedstatusesListResponse

-- | Lists the statuses of the datafeeds in your Merchant Center account.
--
-- /See:/ 'datafeedstatusesList'' smart constructor.
data DatafeedstatusesList' = DatafeedstatusesList'
    { _dllMerchantId :: !Word64
    , _dllPageToken  :: !(Maybe Text)
    , _dllMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedstatusesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dllMerchantId'
--
-- * 'dllPageToken'
--
-- * 'dllMaxResults'
datafeedstatusesList'
    :: Word64 -- ^ 'merchantId'
    -> DatafeedstatusesList'
datafeedstatusesList' pDllMerchantId_ =
    DatafeedstatusesList'
    { _dllMerchantId = pDllMerchantId_
    , _dllPageToken = Nothing
    , _dllMaxResults = Nothing
    }

-- | The ID of the managing account.
dllMerchantId :: Lens' DatafeedstatusesList' Word64
dllMerchantId
  = lens _dllMerchantId
      (\ s a -> s{_dllMerchantId = a})

-- | The token returned by the previous request.
dllPageToken :: Lens' DatafeedstatusesList' (Maybe Text)
dllPageToken
  = lens _dllPageToken (\ s a -> s{_dllPageToken = a})

-- | The maximum number of products to return in the response, used for
-- paging.
dllMaxResults :: Lens' DatafeedstatusesList' (Maybe Word32)
dllMaxResults
  = lens _dllMaxResults
      (\ s a -> s{_dllMaxResults = a})

instance GoogleRequest DatafeedstatusesList' where
        type Rs DatafeedstatusesList' =
             DatafeedstatusesListResponse
        requestClient DatafeedstatusesList'{..}
          = go _dllMerchantId _dllPageToken _dllMaxResults
              (Just AltJSON)
              shoppingContent
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedstatusesListResource)
                      mempty
