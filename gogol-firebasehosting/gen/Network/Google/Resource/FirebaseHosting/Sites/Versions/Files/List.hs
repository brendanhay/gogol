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
-- Module      : Network.Google.Resource.FirebaseHosting.Sites.Versions.Files.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the remaining files to be uploaded for the specified version.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference> for @firebasehosting.sites.versions.files.list@.
module Network.Google.Resource.FirebaseHosting.Sites.Versions.Files.List
    (
    -- * REST Resource
      SitesVersionsFilesListResource

    -- * Creating a Request
    , sitesVersionsFilesList
    , SitesVersionsFilesList

    -- * Request Lenses
    , svflParent
    , svflStatus
    , svflXgafv
    , svflUploadProtocol
    , svflAccessToken
    , svflUploadType
    , svflPageToken
    , svflPageSize
    , svflCallback
    ) where

import           Network.Google.FirebaseHosting.Types
import           Network.Google.Prelude

-- | A resource alias for @firebasehosting.sites.versions.files.list@ method which the
-- 'SitesVersionsFilesList' request conforms to.
type SitesVersionsFilesListResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "files" :>
           QueryParam "status" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListVersionFilesResponse

-- | Lists the remaining files to be uploaded for the specified version.
--
-- /See:/ 'sitesVersionsFilesList' smart constructor.
data SitesVersionsFilesList = SitesVersionsFilesList'
    { _svflParent         :: !Text
    , _svflStatus         :: !(Maybe Text)
    , _svflXgafv          :: !(Maybe Xgafv)
    , _svflUploadProtocol :: !(Maybe Text)
    , _svflAccessToken    :: !(Maybe Text)
    , _svflUploadType     :: !(Maybe Text)
    , _svflPageToken      :: !(Maybe Text)
    , _svflPageSize       :: !(Maybe (Textual Int32))
    , _svflCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesVersionsFilesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svflParent'
--
-- * 'svflStatus'
--
-- * 'svflXgafv'
--
-- * 'svflUploadProtocol'
--
-- * 'svflAccessToken'
--
-- * 'svflUploadType'
--
-- * 'svflPageToken'
--
-- * 'svflPageSize'
--
-- * 'svflCallback'
sitesVersionsFilesList
    :: Text -- ^ 'svflParent'
    -> SitesVersionsFilesList
sitesVersionsFilesList pSvflParent_ =
    SitesVersionsFilesList'
    { _svflParent = pSvflParent_
    , _svflStatus = Nothing
    , _svflXgafv = Nothing
    , _svflUploadProtocol = Nothing
    , _svflAccessToken = Nothing
    , _svflUploadType = Nothing
    , _svflPageToken = Nothing
    , _svflPageSize = Nothing
    , _svflCallback = Nothing
    }

-- | Required. The parent to list files for, in the format:
-- 'sites\/site-name\/versions\/versionID'
svflParent :: Lens' SitesVersionsFilesList Text
svflParent
  = lens _svflParent (\ s a -> s{_svflParent = a})

-- | The type of files in the version that should be listed.
svflStatus :: Lens' SitesVersionsFilesList (Maybe Text)
svflStatus
  = lens _svflStatus (\ s a -> s{_svflStatus = a})

-- | V1 error format.
svflXgafv :: Lens' SitesVersionsFilesList (Maybe Xgafv)
svflXgafv
  = lens _svflXgafv (\ s a -> s{_svflXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svflUploadProtocol :: Lens' SitesVersionsFilesList (Maybe Text)
svflUploadProtocol
  = lens _svflUploadProtocol
      (\ s a -> s{_svflUploadProtocol = a})

-- | OAuth access token.
svflAccessToken :: Lens' SitesVersionsFilesList (Maybe Text)
svflAccessToken
  = lens _svflAccessToken
      (\ s a -> s{_svflAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svflUploadType :: Lens' SitesVersionsFilesList (Maybe Text)
svflUploadType
  = lens _svflUploadType
      (\ s a -> s{_svflUploadType = a})

-- | The next_page_token from a previous request, if provided. This will be
-- the encoded version of a
-- firebase.hosting.proto.metadata.ListFilesPageToken.
svflPageToken :: Lens' SitesVersionsFilesList (Maybe Text)
svflPageToken
  = lens _svflPageToken
      (\ s a -> s{_svflPageToken = a})

-- | The page size to return. Defaults to 1000.
svflPageSize :: Lens' SitesVersionsFilesList (Maybe Int32)
svflPageSize
  = lens _svflPageSize (\ s a -> s{_svflPageSize = a})
      . mapping _Coerce

-- | JSONP
svflCallback :: Lens' SitesVersionsFilesList (Maybe Text)
svflCallback
  = lens _svflCallback (\ s a -> s{_svflCallback = a})

instance GoogleRequest SitesVersionsFilesList where
        type Rs SitesVersionsFilesList =
             ListVersionFilesResponse
        type Scopes SitesVersionsFilesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/firebase",
               "https://www.googleapis.com/auth/firebase.readonly"]
        requestClient SitesVersionsFilesList'{..}
          = go _svflParent _svflStatus _svflXgafv
              _svflUploadProtocol
              _svflAccessToken
              _svflUploadType
              _svflPageToken
              _svflPageSize
              _svflCallback
              (Just AltJSON)
              firebaseHostingService
          where go
                  = buildClient
                      (Proxy :: Proxy SitesVersionsFilesListResource)
                      mempty
