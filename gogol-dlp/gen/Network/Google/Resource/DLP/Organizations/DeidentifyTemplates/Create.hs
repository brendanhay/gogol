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
-- Module      : Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.Create
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
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.deidentifyTemplates.create@.
module Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.Create
    (
    -- * REST Resource
      OrganizationsDeidentifyTemplatesCreateResource

    -- * Creating a Request
    , organizationsDeidentifyTemplatesCreate
    , OrganizationsDeidentifyTemplatesCreate

    -- * Request Lenses
    , odtcParent
    , odtcXgafv
    , odtcUploadProtocol
    , odtcAccessToken
    , odtcUploadType
    , odtcPayload
    , odtcCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.organizations.deidentifyTemplates.create@ method which the
-- 'OrganizationsDeidentifyTemplatesCreate' request conforms to.
type OrganizationsDeidentifyTemplatesCreateResource =
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
-- /See:/ 'organizationsDeidentifyTemplatesCreate' smart constructor.
data OrganizationsDeidentifyTemplatesCreate = OrganizationsDeidentifyTemplatesCreate'
    { _odtcParent         :: !Text
    , _odtcXgafv          :: !(Maybe Xgafv)
    , _odtcUploadProtocol :: !(Maybe Text)
    , _odtcAccessToken    :: !(Maybe Text)
    , _odtcUploadType     :: !(Maybe Text)
    , _odtcPayload        :: !GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
    , _odtcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsDeidentifyTemplatesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odtcParent'
--
-- * 'odtcXgafv'
--
-- * 'odtcUploadProtocol'
--
-- * 'odtcAccessToken'
--
-- * 'odtcUploadType'
--
-- * 'odtcPayload'
--
-- * 'odtcCallback'
organizationsDeidentifyTemplatesCreate
    :: Text -- ^ 'odtcParent'
    -> GooglePrivacyDlpV2CreateDeidentifyTemplateRequest -- ^ 'odtcPayload'
    -> OrganizationsDeidentifyTemplatesCreate
organizationsDeidentifyTemplatesCreate pOdtcParent_ pOdtcPayload_ =
    OrganizationsDeidentifyTemplatesCreate'
    { _odtcParent = pOdtcParent_
    , _odtcXgafv = Nothing
    , _odtcUploadProtocol = Nothing
    , _odtcAccessToken = Nothing
    , _odtcUploadType = Nothing
    , _odtcPayload = pOdtcPayload_
    , _odtcCallback = Nothing
    }

-- | The parent resource name, for example projects\/my-project-id or
-- organizations\/my-org-id.
odtcParent :: Lens' OrganizationsDeidentifyTemplatesCreate Text
odtcParent
  = lens _odtcParent (\ s a -> s{_odtcParent = a})

-- | V1 error format.
odtcXgafv :: Lens' OrganizationsDeidentifyTemplatesCreate (Maybe Xgafv)
odtcXgafv
  = lens _odtcXgafv (\ s a -> s{_odtcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
odtcUploadProtocol :: Lens' OrganizationsDeidentifyTemplatesCreate (Maybe Text)
odtcUploadProtocol
  = lens _odtcUploadProtocol
      (\ s a -> s{_odtcUploadProtocol = a})

-- | OAuth access token.
odtcAccessToken :: Lens' OrganizationsDeidentifyTemplatesCreate (Maybe Text)
odtcAccessToken
  = lens _odtcAccessToken
      (\ s a -> s{_odtcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
odtcUploadType :: Lens' OrganizationsDeidentifyTemplatesCreate (Maybe Text)
odtcUploadType
  = lens _odtcUploadType
      (\ s a -> s{_odtcUploadType = a})

-- | Multipart request metadata.
odtcPayload :: Lens' OrganizationsDeidentifyTemplatesCreate GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
odtcPayload
  = lens _odtcPayload (\ s a -> s{_odtcPayload = a})

-- | JSONP
odtcCallback :: Lens' OrganizationsDeidentifyTemplatesCreate (Maybe Text)
odtcCallback
  = lens _odtcCallback (\ s a -> s{_odtcCallback = a})

instance GoogleRequest
         OrganizationsDeidentifyTemplatesCreate where
        type Rs OrganizationsDeidentifyTemplatesCreate =
             GooglePrivacyDlpV2DeidentifyTemplate
        type Scopes OrganizationsDeidentifyTemplatesCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsDeidentifyTemplatesCreate'{..}
          = go _odtcParent _odtcXgafv _odtcUploadProtocol
              _odtcAccessToken
              _odtcUploadType
              _odtcCallback
              (Just AltJSON)
              _odtcPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsDeidentifyTemplatesCreateResource)
                      mempty
