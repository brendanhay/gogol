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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.deidentifyTemplates.delete@.
module Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.Delete
    (
    -- * REST Resource
      OrganizationsLocationsDeidentifyTemplatesDeleteResource

    -- * Creating a Request
    , organizationsLocationsDeidentifyTemplatesDelete
    , OrganizationsLocationsDeidentifyTemplatesDelete

    -- * Request Lenses
    , oldtdXgafv
    , oldtdUploadProtocol
    , oldtdAccessToken
    , oldtdUploadType
    , oldtdName
    , oldtdCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.deidentifyTemplates.delete@ method which the
-- 'OrganizationsLocationsDeidentifyTemplatesDelete' request conforms to.
type OrganizationsLocationsDeidentifyTemplatesDeleteResource
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

-- | Deletes a DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ 'organizationsLocationsDeidentifyTemplatesDelete' smart constructor.
data OrganizationsLocationsDeidentifyTemplatesDelete =
  OrganizationsLocationsDeidentifyTemplatesDelete'
    { _oldtdXgafv :: !(Maybe Xgafv)
    , _oldtdUploadProtocol :: !(Maybe Text)
    , _oldtdAccessToken :: !(Maybe Text)
    , _oldtdUploadType :: !(Maybe Text)
    , _oldtdName :: !Text
    , _oldtdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsDeidentifyTemplatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oldtdXgafv'
--
-- * 'oldtdUploadProtocol'
--
-- * 'oldtdAccessToken'
--
-- * 'oldtdUploadType'
--
-- * 'oldtdName'
--
-- * 'oldtdCallback'
organizationsLocationsDeidentifyTemplatesDelete
    :: Text -- ^ 'oldtdName'
    -> OrganizationsLocationsDeidentifyTemplatesDelete
organizationsLocationsDeidentifyTemplatesDelete pOldtdName_ =
  OrganizationsLocationsDeidentifyTemplatesDelete'
    { _oldtdXgafv = Nothing
    , _oldtdUploadProtocol = Nothing
    , _oldtdAccessToken = Nothing
    , _oldtdUploadType = Nothing
    , _oldtdName = pOldtdName_
    , _oldtdCallback = Nothing
    }


-- | V1 error format.
oldtdXgafv :: Lens' OrganizationsLocationsDeidentifyTemplatesDelete (Maybe Xgafv)
oldtdXgafv
  = lens _oldtdXgafv (\ s a -> s{_oldtdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oldtdUploadProtocol :: Lens' OrganizationsLocationsDeidentifyTemplatesDelete (Maybe Text)
oldtdUploadProtocol
  = lens _oldtdUploadProtocol
      (\ s a -> s{_oldtdUploadProtocol = a})

-- | OAuth access token.
oldtdAccessToken :: Lens' OrganizationsLocationsDeidentifyTemplatesDelete (Maybe Text)
oldtdAccessToken
  = lens _oldtdAccessToken
      (\ s a -> s{_oldtdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oldtdUploadType :: Lens' OrganizationsLocationsDeidentifyTemplatesDelete (Maybe Text)
oldtdUploadType
  = lens _oldtdUploadType
      (\ s a -> s{_oldtdUploadType = a})

-- | Required. Resource name of the organization and deidentify template to
-- be deleted, for example
-- \`organizations\/433245324\/deidentifyTemplates\/432452342\` or
-- projects\/project-id\/deidentifyTemplates\/432452342.
oldtdName :: Lens' OrganizationsLocationsDeidentifyTemplatesDelete Text
oldtdName
  = lens _oldtdName (\ s a -> s{_oldtdName = a})

-- | JSONP
oldtdCallback :: Lens' OrganizationsLocationsDeidentifyTemplatesDelete (Maybe Text)
oldtdCallback
  = lens _oldtdCallback
      (\ s a -> s{_oldtdCallback = a})

instance GoogleRequest
           OrganizationsLocationsDeidentifyTemplatesDelete
         where
        type Rs
               OrganizationsLocationsDeidentifyTemplatesDelete
             = GoogleProtobufEmpty
        type Scopes
               OrganizationsLocationsDeidentifyTemplatesDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsDeidentifyTemplatesDelete'{..}
          = go _oldtdName _oldtdXgafv _oldtdUploadProtocol
              _oldtdAccessToken
              _oldtdUploadType
              _oldtdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsDeidentifyTemplatesDeleteResource)
                      mempty
