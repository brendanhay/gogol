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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a job trigger. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.jobTriggers.delete@.
module Network.Google.Resource.DLP.Organizations.Locations.JobTriggers.Delete
    (
    -- * REST Resource
      OrganizationsLocationsJobTriggersDeleteResource

    -- * Creating a Request
    , organizationsLocationsJobTriggersDelete
    , OrganizationsLocationsJobTriggersDelete

    -- * Request Lenses
    , oljtdXgafv
    , oljtdUploadProtocol
    , oljtdAccessToken
    , oljtdUploadType
    , oljtdName
    , oljtdCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.jobTriggers.delete@ method which the
-- 'OrganizationsLocationsJobTriggersDelete' request conforms to.
type OrganizationsLocationsJobTriggersDeleteResource
     =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes a job trigger. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn
-- more.
--
-- /See:/ 'organizationsLocationsJobTriggersDelete' smart constructor.
data OrganizationsLocationsJobTriggersDelete =
  OrganizationsLocationsJobTriggersDelete'
    { _oljtdXgafv :: !(Maybe Xgafv)
    , _oljtdUploadProtocol :: !(Maybe Text)
    , _oljtdAccessToken :: !(Maybe Text)
    , _oljtdUploadType :: !(Maybe Text)
    , _oljtdName :: !Text
    , _oljtdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsJobTriggersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oljtdXgafv'
--
-- * 'oljtdUploadProtocol'
--
-- * 'oljtdAccessToken'
--
-- * 'oljtdUploadType'
--
-- * 'oljtdName'
--
-- * 'oljtdCallback'
organizationsLocationsJobTriggersDelete
    :: Text -- ^ 'oljtdName'
    -> OrganizationsLocationsJobTriggersDelete
organizationsLocationsJobTriggersDelete pOljtdName_ =
  OrganizationsLocationsJobTriggersDelete'
    { _oljtdXgafv = Nothing
    , _oljtdUploadProtocol = Nothing
    , _oljtdAccessToken = Nothing
    , _oljtdUploadType = Nothing
    , _oljtdName = pOljtdName_
    , _oljtdCallback = Nothing
    }


-- | V1 error format.
oljtdXgafv :: Lens' OrganizationsLocationsJobTriggersDelete (Maybe Xgafv)
oljtdXgafv
  = lens _oljtdXgafv (\ s a -> s{_oljtdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oljtdUploadProtocol :: Lens' OrganizationsLocationsJobTriggersDelete (Maybe Text)
oljtdUploadProtocol
  = lens _oljtdUploadProtocol
      (\ s a -> s{_oljtdUploadProtocol = a})

-- | OAuth access token.
oljtdAccessToken :: Lens' OrganizationsLocationsJobTriggersDelete (Maybe Text)
oljtdAccessToken
  = lens _oljtdAccessToken
      (\ s a -> s{_oljtdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oljtdUploadType :: Lens' OrganizationsLocationsJobTriggersDelete (Maybe Text)
oljtdUploadType
  = lens _oljtdUploadType
      (\ s a -> s{_oljtdUploadType = a})

-- | Required. Resource name of the project and the triggeredJob, for example
-- \`projects\/dlp-test-project\/jobTriggers\/53234423\`.
oljtdName :: Lens' OrganizationsLocationsJobTriggersDelete Text
oljtdName
  = lens _oljtdName (\ s a -> s{_oljtdName = a})

-- | JSONP
oljtdCallback :: Lens' OrganizationsLocationsJobTriggersDelete (Maybe Text)
oljtdCallback
  = lens _oljtdCallback
      (\ s a -> s{_oljtdCallback = a})

instance GoogleRequest
           OrganizationsLocationsJobTriggersDelete
         where
        type Rs OrganizationsLocationsJobTriggersDelete =
             GoogleProtobufEmpty
        type Scopes OrganizationsLocationsJobTriggersDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsJobTriggersDelete'{..}
          = go _oljtdName _oljtdXgafv _oljtdUploadProtocol
              _oljtdAccessToken
              _oljtdUploadType
              _oljtdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsJobTriggersDeleteResource)
                      mempty
