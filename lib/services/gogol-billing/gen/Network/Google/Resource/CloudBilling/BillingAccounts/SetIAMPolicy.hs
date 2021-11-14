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
-- Module      : Network.Google.Resource.CloudBilling.BillingAccounts.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy for a billing account. Replaces any
-- existing policy. The caller must have the
-- \`billing.accounts.setIamPolicy\` permission on the account, which is
-- often given to billing account
-- [administrators](https:\/\/cloud.google.com\/billing\/docs\/how-to\/billing-access).
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.billingAccounts.setIamPolicy@.
module Network.Google.Resource.CloudBilling.BillingAccounts.SetIAMPolicy
    (
    -- * REST Resource
      BillingAccountsSetIAMPolicyResource

    -- * Creating a Request
    , billingAccountsSetIAMPolicy
    , BillingAccountsSetIAMPolicy

    -- * Request Lenses
    , basipXgafv
    , basipUploadProtocol
    , basipAccessToken
    , basipUploadType
    , basipPayload
    , basipResource
    , basipCallback
    ) where

import Network.Google.Billing.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbilling.billingAccounts.setIamPolicy@ method which the
-- 'BillingAccountsSetIAMPolicy' request conforms to.
type BillingAccountsSetIAMPolicyResource =
     "v1" :>
       CaptureMode "resource" "setIamPolicy" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SetIAMPolicyRequest :>
                       Post '[JSON] Policy

-- | Sets the access control policy for a billing account. Replaces any
-- existing policy. The caller must have the
-- \`billing.accounts.setIamPolicy\` permission on the account, which is
-- often given to billing account
-- [administrators](https:\/\/cloud.google.com\/billing\/docs\/how-to\/billing-access).
--
-- /See:/ 'billingAccountsSetIAMPolicy' smart constructor.
data BillingAccountsSetIAMPolicy =
  BillingAccountsSetIAMPolicy'
    { _basipXgafv :: !(Maybe Xgafv)
    , _basipUploadProtocol :: !(Maybe Text)
    , _basipAccessToken :: !(Maybe Text)
    , _basipUploadType :: !(Maybe Text)
    , _basipPayload :: !SetIAMPolicyRequest
    , _basipResource :: !Text
    , _basipCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'basipXgafv'
--
-- * 'basipUploadProtocol'
--
-- * 'basipAccessToken'
--
-- * 'basipUploadType'
--
-- * 'basipPayload'
--
-- * 'basipResource'
--
-- * 'basipCallback'
billingAccountsSetIAMPolicy
    :: SetIAMPolicyRequest -- ^ 'basipPayload'
    -> Text -- ^ 'basipResource'
    -> BillingAccountsSetIAMPolicy
billingAccountsSetIAMPolicy pBasipPayload_ pBasipResource_ =
  BillingAccountsSetIAMPolicy'
    { _basipXgafv = Nothing
    , _basipUploadProtocol = Nothing
    , _basipAccessToken = Nothing
    , _basipUploadType = Nothing
    , _basipPayload = pBasipPayload_
    , _basipResource = pBasipResource_
    , _basipCallback = Nothing
    }


-- | V1 error format.
basipXgafv :: Lens' BillingAccountsSetIAMPolicy (Maybe Xgafv)
basipXgafv
  = lens _basipXgafv (\ s a -> s{_basipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
basipUploadProtocol :: Lens' BillingAccountsSetIAMPolicy (Maybe Text)
basipUploadProtocol
  = lens _basipUploadProtocol
      (\ s a -> s{_basipUploadProtocol = a})

-- | OAuth access token.
basipAccessToken :: Lens' BillingAccountsSetIAMPolicy (Maybe Text)
basipAccessToken
  = lens _basipAccessToken
      (\ s a -> s{_basipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
basipUploadType :: Lens' BillingAccountsSetIAMPolicy (Maybe Text)
basipUploadType
  = lens _basipUploadType
      (\ s a -> s{_basipUploadType = a})

-- | Multipart request metadata.
basipPayload :: Lens' BillingAccountsSetIAMPolicy SetIAMPolicyRequest
basipPayload
  = lens _basipPayload (\ s a -> s{_basipPayload = a})

-- | REQUIRED: The resource for which the policy is being specified. See the
-- operation documentation for the appropriate value for this field.
basipResource :: Lens' BillingAccountsSetIAMPolicy Text
basipResource
  = lens _basipResource
      (\ s a -> s{_basipResource = a})

-- | JSONP
basipCallback :: Lens' BillingAccountsSetIAMPolicy (Maybe Text)
basipCallback
  = lens _basipCallback
      (\ s a -> s{_basipCallback = a})

instance GoogleRequest BillingAccountsSetIAMPolicy
         where
        type Rs BillingAccountsSetIAMPolicy = Policy
        type Scopes BillingAccountsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-billing",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient BillingAccountsSetIAMPolicy'{..}
          = go _basipResource _basipXgafv _basipUploadProtocol
              _basipAccessToken
              _basipUploadType
              _basipCallback
              (Just AltJSON)
              _basipPayload
              billingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsSetIAMPolicyResource)
                      mempty
