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
-- Module      : Network.Google.Resource.CloudBilling.BillingAccounts.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a billing account. This method can only be used to create
-- [billing
-- subaccounts](https:\/\/cloud.google.com\/billing\/docs\/concepts) by GCP
-- resellers. When creating a subaccount, the current authenticated user
-- must have the \`billing.accounts.update\` IAM permission on the master
-- account, which is typically given to billing account
-- [administrators](https:\/\/cloud.google.com\/billing\/docs\/how-to\/billing-access).
-- This method will return an error if the master account has not been
-- provisioned as a reseller account.
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.billingAccounts.create@.
module Network.Google.Resource.CloudBilling.BillingAccounts.Create
    (
    -- * REST Resource
      BillingAccountsCreateResource

    -- * Creating a Request
    , billingAccountsCreate
    , BillingAccountsCreate

    -- * Request Lenses
    , bacXgafv
    , bacUploadProtocol
    , bacAccessToken
    , bacUploadType
    , bacPayload
    , bacCallback
    ) where

import           Network.Google.Billing.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbilling.billingAccounts.create@ method which the
-- 'BillingAccountsCreate' request conforms to.
type BillingAccountsCreateResource =
     "v1" :>
       "billingAccounts" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BillingAccount :>
                       Post '[JSON] BillingAccount

-- | Creates a billing account. This method can only be used to create
-- [billing
-- subaccounts](https:\/\/cloud.google.com\/billing\/docs\/concepts) by GCP
-- resellers. When creating a subaccount, the current authenticated user
-- must have the \`billing.accounts.update\` IAM permission on the master
-- account, which is typically given to billing account
-- [administrators](https:\/\/cloud.google.com\/billing\/docs\/how-to\/billing-access).
-- This method will return an error if the master account has not been
-- provisioned as a reseller account.
--
-- /See:/ 'billingAccountsCreate' smart constructor.
data BillingAccountsCreate =
  BillingAccountsCreate'
    { _bacXgafv          :: !(Maybe Xgafv)
    , _bacUploadProtocol :: !(Maybe Text)
    , _bacAccessToken    :: !(Maybe Text)
    , _bacUploadType     :: !(Maybe Text)
    , _bacPayload        :: !BillingAccount
    , _bacCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacXgafv'
--
-- * 'bacUploadProtocol'
--
-- * 'bacAccessToken'
--
-- * 'bacUploadType'
--
-- * 'bacPayload'
--
-- * 'bacCallback'
billingAccountsCreate
    :: BillingAccount -- ^ 'bacPayload'
    -> BillingAccountsCreate
billingAccountsCreate pBacPayload_ =
  BillingAccountsCreate'
    { _bacXgafv = Nothing
    , _bacUploadProtocol = Nothing
    , _bacAccessToken = Nothing
    , _bacUploadType = Nothing
    , _bacPayload = pBacPayload_
    , _bacCallback = Nothing
    }


-- | V1 error format.
bacXgafv :: Lens' BillingAccountsCreate (Maybe Xgafv)
bacXgafv = lens _bacXgafv (\ s a -> s{_bacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bacUploadProtocol :: Lens' BillingAccountsCreate (Maybe Text)
bacUploadProtocol
  = lens _bacUploadProtocol
      (\ s a -> s{_bacUploadProtocol = a})

-- | OAuth access token.
bacAccessToken :: Lens' BillingAccountsCreate (Maybe Text)
bacAccessToken
  = lens _bacAccessToken
      (\ s a -> s{_bacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bacUploadType :: Lens' BillingAccountsCreate (Maybe Text)
bacUploadType
  = lens _bacUploadType
      (\ s a -> s{_bacUploadType = a})

-- | Multipart request metadata.
bacPayload :: Lens' BillingAccountsCreate BillingAccount
bacPayload
  = lens _bacPayload (\ s a -> s{_bacPayload = a})

-- | JSONP
bacCallback :: Lens' BillingAccountsCreate (Maybe Text)
bacCallback
  = lens _bacCallback (\ s a -> s{_bacCallback = a})

instance GoogleRequest BillingAccountsCreate where
        type Rs BillingAccountsCreate = BillingAccount
        type Scopes BillingAccountsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient BillingAccountsCreate'{..}
          = go _bacXgafv _bacUploadProtocol _bacAccessToken
              _bacUploadType
              _bacCallback
              (Just AltJSON)
              _bacPayload
              billingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsCreateResource)
                      mempty
