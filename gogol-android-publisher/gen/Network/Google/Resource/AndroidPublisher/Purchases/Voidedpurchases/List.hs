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
-- Module      : Network.Google.Resource.AndroidPublisher.Purchases.Voidedpurchases.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the purchases that were canceled, refunded or charged-back.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.purchases.voidedpurchases.list@.
module Network.Google.Resource.AndroidPublisher.Purchases.Voidedpurchases.List
    (
    -- * REST Resource
      PurchasesVoidedpurchasesListResource

    -- * Creating a Request
    , purchasesVoidedpurchasesList
    , PurchasesVoidedpurchasesList

    -- * Request Lenses
    , pvlPackageName
    , pvlStartTime
    , pvlToken
    , pvlEndTime
    , pvlStartIndex
    , pvlMaxResults
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.purchases.voidedpurchases.list@ method which the
-- 'PurchasesVoidedpurchasesList' request conforms to.
type PurchasesVoidedpurchasesListResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "voidedpurchases" :>
                 QueryParam "startTime" (Textual Int64) :>
                   QueryParam "token" Text :>
                     QueryParam "endTime" (Textual Int64) :>
                       QueryParam "startIndex" (Textual Word32) :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] VoidedPurchasesListResponse

-- | Lists the purchases that were canceled, refunded or charged-back.
--
-- /See:/ 'purchasesVoidedpurchasesList' smart constructor.
data PurchasesVoidedpurchasesList = PurchasesVoidedpurchasesList'
    { _pvlPackageName :: !Text
    , _pvlStartTime   :: !(Maybe (Textual Int64))
    , _pvlToken       :: !(Maybe Text)
    , _pvlEndTime     :: !(Maybe (Textual Int64))
    , _pvlStartIndex  :: !(Maybe (Textual Word32))
    , _pvlMaxResults  :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesVoidedpurchasesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvlPackageName'
--
-- * 'pvlStartTime'
--
-- * 'pvlToken'
--
-- * 'pvlEndTime'
--
-- * 'pvlStartIndex'
--
-- * 'pvlMaxResults'
purchasesVoidedpurchasesList
    :: Text -- ^ 'pvlPackageName'
    -> PurchasesVoidedpurchasesList
purchasesVoidedpurchasesList pPvlPackageName_ =
    PurchasesVoidedpurchasesList'
    { _pvlPackageName = pPvlPackageName_
    , _pvlStartTime = Nothing
    , _pvlToken = Nothing
    , _pvlEndTime = Nothing
    , _pvlStartIndex = Nothing
    , _pvlMaxResults = Nothing
    }

-- | The package name of the application for which voided purchases need to
-- be returned (for example, \'com.some.thing\').
pvlPackageName :: Lens' PurchasesVoidedpurchasesList Text
pvlPackageName
  = lens _pvlPackageName
      (\ s a -> s{_pvlPackageName = a})

-- | The time, in milliseconds since the Epoch, of the oldest voided in-app
-- product purchase that you want to see in the response. The value of this
-- parameter cannot be older than 30 days and is ignored if a pagination
-- token is set. Default value is current time minus 30 days. Note: This
-- filter is applied on the time at which the record is seen as voided by
-- our systems and not the actual voided time returned in the response.
pvlStartTime :: Lens' PurchasesVoidedpurchasesList (Maybe Int64)
pvlStartTime
  = lens _pvlStartTime (\ s a -> s{_pvlStartTime = a})
      . mapping _Coerce

pvlToken :: Lens' PurchasesVoidedpurchasesList (Maybe Text)
pvlToken = lens _pvlToken (\ s a -> s{_pvlToken = a})

-- | The time, in milliseconds since the Epoch, of the newest voided in-app
-- product purchase that you want to see in the response. The value of this
-- parameter cannot be greater than the current time and is ignored if a
-- pagination token is set. Default value is current time. Note: This
-- filter is applied on the time at which the record is seen as voided by
-- our systems and not the actual voided time returned in the response.
pvlEndTime :: Lens' PurchasesVoidedpurchasesList (Maybe Int64)
pvlEndTime
  = lens _pvlEndTime (\ s a -> s{_pvlEndTime = a}) .
      mapping _Coerce

pvlStartIndex :: Lens' PurchasesVoidedpurchasesList (Maybe Word32)
pvlStartIndex
  = lens _pvlStartIndex
      (\ s a -> s{_pvlStartIndex = a})
      . mapping _Coerce

pvlMaxResults :: Lens' PurchasesVoidedpurchasesList (Maybe Word32)
pvlMaxResults
  = lens _pvlMaxResults
      (\ s a -> s{_pvlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest PurchasesVoidedpurchasesList
         where
        type Rs PurchasesVoidedpurchasesList =
             VoidedPurchasesListResponse
        type Scopes PurchasesVoidedpurchasesList =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient PurchasesVoidedpurchasesList'{..}
          = go _pvlPackageName _pvlStartTime _pvlToken
              _pvlEndTime
              _pvlStartIndex
              _pvlMaxResults
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy PurchasesVoidedpurchasesListResource)
                      mempty
