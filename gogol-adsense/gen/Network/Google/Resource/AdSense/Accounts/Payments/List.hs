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
-- Module      : Network.Google.Resource.AdSense.Accounts.Payments.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the payments available for an account.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.payments.list@.
module Network.Google.Resource.AdSense.Accounts.Payments.List
    (
    -- * REST Resource
      AccountsPaymentsListResource

    -- * Creating a Request
    , accountsPaymentsList
    , AccountsPaymentsList

    -- * Request Lenses
    , aplParent
    , aplXgafv
    , aplUploadProtocol
    , aplAccessToken
    , aplUploadType
    , aplCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.payments.list@ method which the
-- 'AccountsPaymentsList' request conforms to.
type AccountsPaymentsListResource =
     "v2" :>
       Capture "parent" Text :>
         "payments" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ListPaymentsResponse

-- | Lists all the payments available for an account.
--
-- /See:/ 'accountsPaymentsList' smart constructor.
data AccountsPaymentsList =
  AccountsPaymentsList'
    { _aplParent :: !Text
    , _aplXgafv :: !(Maybe Xgafv)
    , _aplUploadProtocol :: !(Maybe Text)
    , _aplAccessToken :: !(Maybe Text)
    , _aplUploadType :: !(Maybe Text)
    , _aplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsPaymentsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplParent'
--
-- * 'aplXgafv'
--
-- * 'aplUploadProtocol'
--
-- * 'aplAccessToken'
--
-- * 'aplUploadType'
--
-- * 'aplCallback'
accountsPaymentsList
    :: Text -- ^ 'aplParent'
    -> AccountsPaymentsList
accountsPaymentsList pAplParent_ =
  AccountsPaymentsList'
    { _aplParent = pAplParent_
    , _aplXgafv = Nothing
    , _aplUploadProtocol = Nothing
    , _aplAccessToken = Nothing
    , _aplUploadType = Nothing
    , _aplCallback = Nothing
    }


-- | Required. The account which owns the collection of payments. Format:
-- accounts\/{account}
aplParent :: Lens' AccountsPaymentsList Text
aplParent
  = lens _aplParent (\ s a -> s{_aplParent = a})

-- | V1 error format.
aplXgafv :: Lens' AccountsPaymentsList (Maybe Xgafv)
aplXgafv = lens _aplXgafv (\ s a -> s{_aplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aplUploadProtocol :: Lens' AccountsPaymentsList (Maybe Text)
aplUploadProtocol
  = lens _aplUploadProtocol
      (\ s a -> s{_aplUploadProtocol = a})

-- | OAuth access token.
aplAccessToken :: Lens' AccountsPaymentsList (Maybe Text)
aplAccessToken
  = lens _aplAccessToken
      (\ s a -> s{_aplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aplUploadType :: Lens' AccountsPaymentsList (Maybe Text)
aplUploadType
  = lens _aplUploadType
      (\ s a -> s{_aplUploadType = a})

-- | JSONP
aplCallback :: Lens' AccountsPaymentsList (Maybe Text)
aplCallback
  = lens _aplCallback (\ s a -> s{_aplCallback = a})

instance GoogleRequest AccountsPaymentsList where
        type Rs AccountsPaymentsList = ListPaymentsResponse
        type Scopes AccountsPaymentsList =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsPaymentsList'{..}
          = go _aplParent _aplXgafv _aplUploadProtocol
              _aplAccessToken
              _aplUploadType
              _aplCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsPaymentsListResource)
                      mempty
