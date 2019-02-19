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
-- Module      : Network.Google.Resource.FirebaseHosting.Sites.Versions.PopulateFiles
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds content files to a version.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference> for @firebasehosting.sites.versions.populateFiles@.
module Network.Google.Resource.FirebaseHosting.Sites.Versions.PopulateFiles
    (
    -- * REST Resource
      SitesVersionsPopulateFilesResource

    -- * Creating a Request
    , sitesVersionsPopulateFiles
    , SitesVersionsPopulateFiles

    -- * Request Lenses
    , svpfParent
    , svpfXgafv
    , svpfUploadProtocol
    , svpfAccessToken
    , svpfUploadType
    , svpfPayload
    , svpfCallback
    ) where

import           Network.Google.FirebaseHosting.Types
import           Network.Google.Prelude

-- | A resource alias for @firebasehosting.sites.versions.populateFiles@ method which the
-- 'SitesVersionsPopulateFiles' request conforms to.
type SitesVersionsPopulateFilesResource =
     "v1beta1" :>
       CaptureMode "parent" "populateFiles" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PopulateVersionFilesRequest :>
                       Post '[JSON] PopulateVersionFilesResponse

-- | Adds content files to a version.
--
-- /See:/ 'sitesVersionsPopulateFiles' smart constructor.
data SitesVersionsPopulateFiles =
  SitesVersionsPopulateFiles'
    { _svpfParent         :: !Text
    , _svpfXgafv          :: !(Maybe Xgafv)
    , _svpfUploadProtocol :: !(Maybe Text)
    , _svpfAccessToken    :: !(Maybe Text)
    , _svpfUploadType     :: !(Maybe Text)
    , _svpfPayload        :: !PopulateVersionFilesRequest
    , _svpfCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SitesVersionsPopulateFiles' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svpfParent'
--
-- * 'svpfXgafv'
--
-- * 'svpfUploadProtocol'
--
-- * 'svpfAccessToken'
--
-- * 'svpfUploadType'
--
-- * 'svpfPayload'
--
-- * 'svpfCallback'
sitesVersionsPopulateFiles
    :: Text -- ^ 'svpfParent'
    -> PopulateVersionFilesRequest -- ^ 'svpfPayload'
    -> SitesVersionsPopulateFiles
sitesVersionsPopulateFiles pSvpfParent_ pSvpfPayload_ =
  SitesVersionsPopulateFiles'
    { _svpfParent = pSvpfParent_
    , _svpfXgafv = Nothing
    , _svpfUploadProtocol = Nothing
    , _svpfAccessToken = Nothing
    , _svpfUploadType = Nothing
    , _svpfPayload = pSvpfPayload_
    , _svpfCallback = Nothing
    }

-- | Required. The version to add files to, in the format:
-- 'sites\/site-name\/versions\/versionID'
svpfParent :: Lens' SitesVersionsPopulateFiles Text
svpfParent
  = lens _svpfParent (\ s a -> s{_svpfParent = a})

-- | V1 error format.
svpfXgafv :: Lens' SitesVersionsPopulateFiles (Maybe Xgafv)
svpfXgafv
  = lens _svpfXgafv (\ s a -> s{_svpfXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svpfUploadProtocol :: Lens' SitesVersionsPopulateFiles (Maybe Text)
svpfUploadProtocol
  = lens _svpfUploadProtocol
      (\ s a -> s{_svpfUploadProtocol = a})

-- | OAuth access token.
svpfAccessToken :: Lens' SitesVersionsPopulateFiles (Maybe Text)
svpfAccessToken
  = lens _svpfAccessToken
      (\ s a -> s{_svpfAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svpfUploadType :: Lens' SitesVersionsPopulateFiles (Maybe Text)
svpfUploadType
  = lens _svpfUploadType
      (\ s a -> s{_svpfUploadType = a})

-- | Multipart request metadata.
svpfPayload :: Lens' SitesVersionsPopulateFiles PopulateVersionFilesRequest
svpfPayload
  = lens _svpfPayload (\ s a -> s{_svpfPayload = a})

-- | JSONP
svpfCallback :: Lens' SitesVersionsPopulateFiles (Maybe Text)
svpfCallback
  = lens _svpfCallback (\ s a -> s{_svpfCallback = a})

instance GoogleRequest SitesVersionsPopulateFiles
         where
        type Rs SitesVersionsPopulateFiles =
             PopulateVersionFilesResponse
        type Scopes SitesVersionsPopulateFiles =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase"]
        requestClient SitesVersionsPopulateFiles'{..}
          = go _svpfParent _svpfXgafv _svpfUploadProtocol
              _svpfAccessToken
              _svpfUploadType
              _svpfCallback
              (Just AltJSON)
              _svpfPayload
              firebaseHostingService
          where go
                  = buildClient
                      (Proxy :: Proxy SitesVersionsPopulateFilesResource)
                      mempty
