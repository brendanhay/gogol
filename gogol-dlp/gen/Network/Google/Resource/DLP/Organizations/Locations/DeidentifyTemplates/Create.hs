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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a DeidentifyTemplate for re-using frequently used configuration
-- for de-identifying content, images, and storage. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.deidentifyTemplates.create@.
module Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.Create
    (
    -- * REST Resource
      OrganizationsLocationsDeidentifyTemplatesCreateResource

    -- * Creating a Request
    , organizationsLocationsDeidentifyTemplatesCreate
    , OrganizationsLocationsDeidentifyTemplatesCreate

    -- * Request Lenses
    , oldtcParent
    , oldtcXgafv
    , oldtcUploadProtocol
    , oldtcAccessToken
    , oldtcUploadType
    , oldtcPayload
    , oldtcCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.deidentifyTemplates.create@ method which the
-- 'OrganizationsLocationsDeidentifyTemplatesCreate' request conforms to.
type OrganizationsLocationsDeidentifyTemplatesCreateResource
     =
     "v2" :>
       Capture "parent" Text :>
         "deidentifyTemplates" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
                         :> Post '[JSON] GooglePrivacyDlpV2DeidentifyTemplate

-- | Creates a DeidentifyTemplate for re-using frequently used configuration
-- for de-identifying content, images, and storage. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ 'organizationsLocationsDeidentifyTemplatesCreate' smart constructor.
data OrganizationsLocationsDeidentifyTemplatesCreate =
  OrganizationsLocationsDeidentifyTemplatesCreate'
    { _oldtcParent :: !Text
    , _oldtcXgafv :: !(Maybe Xgafv)
    , _oldtcUploadProtocol :: !(Maybe Text)
    , _oldtcAccessToken :: !(Maybe Text)
    , _oldtcUploadType :: !(Maybe Text)
    , _oldtcPayload :: !GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
    , _oldtcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsDeidentifyTemplatesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oldtcParent'
--
-- * 'oldtcXgafv'
--
-- * 'oldtcUploadProtocol'
--
-- * 'oldtcAccessToken'
--
-- * 'oldtcUploadType'
--
-- * 'oldtcPayload'
--
-- * 'oldtcCallback'
organizationsLocationsDeidentifyTemplatesCreate
    :: Text -- ^ 'oldtcParent'
    -> GooglePrivacyDlpV2CreateDeidentifyTemplateRequest -- ^ 'oldtcPayload'
    -> OrganizationsLocationsDeidentifyTemplatesCreate
organizationsLocationsDeidentifyTemplatesCreate pOldtcParent_ pOldtcPayload_ =
  OrganizationsLocationsDeidentifyTemplatesCreate'
    { _oldtcParent = pOldtcParent_
    , _oldtcXgafv = Nothing
    , _oldtcUploadProtocol = Nothing
    , _oldtcAccessToken = Nothing
    , _oldtcUploadType = Nothing
    , _oldtcPayload = pOldtcPayload_
    , _oldtcCallback = Nothing
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
oldtcParent :: Lens' OrganizationsLocationsDeidentifyTemplatesCreate Text
oldtcParent
  = lens _oldtcParent (\ s a -> s{_oldtcParent = a})

-- | V1 error format.
oldtcXgafv :: Lens' OrganizationsLocationsDeidentifyTemplatesCreate (Maybe Xgafv)
oldtcXgafv
  = lens _oldtcXgafv (\ s a -> s{_oldtcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oldtcUploadProtocol :: Lens' OrganizationsLocationsDeidentifyTemplatesCreate (Maybe Text)
oldtcUploadProtocol
  = lens _oldtcUploadProtocol
      (\ s a -> s{_oldtcUploadProtocol = a})

-- | OAuth access token.
oldtcAccessToken :: Lens' OrganizationsLocationsDeidentifyTemplatesCreate (Maybe Text)
oldtcAccessToken
  = lens _oldtcAccessToken
      (\ s a -> s{_oldtcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oldtcUploadType :: Lens' OrganizationsLocationsDeidentifyTemplatesCreate (Maybe Text)
oldtcUploadType
  = lens _oldtcUploadType
      (\ s a -> s{_oldtcUploadType = a})

-- | Multipart request metadata.
oldtcPayload :: Lens' OrganizationsLocationsDeidentifyTemplatesCreate GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
oldtcPayload
  = lens _oldtcPayload (\ s a -> s{_oldtcPayload = a})

-- | JSONP
oldtcCallback :: Lens' OrganizationsLocationsDeidentifyTemplatesCreate (Maybe Text)
oldtcCallback
  = lens _oldtcCallback
      (\ s a -> s{_oldtcCallback = a})

instance GoogleRequest
           OrganizationsLocationsDeidentifyTemplatesCreate
         where
        type Rs
               OrganizationsLocationsDeidentifyTemplatesCreate
             = GooglePrivacyDlpV2DeidentifyTemplate
        type Scopes
               OrganizationsLocationsDeidentifyTemplatesCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsDeidentifyTemplatesCreate'{..}
          = go _oldtcParent _oldtcXgafv _oldtcUploadProtocol
              _oldtcAccessToken
              _oldtcUploadType
              _oldtcCallback
              (Just AltJSON)
              _oldtcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsDeidentifyTemplatesCreateResource)
                      mempty
