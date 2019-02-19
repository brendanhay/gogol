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
-- Module      : Network.Google.Resource.DLP.Projects.StoredInfoTypes.Patch
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
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.storedInfoTypes.patch@.
module Network.Google.Resource.DLP.Projects.StoredInfoTypes.Patch
    (
    -- * REST Resource
      ProjectsStoredInfoTypesPatchResource

    -- * Creating a Request
    , projectsStoredInfoTypesPatch
    , ProjectsStoredInfoTypesPatch

    -- * Request Lenses
    , psitpXgafv
    , psitpUploadProtocol
    , psitpAccessToken
    , psitpUploadType
    , psitpPayload
    , psitpName
    , psitpCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.storedInfoTypes.patch@ method which the
-- 'ProjectsStoredInfoTypesPatch' request conforms to.
type ProjectsStoredInfoTypesPatchResource =
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
-- /See:/ 'projectsStoredInfoTypesPatch' smart constructor.
data ProjectsStoredInfoTypesPatch =
  ProjectsStoredInfoTypesPatch'
    { _psitpXgafv          :: !(Maybe Xgafv)
    , _psitpUploadProtocol :: !(Maybe Text)
    , _psitpAccessToken    :: !(Maybe Text)
    , _psitpUploadType     :: !(Maybe Text)
    , _psitpPayload        :: !GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
    , _psitpName           :: !Text
    , _psitpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsStoredInfoTypesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psitpXgafv'
--
-- * 'psitpUploadProtocol'
--
-- * 'psitpAccessToken'
--
-- * 'psitpUploadType'
--
-- * 'psitpPayload'
--
-- * 'psitpName'
--
-- * 'psitpCallback'
projectsStoredInfoTypesPatch
    :: GooglePrivacyDlpV2UpdateStoredInfoTypeRequest -- ^ 'psitpPayload'
    -> Text -- ^ 'psitpName'
    -> ProjectsStoredInfoTypesPatch
projectsStoredInfoTypesPatch pPsitpPayload_ pPsitpName_ =
  ProjectsStoredInfoTypesPatch'
    { _psitpXgafv = Nothing
    , _psitpUploadProtocol = Nothing
    , _psitpAccessToken = Nothing
    , _psitpUploadType = Nothing
    , _psitpPayload = pPsitpPayload_
    , _psitpName = pPsitpName_
    , _psitpCallback = Nothing
    }

-- | V1 error format.
psitpXgafv :: Lens' ProjectsStoredInfoTypesPatch (Maybe Xgafv)
psitpXgafv
  = lens _psitpXgafv (\ s a -> s{_psitpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psitpUploadProtocol :: Lens' ProjectsStoredInfoTypesPatch (Maybe Text)
psitpUploadProtocol
  = lens _psitpUploadProtocol
      (\ s a -> s{_psitpUploadProtocol = a})

-- | OAuth access token.
psitpAccessToken :: Lens' ProjectsStoredInfoTypesPatch (Maybe Text)
psitpAccessToken
  = lens _psitpAccessToken
      (\ s a -> s{_psitpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psitpUploadType :: Lens' ProjectsStoredInfoTypesPatch (Maybe Text)
psitpUploadType
  = lens _psitpUploadType
      (\ s a -> s{_psitpUploadType = a})

-- | Multipart request metadata.
psitpPayload :: Lens' ProjectsStoredInfoTypesPatch GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
psitpPayload
  = lens _psitpPayload (\ s a -> s{_psitpPayload = a})

-- | Resource name of organization and storedInfoType to be updated, for
-- example \`organizations\/433245324\/storedInfoTypes\/432452342\` or
-- projects\/project-id\/storedInfoTypes\/432452342.
psitpName :: Lens' ProjectsStoredInfoTypesPatch Text
psitpName
  = lens _psitpName (\ s a -> s{_psitpName = a})

-- | JSONP
psitpCallback :: Lens' ProjectsStoredInfoTypesPatch (Maybe Text)
psitpCallback
  = lens _psitpCallback
      (\ s a -> s{_psitpCallback = a})

instance GoogleRequest ProjectsStoredInfoTypesPatch
         where
        type Rs ProjectsStoredInfoTypesPatch =
             GooglePrivacyDlpV2StoredInfoType
        type Scopes ProjectsStoredInfoTypesPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsStoredInfoTypesPatch'{..}
          = go _psitpName _psitpXgafv _psitpUploadProtocol
              _psitpAccessToken
              _psitpUploadType
              _psitpCallback
              (Just AltJSON)
              _psitpPayload
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsStoredInfoTypesPatchResource)
                      mempty
