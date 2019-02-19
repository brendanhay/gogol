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
-- Module      : Network.Google.Resource.FirebaseHosting.Sites.Releases.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the releases that have been created on the specified site.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference> for @firebasehosting.sites.releases.list@.
module Network.Google.Resource.FirebaseHosting.Sites.Releases.List
    (
    -- * REST Resource
      SitesReleasesListResource

    -- * Creating a Request
    , sitesReleasesList
    , SitesReleasesList

    -- * Request Lenses
    , srlParent
    , srlXgafv
    , srlUploadProtocol
    , srlAccessToken
    , srlUploadType
    , srlPageToken
    , srlPageSize
    , srlCallback
    ) where

import           Network.Google.FirebaseHosting.Types
import           Network.Google.Prelude

-- | A resource alias for @firebasehosting.sites.releases.list@ method which the
-- 'SitesReleasesList' request conforms to.
type SitesReleasesListResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "releases" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListReleasesResponse

-- | Lists the releases that have been created on the specified site.
--
-- /See:/ 'sitesReleasesList' smart constructor.
data SitesReleasesList =
  SitesReleasesList'
    { _srlParent         :: !Text
    , _srlXgafv          :: !(Maybe Xgafv)
    , _srlUploadProtocol :: !(Maybe Text)
    , _srlAccessToken    :: !(Maybe Text)
    , _srlUploadType     :: !(Maybe Text)
    , _srlPageToken      :: !(Maybe Text)
    , _srlPageSize       :: !(Maybe (Textual Int32))
    , _srlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitesReleasesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srlParent'
--
-- * 'srlXgafv'
--
-- * 'srlUploadProtocol'
--
-- * 'srlAccessToken'
--
-- * 'srlUploadType'
--
-- * 'srlPageToken'
--
-- * 'srlPageSize'
--
-- * 'srlCallback'
sitesReleasesList
    :: Text -- ^ 'srlParent'
    -> SitesReleasesList
sitesReleasesList pSrlParent_ =
  SitesReleasesList'
    { _srlParent = pSrlParent_
    , _srlXgafv = Nothing
    , _srlUploadProtocol = Nothing
    , _srlAccessToken = Nothing
    , _srlUploadType = Nothing
    , _srlPageToken = Nothing
    , _srlPageSize = Nothing
    , _srlCallback = Nothing
    }


-- | Required. The parent for which to list files, in the format:
-- 'sites\/site-name'
srlParent :: Lens' SitesReleasesList Text
srlParent
  = lens _srlParent (\ s a -> s{_srlParent = a})

-- | V1 error format.
srlXgafv :: Lens' SitesReleasesList (Maybe Xgafv)
srlXgafv = lens _srlXgafv (\ s a -> s{_srlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
srlUploadProtocol :: Lens' SitesReleasesList (Maybe Text)
srlUploadProtocol
  = lens _srlUploadProtocol
      (\ s a -> s{_srlUploadProtocol = a})

-- | OAuth access token.
srlAccessToken :: Lens' SitesReleasesList (Maybe Text)
srlAccessToken
  = lens _srlAccessToken
      (\ s a -> s{_srlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
srlUploadType :: Lens' SitesReleasesList (Maybe Text)
srlUploadType
  = lens _srlUploadType
      (\ s a -> s{_srlUploadType = a})

-- | The next_page_token from a previous request, if provided.
srlPageToken :: Lens' SitesReleasesList (Maybe Text)
srlPageToken
  = lens _srlPageToken (\ s a -> s{_srlPageToken = a})

-- | The page size to return. Defaults to 100.
srlPageSize :: Lens' SitesReleasesList (Maybe Int32)
srlPageSize
  = lens _srlPageSize (\ s a -> s{_srlPageSize = a}) .
      mapping _Coerce

-- | JSONP
srlCallback :: Lens' SitesReleasesList (Maybe Text)
srlCallback
  = lens _srlCallback (\ s a -> s{_srlCallback = a})

instance GoogleRequest SitesReleasesList where
        type Rs SitesReleasesList = ListReleasesResponse
        type Scopes SitesReleasesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/firebase",
               "https://www.googleapis.com/auth/firebase.readonly"]
        requestClient SitesReleasesList'{..}
          = go _srlParent _srlXgafv _srlUploadProtocol
              _srlAccessToken
              _srlUploadType
              _srlPageToken
              _srlPageSize
              _srlCallback
              (Just AltJSON)
              firebaseHostingService
          where go
                  = buildClient
                      (Proxy :: Proxy SitesReleasesListResource)
                      mempty
