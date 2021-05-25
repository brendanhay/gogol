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
-- Module      : Network.Google.Resource.Logging.Organizations.Exclusions.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes one or more properties of an existing exclusion.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.exclusions.patch@.
module Network.Google.Resource.Logging.Organizations.Exclusions.Patch
    (
    -- * REST Resource
      OrganizationsExclusionsPatchResource

    -- * Creating a Request
    , organizationsExclusionsPatch
    , OrganizationsExclusionsPatch

    -- * Request Lenses
    , oepXgafv
    , oepUploadProtocol
    , oepUpdateMask
    , oepAccessToken
    , oepUploadType
    , oepPayload
    , oepName
    , oepCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.exclusions.patch@ method which the
-- 'OrganizationsExclusionsPatch' request conforms to.
type OrganizationsExclusionsPatchResource =
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
-- /See:/ 'organizationsExclusionsPatch' smart constructor.
data OrganizationsExclusionsPatch =
  OrganizationsExclusionsPatch'
    { _oepXgafv :: !(Maybe Xgafv)
    , _oepUploadProtocol :: !(Maybe Text)
    , _oepUpdateMask :: !(Maybe GFieldMask)
    , _oepAccessToken :: !(Maybe Text)
    , _oepUploadType :: !(Maybe Text)
    , _oepPayload :: !LogExclusion
    , _oepName :: !Text
    , _oepCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsExclusionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oepXgafv'
--
-- * 'oepUploadProtocol'
--
-- * 'oepUpdateMask'
--
-- * 'oepAccessToken'
--
-- * 'oepUploadType'
--
-- * 'oepPayload'
--
-- * 'oepName'
--
-- * 'oepCallback'
organizationsExclusionsPatch
    :: LogExclusion -- ^ 'oepPayload'
    -> Text -- ^ 'oepName'
    -> OrganizationsExclusionsPatch
organizationsExclusionsPatch pOepPayload_ pOepName_ =
  OrganizationsExclusionsPatch'
    { _oepXgafv = Nothing
    , _oepUploadProtocol = Nothing
    , _oepUpdateMask = Nothing
    , _oepAccessToken = Nothing
    , _oepUploadType = Nothing
    , _oepPayload = pOepPayload_
    , _oepName = pOepName_
    , _oepCallback = Nothing
    }


-- | V1 error format.
oepXgafv :: Lens' OrganizationsExclusionsPatch (Maybe Xgafv)
oepXgafv = lens _oepXgafv (\ s a -> s{_oepXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oepUploadProtocol :: Lens' OrganizationsExclusionsPatch (Maybe Text)
oepUploadProtocol
  = lens _oepUploadProtocol
      (\ s a -> s{_oepUploadProtocol = a})

-- | Required. A non-empty list of fields to change in the existing
-- exclusion. New values for the fields are taken from the corresponding
-- fields in the LogExclusion included in this request. Fields not
-- mentioned in update_mask are not changed and are ignored in the
-- request.For example, to change the filter and description of an
-- exclusion, specify an update_mask of \"filter,description\".
oepUpdateMask :: Lens' OrganizationsExclusionsPatch (Maybe GFieldMask)
oepUpdateMask
  = lens _oepUpdateMask
      (\ s a -> s{_oepUpdateMask = a})

-- | OAuth access token.
oepAccessToken :: Lens' OrganizationsExclusionsPatch (Maybe Text)
oepAccessToken
  = lens _oepAccessToken
      (\ s a -> s{_oepAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oepUploadType :: Lens' OrganizationsExclusionsPatch (Maybe Text)
oepUploadType
  = lens _oepUploadType
      (\ s a -> s{_oepUploadType = a})

-- | Multipart request metadata.
oepPayload :: Lens' OrganizationsExclusionsPatch LogExclusion
oepPayload
  = lens _oepPayload (\ s a -> s{_oepPayload = a})

-- | Required. The resource name of the exclusion to update:
-- \"projects\/[PROJECT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"folders\/[FOLDER_ID]\/exclusions\/[EXCLUSION_ID]\" Example:
-- \"projects\/my-project-id\/exclusions\/my-exclusion-id\".
oepName :: Lens' OrganizationsExclusionsPatch Text
oepName = lens _oepName (\ s a -> s{_oepName = a})

-- | JSONP
oepCallback :: Lens' OrganizationsExclusionsPatch (Maybe Text)
oepCallback
  = lens _oepCallback (\ s a -> s{_oepCallback = a})

instance GoogleRequest OrganizationsExclusionsPatch
         where
        type Rs OrganizationsExclusionsPatch = LogExclusion
        type Scopes OrganizationsExclusionsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient OrganizationsExclusionsPatch'{..}
          = go _oepName _oepXgafv _oepUploadProtocol
              _oepUpdateMask
              _oepAccessToken
              _oepUploadType
              _oepCallback
              (Just AltJSON)
              _oepPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsExclusionsPatchResource)
                      mempty
