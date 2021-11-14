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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a job trigger. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.jobTriggers.patch@.
module Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.Patch
    (
    -- * REST Resource
      OrganizationsLocationsJobTriggersPatchResource

    -- * Creating a Request
    , organizationsLocationsJobTriggersPatch
    , OrganizationsLocationsJobTriggersPatch

    -- * Request Lenses
    , oljtpXgafv
    , oljtpUploadProtocol
    , oljtpAccessToken
    , oljtpUploadType
    , oljtpPayload
    , oljtpName
    , oljtpCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.jobTriggers.patch@ method which the
-- 'OrganizationsLocationsJobTriggersPatch' request conforms to.
type OrganizationsLocationsJobTriggersPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GooglePrivacyDlpV2UpdateJobTriggerRequest
                       :> Patch '[JSON] GooglePrivacyDlpV2JobTrigger

-- | Updates a job trigger. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ 'organizationsLocationsJobTriggersPatch' smart constructor.
data OrganizationsLocationsJobTriggersPatch =
  OrganizationsLocationsJobTriggersPatch'
    { _oljtpXgafv :: !(Maybe Xgafv)
    , _oljtpUploadProtocol :: !(Maybe Text)
    , _oljtpAccessToken :: !(Maybe Text)
    , _oljtpUploadType :: !(Maybe Text)
    , _oljtpPayload :: !GooglePrivacyDlpV2UpdateJobTriggerRequest
    , _oljtpName :: !Text
    , _oljtpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsJobTriggersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oljtpXgafv'
--
-- * 'oljtpUploadProtocol'
--
-- * 'oljtpAccessToken'
--
-- * 'oljtpUploadType'
--
-- * 'oljtpPayload'
--
-- * 'oljtpName'
--
-- * 'oljtpCallback'
organizationsLocationsJobTriggersPatch
    :: GooglePrivacyDlpV2UpdateJobTriggerRequest -- ^ 'oljtpPayload'
    -> Text -- ^ 'oljtpName'
    -> OrganizationsLocationsJobTriggersPatch
organizationsLocationsJobTriggersPatch pOljtpPayload_ pOljtpName_ =
  OrganizationsLocationsJobTriggersPatch'
    { _oljtpXgafv = Nothing
    , _oljtpUploadProtocol = Nothing
    , _oljtpAccessToken = Nothing
    , _oljtpUploadType = Nothing
    , _oljtpPayload = pOljtpPayload_
    , _oljtpName = pOljtpName_
    , _oljtpCallback = Nothing
    }


-- | V1 error format.
oljtpXgafv :: Lens' OrganizationsLocationsJobTriggersPatch (Maybe Xgafv)
oljtpXgafv
  = lens _oljtpXgafv (\ s a -> s{_oljtpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oljtpUploadProtocol :: Lens' OrganizationsLocationsJobTriggersPatch (Maybe Text)
oljtpUploadProtocol
  = lens _oljtpUploadProtocol
      (\ s a -> s{_oljtpUploadProtocol = a})

-- | OAuth access token.
oljtpAccessToken :: Lens' OrganizationsLocationsJobTriggersPatch (Maybe Text)
oljtpAccessToken
  = lens _oljtpAccessToken
      (\ s a -> s{_oljtpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oljtpUploadType :: Lens' OrganizationsLocationsJobTriggersPatch (Maybe Text)
oljtpUploadType
  = lens _oljtpUploadType
      (\ s a -> s{_oljtpUploadType = a})

-- | Multipart request metadata.
oljtpPayload :: Lens' OrganizationsLocationsJobTriggersPatch GooglePrivacyDlpV2UpdateJobTriggerRequest
oljtpPayload
  = lens _oljtpPayload (\ s a -> s{_oljtpPayload = a})

-- | Required. Resource name of the project and the triggeredJob, for example
-- \`projects\/dlp-test-project\/jobTriggers\/53234423\`.
oljtpName :: Lens' OrganizationsLocationsJobTriggersPatch Text
oljtpName
  = lens _oljtpName (\ s a -> s{_oljtpName = a})

-- | JSONP
oljtpCallback :: Lens' OrganizationsLocationsJobTriggersPatch (Maybe Text)
oljtpCallback
  = lens _oljtpCallback
      (\ s a -> s{_oljtpCallback = a})

instance GoogleRequest
           OrganizationsLocationsJobTriggersPatch
         where
        type Rs OrganizationsLocationsJobTriggersPatch =
             GooglePrivacyDlpV2JobTrigger
        type Scopes OrganizationsLocationsJobTriggersPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsJobTriggersPatch'{..}
          = go _oljtpName _oljtpXgafv _oljtpUploadProtocol
              _oljtpAccessToken
              _oljtpUploadType
              _oljtpCallback
              (Just AltJSON)
              _oljtpPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsLocationsJobTriggersPatchResource)
                      mempty
