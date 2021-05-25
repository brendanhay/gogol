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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an InspectTemplate for re-using frequently used configuration
-- for inspecting content, images, and storage. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.inspectTemplates.create@.
module Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.Create
    (
    -- * REST Resource
      OrganizationsLocationsInspectTemplatesCreateResource

    -- * Creating a Request
    , organizationsLocationsInspectTemplatesCreate
    , OrganizationsLocationsInspectTemplatesCreate

    -- * Request Lenses
    , olitcParent
    , olitcXgafv
    , olitcUploadProtocol
    , olitcAccessToken
    , olitcUploadType
    , olitcPayload
    , olitcCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.inspectTemplates.create@ method which the
-- 'OrganizationsLocationsInspectTemplatesCreate' request conforms to.
type OrganizationsLocationsInspectTemplatesCreateResource
     =
     "v2" :>
       Capture "parent" Text :>
         "inspectTemplates" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2CreateInspectTemplateRequest
                         :> Post '[JSON] GooglePrivacyDlpV2InspectTemplate

-- | Creates an InspectTemplate for re-using frequently used configuration
-- for inspecting content, images, and storage. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'organizationsLocationsInspectTemplatesCreate' smart constructor.
data OrganizationsLocationsInspectTemplatesCreate =
  OrganizationsLocationsInspectTemplatesCreate'
    { _olitcParent :: !Text
    , _olitcXgafv :: !(Maybe Xgafv)
    , _olitcUploadProtocol :: !(Maybe Text)
    , _olitcAccessToken :: !(Maybe Text)
    , _olitcUploadType :: !(Maybe Text)
    , _olitcPayload :: !GooglePrivacyDlpV2CreateInspectTemplateRequest
    , _olitcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsInspectTemplatesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olitcParent'
--
-- * 'olitcXgafv'
--
-- * 'olitcUploadProtocol'
--
-- * 'olitcAccessToken'
--
-- * 'olitcUploadType'
--
-- * 'olitcPayload'
--
-- * 'olitcCallback'
organizationsLocationsInspectTemplatesCreate
    :: Text -- ^ 'olitcParent'
    -> GooglePrivacyDlpV2CreateInspectTemplateRequest -- ^ 'olitcPayload'
    -> OrganizationsLocationsInspectTemplatesCreate
organizationsLocationsInspectTemplatesCreate pOlitcParent_ pOlitcPayload_ =
  OrganizationsLocationsInspectTemplatesCreate'
    { _olitcParent = pOlitcParent_
    , _olitcXgafv = Nothing
    , _olitcUploadProtocol = Nothing
    , _olitcAccessToken = Nothing
    , _olitcUploadType = Nothing
    , _olitcPayload = pOlitcPayload_
    , _olitcCallback = Nothing
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
olitcParent :: Lens' OrganizationsLocationsInspectTemplatesCreate Text
olitcParent
  = lens _olitcParent (\ s a -> s{_olitcParent = a})

-- | V1 error format.
olitcXgafv :: Lens' OrganizationsLocationsInspectTemplatesCreate (Maybe Xgafv)
olitcXgafv
  = lens _olitcXgafv (\ s a -> s{_olitcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olitcUploadProtocol :: Lens' OrganizationsLocationsInspectTemplatesCreate (Maybe Text)
olitcUploadProtocol
  = lens _olitcUploadProtocol
      (\ s a -> s{_olitcUploadProtocol = a})

-- | OAuth access token.
olitcAccessToken :: Lens' OrganizationsLocationsInspectTemplatesCreate (Maybe Text)
olitcAccessToken
  = lens _olitcAccessToken
      (\ s a -> s{_olitcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olitcUploadType :: Lens' OrganizationsLocationsInspectTemplatesCreate (Maybe Text)
olitcUploadType
  = lens _olitcUploadType
      (\ s a -> s{_olitcUploadType = a})

-- | Multipart request metadata.
olitcPayload :: Lens' OrganizationsLocationsInspectTemplatesCreate GooglePrivacyDlpV2CreateInspectTemplateRequest
olitcPayload
  = lens _olitcPayload (\ s a -> s{_olitcPayload = a})

-- | JSONP
olitcCallback :: Lens' OrganizationsLocationsInspectTemplatesCreate (Maybe Text)
olitcCallback
  = lens _olitcCallback
      (\ s a -> s{_olitcCallback = a})

instance GoogleRequest
           OrganizationsLocationsInspectTemplatesCreate
         where
        type Rs OrganizationsLocationsInspectTemplatesCreate
             = GooglePrivacyDlpV2InspectTemplate
        type Scopes
               OrganizationsLocationsInspectTemplatesCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsInspectTemplatesCreate'{..}
          = go _olitcParent _olitcXgafv _olitcUploadProtocol
              _olitcAccessToken
              _olitcUploadType
              _olitcCallback
              (Just AltJSON)
              _olitcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsInspectTemplatesCreateResource)
                      mempty
