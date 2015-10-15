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
-- Module      : Network.Google.Resource.Content.Accountstatuses.Custombatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountstatusesCustombatch@.
module Network.Google.Resource.Content.Accountstatuses.Custombatch
    (
    -- * REST Resource
      AccountstatusesCustombatchResource

    -- * Creating a Request
    , accountstatusesCustombatch'
    , AccountstatusesCustombatch'

    -- * Request Lenses
    , aaPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountstatusesCustombatch@ method which the
-- 'AccountstatusesCustombatch'' request conforms to.
type AccountstatusesCustombatchResource =
     "accountstatuses" :>
       "batch" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] AccountstatusesCustomBatchRequest :>
             Post '[JSON] AccountstatusesCustomBatchResponse

--
-- /See:/ 'accountstatusesCustombatch'' smart constructor.
newtype AccountstatusesCustombatch' = AccountstatusesCustombatch'
    { _aaPayload :: AccountstatusesCustomBatchRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountstatusesCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaPayload'
accountstatusesCustombatch'
    :: AccountstatusesCustomBatchRequest -- ^ 'payload'
    -> AccountstatusesCustombatch'
accountstatusesCustombatch' pAaPayload_ =
    AccountstatusesCustombatch'
    { _aaPayload = pAaPayload_
    }

-- | Multipart request metadata.
aaPayload :: Lens' AccountstatusesCustombatch' AccountstatusesCustomBatchRequest
aaPayload
  = lens _aaPayload (\ s a -> s{_aaPayload = a})

instance GoogleRequest AccountstatusesCustombatch'
         where
        type Rs AccountstatusesCustombatch' =
             AccountstatusesCustomBatchResponse
        requestClient AccountstatusesCustombatch'{..}
          = go (Just AltJSON) _aaPayload shoppingContent
          where go
                  = buildClient
                      (Proxy :: Proxy AccountstatusesCustombatchResource)
                      mempty
