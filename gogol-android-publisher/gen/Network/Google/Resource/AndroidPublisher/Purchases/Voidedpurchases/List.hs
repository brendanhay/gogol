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
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.voidedpurchases.list@.
module Network.Google.Resource.AndroidPublisher.Purchases.Voidedpurchases.List
    (
    -- * REST Resource
      PurchasesVoidedpurchasesListResource

    -- * Creating a Request
    , purchasesVoidedpurchasesList
    , PurchasesVoidedpurchasesList

    -- * Request Lenses
    , pvlXgafv
    , pvlUploadProtocol
    , pvlPackageName
    , pvlStartTime
    , pvlAccessToken
    , pvlToken
    , pvlUploadType
    , pvlEndTime
    , pvlType
    , pvlStartIndex
    , pvlMaxResults
    , pvlCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.purchases.voidedpurchases.list@ method which the
-- 'PurchasesVoidedpurchasesList' request conforms to.
type PurchasesVoidedpurchasesListResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "purchases" :>
               "voidedpurchases" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "startTime" (Textual Int64) :>
                       QueryParam "access_token" Text :>
                         QueryParam "token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "endTime" (Textual Int64) :>
                               QueryParam "type" (Textual Int32) :>
                                 QueryParam "startIndex" (Textual Word32) :>
                                   QueryParam "maxResults" (Textual Word32) :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] VoidedPurchasesListResponse

-- | Lists the purchases that were canceled, refunded or charged-back.
--
-- /See:/ 'purchasesVoidedpurchasesList' smart constructor.
data PurchasesVoidedpurchasesList =
  PurchasesVoidedpurchasesList'
    { _pvlXgafv :: !(Maybe Xgafv)
    , _pvlUploadProtocol :: !(Maybe Text)
    , _pvlPackageName :: !Text
    , _pvlStartTime :: !(Maybe (Textual Int64))
    , _pvlAccessToken :: !(Maybe Text)
    , _pvlToken :: !(Maybe Text)
    , _pvlUploadType :: !(Maybe Text)
    , _pvlEndTime :: !(Maybe (Textual Int64))
    , _pvlType :: !(Maybe (Textual Int32))
    , _pvlStartIndex :: !(Maybe (Textual Word32))
    , _pvlMaxResults :: !(Maybe (Textual Word32))
    , _pvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PurchasesVoidedpurchasesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvlXgafv'
--
-- * 'pvlUploadProtocol'
--
-- * 'pvlPackageName'
--
-- * 'pvlStartTime'
--
-- * 'pvlAccessToken'
--
-- * 'pvlToken'
--
-- * 'pvlUploadType'
--
-- * 'pvlEndTime'
--
-- * 'pvlType'
--
-- * 'pvlStartIndex'
--
-- * 'pvlMaxResults'
--
-- * 'pvlCallback'
purchasesVoidedpurchasesList
    :: Text -- ^ 'pvlPackageName'
    -> PurchasesVoidedpurchasesList
purchasesVoidedpurchasesList pPvlPackageName_ =
  PurchasesVoidedpurchasesList'
    { _pvlXgafv = Nothing
    , _pvlUploadProtocol = Nothing
    , _pvlPackageName = pPvlPackageName_
    , _pvlStartTime = Nothing
    , _pvlAccessToken = Nothing
    , _pvlToken = Nothing
    , _pvlUploadType = Nothing
    , _pvlEndTime = Nothing
    , _pvlType = Nothing
    , _pvlStartIndex = Nothing
    , _pvlMaxResults = Nothing
    , _pvlCallback = Nothing
    }


-- | V1 error format.
pvlXgafv :: Lens' PurchasesVoidedpurchasesList (Maybe Xgafv)
pvlXgafv = lens _pvlXgafv (\ s a -> s{_pvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pvlUploadProtocol :: Lens' PurchasesVoidedpurchasesList (Maybe Text)
pvlUploadProtocol
  = lens _pvlUploadProtocol
      (\ s a -> s{_pvlUploadProtocol = a})

-- | The package name of the application for which voided purchases need to
-- be returned (for example, \'com.some.thing\').
pvlPackageName :: Lens' PurchasesVoidedpurchasesList Text
pvlPackageName
  = lens _pvlPackageName
      (\ s a -> s{_pvlPackageName = a})

-- | The time, in milliseconds since the Epoch, of the oldest voided purchase
-- that you want to see in the response. The value of this parameter cannot
-- be older than 30 days and is ignored if a pagination token is set.
-- Default value is current time minus 30 days. Note: This filter is
-- applied on the time at which the record is seen as voided by our systems
-- and not the actual voided time returned in the response.
pvlStartTime :: Lens' PurchasesVoidedpurchasesList (Maybe Int64)
pvlStartTime
  = lens _pvlStartTime (\ s a -> s{_pvlStartTime = a})
      . mapping _Coerce

-- | OAuth access token.
pvlAccessToken :: Lens' PurchasesVoidedpurchasesList (Maybe Text)
pvlAccessToken
  = lens _pvlAccessToken
      (\ s a -> s{_pvlAccessToken = a})

-- | Defines the token of the page to return, usually taken from
-- TokenPagination. This can only be used if token paging is enabled.
pvlToken :: Lens' PurchasesVoidedpurchasesList (Maybe Text)
pvlToken = lens _pvlToken (\ s a -> s{_pvlToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pvlUploadType :: Lens' PurchasesVoidedpurchasesList (Maybe Text)
pvlUploadType
  = lens _pvlUploadType
      (\ s a -> s{_pvlUploadType = a})

-- | The time, in milliseconds since the Epoch, of the newest voided purchase
-- that you want to see in the response. The value of this parameter cannot
-- be greater than the current time and is ignored if a pagination token is
-- set. Default value is current time. Note: This filter is applied on the
-- time at which the record is seen as voided by our systems and not the
-- actual voided time returned in the response.
pvlEndTime :: Lens' PurchasesVoidedpurchasesList (Maybe Int64)
pvlEndTime
  = lens _pvlEndTime (\ s a -> s{_pvlEndTime = a}) .
      mapping _Coerce

-- | The type of voided purchases that you want to see in the response.
-- Possible values are: 0. Only voided in-app product purchases will be
-- returned in the response. This is the default value. 1. Both voided
-- in-app purchases and voided subscription purchases will be returned in
-- the response. Note: Before requesting to receive voided subscription
-- purchases, you must switch to use orderId in the response which uniquely
-- identifies one-time purchases and subscriptions. Otherwise, you will
-- receive multiple subscription orders with the same PurchaseToken,
-- because subscription renewal orders share the same PurchaseToken.
pvlType :: Lens' PurchasesVoidedpurchasesList (Maybe Int32)
pvlType
  = lens _pvlType (\ s a -> s{_pvlType = a}) .
      mapping _Coerce

-- | Defines the index of the first element to return. This can only be used
-- if indexed paging is enabled.
pvlStartIndex :: Lens' PurchasesVoidedpurchasesList (Maybe Word32)
pvlStartIndex
  = lens _pvlStartIndex
      (\ s a -> s{_pvlStartIndex = a})
      . mapping _Coerce

-- | Defines how many results the list operation should return. The default
-- number depends on the resource collection.
pvlMaxResults :: Lens' PurchasesVoidedpurchasesList (Maybe Word32)
pvlMaxResults
  = lens _pvlMaxResults
      (\ s a -> s{_pvlMaxResults = a})
      . mapping _Coerce

-- | JSONP
pvlCallback :: Lens' PurchasesVoidedpurchasesList (Maybe Text)
pvlCallback
  = lens _pvlCallback (\ s a -> s{_pvlCallback = a})

instance GoogleRequest PurchasesVoidedpurchasesList
         where
        type Rs PurchasesVoidedpurchasesList =
             VoidedPurchasesListResponse
        type Scopes PurchasesVoidedpurchasesList =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient PurchasesVoidedpurchasesList'{..}
          = go _pvlPackageName _pvlXgafv _pvlUploadProtocol
              _pvlStartTime
              _pvlAccessToken
              _pvlToken
              _pvlUploadType
              _pvlEndTime
              _pvlType
              _pvlStartIndex
              _pvlMaxResults
              _pvlCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy PurchasesVoidedpurchasesListResource)
                      mempty
