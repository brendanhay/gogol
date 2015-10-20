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
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accountstatuses.custombatch@.
module Network.Google.Resource.Content.Accountstatuses.Custombatch
    (
    -- * REST Resource
      AccountstatusesCustombatchResource

    -- * Creating a Request
    , accountstatusesCustombatch
    , AccountstatusesCustombatch

    -- * Request Lenses
    , accPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accountstatuses.custombatch@ method which the
-- 'AccountstatusesCustombatch' request conforms to.
type AccountstatusesCustombatchResource =
     "accountstatuses" :>
       "batch" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] AccountstatusesCustomBatchRequest :>
             Post '[JSON] AccountstatusesCustomBatchResponse

--
-- /See:/ 'accountstatusesCustombatch' smart constructor.
newtype AccountstatusesCustombatch = AccountstatusesCustombatch
    { _accPayload :: AccountstatusesCustomBatchRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountstatusesCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accPayload'
accountstatusesCustombatch
    :: AccountstatusesCustomBatchRequest -- ^ 'accPayload'
    -> AccountstatusesCustombatch
accountstatusesCustombatch pAccPayload_ =
    AccountstatusesCustombatch
    { _accPayload = pAccPayload_
    }

-- | Multipart request metadata.
accPayload :: Lens' AccountstatusesCustombatch AccountstatusesCustomBatchRequest
accPayload
  = lens _accPayload (\ s a -> s{_accPayload = a})

instance GoogleRequest AccountstatusesCustombatch
         where
        type Rs AccountstatusesCustombatch =
             AccountstatusesCustomBatchResponse
        requestClient AccountstatusesCustombatch{..}
          = go (Just AltJSON) _accPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountstatusesCustombatchResource)
                      mempty
