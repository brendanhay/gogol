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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a job trigger. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.jobTriggers.get@.
module Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.Get
    (
    -- * REST Resource
      OrganizationsLocationsJobTriggersGetResource

    -- * Creating a Request
    , organizationsLocationsJobTriggersGet
    , OrganizationsLocationsJobTriggersGet

    -- * Request Lenses
    , oljtgXgafv
    , oljtgUploadProtocol
    , oljtgAccessToken
    , oljtgUploadType
    , oljtgName
    , oljtgCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.jobTriggers.get@ method which the
-- 'OrganizationsLocationsJobTriggersGet' request conforms to.
type OrganizationsLocationsJobTriggersGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GooglePrivacyDlpV2JobTrigger

-- | Gets a job trigger. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ 'organizationsLocationsJobTriggersGet' smart constructor.
data OrganizationsLocationsJobTriggersGet =
  OrganizationsLocationsJobTriggersGet'
    { _oljtgXgafv :: !(Maybe Xgafv)
    , _oljtgUploadProtocol :: !(Maybe Text)
    , _oljtgAccessToken :: !(Maybe Text)
    , _oljtgUploadType :: !(Maybe Text)
    , _oljtgName :: !Text
    , _oljtgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsJobTriggersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oljtgXgafv'
--
-- * 'oljtgUploadProtocol'
--
-- * 'oljtgAccessToken'
--
-- * 'oljtgUploadType'
--
-- * 'oljtgName'
--
-- * 'oljtgCallback'
organizationsLocationsJobTriggersGet
    :: Text -- ^ 'oljtgName'
    -> OrganizationsLocationsJobTriggersGet
organizationsLocationsJobTriggersGet pOljtgName_ =
  OrganizationsLocationsJobTriggersGet'
    { _oljtgXgafv = Nothing
    , _oljtgUploadProtocol = Nothing
    , _oljtgAccessToken = Nothing
    , _oljtgUploadType = Nothing
    , _oljtgName = pOljtgName_
    , _oljtgCallback = Nothing
    }


-- | V1 error format.
oljtgXgafv :: Lens' OrganizationsLocationsJobTriggersGet (Maybe Xgafv)
oljtgXgafv
  = lens _oljtgXgafv (\ s a -> s{_oljtgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oljtgUploadProtocol :: Lens' OrganizationsLocationsJobTriggersGet (Maybe Text)
oljtgUploadProtocol
  = lens _oljtgUploadProtocol
      (\ s a -> s{_oljtgUploadProtocol = a})

-- | OAuth access token.
oljtgAccessToken :: Lens' OrganizationsLocationsJobTriggersGet (Maybe Text)
oljtgAccessToken
  = lens _oljtgAccessToken
      (\ s a -> s{_oljtgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oljtgUploadType :: Lens' OrganizationsLocationsJobTriggersGet (Maybe Text)
oljtgUploadType
  = lens _oljtgUploadType
      (\ s a -> s{_oljtgUploadType = a})

-- | Required. Resource name of the project and the triggeredJob, for example
-- \`projects\/dlp-test-project\/jobTriggers\/53234423\`.
oljtgName :: Lens' OrganizationsLocationsJobTriggersGet Text
oljtgName
  = lens _oljtgName (\ s a -> s{_oljtgName = a})

-- | JSONP
oljtgCallback :: Lens' OrganizationsLocationsJobTriggersGet (Maybe Text)
oljtgCallback
  = lens _oljtgCallback
      (\ s a -> s{_oljtgCallback = a})

instance GoogleRequest
           OrganizationsLocationsJobTriggersGet
         where
        type Rs OrganizationsLocationsJobTriggersGet =
             GooglePrivacyDlpV2JobTrigger
        type Scopes OrganizationsLocationsJobTriggersGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsJobTriggersGet'{..}
          = go _oljtgName _oljtgXgafv _oljtgUploadProtocol
              _oljtgAccessToken
              _oljtgUploadType
              _oljtgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsLocationsJobTriggersGetResource)
                      mempty
