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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.deidentifyTemplates.patch@.
module Network.Google.Resource.DLP.Organizations.Locations.DeidentifyTemplates.Patch
    (
    -- * REST Resource
      OrganizationsLocationsDeidentifyTemplatesPatchResource

    -- * Creating a Request
    , organizationsLocationsDeidentifyTemplatesPatch
    , OrganizationsLocationsDeidentifyTemplatesPatch

    -- * Request Lenses
    , oldtpXgafv
    , oldtpUploadProtocol
    , oldtpAccessToken
    , oldtpUploadType
    , oldtpPayload
    , oldtpName
    , oldtpCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.deidentifyTemplates.patch@ method which the
-- 'OrganizationsLocationsDeidentifyTemplatesPatch' request conforms to.
type OrganizationsLocationsDeidentifyTemplatesPatchResource
     =
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
-- /See:/ 'organizationsLocationsDeidentifyTemplatesPatch' smart constructor.
data OrganizationsLocationsDeidentifyTemplatesPatch =
  OrganizationsLocationsDeidentifyTemplatesPatch'
    { _oldtpXgafv :: !(Maybe Xgafv)
    , _oldtpUploadProtocol :: !(Maybe Text)
    , _oldtpAccessToken :: !(Maybe Text)
    , _oldtpUploadType :: !(Maybe Text)
    , _oldtpPayload :: !GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
    , _oldtpName :: !Text
    , _oldtpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsDeidentifyTemplatesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oldtpXgafv'
--
-- * 'oldtpUploadProtocol'
--
-- * 'oldtpAccessToken'
--
-- * 'oldtpUploadType'
--
-- * 'oldtpPayload'
--
-- * 'oldtpName'
--
-- * 'oldtpCallback'
organizationsLocationsDeidentifyTemplatesPatch
    :: GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest -- ^ 'oldtpPayload'
    -> Text -- ^ 'oldtpName'
    -> OrganizationsLocationsDeidentifyTemplatesPatch
organizationsLocationsDeidentifyTemplatesPatch pOldtpPayload_ pOldtpName_ =
  OrganizationsLocationsDeidentifyTemplatesPatch'
    { _oldtpXgafv = Nothing
    , _oldtpUploadProtocol = Nothing
    , _oldtpAccessToken = Nothing
    , _oldtpUploadType = Nothing
    , _oldtpPayload = pOldtpPayload_
    , _oldtpName = pOldtpName_
    , _oldtpCallback = Nothing
    }


-- | V1 error format.
oldtpXgafv :: Lens' OrganizationsLocationsDeidentifyTemplatesPatch (Maybe Xgafv)
oldtpXgafv
  = lens _oldtpXgafv (\ s a -> s{_oldtpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oldtpUploadProtocol :: Lens' OrganizationsLocationsDeidentifyTemplatesPatch (Maybe Text)
oldtpUploadProtocol
  = lens _oldtpUploadProtocol
      (\ s a -> s{_oldtpUploadProtocol = a})

-- | OAuth access token.
oldtpAccessToken :: Lens' OrganizationsLocationsDeidentifyTemplatesPatch (Maybe Text)
oldtpAccessToken
  = lens _oldtpAccessToken
      (\ s a -> s{_oldtpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oldtpUploadType :: Lens' OrganizationsLocationsDeidentifyTemplatesPatch (Maybe Text)
oldtpUploadType
  = lens _oldtpUploadType
      (\ s a -> s{_oldtpUploadType = a})

-- | Multipart request metadata.
oldtpPayload :: Lens' OrganizationsLocationsDeidentifyTemplatesPatch GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
oldtpPayload
  = lens _oldtpPayload (\ s a -> s{_oldtpPayload = a})

-- | Required. Resource name of organization and deidentify template to be
-- updated, for example
-- \`organizations\/433245324\/deidentifyTemplates\/432452342\` or
-- projects\/project-id\/deidentifyTemplates\/432452342.
oldtpName :: Lens' OrganizationsLocationsDeidentifyTemplatesPatch Text
oldtpName
  = lens _oldtpName (\ s a -> s{_oldtpName = a})

-- | JSONP
oldtpCallback :: Lens' OrganizationsLocationsDeidentifyTemplatesPatch (Maybe Text)
oldtpCallback
  = lens _oldtpCallback
      (\ s a -> s{_oldtpCallback = a})

instance GoogleRequest
           OrganizationsLocationsDeidentifyTemplatesPatch
         where
        type Rs
               OrganizationsLocationsDeidentifyTemplatesPatch
             = GooglePrivacyDlpV2DeidentifyTemplate
        type Scopes
               OrganizationsLocationsDeidentifyTemplatesPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsDeidentifyTemplatesPatch'{..}
          = go _oldtpName _oldtpXgafv _oldtpUploadProtocol
              _oldtpAccessToken
              _oldtpUploadType
              _oldtpCallback
              (Just AltJSON)
              _oldtpPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsDeidentifyTemplatesPatchResource)
                      mempty
