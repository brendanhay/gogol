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
-- Module      : Network.Google.Resource.Logging.Exclusions.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes one or more properties of an existing exclusion.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.exclusions.patch@.
module Network.Google.Resource.Logging.Exclusions.Patch
    (
    -- * REST Resource
      ExclusionsPatchResource

    -- * Creating a Request
    , exclusionsPatch
    , ExclusionsPatch

    -- * Request Lenses
    , epXgafv
    , epUploadProtocol
    , epUpdateMask
    , epAccessToken
    , epUploadType
    , epPayload
    , epName
    , epCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.exclusions.patch@ method which the
-- 'ExclusionsPatch' request conforms to.
type ExclusionsPatchResource =
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
-- /See:/ 'exclusionsPatch' smart constructor.
data ExclusionsPatch =
  ExclusionsPatch'
    { _epXgafv          :: !(Maybe Xgafv)
    , _epUploadProtocol :: !(Maybe Text)
    , _epUpdateMask     :: !(Maybe GFieldMask)
    , _epAccessToken    :: !(Maybe Text)
    , _epUploadType     :: !(Maybe Text)
    , _epPayload        :: !LogExclusion
    , _epName           :: !Text
    , _epCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExclusionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'epXgafv'
--
-- * 'epUploadProtocol'
--
-- * 'epUpdateMask'
--
-- * 'epAccessToken'
--
-- * 'epUploadType'
--
-- * 'epPayload'
--
-- * 'epName'
--
-- * 'epCallback'
exclusionsPatch
    :: LogExclusion -- ^ 'epPayload'
    -> Text -- ^ 'epName'
    -> ExclusionsPatch
exclusionsPatch pEpPayload_ pEpName_ =
  ExclusionsPatch'
    { _epXgafv = Nothing
    , _epUploadProtocol = Nothing
    , _epUpdateMask = Nothing
    , _epAccessToken = Nothing
    , _epUploadType = Nothing
    , _epPayload = pEpPayload_
    , _epName = pEpName_
    , _epCallback = Nothing
    }


-- | V1 error format.
epXgafv :: Lens' ExclusionsPatch (Maybe Xgafv)
epXgafv = lens _epXgafv (\ s a -> s{_epXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
epUploadProtocol :: Lens' ExclusionsPatch (Maybe Text)
epUploadProtocol
  = lens _epUploadProtocol
      (\ s a -> s{_epUploadProtocol = a})

-- | Required. A nonempty list of fields to change in the existing exclusion.
-- New values for the fields are taken from the corresponding fields in the
-- LogExclusion included in this request. Fields not mentioned in
-- update_mask are not changed and are ignored in the request.For example,
-- to change the filter and description of an exclusion, specify an
-- update_mask of \"filter,description\".
epUpdateMask :: Lens' ExclusionsPatch (Maybe GFieldMask)
epUpdateMask
  = lens _epUpdateMask (\ s a -> s{_epUpdateMask = a})

-- | OAuth access token.
epAccessToken :: Lens' ExclusionsPatch (Maybe Text)
epAccessToken
  = lens _epAccessToken
      (\ s a -> s{_epAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
epUploadType :: Lens' ExclusionsPatch (Maybe Text)
epUploadType
  = lens _epUploadType (\ s a -> s{_epUploadType = a})

-- | Multipart request metadata.
epPayload :: Lens' ExclusionsPatch LogExclusion
epPayload
  = lens _epPayload (\ s a -> s{_epPayload = a})

-- | Required. The resource name of the exclusion to update:
-- \"projects\/[PROJECT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"folders\/[FOLDER_ID]\/exclusions\/[EXCLUSION_ID]\" Example:
-- \"projects\/my-project-id\/exclusions\/my-exclusion-id\".
epName :: Lens' ExclusionsPatch Text
epName = lens _epName (\ s a -> s{_epName = a})

-- | JSONP
epCallback :: Lens' ExclusionsPatch (Maybe Text)
epCallback
  = lens _epCallback (\ s a -> s{_epCallback = a})

instance GoogleRequest ExclusionsPatch where
        type Rs ExclusionsPatch = LogExclusion
        type Scopes ExclusionsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient ExclusionsPatch'{..}
          = go _epName _epXgafv _epUploadProtocol _epUpdateMask
              _epAccessToken
              _epUploadType
              _epCallback
              (Just AltJSON)
              _epPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ExclusionsPatchResource)
                      mempty
