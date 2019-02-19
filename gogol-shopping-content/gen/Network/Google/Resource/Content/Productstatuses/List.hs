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
-- Module      : Network.Google.Resource.Content.Productstatuses.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the statuses of the products in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.productstatuses.list@.
module Network.Google.Resource.Content.Productstatuses.List
    (
    -- * REST Resource
      ProductstatusesListResource

    -- * Creating a Request
    , productstatusesList
    , ProductstatusesList

    -- * Request Lenses
    , plMerchantId
    , plDestinations
    , plPageToken
    , plMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.productstatuses.list@ method which the
-- 'ProductstatusesList' request conforms to.
type ProductstatusesListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "productstatuses" :>
             QueryParams "destinations" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] ProductstatusesListResponse

-- | Lists the statuses of the products in your Merchant Center account.
--
-- /See:/ 'productstatusesList' smart constructor.
data ProductstatusesList =
  ProductstatusesList'
    { _plMerchantId   :: !(Textual Word64)
    , _plDestinations :: !(Maybe [Text])
    , _plPageToken    :: !(Maybe Text)
    , _plMaxResults   :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductstatusesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plMerchantId'
--
-- * 'plDestinations'
--
-- * 'plPageToken'
--
-- * 'plMaxResults'
productstatusesList
    :: Word64 -- ^ 'plMerchantId'
    -> ProductstatusesList
productstatusesList pPlMerchantId_ =
  ProductstatusesList'
    { _plMerchantId = _Coerce # pPlMerchantId_
    , _plDestinations = Nothing
    , _plPageToken = Nothing
    , _plMaxResults = Nothing
    }

-- | The ID of the account that contains the products. This account cannot be
-- a multi-client account.
plMerchantId :: Lens' ProductstatusesList Word64
plMerchantId
  = lens _plMerchantId (\ s a -> s{_plMerchantId = a})
      . _Coerce

-- | If set, only issues for the specified destinations are returned,
-- otherwise only issues for the Shopping destination.
plDestinations :: Lens' ProductstatusesList [Text]
plDestinations
  = lens _plDestinations
      (\ s a -> s{_plDestinations = a})
      . _Default
      . _Coerce

-- | The token returned by the previous request.
plPageToken :: Lens' ProductstatusesList (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | The maximum number of product statuses to return in the response, used
-- for paging.
plMaxResults :: Lens' ProductstatusesList (Maybe Word32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ProductstatusesList where
        type Rs ProductstatusesList =
             ProductstatusesListResponse
        type Scopes ProductstatusesList =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductstatusesList'{..}
          = go _plMerchantId (_plDestinations ^. _Default)
              _plPageToken
              _plMaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductstatusesListResource)
                      mempty
