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
-- Module      : Network.Google.Resource.Directory.Customers.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.customers.patch@.
module Network.Google.Resource.Directory.Customers.Patch
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
    , cpCustomerKey
    , cpUploadType
    , cpPayload
    , cpCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.customers.patch@ method which the
-- 'CustomersPatch' request conforms to.
type CustomersPatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customers" :>
             Capture "customerKey" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Customer :> Patch '[JSON] Customer

-- | Patches a customer.
--
-- /See:/ 'customersPatch' smart constructor.
data CustomersPatch =
  CustomersPatch'
    { _cpXgafv :: !(Maybe Xgafv)
    , _cpUploadProtocol :: !(Maybe Text)
    , _cpAccessToken :: !(Maybe Text)
    , _cpCustomerKey :: !Text
    , _cpUploadType :: !(Maybe Text)
    , _cpPayload :: !Customer
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
-- * 'cpCustomerKey'
--
-- * 'cpUploadType'
--
-- * 'cpPayload'
--
-- * 'cpCallback'
customersPatch
    :: Text -- ^ 'cpCustomerKey'
    -> Customer -- ^ 'cpPayload'
    -> CustomersPatch
customersPatch pCpCustomerKey_ pCpPayload_ =
  CustomersPatch'
    { _cpXgafv = Nothing
    , _cpUploadProtocol = Nothing
    , _cpAccessToken = Nothing
    , _cpCustomerKey = pCpCustomerKey_
    , _cpUploadType = Nothing
    , _cpPayload = pCpPayload_
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

-- | Id of the customer to be updated
cpCustomerKey :: Lens' CustomersPatch Text
cpCustomerKey
  = lens _cpCustomerKey
      (\ s a -> s{_cpCustomerKey = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cpUploadType :: Lens' CustomersPatch (Maybe Text)
cpUploadType
  = lens _cpUploadType (\ s a -> s{_cpUploadType = a})

-- | Multipart request metadata.
cpPayload :: Lens' CustomersPatch Customer
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | JSONP
cpCallback :: Lens' CustomersPatch (Maybe Text)
cpCallback
  = lens _cpCallback (\ s a -> s{_cpCallback = a})

instance GoogleRequest CustomersPatch where
        type Rs CustomersPatch = Customer
        type Scopes CustomersPatch =
             '["https://www.googleapis.com/auth/admin.directory.customer"]
        requestClient CustomersPatch'{..}
          = go _cpCustomerKey _cpXgafv _cpUploadProtocol
              _cpAccessToken
              _cpUploadType
              _cpCallback
              (Just AltJSON)
              _cpPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy CustomersPatchResource)
                      mempty
