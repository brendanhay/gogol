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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a stored infoType. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.storedInfoTypes.delete@.
module Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.Delete
    (
    -- * REST Resource
      OrganizationsLocationsStoredInfoTypesDeleteResource

    -- * Creating a Request
    , organizationsLocationsStoredInfoTypesDelete
    , OrganizationsLocationsStoredInfoTypesDelete

    -- * Request Lenses
    , olsitdXgafv
    , olsitdUploadProtocol
    , olsitdAccessToken
    , olsitdUploadType
    , olsitdName
    , olsitdCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.storedInfoTypes.delete@ method which the
-- 'OrganizationsLocationsStoredInfoTypesDelete' request conforms to.
type OrganizationsLocationsStoredInfoTypesDeleteResource
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

-- | Deletes a stored infoType. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ 'organizationsLocationsStoredInfoTypesDelete' smart constructor.
data OrganizationsLocationsStoredInfoTypesDelete =
  OrganizationsLocationsStoredInfoTypesDelete'
    { _olsitdXgafv :: !(Maybe Xgafv)
    , _olsitdUploadProtocol :: !(Maybe Text)
    , _olsitdAccessToken :: !(Maybe Text)
    , _olsitdUploadType :: !(Maybe Text)
    , _olsitdName :: !Text
    , _olsitdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsStoredInfoTypesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olsitdXgafv'
--
-- * 'olsitdUploadProtocol'
--
-- * 'olsitdAccessToken'
--
-- * 'olsitdUploadType'
--
-- * 'olsitdName'
--
-- * 'olsitdCallback'
organizationsLocationsStoredInfoTypesDelete
    :: Text -- ^ 'olsitdName'
    -> OrganizationsLocationsStoredInfoTypesDelete
organizationsLocationsStoredInfoTypesDelete pOlsitdName_ =
  OrganizationsLocationsStoredInfoTypesDelete'
    { _olsitdXgafv = Nothing
    , _olsitdUploadProtocol = Nothing
    , _olsitdAccessToken = Nothing
    , _olsitdUploadType = Nothing
    , _olsitdName = pOlsitdName_
    , _olsitdCallback = Nothing
    }


-- | V1 error format.
olsitdXgafv :: Lens' OrganizationsLocationsStoredInfoTypesDelete (Maybe Xgafv)
olsitdXgafv
  = lens _olsitdXgafv (\ s a -> s{_olsitdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olsitdUploadProtocol :: Lens' OrganizationsLocationsStoredInfoTypesDelete (Maybe Text)
olsitdUploadProtocol
  = lens _olsitdUploadProtocol
      (\ s a -> s{_olsitdUploadProtocol = a})

-- | OAuth access token.
olsitdAccessToken :: Lens' OrganizationsLocationsStoredInfoTypesDelete (Maybe Text)
olsitdAccessToken
  = lens _olsitdAccessToken
      (\ s a -> s{_olsitdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olsitdUploadType :: Lens' OrganizationsLocationsStoredInfoTypesDelete (Maybe Text)
olsitdUploadType
  = lens _olsitdUploadType
      (\ s a -> s{_olsitdUploadType = a})

-- | Required. Resource name of the organization and storedInfoType to be
-- deleted, for example
-- \`organizations\/433245324\/storedInfoTypes\/432452342\` or
-- projects\/project-id\/storedInfoTypes\/432452342.
olsitdName :: Lens' OrganizationsLocationsStoredInfoTypesDelete Text
olsitdName
  = lens _olsitdName (\ s a -> s{_olsitdName = a})

-- | JSONP
olsitdCallback :: Lens' OrganizationsLocationsStoredInfoTypesDelete (Maybe Text)
olsitdCallback
  = lens _olsitdCallback
      (\ s a -> s{_olsitdCallback = a})

instance GoogleRequest
           OrganizationsLocationsStoredInfoTypesDelete
         where
        type Rs OrganizationsLocationsStoredInfoTypesDelete =
             GoogleProtobufEmpty
        type Scopes
               OrganizationsLocationsStoredInfoTypesDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsStoredInfoTypesDelete'{..}
          = go _olsitdName _olsitdXgafv _olsitdUploadProtocol
              _olsitdAccessToken
              _olsitdUploadType
              _olsitdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsStoredInfoTypesDeleteResource)
                      mempty
