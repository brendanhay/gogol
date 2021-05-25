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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a pre-built stored infoType to be used for inspection. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.storedInfoTypes.create@.
module Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.Create
    (
    -- * REST Resource
      OrganizationsLocationsStoredInfoTypesCreateResource

    -- * Creating a Request
    , organizationsLocationsStoredInfoTypesCreate
    , OrganizationsLocationsStoredInfoTypesCreate

    -- * Request Lenses
    , olsitcParent
    , olsitcXgafv
    , olsitcUploadProtocol
    , olsitcAccessToken
    , olsitcUploadType
    , olsitcPayload
    , olsitcCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.storedInfoTypes.create@ method which the
-- 'OrganizationsLocationsStoredInfoTypesCreate' request conforms to.
type OrganizationsLocationsStoredInfoTypesCreateResource
     =
     "v2" :>
       Capture "parent" Text :>
         "storedInfoTypes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2CreateStoredInfoTypeRequest
                         :> Post '[JSON] GooglePrivacyDlpV2StoredInfoType

-- | Creates a pre-built stored infoType to be used for inspection. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ 'organizationsLocationsStoredInfoTypesCreate' smart constructor.
data OrganizationsLocationsStoredInfoTypesCreate =
  OrganizationsLocationsStoredInfoTypesCreate'
    { _olsitcParent :: !Text
    , _olsitcXgafv :: !(Maybe Xgafv)
    , _olsitcUploadProtocol :: !(Maybe Text)
    , _olsitcAccessToken :: !(Maybe Text)
    , _olsitcUploadType :: !(Maybe Text)
    , _olsitcPayload :: !GooglePrivacyDlpV2CreateStoredInfoTypeRequest
    , _olsitcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsStoredInfoTypesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olsitcParent'
--
-- * 'olsitcXgafv'
--
-- * 'olsitcUploadProtocol'
--
-- * 'olsitcAccessToken'
--
-- * 'olsitcUploadType'
--
-- * 'olsitcPayload'
--
-- * 'olsitcCallback'
organizationsLocationsStoredInfoTypesCreate
    :: Text -- ^ 'olsitcParent'
    -> GooglePrivacyDlpV2CreateStoredInfoTypeRequest -- ^ 'olsitcPayload'
    -> OrganizationsLocationsStoredInfoTypesCreate
organizationsLocationsStoredInfoTypesCreate pOlsitcParent_ pOlsitcPayload_ =
  OrganizationsLocationsStoredInfoTypesCreate'
    { _olsitcParent = pOlsitcParent_
    , _olsitcXgafv = Nothing
    , _olsitcUploadProtocol = Nothing
    , _olsitcAccessToken = Nothing
    , _olsitcUploadType = Nothing
    , _olsitcPayload = pOlsitcPayload_
    , _olsitcCallback = Nothing
    }


-- | Required. Parent resource name. The format of this value varies
-- depending on the scope of the request (project or organization) and
-- whether you have [specified a processing
-- location](https:\/\/cloud.google.com\/dlp\/docs\/specifying-location): +
-- Projects scope, location specified:
-- \`projects\/\`PROJECT_ID\`\/locations\/\`LOCATION_ID + Projects scope,
-- no location specified (defaults to global): \`projects\/\`PROJECT_ID +
-- Organizations scope, location specified:
-- \`organizations\/\`ORG_ID\`\/locations\/\`LOCATION_ID + Organizations
-- scope, no location specified (defaults to global):
-- \`organizations\/\`ORG_ID The following example \`parent\` string
-- specifies a parent project with the identifier \`example-project\`, and
-- specifies the \`europe-west3\` location for processing data:
-- parent=projects\/example-project\/locations\/europe-west3
olsitcParent :: Lens' OrganizationsLocationsStoredInfoTypesCreate Text
olsitcParent
  = lens _olsitcParent (\ s a -> s{_olsitcParent = a})

-- | V1 error format.
olsitcXgafv :: Lens' OrganizationsLocationsStoredInfoTypesCreate (Maybe Xgafv)
olsitcXgafv
  = lens _olsitcXgafv (\ s a -> s{_olsitcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olsitcUploadProtocol :: Lens' OrganizationsLocationsStoredInfoTypesCreate (Maybe Text)
olsitcUploadProtocol
  = lens _olsitcUploadProtocol
      (\ s a -> s{_olsitcUploadProtocol = a})

-- | OAuth access token.
olsitcAccessToken :: Lens' OrganizationsLocationsStoredInfoTypesCreate (Maybe Text)
olsitcAccessToken
  = lens _olsitcAccessToken
      (\ s a -> s{_olsitcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olsitcUploadType :: Lens' OrganizationsLocationsStoredInfoTypesCreate (Maybe Text)
olsitcUploadType
  = lens _olsitcUploadType
      (\ s a -> s{_olsitcUploadType = a})

-- | Multipart request metadata.
olsitcPayload :: Lens' OrganizationsLocationsStoredInfoTypesCreate GooglePrivacyDlpV2CreateStoredInfoTypeRequest
olsitcPayload
  = lens _olsitcPayload
      (\ s a -> s{_olsitcPayload = a})

-- | JSONP
olsitcCallback :: Lens' OrganizationsLocationsStoredInfoTypesCreate (Maybe Text)
olsitcCallback
  = lens _olsitcCallback
      (\ s a -> s{_olsitcCallback = a})

instance GoogleRequest
           OrganizationsLocationsStoredInfoTypesCreate
         where
        type Rs OrganizationsLocationsStoredInfoTypesCreate =
             GooglePrivacyDlpV2StoredInfoType
        type Scopes
               OrganizationsLocationsStoredInfoTypesCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsStoredInfoTypesCreate'{..}
          = go _olsitcParent _olsitcXgafv _olsitcUploadProtocol
              _olsitcAccessToken
              _olsitcUploadType
              _olsitcCallback
              (Just AltJSON)
              _olsitcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsStoredInfoTypesCreateResource)
                      mempty
