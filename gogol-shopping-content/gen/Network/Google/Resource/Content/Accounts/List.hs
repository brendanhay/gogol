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
-- Module      : Network.Google.Resource.Content.Accounts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the sub-accounts in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accounts.list@.
module Network.Google.Resource.Content.Accounts.List
    (
    -- * REST Resource
      AccountsListResource

    -- * Creating a Request
    , accountsList
    , AccountsList

    -- * Request Lenses
    , allMerchantId
    , allPageToken
    , allMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.list@ method which the
-- 'AccountsList' request conforms to.
type AccountsListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accounts" :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" (Textual Word32) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] AccountsListResponse

-- | Lists the sub-accounts in your Merchant Center account.
--
-- /See:/ 'accountsList' smart constructor.
data AccountsList =
  AccountsList'
    { _allMerchantId :: !(Textual Word64)
    , _allPageToken  :: !(Maybe Text)
    , _allMaxResults :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'allMerchantId'
--
-- * 'allPageToken'
--
-- * 'allMaxResults'
accountsList
    :: Word64 -- ^ 'allMerchantId'
    -> AccountsList
accountsList pAllMerchantId_ =
  AccountsList'
    { _allMerchantId = _Coerce # pAllMerchantId_
    , _allPageToken = Nothing
    , _allMaxResults = Nothing
    }


-- | The ID of the managing account. This must be a multi-client account.
allMerchantId :: Lens' AccountsList Word64
allMerchantId
  = lens _allMerchantId
      (\ s a -> s{_allMerchantId = a})
      . _Coerce

-- | The token returned by the previous request.
allPageToken :: Lens' AccountsList (Maybe Text)
allPageToken
  = lens _allPageToken (\ s a -> s{_allPageToken = a})

-- | The maximum number of accounts to return in the response, used for
-- paging.
allMaxResults :: Lens' AccountsList (Maybe Word32)
allMaxResults
  = lens _allMaxResults
      (\ s a -> s{_allMaxResults = a})
      . mapping _Coerce

instance GoogleRequest AccountsList where
        type Rs AccountsList = AccountsListResponse
        type Scopes AccountsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsList'{..}
          = go _allMerchantId _allPageToken _allMaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy AccountsListResource)
                      mempty
