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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a job trigger to run DLP actions such as scanning storage for
-- sensitive information on a set schedule. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.jobTriggers.create@.
module Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.Create
    (
    -- * REST Resource
      OrganizationsLocationsJobTriggersCreateResource

    -- * Creating a Request
    , organizationsLocationsJobTriggersCreate
    , OrganizationsLocationsJobTriggersCreate

    -- * Request Lenses
    , oljtcParent
    , oljtcXgafv
    , oljtcUploadProtocol
    , oljtcAccessToken
    , oljtcUploadType
    , oljtcPayload
    , oljtcCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.jobTriggers.create@ method which the
-- 'OrganizationsLocationsJobTriggersCreate' request conforms to.
type OrganizationsLocationsJobTriggersCreateResource
     =
     "v2" :>
       Capture "parent" Text :>
         "jobTriggers" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2CreateJobTriggerRequest
                         :> Post '[JSON] GooglePrivacyDlpV2JobTrigger

-- | Creates a job trigger to run DLP actions such as scanning storage for
-- sensitive information on a set schedule. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ 'organizationsLocationsJobTriggersCreate' smart constructor.
data OrganizationsLocationsJobTriggersCreate =
  OrganizationsLocationsJobTriggersCreate'
    { _oljtcParent :: !Text
    , _oljtcXgafv :: !(Maybe Xgafv)
    , _oljtcUploadProtocol :: !(Maybe Text)
    , _oljtcAccessToken :: !(Maybe Text)
    , _oljtcUploadType :: !(Maybe Text)
    , _oljtcPayload :: !GooglePrivacyDlpV2CreateJobTriggerRequest
    , _oljtcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsJobTriggersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oljtcParent'
--
-- * 'oljtcXgafv'
--
-- * 'oljtcUploadProtocol'
--
-- * 'oljtcAccessToken'
--
-- * 'oljtcUploadType'
--
-- * 'oljtcPayload'
--
-- * 'oljtcCallback'
organizationsLocationsJobTriggersCreate
    :: Text -- ^ 'oljtcParent'
    -> GooglePrivacyDlpV2CreateJobTriggerRequest -- ^ 'oljtcPayload'
    -> OrganizationsLocationsJobTriggersCreate
organizationsLocationsJobTriggersCreate pOljtcParent_ pOljtcPayload_ =
  OrganizationsLocationsJobTriggersCreate'
    { _oljtcParent = pOljtcParent_
    , _oljtcXgafv = Nothing
    , _oljtcUploadProtocol = Nothing
    , _oljtcAccessToken = Nothing
    , _oljtcUploadType = Nothing
    , _oljtcPayload = pOljtcPayload_
    , _oljtcCallback = Nothing
    }


-- | Required. Parent resource name. The format of this value varies
-- depending on whether you have [specified a processing
-- location](https:\/\/cloud.google.com\/dlp\/docs\/specifying-location): +
-- Projects scope, location specified:
-- \`projects\/\`PROJECT_ID\`\/locations\/\`LOCATION_ID + Projects scope,
-- no location specified (defaults to global): \`projects\/\`PROJECT_ID The
-- following example \`parent\` string specifies a parent project with the
-- identifier \`example-project\`, and specifies the \`europe-west3\`
-- location for processing data:
-- parent=projects\/example-project\/locations\/europe-west3
oljtcParent :: Lens' OrganizationsLocationsJobTriggersCreate Text
oljtcParent
  = lens _oljtcParent (\ s a -> s{_oljtcParent = a})

-- | V1 error format.
oljtcXgafv :: Lens' OrganizationsLocationsJobTriggersCreate (Maybe Xgafv)
oljtcXgafv
  = lens _oljtcXgafv (\ s a -> s{_oljtcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oljtcUploadProtocol :: Lens' OrganizationsLocationsJobTriggersCreate (Maybe Text)
oljtcUploadProtocol
  = lens _oljtcUploadProtocol
      (\ s a -> s{_oljtcUploadProtocol = a})

-- | OAuth access token.
oljtcAccessToken :: Lens' OrganizationsLocationsJobTriggersCreate (Maybe Text)
oljtcAccessToken
  = lens _oljtcAccessToken
      (\ s a -> s{_oljtcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oljtcUploadType :: Lens' OrganizationsLocationsJobTriggersCreate (Maybe Text)
oljtcUploadType
  = lens _oljtcUploadType
      (\ s a -> s{_oljtcUploadType = a})

-- | Multipart request metadata.
oljtcPayload :: Lens' OrganizationsLocationsJobTriggersCreate GooglePrivacyDlpV2CreateJobTriggerRequest
oljtcPayload
  = lens _oljtcPayload (\ s a -> s{_oljtcPayload = a})

-- | JSONP
oljtcCallback :: Lens' OrganizationsLocationsJobTriggersCreate (Maybe Text)
oljtcCallback
  = lens _oljtcCallback
      (\ s a -> s{_oljtcCallback = a})

instance GoogleRequest
           OrganizationsLocationsJobTriggersCreate
         where
        type Rs OrganizationsLocationsJobTriggersCreate =
             GooglePrivacyDlpV2JobTrigger
        type Scopes OrganizationsLocationsJobTriggersCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsJobTriggersCreate'{..}
          = go _oljtcParent _oljtcXgafv _oljtcUploadProtocol
              _oljtcAccessToken
              _oljtcUploadType
              _oljtcCallback
              (Just AltJSON)
              _oljtcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsJobTriggersCreateResource)
                      mempty
