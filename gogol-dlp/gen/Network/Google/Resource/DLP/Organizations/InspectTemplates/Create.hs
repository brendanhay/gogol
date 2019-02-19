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
-- Module      : Network.Google.Resource.DLP.Organizations.InspectTemplates.Create
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
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.inspectTemplates.create@.
module Network.Google.Resource.DLP.Organizations.InspectTemplates.Create
    (
    -- * REST Resource
      OrganizationsInspectTemplatesCreateResource

    -- * Creating a Request
    , organizationsInspectTemplatesCreate
    , OrganizationsInspectTemplatesCreate

    -- * Request Lenses
    , oitcParent
    , oitcXgafv
    , oitcUploadProtocol
    , oitcAccessToken
    , oitcUploadType
    , oitcPayload
    , oitcCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.organizations.inspectTemplates.create@ method which the
-- 'OrganizationsInspectTemplatesCreate' request conforms to.
type OrganizationsInspectTemplatesCreateResource =
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
-- /See:/ 'organizationsInspectTemplatesCreate' smart constructor.
data OrganizationsInspectTemplatesCreate =
  OrganizationsInspectTemplatesCreate'
    { _oitcParent         :: !Text
    , _oitcXgafv          :: !(Maybe Xgafv)
    , _oitcUploadProtocol :: !(Maybe Text)
    , _oitcAccessToken    :: !(Maybe Text)
    , _oitcUploadType     :: !(Maybe Text)
    , _oitcPayload        :: !GooglePrivacyDlpV2CreateInspectTemplateRequest
    , _oitcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrganizationsInspectTemplatesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oitcParent'
--
-- * 'oitcXgafv'
--
-- * 'oitcUploadProtocol'
--
-- * 'oitcAccessToken'
--
-- * 'oitcUploadType'
--
-- * 'oitcPayload'
--
-- * 'oitcCallback'
organizationsInspectTemplatesCreate
    :: Text -- ^ 'oitcParent'
    -> GooglePrivacyDlpV2CreateInspectTemplateRequest -- ^ 'oitcPayload'
    -> OrganizationsInspectTemplatesCreate
organizationsInspectTemplatesCreate pOitcParent_ pOitcPayload_ =
  OrganizationsInspectTemplatesCreate'
    { _oitcParent = pOitcParent_
    , _oitcXgafv = Nothing
    , _oitcUploadProtocol = Nothing
    , _oitcAccessToken = Nothing
    , _oitcUploadType = Nothing
    , _oitcPayload = pOitcPayload_
    , _oitcCallback = Nothing
    }

-- | The parent resource name, for example projects\/my-project-id or
-- organizations\/my-org-id.
oitcParent :: Lens' OrganizationsInspectTemplatesCreate Text
oitcParent
  = lens _oitcParent (\ s a -> s{_oitcParent = a})

-- | V1 error format.
oitcXgafv :: Lens' OrganizationsInspectTemplatesCreate (Maybe Xgafv)
oitcXgafv
  = lens _oitcXgafv (\ s a -> s{_oitcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oitcUploadProtocol :: Lens' OrganizationsInspectTemplatesCreate (Maybe Text)
oitcUploadProtocol
  = lens _oitcUploadProtocol
      (\ s a -> s{_oitcUploadProtocol = a})

-- | OAuth access token.
oitcAccessToken :: Lens' OrganizationsInspectTemplatesCreate (Maybe Text)
oitcAccessToken
  = lens _oitcAccessToken
      (\ s a -> s{_oitcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oitcUploadType :: Lens' OrganizationsInspectTemplatesCreate (Maybe Text)
oitcUploadType
  = lens _oitcUploadType
      (\ s a -> s{_oitcUploadType = a})

-- | Multipart request metadata.
oitcPayload :: Lens' OrganizationsInspectTemplatesCreate GooglePrivacyDlpV2CreateInspectTemplateRequest
oitcPayload
  = lens _oitcPayload (\ s a -> s{_oitcPayload = a})

-- | JSONP
oitcCallback :: Lens' OrganizationsInspectTemplatesCreate (Maybe Text)
oitcCallback
  = lens _oitcCallback (\ s a -> s{_oitcCallback = a})

instance GoogleRequest
           OrganizationsInspectTemplatesCreate
         where
        type Rs OrganizationsInspectTemplatesCreate =
             GooglePrivacyDlpV2InspectTemplate
        type Scopes OrganizationsInspectTemplatesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsInspectTemplatesCreate'{..}
          = go _oitcParent _oitcXgafv _oitcUploadProtocol
              _oitcAccessToken
              _oitcUploadType
              _oitcCallback
              (Just AltJSON)
              _oitcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsInspectTemplatesCreateResource)
                      mempty
