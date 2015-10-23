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
-- Module      : Network.Google.Resource.Content.Accountshipping.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the shipping settings of the sub-accounts in your Merchant Center
-- account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accountshipping.list@.
module Network.Google.Resource.Content.Accountshipping.List
    (
    -- * REST Resource
      AccountshippingListResource

    -- * Creating a Request
    , accountshippingList
    , AccountshippingList

    -- * Request Lenses
    , al1MerchantId
    , al1PageToken
    , al1MaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accountshipping.list@ method which the
-- 'AccountshippingList' request conforms to.
type AccountshippingListResource =
     "content" :>
       "v2" :>
         Capture "merchantId" Word64 :>
           "accountshipping" :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] AccountshippingListResponse

-- | Lists the shipping settings of the sub-accounts in your Merchant Center
-- account.
--
-- /See:/ 'accountshippingList' smart constructor.
data AccountshippingList = AccountshippingList
    { _al1MerchantId :: !Word64
    , _al1PageToken  :: !(Maybe Text)
    , _al1MaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'al1MerchantId'
--
-- * 'al1PageToken'
--
-- * 'al1MaxResults'
accountshippingList
    :: Word64 -- ^ 'al1MerchantId'
    -> AccountshippingList
accountshippingList pAl1MerchantId_ =
    AccountshippingList
    { _al1MerchantId = pAl1MerchantId_
    , _al1PageToken = Nothing
    , _al1MaxResults = Nothing
    }

-- | The ID of the managing account.
al1MerchantId :: Lens' AccountshippingList Word64
al1MerchantId
  = lens _al1MerchantId
      (\ s a -> s{_al1MerchantId = a})

-- | The token returned by the previous request.
al1PageToken :: Lens' AccountshippingList (Maybe Text)
al1PageToken
  = lens _al1PageToken (\ s a -> s{_al1PageToken = a})

-- | The maximum number of shipping settings to return in the response, used
-- for paging.
al1MaxResults :: Lens' AccountshippingList (Maybe Word32)
al1MaxResults
  = lens _al1MaxResults
      (\ s a -> s{_al1MaxResults = a})

instance GoogleRequest AccountshippingList where
        type Rs AccountshippingList =
             AccountshippingListResponse
        requestClient AccountshippingList{..}
          = go _al1MerchantId _al1PageToken _al1MaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountshippingListResource)
                      mempty
