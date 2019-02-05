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
-- Module      : Network.Google.Resource.DLP.Organizations.InspectTemplates.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.inspectTemplates.patch@.
module Network.Google.Resource.DLP.Organizations.InspectTemplates.Patch
    (
    -- * REST Resource
      OrganizationsInspectTemplatesPatchResource

    -- * Creating a Request
    , organizationsInspectTemplatesPatch
    , OrganizationsInspectTemplatesPatch

    -- * Request Lenses
    , oitpXgafv
    , oitpUploadProtocol
    , oitpAccessToken
    , oitpUploadType
    , oitpPayload
    , oitpName
    , oitpCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.organizations.inspectTemplates.patch@ method which the
-- 'OrganizationsInspectTemplatesPatch' request conforms to.
type OrganizationsInspectTemplatesPatchResource =
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
-- /See:/ 'organizationsInspectTemplatesPatch' smart constructor.
data OrganizationsInspectTemplatesPatch = OrganizationsInspectTemplatesPatch'
    { _oitpXgafv          :: !(Maybe Xgafv)
    , _oitpUploadProtocol :: !(Maybe Text)
    , _oitpAccessToken    :: !(Maybe Text)
    , _oitpUploadType     :: !(Maybe Text)
    , _oitpPayload        :: !GooglePrivacyDlpV2UpdateInspectTemplateRequest
    , _oitpName           :: !Text
    , _oitpCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrganizationsInspectTemplatesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oitpXgafv'
--
-- * 'oitpUploadProtocol'
--
-- * 'oitpAccessToken'
--
-- * 'oitpUploadType'
--
-- * 'oitpPayload'
--
-- * 'oitpName'
--
-- * 'oitpCallback'
organizationsInspectTemplatesPatch
    :: GooglePrivacyDlpV2UpdateInspectTemplateRequest -- ^ 'oitpPayload'
    -> Text -- ^ 'oitpName'
    -> OrganizationsInspectTemplatesPatch
organizationsInspectTemplatesPatch pOitpPayload_ pOitpName_ =
    OrganizationsInspectTemplatesPatch'
    { _oitpXgafv = Nothing
    , _oitpUploadProtocol = Nothing
    , _oitpAccessToken = Nothing
    , _oitpUploadType = Nothing
    , _oitpPayload = pOitpPayload_
    , _oitpName = pOitpName_
    , _oitpCallback = Nothing
    }

-- | V1 error format.
oitpXgafv :: Lens' OrganizationsInspectTemplatesPatch (Maybe Xgafv)
oitpXgafv
  = lens _oitpXgafv (\ s a -> s{_oitpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oitpUploadProtocol :: Lens' OrganizationsInspectTemplatesPatch (Maybe Text)
oitpUploadProtocol
  = lens _oitpUploadProtocol
      (\ s a -> s{_oitpUploadProtocol = a})

-- | OAuth access token.
oitpAccessToken :: Lens' OrganizationsInspectTemplatesPatch (Maybe Text)
oitpAccessToken
  = lens _oitpAccessToken
      (\ s a -> s{_oitpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oitpUploadType :: Lens' OrganizationsInspectTemplatesPatch (Maybe Text)
oitpUploadType
  = lens _oitpUploadType
      (\ s a -> s{_oitpUploadType = a})

-- | Multipart request metadata.
oitpPayload :: Lens' OrganizationsInspectTemplatesPatch GooglePrivacyDlpV2UpdateInspectTemplateRequest
oitpPayload
  = lens _oitpPayload (\ s a -> s{_oitpPayload = a})

-- | Resource name of organization and inspectTemplate to be updated, for
-- example \`organizations\/433245324\/inspectTemplates\/432452342\` or
-- projects\/project-id\/inspectTemplates\/432452342.
oitpName :: Lens' OrganizationsInspectTemplatesPatch Text
oitpName = lens _oitpName (\ s a -> s{_oitpName = a})

-- | JSONP
oitpCallback :: Lens' OrganizationsInspectTemplatesPatch (Maybe Text)
oitpCallback
  = lens _oitpCallback (\ s a -> s{_oitpCallback = a})

instance GoogleRequest
         OrganizationsInspectTemplatesPatch where
        type Rs OrganizationsInspectTemplatesPatch =
             GooglePrivacyDlpV2InspectTemplate
        type Scopes OrganizationsInspectTemplatesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsInspectTemplatesPatch'{..}
          = go _oitpName _oitpXgafv _oitpUploadProtocol
              _oitpAccessToken
              _oitpUploadType
              _oitpCallback
              (Just AltJSON)
              _oitpPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsInspectTemplatesPatchResource)
                      mempty
