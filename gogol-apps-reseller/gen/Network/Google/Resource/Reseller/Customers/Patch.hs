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
-- Module      : Network.Google.Resource.Reseller.Customers.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a customer account\'s settings. This method supports patch
-- semantics. You cannot update \`customerType\` via the Reseller API, but
-- a \`\"team\"\` customer can verify their domain and become
-- \`customerType = \"domain\"\`. For more information, see [Verify your
-- domain to unlock Essentials
-- features](https:\/\/support.google.com\/a\/answer\/9122284).
--
-- /See:/ <https://developers.google.com/google-apps/reseller/ Google Workspace Reseller API Reference> for @reseller.customers.patch@.
module Network.Google.Resource.Reseller.Customers.Patch
    (
    -- * REST Resource
      CustomersPatchResource

    -- * Creating a Request
    , customersPatch
    , CustomersPatch

    -- * Request Lenses
    , cpXgafv
    , cpUploadProtocol
    , cpAccessToken
    , cpUploadType
    , cpPayload
    , cpCustomerId
    , cpCallback
    ) where

import Network.Google.AppsReseller.Types
import Network.Google.Prelude

-- | A resource alias for @reseller.customers.patch@ method which the
-- 'CustomersPatch' request conforms to.
type CustomersPatchResource =
     "apps" :>
       "reseller" :>
         "v1" :>
           "customers" :>
             Capture "customerId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Customer :> Patch '[JSON] Customer

-- | Updates a customer account\'s settings. This method supports patch
-- semantics. You cannot update \`customerType\` via the Reseller API, but
-- a \`\"team\"\` customer can verify their domain and become
-- \`customerType = \"domain\"\`. For more information, see [Verify your
-- domain to unlock Essentials
-- features](https:\/\/support.google.com\/a\/answer\/9122284).
--
-- /See:/ 'customersPatch' smart constructor.
data CustomersPatch =
  CustomersPatch'
    { _cpXgafv :: !(Maybe Xgafv)
    , _cpUploadProtocol :: !(Maybe Text)
    , _cpAccessToken :: !(Maybe Text)
    , _cpUploadType :: !(Maybe Text)
    , _cpPayload :: !Customer
    , _cpCustomerId :: !Text
    , _cpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpXgafv'
--
-- * 'cpUploadProtocol'
--
-- * 'cpAccessToken'
--
-- * 'cpUploadType'
--
-- * 'cpPayload'
--
-- * 'cpCustomerId'
--
-- * 'cpCallback'
customersPatch
    :: Customer -- ^ 'cpPayload'
    -> Text -- ^ 'cpCustomerId'
    -> CustomersPatch
customersPatch pCpPayload_ pCpCustomerId_ =
  CustomersPatch'
    { _cpXgafv = Nothing
    , _cpUploadProtocol = Nothing
    , _cpAccessToken = Nothing
    , _cpUploadType = Nothing
    , _cpPayload = pCpPayload_
    , _cpCustomerId = pCpCustomerId_
    , _cpCallback = Nothing
    }


-- | V1 error format.
cpXgafv :: Lens' CustomersPatch (Maybe Xgafv)
cpXgafv = lens _cpXgafv (\ s a -> s{_cpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cpUploadProtocol :: Lens' CustomersPatch (Maybe Text)
cpUploadProtocol
  = lens _cpUploadProtocol
      (\ s a -> s{_cpUploadProtocol = a})

-- | OAuth access token.
cpAccessToken :: Lens' CustomersPatch (Maybe Text)
cpAccessToken
  = lens _cpAccessToken
      (\ s a -> s{_cpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpUploadType :: Lens' CustomersPatch (Maybe Text)
cpUploadType
  = lens _cpUploadType (\ s a -> s{_cpUploadType = a})

-- | Multipart request metadata.
cpPayload :: Lens' CustomersPatch Customer
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | Either the customer\'s primary domain name or the customer\'s unique
-- identifier. If using the domain name, we do not recommend using a
-- \`customerId\` as a key for persistent data. If the domain name for a
-- \`customerId\` is changed, the Google system automatically updates.
cpCustomerId :: Lens' CustomersPatch Text
cpCustomerId
  = lens _cpCustomerId (\ s a -> s{_cpCustomerId = a})

-- | JSONP
cpCallback :: Lens' CustomersPatch (Maybe Text)
cpCallback
  = lens _cpCallback (\ s a -> s{_cpCallback = a})

instance GoogleRequest CustomersPatch where
        type Rs CustomersPatch = Customer
        type Scopes CustomersPatch =
             '["https://www.googleapis.com/auth/apps.order"]
        requestClient CustomersPatch'{..}
          = go _cpCustomerId _cpXgafv _cpUploadProtocol
              _cpAccessToken
              _cpUploadType
              _cpCallback
              (Just AltJSON)
              _cpPayload
              appsResellerService
          where go
                  = buildClient (Proxy :: Proxy CustomersPatchResource)
                      mempty
