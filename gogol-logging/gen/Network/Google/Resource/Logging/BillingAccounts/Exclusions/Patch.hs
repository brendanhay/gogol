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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Exclusions.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes one or more properties of an existing exclusion.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.billingAccounts.exclusions.patch@.
module Network.Google.Resource.Logging.BillingAccounts.Exclusions.Patch
    (
    -- * REST Resource
      BillingAccountsExclusionsPatchResource

    -- * Creating a Request
    , billingAccountsExclusionsPatch
    , BillingAccountsExclusionsPatch

    -- * Request Lenses
    , baepXgafv
    , baepUploadProtocol
    , baepUpdateMask
    , baepAccessToken
    , baepUploadType
    , baepPayload
    , baepName
    , baepCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.exclusions.patch@ method which the
-- 'BillingAccountsExclusionsPatch' request conforms to.
type BillingAccountsExclusionsPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] LogExclusion :>
                         Patch '[JSON] LogExclusion

-- | Changes one or more properties of an existing exclusion.
--
-- /See:/ 'billingAccountsExclusionsPatch' smart constructor.
data BillingAccountsExclusionsPatch =
  BillingAccountsExclusionsPatch'
    { _baepXgafv          :: !(Maybe Xgafv)
    , _baepUploadProtocol :: !(Maybe Text)
    , _baepUpdateMask     :: !(Maybe GFieldMask)
    , _baepAccessToken    :: !(Maybe Text)
    , _baepUploadType     :: !(Maybe Text)
    , _baepPayload        :: !LogExclusion
    , _baepName           :: !Text
    , _baepCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsExclusionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baepXgafv'
--
-- * 'baepUploadProtocol'
--
-- * 'baepUpdateMask'
--
-- * 'baepAccessToken'
--
-- * 'baepUploadType'
--
-- * 'baepPayload'
--
-- * 'baepName'
--
-- * 'baepCallback'
billingAccountsExclusionsPatch
    :: LogExclusion -- ^ 'baepPayload'
    -> Text -- ^ 'baepName'
    -> BillingAccountsExclusionsPatch
billingAccountsExclusionsPatch pBaepPayload_ pBaepName_ =
  BillingAccountsExclusionsPatch'
    { _baepXgafv = Nothing
    , _baepUploadProtocol = Nothing
    , _baepUpdateMask = Nothing
    , _baepAccessToken = Nothing
    , _baepUploadType = Nothing
    , _baepPayload = pBaepPayload_
    , _baepName = pBaepName_
    , _baepCallback = Nothing
    }


-- | V1 error format.
baepXgafv :: Lens' BillingAccountsExclusionsPatch (Maybe Xgafv)
baepXgafv
  = lens _baepXgafv (\ s a -> s{_baepXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
baepUploadProtocol :: Lens' BillingAccountsExclusionsPatch (Maybe Text)
baepUploadProtocol
  = lens _baepUploadProtocol
      (\ s a -> s{_baepUploadProtocol = a})

-- | Required. A nonempty list of fields to change in the existing exclusion.
-- New values for the fields are taken from the corresponding fields in the
-- LogExclusion included in this request. Fields not mentioned in
-- update_mask are not changed and are ignored in the request.For example,
-- to change the filter and description of an exclusion, specify an
-- update_mask of \"filter,description\".
baepUpdateMask :: Lens' BillingAccountsExclusionsPatch (Maybe GFieldMask)
baepUpdateMask
  = lens _baepUpdateMask
      (\ s a -> s{_baepUpdateMask = a})

-- | OAuth access token.
baepAccessToken :: Lens' BillingAccountsExclusionsPatch (Maybe Text)
baepAccessToken
  = lens _baepAccessToken
      (\ s a -> s{_baepAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
baepUploadType :: Lens' BillingAccountsExclusionsPatch (Maybe Text)
baepUploadType
  = lens _baepUploadType
      (\ s a -> s{_baepUploadType = a})

-- | Multipart request metadata.
baepPayload :: Lens' BillingAccountsExclusionsPatch LogExclusion
baepPayload
  = lens _baepPayload (\ s a -> s{_baepPayload = a})

-- | Required. The resource name of the exclusion to update:
-- \"projects\/[PROJECT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"folders\/[FOLDER_ID]\/exclusions\/[EXCLUSION_ID]\" Example:
-- \"projects\/my-project-id\/exclusions\/my-exclusion-id\".
baepName :: Lens' BillingAccountsExclusionsPatch Text
baepName = lens _baepName (\ s a -> s{_baepName = a})

-- | JSONP
baepCallback :: Lens' BillingAccountsExclusionsPatch (Maybe Text)
baepCallback
  = lens _baepCallback (\ s a -> s{_baepCallback = a})

instance GoogleRequest BillingAccountsExclusionsPatch
         where
        type Rs BillingAccountsExclusionsPatch = LogExclusion
        type Scopes BillingAccountsExclusionsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient BillingAccountsExclusionsPatch'{..}
          = go _baepName _baepXgafv _baepUploadProtocol
              _baepUpdateMask
              _baepAccessToken
              _baepUploadType
              _baepCallback
              (Just AltJSON)
              _baepPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BillingAccountsExclusionsPatchResource)
                      mempty
