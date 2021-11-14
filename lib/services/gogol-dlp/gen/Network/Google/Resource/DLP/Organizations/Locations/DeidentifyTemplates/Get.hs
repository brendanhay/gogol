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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.deidentifyTemplates.get@.
module Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.Get
    (
    -- * REST Resource
      OrganizationsLocationsDeidentifyTemplatesGetResource

    -- * Creating a Request
    , organizationsLocationsDeidentifyTemplatesGet
    , OrganizationsLocationsDeidentifyTemplatesGet

    -- * Request Lenses
    , oldtgXgafv
    , oldtgUploadProtocol
    , oldtgAccessToken
    , oldtgUploadType
    , oldtgName
    , oldtgCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.deidentifyTemplates.get@ method which the
-- 'OrganizationsLocationsDeidentifyTemplatesGet' request conforms to.
type OrganizationsLocationsDeidentifyTemplatesGetResource
     =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GooglePrivacyDlpV2DeidentifyTemplate

-- | Gets a DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ 'organizationsLocationsDeidentifyTemplatesGet' smart constructor.
data OrganizationsLocationsDeidentifyTemplatesGet =
  OrganizationsLocationsDeidentifyTemplatesGet'
    { _oldtgXgafv :: !(Maybe Xgafv)
    , _oldtgUploadProtocol :: !(Maybe Text)
    , _oldtgAccessToken :: !(Maybe Text)
    , _oldtgUploadType :: !(Maybe Text)
    , _oldtgName :: !Text
    , _oldtgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsDeidentifyTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oldtgXgafv'
--
-- * 'oldtgUploadProtocol'
--
-- * 'oldtgAccessToken'
--
-- * 'oldtgUploadType'
--
-- * 'oldtgName'
--
-- * 'oldtgCallback'
organizationsLocationsDeidentifyTemplatesGet
    :: Text -- ^ 'oldtgName'
    -> OrganizationsLocationsDeidentifyTemplatesGet
organizationsLocationsDeidentifyTemplatesGet pOldtgName_ =
  OrganizationsLocationsDeidentifyTemplatesGet'
    { _oldtgXgafv = Nothing
    , _oldtgUploadProtocol = Nothing
    , _oldtgAccessToken = Nothing
    , _oldtgUploadType = Nothing
    , _oldtgName = pOldtgName_
    , _oldtgCallback = Nothing
    }


-- | V1 error format.
oldtgXgafv :: Lens' OrganizationsLocationsDeidentifyTemplatesGet (Maybe Xgafv)
oldtgXgafv
  = lens _oldtgXgafv (\ s a -> s{_oldtgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oldtgUploadProtocol :: Lens' OrganizationsLocationsDeidentifyTemplatesGet (Maybe Text)
oldtgUploadProtocol
  = lens _oldtgUploadProtocol
      (\ s a -> s{_oldtgUploadProtocol = a})

-- | OAuth access token.
oldtgAccessToken :: Lens' OrganizationsLocationsDeidentifyTemplatesGet (Maybe Text)
oldtgAccessToken
  = lens _oldtgAccessToken
      (\ s a -> s{_oldtgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oldtgUploadType :: Lens' OrganizationsLocationsDeidentifyTemplatesGet (Maybe Text)
oldtgUploadType
  = lens _oldtgUploadType
      (\ s a -> s{_oldtgUploadType = a})

-- | Required. Resource name of the organization and deidentify template to
-- be read, for example
-- \`organizations\/433245324\/deidentifyTemplates\/432452342\` or
-- projects\/project-id\/deidentifyTemplates\/432452342.
oldtgName :: Lens' OrganizationsLocationsDeidentifyTemplatesGet Text
oldtgName
  = lens _oldtgName (\ s a -> s{_oldtgName = a})

-- | JSONP
oldtgCallback :: Lens' OrganizationsLocationsDeidentifyTemplatesGet (Maybe Text)
oldtgCallback
  = lens _oldtgCallback
      (\ s a -> s{_oldtgCallback = a})

instance GoogleRequest
           OrganizationsLocationsDeidentifyTemplatesGet
         where
        type Rs OrganizationsLocationsDeidentifyTemplatesGet
             = GooglePrivacyDlpV2DeidentifyTemplate
        type Scopes
               OrganizationsLocationsDeidentifyTemplatesGet
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsDeidentifyTemplatesGet'{..}
          = go _oldtgName _oldtgXgafv _oldtgUploadProtocol
              _oldtgAccessToken
              _oldtgUploadType
              _oldtgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsDeidentifyTemplatesGetResource)
                      mempty
