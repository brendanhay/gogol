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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the statuses of the sub-accounts in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.accountstatuses.list@.
module Network.Google.Resource.Content.Accountstatuses.List
    (
    -- * REST Resource
      AccountstatusesListResource

    -- * Creating a Request
    , accountstatusesList
    , AccountstatusesList

    -- * Request Lenses
    , a2MerchantId
    , a2Destinations
    , a2PageToken
    , a2MaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accountstatuses.list@ method which the
-- 'AccountstatusesList' request conforms to.
type AccountstatusesListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accountstatuses" :>
             QueryParams "destinations" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" (Textual Word32) :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] AccountstatusesListResponse

-- | Lists the statuses of the sub-accounts in your Merchant Center account.
--
-- /See:/ 'accountstatusesList' smart constructor.
data AccountstatusesList = AccountstatusesList'
    { _a2MerchantId   :: !(Textual Word64)
    , _a2Destinations :: !(Maybe [Text])
    , _a2PageToken    :: !(Maybe Text)
    , _a2MaxResults   :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountstatusesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'a2MerchantId'
--
-- * 'a2Destinations'
--
-- * 'a2PageToken'
--
-- * 'a2MaxResults'
accountstatusesList
    :: Word64 -- ^ 'a2MerchantId'
    -> AccountstatusesList
accountstatusesList pA2MerchantId_ =
    AccountstatusesList'
    { _a2MerchantId = _Coerce # pA2MerchantId_
    , _a2Destinations = Nothing
    , _a2PageToken = Nothing
    , _a2MaxResults = Nothing
    }

-- | The ID of the managing account. This must be a multi-client account.
a2MerchantId :: Lens' AccountstatusesList Word64
a2MerchantId
  = lens _a2MerchantId (\ s a -> s{_a2MerchantId = a})
      . _Coerce

-- | If set, only issues for the specified destinations are returned,
-- otherwise only issues for the Shopping destination.
a2Destinations :: Lens' AccountstatusesList [Text]
a2Destinations
  = lens _a2Destinations
      (\ s a -> s{_a2Destinations = a})
      . _Default
      . _Coerce

-- | The token returned by the previous request.
a2PageToken :: Lens' AccountstatusesList (Maybe Text)
a2PageToken
  = lens _a2PageToken (\ s a -> s{_a2PageToken = a})

-- | The maximum number of account statuses to return in the response, used
-- for paging.
a2MaxResults :: Lens' AccountstatusesList (Maybe Word32)
a2MaxResults
  = lens _a2MaxResults (\ s a -> s{_a2MaxResults = a})
      . mapping _Coerce

instance GoogleRequest AccountstatusesList where
        type Rs AccountstatusesList =
             AccountstatusesListResponse
        type Scopes AccountstatusesList =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountstatusesList'{..}
          = go _a2MerchantId (_a2Destinations ^. _Default)
              _a2PageToken
              _a2MaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountstatusesListResource)
                      mempty
