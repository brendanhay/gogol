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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Exclusions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the description of an exclusion.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.billingAccounts.exclusions.get@.
module Network.Google.Resource.Logging.BillingAccounts.Exclusions.Get
    (
    -- * REST Resource
      BillingAccountsExclusionsGetResource

    -- * Creating a Request
    , billingAccountsExclusionsGet
    , BillingAccountsExclusionsGet

    -- * Request Lenses
    , baegXgafv
    , baegUploadProtocol
    , baegAccessToken
    , baegUploadType
    , baegName
    , baegCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.exclusions.get@ method which the
-- 'BillingAccountsExclusionsGet' request conforms to.
type BillingAccountsExclusionsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] LogExclusion

-- | Gets the description of an exclusion.
--
-- /See:/ 'billingAccountsExclusionsGet' smart constructor.
data BillingAccountsExclusionsGet = BillingAccountsExclusionsGet'
    { _baegXgafv          :: !(Maybe Xgafv)
    , _baegUploadProtocol :: !(Maybe Text)
    , _baegAccessToken    :: !(Maybe Text)
    , _baegUploadType     :: !(Maybe Text)
    , _baegName           :: !Text
    , _baegCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingAccountsExclusionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baegXgafv'
--
-- * 'baegUploadProtocol'
--
-- * 'baegAccessToken'
--
-- * 'baegUploadType'
--
-- * 'baegName'
--
-- * 'baegCallback'
billingAccountsExclusionsGet
    :: Text -- ^ 'baegName'
    -> BillingAccountsExclusionsGet
billingAccountsExclusionsGet pBaegName_ =
    BillingAccountsExclusionsGet'
    { _baegXgafv = Nothing
    , _baegUploadProtocol = Nothing
    , _baegAccessToken = Nothing
    , _baegUploadType = Nothing
    , _baegName = pBaegName_
    , _baegCallback = Nothing
    }

-- | V1 error format.
baegXgafv :: Lens' BillingAccountsExclusionsGet (Maybe Xgafv)
baegXgafv
  = lens _baegXgafv (\ s a -> s{_baegXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
baegUploadProtocol :: Lens' BillingAccountsExclusionsGet (Maybe Text)
baegUploadProtocol
  = lens _baegUploadProtocol
      (\ s a -> s{_baegUploadProtocol = a})

-- | OAuth access token.
baegAccessToken :: Lens' BillingAccountsExclusionsGet (Maybe Text)
baegAccessToken
  = lens _baegAccessToken
      (\ s a -> s{_baegAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
baegUploadType :: Lens' BillingAccountsExclusionsGet (Maybe Text)
baegUploadType
  = lens _baegUploadType
      (\ s a -> s{_baegUploadType = a})

-- | Required. The resource name of an existing exclusion:
-- \"projects\/[PROJECT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"folders\/[FOLDER_ID]\/exclusions\/[EXCLUSION_ID]\" Example:
-- \"projects\/my-project-id\/exclusions\/my-exclusion-id\".
baegName :: Lens' BillingAccountsExclusionsGet Text
baegName = lens _baegName (\ s a -> s{_baegName = a})

-- | JSONP
baegCallback :: Lens' BillingAccountsExclusionsGet (Maybe Text)
baegCallback
  = lens _baegCallback (\ s a -> s{_baegCallback = a})

instance GoogleRequest BillingAccountsExclusionsGet
         where
        type Rs BillingAccountsExclusionsGet = LogExclusion
        type Scopes BillingAccountsExclusionsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient BillingAccountsExclusionsGet'{..}
          = go _baegName _baegXgafv _baegUploadProtocol
              _baegAccessToken
              _baegUploadType
              _baegCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsExclusionsGetResource)
                      mempty
