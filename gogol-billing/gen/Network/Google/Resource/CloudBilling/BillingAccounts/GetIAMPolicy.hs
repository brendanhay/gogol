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
-- Module      : Network.Google.Resource.CloudBilling.BillingAccounts.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a billing account. The caller must
-- have the \`billing.accounts.getIamPolicy\` permission on the account,
-- which is often given to billing account
-- [viewers](https:\/\/cloud.google.com\/billing\/docs\/how-to\/billing-access).
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.billingAccounts.getIamPolicy@.
module Network.Google.Resource.CloudBilling.BillingAccounts.GetIAMPolicy
    (
    -- * REST Resource
      BillingAccountsGetIAMPolicyResource

    -- * Creating a Request
    , billingAccountsGetIAMPolicy
    , BillingAccountsGetIAMPolicy

    -- * Request Lenses
    , bagipXgafv
    , bagipUploadProtocol
    , bagipAccessToken
    , bagipUploadType
    , bagipResource
    , bagipCallback
    ) where

import           Network.Google.Billing.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbilling.billingAccounts.getIamPolicy@ method which the
-- 'BillingAccountsGetIAMPolicy' request conforms to.
type BillingAccountsGetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "getIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a billing account. The caller must
-- have the \`billing.accounts.getIamPolicy\` permission on the account,
-- which is often given to billing account
-- [viewers](https:\/\/cloud.google.com\/billing\/docs\/how-to\/billing-access).
--
-- /See:/ 'billingAccountsGetIAMPolicy' smart constructor.
data BillingAccountsGetIAMPolicy =
  BillingAccountsGetIAMPolicy'
    { _bagipXgafv          :: !(Maybe Xgafv)
    , _bagipUploadProtocol :: !(Maybe Text)
    , _bagipAccessToken    :: !(Maybe Text)
    , _bagipUploadType     :: !(Maybe Text)
    , _bagipResource       :: !Text
    , _bagipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bagipXgafv'
--
-- * 'bagipUploadProtocol'
--
-- * 'bagipAccessToken'
--
-- * 'bagipUploadType'
--
-- * 'bagipResource'
--
-- * 'bagipCallback'
billingAccountsGetIAMPolicy
    :: Text -- ^ 'bagipResource'
    -> BillingAccountsGetIAMPolicy
billingAccountsGetIAMPolicy pBagipResource_ =
  BillingAccountsGetIAMPolicy'
    { _bagipXgafv = Nothing
    , _bagipUploadProtocol = Nothing
    , _bagipAccessToken = Nothing
    , _bagipUploadType = Nothing
    , _bagipResource = pBagipResource_
    , _bagipCallback = Nothing
    }


-- | V1 error format.
bagipXgafv :: Lens' BillingAccountsGetIAMPolicy (Maybe Xgafv)
bagipXgafv
  = lens _bagipXgafv (\ s a -> s{_bagipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bagipUploadProtocol :: Lens' BillingAccountsGetIAMPolicy (Maybe Text)
bagipUploadProtocol
  = lens _bagipUploadProtocol
      (\ s a -> s{_bagipUploadProtocol = a})

-- | OAuth access token.
bagipAccessToken :: Lens' BillingAccountsGetIAMPolicy (Maybe Text)
bagipAccessToken
  = lens _bagipAccessToken
      (\ s a -> s{_bagipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bagipUploadType :: Lens' BillingAccountsGetIAMPolicy (Maybe Text)
bagipUploadType
  = lens _bagipUploadType
      (\ s a -> s{_bagipUploadType = a})

-- | REQUIRED: The resource for which the policy is being requested. See the
-- operation documentation for the appropriate value for this field.
bagipResource :: Lens' BillingAccountsGetIAMPolicy Text
bagipResource
  = lens _bagipResource
      (\ s a -> s{_bagipResource = a})

-- | JSONP
bagipCallback :: Lens' BillingAccountsGetIAMPolicy (Maybe Text)
bagipCallback
  = lens _bagipCallback
      (\ s a -> s{_bagipCallback = a})

instance GoogleRequest BillingAccountsGetIAMPolicy
         where
        type Rs BillingAccountsGetIAMPolicy = Policy
        type Scopes BillingAccountsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient BillingAccountsGetIAMPolicy'{..}
          = go _bagipResource _bagipXgafv _bagipUploadProtocol
              _bagipAccessToken
              _bagipUploadType
              _bagipCallback
              (Just AltJSON)
              billingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsGetIAMPolicyResource)
                      mempty
