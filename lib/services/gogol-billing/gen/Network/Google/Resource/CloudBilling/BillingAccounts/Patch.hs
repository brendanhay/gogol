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
-- Module      : Network.Google.Resource.CloudBilling.BillingAccounts.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a billing account\'s fields. Currently the only field that can
-- be edited is \`display_name\`. The current authenticated user must have
-- the \`billing.accounts.update\` IAM permission, which is typically given
-- to the
-- [administrator](https:\/\/cloud.google.com\/billing\/docs\/how-to\/billing-access)
-- of the billing account.
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.billingAccounts.patch@.
module Network.Google.Resource.CloudBilling.BillingAccounts.Patch
    (
    -- * REST Resource
      BillingAccountsPatchResource

    -- * Creating a Request
    , billingAccountsPatch
    , BillingAccountsPatch

    -- * Request Lenses
    , bapXgafv
    , bapUploadProtocol
    , bapUpdateMask
    , bapAccessToken
    , bapUploadType
    , bapPayload
    , bapName
    , bapCallback
    ) where

import Network.Google.Billing.Types
import Network.Google.Prelude

-- | A resource alias for @cloudbilling.billingAccounts.patch@ method which the
-- 'BillingAccountsPatch' request conforms to.
type BillingAccountsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BillingAccount :>
                         Patch '[JSON] BillingAccount

-- | Updates a billing account\'s fields. Currently the only field that can
-- be edited is \`display_name\`. The current authenticated user must have
-- the \`billing.accounts.update\` IAM permission, which is typically given
-- to the
-- [administrator](https:\/\/cloud.google.com\/billing\/docs\/how-to\/billing-access)
-- of the billing account.
--
-- /See:/ 'billingAccountsPatch' smart constructor.
data BillingAccountsPatch =
  BillingAccountsPatch'
    { _bapXgafv :: !(Maybe Xgafv)
    , _bapUploadProtocol :: !(Maybe Text)
    , _bapUpdateMask :: !(Maybe GFieldMask)
    , _bapAccessToken :: !(Maybe Text)
    , _bapUploadType :: !(Maybe Text)
    , _bapPayload :: !BillingAccount
    , _bapName :: !Text
    , _bapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bapXgafv'
--
-- * 'bapUploadProtocol'
--
-- * 'bapUpdateMask'
--
-- * 'bapAccessToken'
--
-- * 'bapUploadType'
--
-- * 'bapPayload'
--
-- * 'bapName'
--
-- * 'bapCallback'
billingAccountsPatch
    :: BillingAccount -- ^ 'bapPayload'
    -> Text -- ^ 'bapName'
    -> BillingAccountsPatch
billingAccountsPatch pBapPayload_ pBapName_ =
  BillingAccountsPatch'
    { _bapXgafv = Nothing
    , _bapUploadProtocol = Nothing
    , _bapUpdateMask = Nothing
    , _bapAccessToken = Nothing
    , _bapUploadType = Nothing
    , _bapPayload = pBapPayload_
    , _bapName = pBapName_
    , _bapCallback = Nothing
    }


-- | V1 error format.
bapXgafv :: Lens' BillingAccountsPatch (Maybe Xgafv)
bapXgafv = lens _bapXgafv (\ s a -> s{_bapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bapUploadProtocol :: Lens' BillingAccountsPatch (Maybe Text)
bapUploadProtocol
  = lens _bapUploadProtocol
      (\ s a -> s{_bapUploadProtocol = a})

-- | The update mask applied to the resource. Only \"display_name\" is
-- currently supported.
bapUpdateMask :: Lens' BillingAccountsPatch (Maybe GFieldMask)
bapUpdateMask
  = lens _bapUpdateMask
      (\ s a -> s{_bapUpdateMask = a})

-- | OAuth access token.
bapAccessToken :: Lens' BillingAccountsPatch (Maybe Text)
bapAccessToken
  = lens _bapAccessToken
      (\ s a -> s{_bapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bapUploadType :: Lens' BillingAccountsPatch (Maybe Text)
bapUploadType
  = lens _bapUploadType
      (\ s a -> s{_bapUploadType = a})

-- | Multipart request metadata.
bapPayload :: Lens' BillingAccountsPatch BillingAccount
bapPayload
  = lens _bapPayload (\ s a -> s{_bapPayload = a})

-- | Required. The name of the billing account resource to be updated.
bapName :: Lens' BillingAccountsPatch Text
bapName = lens _bapName (\ s a -> s{_bapName = a})

-- | JSONP
bapCallback :: Lens' BillingAccountsPatch (Maybe Text)
bapCallback
  = lens _bapCallback (\ s a -> s{_bapCallback = a})

instance GoogleRequest BillingAccountsPatch where
        type Rs BillingAccountsPatch = BillingAccount
        type Scopes BillingAccountsPatch =
             '["https://www.googleapis.com/auth/cloud-billing",
               "https://www.googleapis.com/auth/cloud-platform"]
        requestClient BillingAccountsPatch'{..}
          = go _bapName _bapXgafv _bapUploadProtocol
              _bapUpdateMask
              _bapAccessToken
              _bapUploadType
              _bapCallback
              (Just AltJSON)
              _bapPayload
              billingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsPatchResource)
                      mempty
