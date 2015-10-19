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
-- Module      : Network.Google.Resource.Content.Accountshipping.Custombatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves and updates the shipping settings of multiple accounts in a
-- single request.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accountshipping.custombatch@.
module Network.Google.Resource.Content.Accountshipping.Custombatch
    (
    -- * REST Resource
      AccountshippingCustombatchResource

    -- * Creating a Request
    , accountshippingCustombatch'
    , AccountshippingCustombatch'

    -- * Request Lenses
    , acccPayload
    , acccDryRun
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accountshipping.custombatch@ method which the
-- 'AccountshippingCustombatch'' request conforms to.
type AccountshippingCustombatchResource =
     "accountshipping" :>
       "batch" :>
         QueryParam "dryRun" Bool :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] AccountshippingCustomBatchRequest :>
               Post '[JSON] AccountshippingCustomBatchResponse

-- | Retrieves and updates the shipping settings of multiple accounts in a
-- single request.
--
-- /See:/ 'accountshippingCustombatch'' smart constructor.
data AccountshippingCustombatch' = AccountshippingCustombatch'
    { _acccPayload :: !AccountshippingCustomBatchRequest
    , _acccDryRun  :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acccPayload'
--
-- * 'acccDryRun'
accountshippingCustombatch'
    :: AccountshippingCustomBatchRequest -- ^ 'acccPayload'
    -> AccountshippingCustombatch'
accountshippingCustombatch' pAcccPayload_ =
    AccountshippingCustombatch'
    { _acccPayload = pAcccPayload_
    , _acccDryRun = Nothing
    }

-- | Multipart request metadata.
acccPayload :: Lens' AccountshippingCustombatch' AccountshippingCustomBatchRequest
acccPayload
  = lens _acccPayload (\ s a -> s{_acccPayload = a})

-- | Flag to run the request in dry-run mode.
acccDryRun :: Lens' AccountshippingCustombatch' (Maybe Bool)
acccDryRun
  = lens _acccDryRun (\ s a -> s{_acccDryRun = a})

instance GoogleRequest AccountshippingCustombatch'
         where
        type Rs AccountshippingCustombatch' =
             AccountshippingCustomBatchResponse
        requestClient AccountshippingCustombatch'{..}
          = go _acccDryRun (Just AltJSON) _acccPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountshippingCustombatchResource)
                      mempty
