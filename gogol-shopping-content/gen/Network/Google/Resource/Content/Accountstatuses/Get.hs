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
-- Module      : Network.Google.Resource.Content.Accountstatuses.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the status of a Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accountstatuses.get@.
module Network.Google.Resource.Content.Accountstatuses.Get
    (
    -- * REST Resource
      AccountstatusesGetResource

    -- * Creating a Request
    , accountstatusesGet
    , AccountstatusesGet

    -- * Request Lenses
    , ag1MerchantId
    , ag1AccountId
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accountstatuses.get@ method which the
-- 'AccountstatusesGet' request conforms to.
type AccountstatusesGetResource =
     "content" :>
       "v2" :>
         Capture "merchantId" (Textual Word64) :>
           "accountstatuses" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "alt" AltJSON :> Get '[JSON] AccountStatus

-- | Retrieves the status of a Merchant Center account.
--
-- /See:/ 'accountstatusesGet' smart constructor.
data AccountstatusesGet = AccountstatusesGet
    { _ag1MerchantId :: !(Textual Word64)
    , _ag1AccountId  :: !(Textual Word64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountstatusesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ag1MerchantId'
--
-- * 'ag1AccountId'
accountstatusesGet
    :: Word64 -- ^ 'ag1MerchantId'
    -> Word64 -- ^ 'ag1AccountId'
    -> AccountstatusesGet
accountstatusesGet pAg1MerchantId_ pAg1AccountId_ =
    AccountstatusesGet
    { _ag1MerchantId = _Coerce # pAg1MerchantId_
    , _ag1AccountId = _Coerce # pAg1AccountId_
    }

-- | The ID of the managing account.
ag1MerchantId :: Lens' AccountstatusesGet Word64
ag1MerchantId
  = lens _ag1MerchantId
      (\ s a -> s{_ag1MerchantId = a})
      . _Coerce

-- | The ID of the account.
ag1AccountId :: Lens' AccountstatusesGet Word64
ag1AccountId
  = lens _ag1AccountId (\ s a -> s{_ag1AccountId = a})
      . _Coerce

instance GoogleRequest AccountstatusesGet where
        type Rs AccountstatusesGet = AccountStatus
        requestClient AccountstatusesGet{..}
          = go _ag1MerchantId _ag1AccountId (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountstatusesGetResource)
                      mempty
