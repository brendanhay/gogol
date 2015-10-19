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
-- Module      : Network.Google.Resource.Content.Accountstatuses.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the statuses of the sub-accounts in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountstatusesList@.
module Network.Google.Resource.Content.Accountstatuses.List
    (
    -- * REST Resource
      AccountstatusesListResource

    -- * Creating a Request
    , accountstatusesList'
    , AccountstatusesList'

    -- * Request Lenses
    , acc3MerchantId
    , acc3PageToken
    , acc3MaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountstatusesList@ method which the
-- 'AccountstatusesList'' request conforms to.
type AccountstatusesListResource =
     Capture "merchantId" Word64 :>
       "accountstatuses" :>
         QueryParam "pageToken" Text :>
           QueryParam "maxResults" Word32 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] AccountstatusesListResponse

-- | Lists the statuses of the sub-accounts in your Merchant Center account.
--
-- /See:/ 'accountstatusesList'' smart constructor.
data AccountstatusesList' = AccountstatusesList'
    { _acc3MerchantId :: !Word64
    , _acc3PageToken  :: !(Maybe Text)
    , _acc3MaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountstatusesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acc3MerchantId'
--
-- * 'acc3PageToken'
--
-- * 'acc3MaxResults'
accountstatusesList'
    :: Word64 -- ^ 'merchantId'
    -> AccountstatusesList'
accountstatusesList' pAcc3MerchantId_ =
    AccountstatusesList'
    { _acc3MerchantId = pAcc3MerchantId_
    , _acc3PageToken = Nothing
    , _acc3MaxResults = Nothing
    }

-- | The ID of the managing account.
acc3MerchantId :: Lens' AccountstatusesList' Word64
acc3MerchantId
  = lens _acc3MerchantId
      (\ s a -> s{_acc3MerchantId = a})

-- | The token returned by the previous request.
acc3PageToken :: Lens' AccountstatusesList' (Maybe Text)
acc3PageToken
  = lens _acc3PageToken
      (\ s a -> s{_acc3PageToken = a})

-- | The maximum number of account statuses to return in the response, used
-- for paging.
acc3MaxResults :: Lens' AccountstatusesList' (Maybe Word32)
acc3MaxResults
  = lens _acc3MaxResults
      (\ s a -> s{_acc3MaxResults = a})

instance GoogleRequest AccountstatusesList' where
        type Rs AccountstatusesList' =
             AccountstatusesListResponse
        requestClient AccountstatusesList'{..}
          = go _acc3MerchantId _acc3PageToken _acc3MaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountstatusesListResource)
                      mempty
