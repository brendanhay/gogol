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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a stored infoType. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.storedInfoTypes.get@.
module Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.Get
    (
    -- * REST Resource
      OrganizationsLocationsStoredInfoTypesGetResource

    -- * Creating a Request
    , organizationsLocationsStoredInfoTypesGet
    , OrganizationsLocationsStoredInfoTypesGet

    -- * Request Lenses
    , olsitgXgafv
    , olsitgUploadProtocol
    , olsitgAccessToken
    , olsitgUploadType
    , olsitgName
    , olsitgCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.storedInfoTypes.get@ method which the
-- 'OrganizationsLocationsStoredInfoTypesGet' request conforms to.
type OrganizationsLocationsStoredInfoTypesGetResource
     =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GooglePrivacyDlpV2StoredInfoType

-- | Gets a stored infoType. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ 'organizationsLocationsStoredInfoTypesGet' smart constructor.
data OrganizationsLocationsStoredInfoTypesGet =
  OrganizationsLocationsStoredInfoTypesGet'
    { _olsitgXgafv :: !(Maybe Xgafv)
    , _olsitgUploadProtocol :: !(Maybe Text)
    , _olsitgAccessToken :: !(Maybe Text)
    , _olsitgUploadType :: !(Maybe Text)
    , _olsitgName :: !Text
    , _olsitgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsStoredInfoTypesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olsitgXgafv'
--
-- * 'olsitgUploadProtocol'
--
-- * 'olsitgAccessToken'
--
-- * 'olsitgUploadType'
--
-- * 'olsitgName'
--
-- * 'olsitgCallback'
organizationsLocationsStoredInfoTypesGet
    :: Text -- ^ 'olsitgName'
    -> OrganizationsLocationsStoredInfoTypesGet
organizationsLocationsStoredInfoTypesGet pOlsitgName_ =
  OrganizationsLocationsStoredInfoTypesGet'
    { _olsitgXgafv = Nothing
    , _olsitgUploadProtocol = Nothing
    , _olsitgAccessToken = Nothing
    , _olsitgUploadType = Nothing
    , _olsitgName = pOlsitgName_
    , _olsitgCallback = Nothing
    }


-- | V1 error format.
olsitgXgafv :: Lens' OrganizationsLocationsStoredInfoTypesGet (Maybe Xgafv)
olsitgXgafv
  = lens _olsitgXgafv (\ s a -> s{_olsitgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olsitgUploadProtocol :: Lens' OrganizationsLocationsStoredInfoTypesGet (Maybe Text)
olsitgUploadProtocol
  = lens _olsitgUploadProtocol
      (\ s a -> s{_olsitgUploadProtocol = a})

-- | OAuth access token.
olsitgAccessToken :: Lens' OrganizationsLocationsStoredInfoTypesGet (Maybe Text)
olsitgAccessToken
  = lens _olsitgAccessToken
      (\ s a -> s{_olsitgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olsitgUploadType :: Lens' OrganizationsLocationsStoredInfoTypesGet (Maybe Text)
olsitgUploadType
  = lens _olsitgUploadType
      (\ s a -> s{_olsitgUploadType = a})

-- | Required. Resource name of the organization and storedInfoType to be
-- read, for example
-- \`organizations\/433245324\/storedInfoTypes\/432452342\` or
-- projects\/project-id\/storedInfoTypes\/432452342.
olsitgName :: Lens' OrganizationsLocationsStoredInfoTypesGet Text
olsitgName
  = lens _olsitgName (\ s a -> s{_olsitgName = a})

-- | JSONP
olsitgCallback :: Lens' OrganizationsLocationsStoredInfoTypesGet (Maybe Text)
olsitgCallback
  = lens _olsitgCallback
      (\ s a -> s{_olsitgCallback = a})

instance GoogleRequest
           OrganizationsLocationsStoredInfoTypesGet
         where
        type Rs OrganizationsLocationsStoredInfoTypesGet =
             GooglePrivacyDlpV2StoredInfoType
        type Scopes OrganizationsLocationsStoredInfoTypesGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsStoredInfoTypesGet'{..}
          = go _olsitgName _olsitgXgafv _olsitgUploadProtocol
              _olsitgAccessToken
              _olsitgUploadType
              _olsitgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsStoredInfoTypesGetResource)
                      mempty
