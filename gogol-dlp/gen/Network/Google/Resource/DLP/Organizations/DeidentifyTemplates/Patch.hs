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
-- Module      : Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.deidentifyTemplates.patch@.
module Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.Patch
    (
    -- * REST Resource
      OrganizationsDeidentifyTemplatesPatchResource

    -- * Creating a Request
    , organizationsDeidentifyTemplatesPatch
    , OrganizationsDeidentifyTemplatesPatch

    -- * Request Lenses
    , odtpXgafv
    , odtpUploadProtocol
    , odtpAccessToken
    , odtpUploadType
    , odtpPayload
    , odtpName
    , odtpCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.organizations.deidentifyTemplates.patch@ method which the
-- 'OrganizationsDeidentifyTemplatesPatch' request conforms to.
type OrganizationsDeidentifyTemplatesPatchResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
                       :> Patch '[JSON] GooglePrivacyDlpV2DeidentifyTemplate

-- | Updates the DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ 'organizationsDeidentifyTemplatesPatch' smart constructor.
data OrganizationsDeidentifyTemplatesPatch = OrganizationsDeidentifyTemplatesPatch'
    { _odtpXgafv          :: !(Maybe Xgafv)
    , _odtpUploadProtocol :: !(Maybe Text)
    , _odtpAccessToken    :: !(Maybe Text)
    , _odtpUploadType     :: !(Maybe Text)
    , _odtpPayload        :: !GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
    , _odtpName           :: !Text
    , _odtpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsDeidentifyTemplatesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odtpXgafv'
--
-- * 'odtpUploadProtocol'
--
-- * 'odtpAccessToken'
--
-- * 'odtpUploadType'
--
-- * 'odtpPayload'
--
-- * 'odtpName'
--
-- * 'odtpCallback'
organizationsDeidentifyTemplatesPatch
    :: GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest -- ^ 'odtpPayload'
    -> Text -- ^ 'odtpName'
    -> OrganizationsDeidentifyTemplatesPatch
organizationsDeidentifyTemplatesPatch pOdtpPayload_ pOdtpName_ =
    OrganizationsDeidentifyTemplatesPatch'
    { _odtpXgafv = Nothing
    , _odtpUploadProtocol = Nothing
    , _odtpAccessToken = Nothing
    , _odtpUploadType = Nothing
    , _odtpPayload = pOdtpPayload_
    , _odtpName = pOdtpName_
    , _odtpCallback = Nothing
    }

-- | V1 error format.
odtpXgafv :: Lens' OrganizationsDeidentifyTemplatesPatch (Maybe Xgafv)
odtpXgafv
  = lens _odtpXgafv (\ s a -> s{_odtpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
odtpUploadProtocol :: Lens' OrganizationsDeidentifyTemplatesPatch (Maybe Text)
odtpUploadProtocol
  = lens _odtpUploadProtocol
      (\ s a -> s{_odtpUploadProtocol = a})

-- | OAuth access token.
odtpAccessToken :: Lens' OrganizationsDeidentifyTemplatesPatch (Maybe Text)
odtpAccessToken
  = lens _odtpAccessToken
      (\ s a -> s{_odtpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
odtpUploadType :: Lens' OrganizationsDeidentifyTemplatesPatch (Maybe Text)
odtpUploadType
  = lens _odtpUploadType
      (\ s a -> s{_odtpUploadType = a})

-- | Multipart request metadata.
odtpPayload :: Lens' OrganizationsDeidentifyTemplatesPatch GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
odtpPayload
  = lens _odtpPayload (\ s a -> s{_odtpPayload = a})

-- | Resource name of organization and deidentify template to be updated, for
-- example \`organizations\/433245324\/deidentifyTemplates\/432452342\` or
-- projects\/project-id\/deidentifyTemplates\/432452342.
odtpName :: Lens' OrganizationsDeidentifyTemplatesPatch Text
odtpName = lens _odtpName (\ s a -> s{_odtpName = a})

-- | JSONP
odtpCallback :: Lens' OrganizationsDeidentifyTemplatesPatch (Maybe Text)
odtpCallback
  = lens _odtpCallback (\ s a -> s{_odtpCallback = a})

instance GoogleRequest
         OrganizationsDeidentifyTemplatesPatch where
        type Rs OrganizationsDeidentifyTemplatesPatch =
             GooglePrivacyDlpV2DeidentifyTemplate
        type Scopes OrganizationsDeidentifyTemplatesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsDeidentifyTemplatesPatch'{..}
          = go _odtpName _odtpXgafv _odtpUploadProtocol
              _odtpAccessToken
              _odtpUploadType
              _odtpCallback
              (Just AltJSON)
              _odtpPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsDeidentifyTemplatesPatchResource)
                      mempty
