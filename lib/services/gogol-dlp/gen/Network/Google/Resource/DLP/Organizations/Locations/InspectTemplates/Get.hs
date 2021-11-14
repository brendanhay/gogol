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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.inspectTemplates.get@.
module Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.Get
    (
    -- * REST Resource
      OrganizationsLocationsInspectTemplatesGetResource

    -- * Creating a Request
    , organizationsLocationsInspectTemplatesGet
    , OrganizationsLocationsInspectTemplatesGet

    -- * Request Lenses
    , olitgXgafv
    , olitgUploadProtocol
    , olitgAccessToken
    , olitgUploadType
    , olitgName
    , olitgCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.inspectTemplates.get@ method which the
-- 'OrganizationsLocationsInspectTemplatesGet' request conforms to.
type OrganizationsLocationsInspectTemplatesGetResource
     =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GooglePrivacyDlpV2InspectTemplate

-- | Gets an InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'organizationsLocationsInspectTemplatesGet' smart constructor.
data OrganizationsLocationsInspectTemplatesGet =
  OrganizationsLocationsInspectTemplatesGet'
    { _olitgXgafv :: !(Maybe Xgafv)
    , _olitgUploadProtocol :: !(Maybe Text)
    , _olitgAccessToken :: !(Maybe Text)
    , _olitgUploadType :: !(Maybe Text)
    , _olitgName :: !Text
    , _olitgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsInspectTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olitgXgafv'
--
-- * 'olitgUploadProtocol'
--
-- * 'olitgAccessToken'
--
-- * 'olitgUploadType'
--
-- * 'olitgName'
--
-- * 'olitgCallback'
organizationsLocationsInspectTemplatesGet
    :: Text -- ^ 'olitgName'
    -> OrganizationsLocationsInspectTemplatesGet
organizationsLocationsInspectTemplatesGet pOlitgName_ =
  OrganizationsLocationsInspectTemplatesGet'
    { _olitgXgafv = Nothing
    , _olitgUploadProtocol = Nothing
    , _olitgAccessToken = Nothing
    , _olitgUploadType = Nothing
    , _olitgName = pOlitgName_
    , _olitgCallback = Nothing
    }


-- | V1 error format.
olitgXgafv :: Lens' OrganizationsLocationsInspectTemplatesGet (Maybe Xgafv)
olitgXgafv
  = lens _olitgXgafv (\ s a -> s{_olitgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olitgUploadProtocol :: Lens' OrganizationsLocationsInspectTemplatesGet (Maybe Text)
olitgUploadProtocol
  = lens _olitgUploadProtocol
      (\ s a -> s{_olitgUploadProtocol = a})

-- | OAuth access token.
olitgAccessToken :: Lens' OrganizationsLocationsInspectTemplatesGet (Maybe Text)
olitgAccessToken
  = lens _olitgAccessToken
      (\ s a -> s{_olitgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olitgUploadType :: Lens' OrganizationsLocationsInspectTemplatesGet (Maybe Text)
olitgUploadType
  = lens _olitgUploadType
      (\ s a -> s{_olitgUploadType = a})

-- | Required. Resource name of the organization and inspectTemplate to be
-- read, for example
-- \`organizations\/433245324\/inspectTemplates\/432452342\` or
-- projects\/project-id\/inspectTemplates\/432452342.
olitgName :: Lens' OrganizationsLocationsInspectTemplatesGet Text
olitgName
  = lens _olitgName (\ s a -> s{_olitgName = a})

-- | JSONP
olitgCallback :: Lens' OrganizationsLocationsInspectTemplatesGet (Maybe Text)
olitgCallback
  = lens _olitgCallback
      (\ s a -> s{_olitgCallback = a})

instance GoogleRequest
           OrganizationsLocationsInspectTemplatesGet
         where
        type Rs OrganizationsLocationsInspectTemplatesGet =
             GooglePrivacyDlpV2InspectTemplate
        type Scopes OrganizationsLocationsInspectTemplatesGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsInspectTemplatesGet'{..}
          = go _olitgName _olitgXgafv _olitgUploadProtocol
              _olitgAccessToken
              _olitgUploadType
              _olitgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsInspectTemplatesGetResource)
                      mempty
