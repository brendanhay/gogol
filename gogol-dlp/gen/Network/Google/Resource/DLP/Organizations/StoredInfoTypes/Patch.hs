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
-- Module      : Network.Google.Resource.DLP.Organizations.StoredInfoTypes.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
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
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.storedInfoTypes.patch@.
module Network.Google.Resource.DLP.Organizations.StoredInfoTypes.Patch
    (
    -- * REST Resource
      OrganizationsStoredInfoTypesPatchResource

    -- * Creating a Request
    , organizationsStoredInfoTypesPatch
    , OrganizationsStoredInfoTypesPatch

    -- * Request Lenses
    , ositpXgafv
    , ositpUploadProtocol
    , ositpAccessToken
    , ositpUploadType
    , ositpPayload
    , ositpName
    , ositpCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.storedInfoTypes.patch@ method which the
-- 'OrganizationsStoredInfoTypesPatch' request conforms to.
type OrganizationsStoredInfoTypesPatchResource =
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
-- /See:/ 'organizationsStoredInfoTypesPatch' smart constructor.
data OrganizationsStoredInfoTypesPatch =
  OrganizationsStoredInfoTypesPatch'
    { _ositpXgafv :: !(Maybe Xgafv)
    , _ositpUploadProtocol :: !(Maybe Text)
    , _ositpAccessToken :: !(Maybe Text)
    , _ositpUploadType :: !(Maybe Text)
    , _ositpPayload :: !GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
    , _ositpName :: !Text
    , _ositpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsStoredInfoTypesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ositpXgafv'
--
-- * 'ositpUploadProtocol'
--
-- * 'ositpAccessToken'
--
-- * 'ositpUploadType'
--
-- * 'ositpPayload'
--
-- * 'ositpName'
--
-- * 'ositpCallback'
organizationsStoredInfoTypesPatch
    :: GooglePrivacyDlpV2UpdateStoredInfoTypeRequest -- ^ 'ositpPayload'
    -> Text -- ^ 'ositpName'
    -> OrganizationsStoredInfoTypesPatch
organizationsStoredInfoTypesPatch pOsitpPayload_ pOsitpName_ =
  OrganizationsStoredInfoTypesPatch'
    { _ositpXgafv = Nothing
    , _ositpUploadProtocol = Nothing
    , _ositpAccessToken = Nothing
    , _ositpUploadType = Nothing
    , _ositpPayload = pOsitpPayload_
    , _ositpName = pOsitpName_
    , _ositpCallback = Nothing
    }


-- | V1 error format.
ositpXgafv :: Lens' OrganizationsStoredInfoTypesPatch (Maybe Xgafv)
ositpXgafv
  = lens _ositpXgafv (\ s a -> s{_ositpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ositpUploadProtocol :: Lens' OrganizationsStoredInfoTypesPatch (Maybe Text)
ositpUploadProtocol
  = lens _ositpUploadProtocol
      (\ s a -> s{_ositpUploadProtocol = a})

-- | OAuth access token.
ositpAccessToken :: Lens' OrganizationsStoredInfoTypesPatch (Maybe Text)
ositpAccessToken
  = lens _ositpAccessToken
      (\ s a -> s{_ositpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ositpUploadType :: Lens' OrganizationsStoredInfoTypesPatch (Maybe Text)
ositpUploadType
  = lens _ositpUploadType
      (\ s a -> s{_ositpUploadType = a})

-- | Multipart request metadata.
ositpPayload :: Lens' OrganizationsStoredInfoTypesPatch GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
ositpPayload
  = lens _ositpPayload (\ s a -> s{_ositpPayload = a})

-- | Required. Resource name of organization and storedInfoType to be
-- updated, for example
-- \`organizations\/433245324\/storedInfoTypes\/432452342\` or
-- projects\/project-id\/storedInfoTypes\/432452342.
ositpName :: Lens' OrganizationsStoredInfoTypesPatch Text
ositpName
  = lens _ositpName (\ s a -> s{_ositpName = a})

-- | JSONP
ositpCallback :: Lens' OrganizationsStoredInfoTypesPatch (Maybe Text)
ositpCallback
  = lens _ositpCallback
      (\ s a -> s{_ositpCallback = a})

instance GoogleRequest
           OrganizationsStoredInfoTypesPatch
         where
        type Rs OrganizationsStoredInfoTypesPatch =
             GooglePrivacyDlpV2StoredInfoType
        type Scopes OrganizationsStoredInfoTypesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsStoredInfoTypesPatch'{..}
          = go _ositpName _ositpXgafv _ositpUploadProtocol
              _ositpAccessToken
              _ositpUploadType
              _ositpCallback
              (Just AltJSON)
              _ositpPayload
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsStoredInfoTypesPatchResource)
                      mempty
