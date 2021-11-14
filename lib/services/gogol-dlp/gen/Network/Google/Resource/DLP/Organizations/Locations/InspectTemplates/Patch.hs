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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.inspectTemplates.patch@.
module Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.Patch
    (
    -- * REST Resource
      OrganizationsLocationsInspectTemplatesPatchResource

    -- * Creating a Request
    , organizationsLocationsInspectTemplatesPatch
    , OrganizationsLocationsInspectTemplatesPatch

    -- * Request Lenses
    , olitpXgafv
    , olitpUploadProtocol
    , olitpAccessToken
    , olitpUploadType
    , olitpPayload
    , olitpName
    , olitpCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.inspectTemplates.patch@ method which the
-- 'OrganizationsLocationsInspectTemplatesPatch' request conforms to.
type OrganizationsLocationsInspectTemplatesPatchResource
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
                       GooglePrivacyDlpV2UpdateInspectTemplateRequest
                       :> Patch '[JSON] GooglePrivacyDlpV2InspectTemplate

-- | Updates the InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'organizationsLocationsInspectTemplatesPatch' smart constructor.
data OrganizationsLocationsInspectTemplatesPatch =
  OrganizationsLocationsInspectTemplatesPatch'
    { _olitpXgafv :: !(Maybe Xgafv)
    , _olitpUploadProtocol :: !(Maybe Text)
    , _olitpAccessToken :: !(Maybe Text)
    , _olitpUploadType :: !(Maybe Text)
    , _olitpPayload :: !GooglePrivacyDlpV2UpdateInspectTemplateRequest
    , _olitpName :: !Text
    , _olitpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsInspectTemplatesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olitpXgafv'
--
-- * 'olitpUploadProtocol'
--
-- * 'olitpAccessToken'
--
-- * 'olitpUploadType'
--
-- * 'olitpPayload'
--
-- * 'olitpName'
--
-- * 'olitpCallback'
organizationsLocationsInspectTemplatesPatch
    :: GooglePrivacyDlpV2UpdateInspectTemplateRequest -- ^ 'olitpPayload'
    -> Text -- ^ 'olitpName'
    -> OrganizationsLocationsInspectTemplatesPatch
organizationsLocationsInspectTemplatesPatch pOlitpPayload_ pOlitpName_ =
  OrganizationsLocationsInspectTemplatesPatch'
    { _olitpXgafv = Nothing
    , _olitpUploadProtocol = Nothing
    , _olitpAccessToken = Nothing
    , _olitpUploadType = Nothing
    , _olitpPayload = pOlitpPayload_
    , _olitpName = pOlitpName_
    , _olitpCallback = Nothing
    }


-- | V1 error format.
olitpXgafv :: Lens' OrganizationsLocationsInspectTemplatesPatch (Maybe Xgafv)
olitpXgafv
  = lens _olitpXgafv (\ s a -> s{_olitpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olitpUploadProtocol :: Lens' OrganizationsLocationsInspectTemplatesPatch (Maybe Text)
olitpUploadProtocol
  = lens _olitpUploadProtocol
      (\ s a -> s{_olitpUploadProtocol = a})

-- | OAuth access token.
olitpAccessToken :: Lens' OrganizationsLocationsInspectTemplatesPatch (Maybe Text)
olitpAccessToken
  = lens _olitpAccessToken
      (\ s a -> s{_olitpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olitpUploadType :: Lens' OrganizationsLocationsInspectTemplatesPatch (Maybe Text)
olitpUploadType
  = lens _olitpUploadType
      (\ s a -> s{_olitpUploadType = a})

-- | Multipart request metadata.
olitpPayload :: Lens' OrganizationsLocationsInspectTemplatesPatch GooglePrivacyDlpV2UpdateInspectTemplateRequest
olitpPayload
  = lens _olitpPayload (\ s a -> s{_olitpPayload = a})

-- | Required. Resource name of organization and inspectTemplate to be
-- updated, for example
-- \`organizations\/433245324\/inspectTemplates\/432452342\` or
-- projects\/project-id\/inspectTemplates\/432452342.
olitpName :: Lens' OrganizationsLocationsInspectTemplatesPatch Text
olitpName
  = lens _olitpName (\ s a -> s{_olitpName = a})

-- | JSONP
olitpCallback :: Lens' OrganizationsLocationsInspectTemplatesPatch (Maybe Text)
olitpCallback
  = lens _olitpCallback
      (\ s a -> s{_olitpCallback = a})

instance GoogleRequest
           OrganizationsLocationsInspectTemplatesPatch
         where
        type Rs OrganizationsLocationsInspectTemplatesPatch =
             GooglePrivacyDlpV2InspectTemplate
        type Scopes
               OrganizationsLocationsInspectTemplatesPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsInspectTemplatesPatch'{..}
          = go _olitpName _olitpXgafv _olitpUploadProtocol
              _olitpAccessToken
              _olitpUploadType
              _olitpCallback
              (Just AltJSON)
              _olitpPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsInspectTemplatesPatchResource)
                      mempty
