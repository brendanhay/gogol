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
-- Module      : Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.deidentifyTemplates.get@.
module Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.Get
    (
    -- * REST Resource
      OrganizationsDeidentifyTemplatesGetResource

    -- * Creating a Request
    , organizationsDeidentifyTemplatesGet
    , OrganizationsDeidentifyTemplatesGet

    -- * Request Lenses
    , odtgXgafv
    , odtgUploadProtocol
    , odtgAccessToken
    , odtgUploadType
    , odtgName
    , odtgCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.organizations.deidentifyTemplates.get@ method which the
-- 'OrganizationsDeidentifyTemplatesGet' request conforms to.
type OrganizationsDeidentifyTemplatesGetResource =
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
-- /See:/ 'organizationsDeidentifyTemplatesGet' smart constructor.
data OrganizationsDeidentifyTemplatesGet =
  OrganizationsDeidentifyTemplatesGet'
    { _odtgXgafv          :: !(Maybe Xgafv)
    , _odtgUploadProtocol :: !(Maybe Text)
    , _odtgAccessToken    :: !(Maybe Text)
    , _odtgUploadType     :: !(Maybe Text)
    , _odtgName           :: !Text
    , _odtgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsDeidentifyTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odtgXgafv'
--
-- * 'odtgUploadProtocol'
--
-- * 'odtgAccessToken'
--
-- * 'odtgUploadType'
--
-- * 'odtgName'
--
-- * 'odtgCallback'
organizationsDeidentifyTemplatesGet
    :: Text -- ^ 'odtgName'
    -> OrganizationsDeidentifyTemplatesGet
organizationsDeidentifyTemplatesGet pOdtgName_ =
  OrganizationsDeidentifyTemplatesGet'
    { _odtgXgafv = Nothing
    , _odtgUploadProtocol = Nothing
    , _odtgAccessToken = Nothing
    , _odtgUploadType = Nothing
    , _odtgName = pOdtgName_
    , _odtgCallback = Nothing
    }


-- | V1 error format.
odtgXgafv :: Lens' OrganizationsDeidentifyTemplatesGet (Maybe Xgafv)
odtgXgafv
  = lens _odtgXgafv (\ s a -> s{_odtgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
odtgUploadProtocol :: Lens' OrganizationsDeidentifyTemplatesGet (Maybe Text)
odtgUploadProtocol
  = lens _odtgUploadProtocol
      (\ s a -> s{_odtgUploadProtocol = a})

-- | OAuth access token.
odtgAccessToken :: Lens' OrganizationsDeidentifyTemplatesGet (Maybe Text)
odtgAccessToken
  = lens _odtgAccessToken
      (\ s a -> s{_odtgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
odtgUploadType :: Lens' OrganizationsDeidentifyTemplatesGet (Maybe Text)
odtgUploadType
  = lens _odtgUploadType
      (\ s a -> s{_odtgUploadType = a})

-- | Resource name of the organization and deidentify template to be read,
-- for example \`organizations\/433245324\/deidentifyTemplates\/432452342\`
-- or projects\/project-id\/deidentifyTemplates\/432452342.
odtgName :: Lens' OrganizationsDeidentifyTemplatesGet Text
odtgName = lens _odtgName (\ s a -> s{_odtgName = a})

-- | JSONP
odtgCallback :: Lens' OrganizationsDeidentifyTemplatesGet (Maybe Text)
odtgCallback
  = lens _odtgCallback (\ s a -> s{_odtgCallback = a})

instance GoogleRequest
           OrganizationsDeidentifyTemplatesGet
         where
        type Rs OrganizationsDeidentifyTemplatesGet =
             GooglePrivacyDlpV2DeidentifyTemplate
        type Scopes OrganizationsDeidentifyTemplatesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsDeidentifyTemplatesGet'{..}
          = go _odtgName _odtgXgafv _odtgUploadProtocol
              _odtgAccessToken
              _odtgUploadType
              _odtgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsDeidentifyTemplatesGetResource)
                      mempty
