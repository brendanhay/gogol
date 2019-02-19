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
-- Module      : Network.Google.Resource.CloudBilling.BillingAccounts.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests the access control policy for a billing account. This method takes
-- the resource and a set of permissions as input and returns the subset of
-- the input permissions that the caller is allowed for that resource.
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.billingAccounts.testIamPermissions@.
module Network.Google.Resource.CloudBilling.BillingAccounts.TestIAMPermissions
    (
    -- * REST Resource
      BillingAccountsTestIAMPermissionsResource

    -- * Creating a Request
    , billingAccountsTestIAMPermissions
    , BillingAccountsTestIAMPermissions

    -- * Request Lenses
    , batipXgafv
    , batipUploadProtocol
    , batipAccessToken
    , batipUploadType
    , batipPayload
    , batipResource
    , batipCallback
    ) where

import           Network.Google.Billing.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbilling.billingAccounts.testIamPermissions@ method which the
-- 'BillingAccountsTestIAMPermissions' request conforms to.
type BillingAccountsTestIAMPermissionsResource =
     "v1" :>
       CaptureMode "resource" "testIamPermissions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] TestIAMPermissionsRequest :>
                       Post '[JSON] TestIAMPermissionsResponse

-- | Tests the access control policy for a billing account. This method takes
-- the resource and a set of permissions as input and returns the subset of
-- the input permissions that the caller is allowed for that resource.
--
-- /See:/ 'billingAccountsTestIAMPermissions' smart constructor.
data BillingAccountsTestIAMPermissions =
  BillingAccountsTestIAMPermissions'
    { _batipXgafv          :: !(Maybe Xgafv)
    , _batipUploadProtocol :: !(Maybe Text)
    , _batipAccessToken    :: !(Maybe Text)
    , _batipUploadType     :: !(Maybe Text)
    , _batipPayload        :: !TestIAMPermissionsRequest
    , _batipResource       :: !Text
    , _batipCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BillingAccountsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'batipXgafv'
--
-- * 'batipUploadProtocol'
--
-- * 'batipAccessToken'
--
-- * 'batipUploadType'
--
-- * 'batipPayload'
--
-- * 'batipResource'
--
-- * 'batipCallback'
billingAccountsTestIAMPermissions
    :: TestIAMPermissionsRequest -- ^ 'batipPayload'
    -> Text -- ^ 'batipResource'
    -> BillingAccountsTestIAMPermissions
billingAccountsTestIAMPermissions pBatipPayload_ pBatipResource_ =
  BillingAccountsTestIAMPermissions'
    { _batipXgafv = Nothing
    , _batipUploadProtocol = Nothing
    , _batipAccessToken = Nothing
    , _batipUploadType = Nothing
    , _batipPayload = pBatipPayload_
    , _batipResource = pBatipResource_
    , _batipCallback = Nothing
    }

-- | V1 error format.
batipXgafv :: Lens' BillingAccountsTestIAMPermissions (Maybe Xgafv)
batipXgafv
  = lens _batipXgafv (\ s a -> s{_batipXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
batipUploadProtocol :: Lens' BillingAccountsTestIAMPermissions (Maybe Text)
batipUploadProtocol
  = lens _batipUploadProtocol
      (\ s a -> s{_batipUploadProtocol = a})

-- | OAuth access token.
batipAccessToken :: Lens' BillingAccountsTestIAMPermissions (Maybe Text)
batipAccessToken
  = lens _batipAccessToken
      (\ s a -> s{_batipAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
batipUploadType :: Lens' BillingAccountsTestIAMPermissions (Maybe Text)
batipUploadType
  = lens _batipUploadType
      (\ s a -> s{_batipUploadType = a})

-- | Multipart request metadata.
batipPayload :: Lens' BillingAccountsTestIAMPermissions TestIAMPermissionsRequest
batipPayload
  = lens _batipPayload (\ s a -> s{_batipPayload = a})

-- | REQUIRED: The resource for which the policy detail is being requested.
-- See the operation documentation for the appropriate value for this
-- field.
batipResource :: Lens' BillingAccountsTestIAMPermissions Text
batipResource
  = lens _batipResource
      (\ s a -> s{_batipResource = a})

-- | JSONP
batipCallback :: Lens' BillingAccountsTestIAMPermissions (Maybe Text)
batipCallback
  = lens _batipCallback
      (\ s a -> s{_batipCallback = a})

instance GoogleRequest
           BillingAccountsTestIAMPermissions
         where
        type Rs BillingAccountsTestIAMPermissions =
             TestIAMPermissionsResponse
        type Scopes BillingAccountsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient BillingAccountsTestIAMPermissions'{..}
          = go _batipResource _batipXgafv _batipUploadProtocol
              _batipAccessToken
              _batipUploadType
              _batipCallback
              (Just AltJSON)
              _batipPayload
              billingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BillingAccountsTestIAMPermissionsResource)
                      mempty
