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
-- Module      : Network.Google.Resource.CloudBilling.BillingAccounts.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a billing account. The current authenticated user
-- must be an [owner of the billing
-- account](https:\/\/support.google.com\/cloud\/answer\/4430947).
--
-- /See:/ <https://cloud.google.com/billing/ Google Cloud Billing API Reference> for @cloudbilling.billingAccounts.get@.
module Network.Google.Resource.CloudBilling.BillingAccounts.Get
    (
    -- * REST Resource
      BillingAccountsGetResource

    -- * Creating a Request
    , billingAccountsGet
    , BillingAccountsGet

    -- * Request Lenses
    , bagXgafv
    , bagUploadProtocol
    , bagPp
    , bagAccessToken
    , bagUploadType
    , bagBearerToken
    , bagName
    , bagCallback
    ) where

import           Network.Google.Billing.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbilling.billingAccounts.get@ method which the
-- 'BillingAccountsGet' request conforms to.
type BillingAccountsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] BillingAccount

-- | Gets information about a billing account. The current authenticated user
-- must be an [owner of the billing
-- account](https:\/\/support.google.com\/cloud\/answer\/4430947).
--
-- /See:/ 'billingAccountsGet' smart constructor.
data BillingAccountsGet = BillingAccountsGet
    { _bagXgafv          :: !(Maybe Text)
    , _bagUploadProtocol :: !(Maybe Text)
    , _bagPp             :: !Bool
    , _bagAccessToken    :: !(Maybe Text)
    , _bagUploadType     :: !(Maybe Text)
    , _bagBearerToken    :: !(Maybe Text)
    , _bagName           :: !Text
    , _bagCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingAccountsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bagXgafv'
--
-- * 'bagUploadProtocol'
--
-- * 'bagPp'
--
-- * 'bagAccessToken'
--
-- * 'bagUploadType'
--
-- * 'bagBearerToken'
--
-- * 'bagName'
--
-- * 'bagCallback'
billingAccountsGet
    :: Text -- ^ 'bagName'
    -> BillingAccountsGet
billingAccountsGet pBagName_ =
    BillingAccountsGet
    { _bagXgafv = Nothing
    , _bagUploadProtocol = Nothing
    , _bagPp = True
    , _bagAccessToken = Nothing
    , _bagUploadType = Nothing
    , _bagBearerToken = Nothing
    , _bagName = pBagName_
    , _bagCallback = Nothing
    }

-- | V1 error format.
bagXgafv :: Lens' BillingAccountsGet (Maybe Text)
bagXgafv = lens _bagXgafv (\ s a -> s{_bagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bagUploadProtocol :: Lens' BillingAccountsGet (Maybe Text)
bagUploadProtocol
  = lens _bagUploadProtocol
      (\ s a -> s{_bagUploadProtocol = a})

-- | Pretty-print response.
bagPp :: Lens' BillingAccountsGet Bool
bagPp = lens _bagPp (\ s a -> s{_bagPp = a})

-- | OAuth access token.
bagAccessToken :: Lens' BillingAccountsGet (Maybe Text)
bagAccessToken
  = lens _bagAccessToken
      (\ s a -> s{_bagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bagUploadType :: Lens' BillingAccountsGet (Maybe Text)
bagUploadType
  = lens _bagUploadType
      (\ s a -> s{_bagUploadType = a})

-- | OAuth bearer token.
bagBearerToken :: Lens' BillingAccountsGet (Maybe Text)
bagBearerToken
  = lens _bagBearerToken
      (\ s a -> s{_bagBearerToken = a})

-- | The resource name of the billing account to retrieve. For example,
-- \`billingAccounts\/012345-567890-ABCDEF\`.
bagName :: Lens' BillingAccountsGet Text
bagName = lens _bagName (\ s a -> s{_bagName = a})

-- | JSONP
bagCallback :: Lens' BillingAccountsGet (Maybe Text)
bagCallback
  = lens _bagCallback (\ s a -> s{_bagCallback = a})

instance GoogleRequest BillingAccountsGet where
        type Rs BillingAccountsGet = BillingAccount
        requestClient BillingAccountsGet{..}
          = go _bagName _bagXgafv _bagUploadProtocol
              (Just _bagPp)
              _bagAccessToken
              _bagUploadType
              _bagBearerToken
              _bagCallback
              (Just AltJSON)
              billingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsGetResource)
                      mempty
