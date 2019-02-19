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
-- Module      : Network.Google.Resource.FirebaseHosting.Sites.Releases.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new release which makes the content of the specified version
-- actively display on the site.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference> for @firebasehosting.sites.releases.create@.
module Network.Google.Resource.FirebaseHosting.Sites.Releases.Create
    (
    -- * REST Resource
      SitesReleasesCreateResource

    -- * Creating a Request
    , sitesReleasesCreate
    , SitesReleasesCreate

    -- * Request Lenses
    , srcParent
    , srcXgafv
    , srcUploadProtocol
    , srcVersionName
    , srcAccessToken
    , srcUploadType
    , srcPayload
    , srcCallback
    ) where

import           Network.Google.FirebaseHosting.Types
import           Network.Google.Prelude

-- | A resource alias for @firebasehosting.sites.releases.create@ method which the
-- 'SitesReleasesCreate' request conforms to.
type SitesReleasesCreateResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "releases" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "versionName" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Release :> Post '[JSON] Release

-- | Creates a new release which makes the content of the specified version
-- actively display on the site.
--
-- /See:/ 'sitesReleasesCreate' smart constructor.
data SitesReleasesCreate =
  SitesReleasesCreate'
    { _srcParent         :: !Text
    , _srcXgafv          :: !(Maybe Xgafv)
    , _srcUploadProtocol :: !(Maybe Text)
    , _srcVersionName    :: !(Maybe Text)
    , _srcAccessToken    :: !(Maybe Text)
    , _srcUploadType     :: !(Maybe Text)
    , _srcPayload        :: !Release
    , _srcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SitesReleasesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srcParent'
--
-- * 'srcXgafv'
--
-- * 'srcUploadProtocol'
--
-- * 'srcVersionName'
--
-- * 'srcAccessToken'
--
-- * 'srcUploadType'
--
-- * 'srcPayload'
--
-- * 'srcCallback'
sitesReleasesCreate
    :: Text -- ^ 'srcParent'
    -> Release -- ^ 'srcPayload'
    -> SitesReleasesCreate
sitesReleasesCreate pSrcParent_ pSrcPayload_ =
  SitesReleasesCreate'
    { _srcParent = pSrcParent_
    , _srcXgafv = Nothing
    , _srcUploadProtocol = Nothing
    , _srcVersionName = Nothing
    , _srcAccessToken = Nothing
    , _srcUploadType = Nothing
    , _srcPayload = pSrcPayload_
    , _srcCallback = Nothing
    }

-- | The site that the release belongs to, in the format: 'sites\/site-name'
srcParent :: Lens' SitesReleasesCreate Text
srcParent
  = lens _srcParent (\ s a -> s{_srcParent = a})

-- | V1 error format.
srcXgafv :: Lens' SitesReleasesCreate (Maybe Xgafv)
srcXgafv = lens _srcXgafv (\ s a -> s{_srcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
srcUploadProtocol :: Lens' SitesReleasesCreate (Maybe Text)
srcUploadProtocol
  = lens _srcUploadProtocol
      (\ s a -> s{_srcUploadProtocol = a})

-- | The unique identifier for a version, in the format:
-- '\/sites\/site-name\/versions\/versionID' The site-name in this version
-- identifier must match the site-name in the \`parent\` parameter.
-- This query parameter must be empty if the \`type\` field in the request
-- body is \`SITE_DISABLE\`.
srcVersionName :: Lens' SitesReleasesCreate (Maybe Text)
srcVersionName
  = lens _srcVersionName
      (\ s a -> s{_srcVersionName = a})

-- | OAuth access token.
srcAccessToken :: Lens' SitesReleasesCreate (Maybe Text)
srcAccessToken
  = lens _srcAccessToken
      (\ s a -> s{_srcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
srcUploadType :: Lens' SitesReleasesCreate (Maybe Text)
srcUploadType
  = lens _srcUploadType
      (\ s a -> s{_srcUploadType = a})

-- | Multipart request metadata.
srcPayload :: Lens' SitesReleasesCreate Release
srcPayload
  = lens _srcPayload (\ s a -> s{_srcPayload = a})

-- | JSONP
srcCallback :: Lens' SitesReleasesCreate (Maybe Text)
srcCallback
  = lens _srcCallback (\ s a -> s{_srcCallback = a})

instance GoogleRequest SitesReleasesCreate where
        type Rs SitesReleasesCreate = Release
        type Scopes SitesReleasesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase"]
        requestClient SitesReleasesCreate'{..}
          = go _srcParent _srcXgafv _srcUploadProtocol
              _srcVersionName
              _srcAccessToken
              _srcUploadType
              _srcCallback
              (Just AltJSON)
              _srcPayload
              firebaseHostingService
          where go
                  = buildClient
                      (Proxy :: Proxy SitesReleasesCreateResource)
                      mempty
