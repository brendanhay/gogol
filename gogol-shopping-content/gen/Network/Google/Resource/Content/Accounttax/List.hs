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
-- Module      : Network.Google.Resource.Content.Accounttax.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tax settings of the sub-accounts in your Merchant Center
-- account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accounttax.list@.
module Network.Google.Resource.Content.Accounttax.List
    (
    -- * REST Resource
      AccounttaxListResource

    -- * Creating a Request
    , accounttaxList
    , AccounttaxList

    -- * Request Lenses
    , al1MerchantId
    , al1PageToken
    , al1MaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounttax.list@ method which the
-- 'AccounttaxList' request conforms to.
type AccounttaxListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accounttax" :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" (Textual Word32) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] AccounttaxListResponse

-- | Lists the tax settings of the sub-accounts in your Merchant Center
-- account.
--
-- /See:/ 'accounttaxList' smart constructor.
data AccounttaxList =
  AccounttaxList'
    { _al1MerchantId :: !(Textual Word64)
    , _al1PageToken  :: !(Maybe Text)
    , _al1MaxResults :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccounttaxList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'al1MerchantId'
--
-- * 'al1PageToken'
--
-- * 'al1MaxResults'
accounttaxList
    :: Word64 -- ^ 'al1MerchantId'
    -> AccounttaxList
accounttaxList pAl1MerchantId_ =
  AccounttaxList'
    { _al1MerchantId = _Coerce # pAl1MerchantId_
    , _al1PageToken = Nothing
    , _al1MaxResults = Nothing
    }

-- | The ID of the managing account. This must be a multi-client account.
al1MerchantId :: Lens' AccounttaxList Word64
al1MerchantId
  = lens _al1MerchantId
      (\ s a -> s{_al1MerchantId = a})
      . _Coerce

-- | The token returned by the previous request.
al1PageToken :: Lens' AccounttaxList (Maybe Text)
al1PageToken
  = lens _al1PageToken (\ s a -> s{_al1PageToken = a})

-- | The maximum number of tax settings to return in the response, used for
-- paging.
al1MaxResults :: Lens' AccounttaxList (Maybe Word32)
al1MaxResults
  = lens _al1MaxResults
      (\ s a -> s{_al1MaxResults = a})
      . mapping _Coerce

instance GoogleRequest AccounttaxList where
        type Rs AccounttaxList = AccounttaxListResponse
        type Scopes AccounttaxList =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccounttaxList'{..}
          = go _al1MerchantId _al1PageToken _al1MaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccounttaxListResource)
                      mempty
