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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the stored infoType by creating a new version. The existing
-- version will continue to be used until the new version is ready. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.storedInfoTypes.patch@.
module Network.Google.Resource.DLP.Organizations.Locations.StoredInfoTypes.Patch
    (
    -- * REST Resource
      OrganizationsLocationsStoredInfoTypesPatchResource

    -- * Creating a Request
    , organizationsLocationsStoredInfoTypesPatch
    , OrganizationsLocationsStoredInfoTypesPatch

    -- * Request Lenses
    , olsitpXgafv
    , olsitpUploadProtocol
    , olsitpAccessToken
    , olsitpUploadType
    , olsitpPayload
    , olsitpName
    , olsitpCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.storedInfoTypes.patch@ method which the
-- 'OrganizationsLocationsStoredInfoTypesPatch' request conforms to.
type OrganizationsLocationsStoredInfoTypesPatchResource
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
                       GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
                       :> Patch '[JSON] GooglePrivacyDlpV2StoredInfoType

-- | Updates the stored infoType by creating a new version. The existing
-- version will continue to be used until the new version is ready. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ 'organizationsLocationsStoredInfoTypesPatch' smart constructor.
data OrganizationsLocationsStoredInfoTypesPatch =
  OrganizationsLocationsStoredInfoTypesPatch'
    { _olsitpXgafv :: !(Maybe Xgafv)
    , _olsitpUploadProtocol :: !(Maybe Text)
    , _olsitpAccessToken :: !(Maybe Text)
    , _olsitpUploadType :: !(Maybe Text)
    , _olsitpPayload :: !GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
    , _olsitpName :: !Text
    , _olsitpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsStoredInfoTypesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olsitpXgafv'
--
-- * 'olsitpUploadProtocol'
--
-- * 'olsitpAccessToken'
--
-- * 'olsitpUploadType'
--
-- * 'olsitpPayload'
--
-- * 'olsitpName'
--
-- * 'olsitpCallback'
organizationsLocationsStoredInfoTypesPatch
    :: GooglePrivacyDlpV2UpdateStoredInfoTypeRequest -- ^ 'olsitpPayload'
    -> Text -- ^ 'olsitpName'
    -> OrganizationsLocationsStoredInfoTypesPatch
organizationsLocationsStoredInfoTypesPatch pOlsitpPayload_ pOlsitpName_ =
  OrganizationsLocationsStoredInfoTypesPatch'
    { _olsitpXgafv = Nothing
    , _olsitpUploadProtocol = Nothing
    , _olsitpAccessToken = Nothing
    , _olsitpUploadType = Nothing
    , _olsitpPayload = pOlsitpPayload_
    , _olsitpName = pOlsitpName_
    , _olsitpCallback = Nothing
    }


-- | V1 error format.
olsitpXgafv :: Lens' OrganizationsLocationsStoredInfoTypesPatch (Maybe Xgafv)
olsitpXgafv
  = lens _olsitpXgafv (\ s a -> s{_olsitpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olsitpUploadProtocol :: Lens' OrganizationsLocationsStoredInfoTypesPatch (Maybe Text)
olsitpUploadProtocol
  = lens _olsitpUploadProtocol
      (\ s a -> s{_olsitpUploadProtocol = a})

-- | OAuth access token.
olsitpAccessToken :: Lens' OrganizationsLocationsStoredInfoTypesPatch (Maybe Text)
olsitpAccessToken
  = lens _olsitpAccessToken
      (\ s a -> s{_olsitpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olsitpUploadType :: Lens' OrganizationsLocationsStoredInfoTypesPatch (Maybe Text)
olsitpUploadType
  = lens _olsitpUploadType
      (\ s a -> s{_olsitpUploadType = a})

-- | Multipart request metadata.
olsitpPayload :: Lens' OrganizationsLocationsStoredInfoTypesPatch GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
olsitpPayload
  = lens _olsitpPayload
      (\ s a -> s{_olsitpPayload = a})

-- | Required. Resource name of organization and storedInfoType to be
-- updated, for example
-- \`organizations\/433245324\/storedInfoTypes\/432452342\` or
-- projects\/project-id\/storedInfoTypes\/432452342.
olsitpName :: Lens' OrganizationsLocationsStoredInfoTypesPatch Text
olsitpName
  = lens _olsitpName (\ s a -> s{_olsitpName = a})

-- | JSONP
olsitpCallback :: Lens' OrganizationsLocationsStoredInfoTypesPatch (Maybe Text)
olsitpCallback
  = lens _olsitpCallback
      (\ s a -> s{_olsitpCallback = a})

instance GoogleRequest
           OrganizationsLocationsStoredInfoTypesPatch
         where
        type Rs OrganizationsLocationsStoredInfoTypesPatch =
             GooglePrivacyDlpV2StoredInfoType
        type Scopes
               OrganizationsLocationsStoredInfoTypesPatch
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsStoredInfoTypesPatch'{..}
          = go _olsitpName _olsitpXgafv _olsitpUploadProtocol
              _olsitpAccessToken
              _olsitpUploadType
              _olsitpCallback
              (Just AltJSON)
              _olsitpPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsStoredInfoTypesPatchResource)
                      mempty
