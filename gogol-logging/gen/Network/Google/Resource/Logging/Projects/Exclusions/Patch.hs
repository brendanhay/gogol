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
-- Module      : Network.Google.Resource.Logging.Projects.Exclusions.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes one or more properties of an existing exclusion.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.projects.exclusions.patch@.
module Network.Google.Resource.Logging.Projects.Exclusions.Patch
    (
    -- * REST Resource
      ProjectsExclusionsPatchResource

    -- * Creating a Request
    , projectsExclusionsPatch
    , ProjectsExclusionsPatch

    -- * Request Lenses
    , pepXgafv
    , pepUploadProtocol
    , pepUpdateMask
    , pepAccessToken
    , pepUploadType
    , pepPayload
    , pepName
    , pepCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.projects.exclusions.patch@ method which the
-- 'ProjectsExclusionsPatch' request conforms to.
type ProjectsExclusionsPatchResource =
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
-- /See:/ 'projectsExclusionsPatch' smart constructor.
data ProjectsExclusionsPatch =
  ProjectsExclusionsPatch'
    { _pepXgafv          :: !(Maybe Xgafv)
    , _pepUploadProtocol :: !(Maybe Text)
    , _pepUpdateMask     :: !(Maybe GFieldMask)
    , _pepAccessToken    :: !(Maybe Text)
    , _pepUploadType     :: !(Maybe Text)
    , _pepPayload        :: !LogExclusion
    , _pepName           :: !Text
    , _pepCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsExclusionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pepXgafv'
--
-- * 'pepUploadProtocol'
--
-- * 'pepUpdateMask'
--
-- * 'pepAccessToken'
--
-- * 'pepUploadType'
--
-- * 'pepPayload'
--
-- * 'pepName'
--
-- * 'pepCallback'
projectsExclusionsPatch
    :: LogExclusion -- ^ 'pepPayload'
    -> Text -- ^ 'pepName'
    -> ProjectsExclusionsPatch
projectsExclusionsPatch pPepPayload_ pPepName_ =
  ProjectsExclusionsPatch'
    { _pepXgafv = Nothing
    , _pepUploadProtocol = Nothing
    , _pepUpdateMask = Nothing
    , _pepAccessToken = Nothing
    , _pepUploadType = Nothing
    , _pepPayload = pPepPayload_
    , _pepName = pPepName_
    , _pepCallback = Nothing
    }


-- | V1 error format.
pepXgafv :: Lens' ProjectsExclusionsPatch (Maybe Xgafv)
pepXgafv = lens _pepXgafv (\ s a -> s{_pepXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pepUploadProtocol :: Lens' ProjectsExclusionsPatch (Maybe Text)
pepUploadProtocol
  = lens _pepUploadProtocol
      (\ s a -> s{_pepUploadProtocol = a})

-- | Required. A nonempty list of fields to change in the existing exclusion.
-- New values for the fields are taken from the corresponding fields in the
-- LogExclusion included in this request. Fields not mentioned in
-- update_mask are not changed and are ignored in the request.For example,
-- to change the filter and description of an exclusion, specify an
-- update_mask of \"filter,description\".
pepUpdateMask :: Lens' ProjectsExclusionsPatch (Maybe GFieldMask)
pepUpdateMask
  = lens _pepUpdateMask
      (\ s a -> s{_pepUpdateMask = a})

-- | OAuth access token.
pepAccessToken :: Lens' ProjectsExclusionsPatch (Maybe Text)
pepAccessToken
  = lens _pepAccessToken
      (\ s a -> s{_pepAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pepUploadType :: Lens' ProjectsExclusionsPatch (Maybe Text)
pepUploadType
  = lens _pepUploadType
      (\ s a -> s{_pepUploadType = a})

-- | Multipart request metadata.
pepPayload :: Lens' ProjectsExclusionsPatch LogExclusion
pepPayload
  = lens _pepPayload (\ s a -> s{_pepPayload = a})

-- | Required. The resource name of the exclusion to update:
-- \"projects\/[PROJECT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"folders\/[FOLDER_ID]\/exclusions\/[EXCLUSION_ID]\" Example:
-- \"projects\/my-project-id\/exclusions\/my-exclusion-id\".
pepName :: Lens' ProjectsExclusionsPatch Text
pepName = lens _pepName (\ s a -> s{_pepName = a})

-- | JSONP
pepCallback :: Lens' ProjectsExclusionsPatch (Maybe Text)
pepCallback
  = lens _pepCallback (\ s a -> s{_pepCallback = a})

instance GoogleRequest ProjectsExclusionsPatch where
        type Rs ProjectsExclusionsPatch = LogExclusion
        type Scopes ProjectsExclusionsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient ProjectsExclusionsPatch'{..}
          = go _pepName _pepXgafv _pepUploadProtocol
              _pepUpdateMask
              _pepAccessToken
              _pepUploadType
              _pepCallback
              (Just AltJSON)
              _pepPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsExclusionsPatchResource)
                      mempty
