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
-- Module      : Network.Google.Resource.FirebaseHosting.Sites.Versions.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new version for a site.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference> for @firebasehosting.sites.versions.create@.
module Network.Google.Resource.FirebaseHosting.Sites.Versions.Create
    (
    -- * REST Resource
      SitesVersionsCreateResource

    -- * Creating a Request
    , sitesVersionsCreate
    , SitesVersionsCreate

    -- * Request Lenses
    , svcSizeBytes
    , svcParent
    , svcXgafv
    , svcVersionId
    , svcUploadProtocol
    , svcAccessToken
    , svcUploadType
    , svcPayload
    , svcCallback
    ) where

import           Network.Google.FirebaseHosting.Types
import           Network.Google.Prelude

-- | A resource alias for @firebasehosting.sites.versions.create@ method which the
-- 'SitesVersionsCreate' request conforms to.
type SitesVersionsCreateResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "versions" :>
           QueryParam "sizeBytes" (Textual Int64) :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "versionId" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Version :> Post '[JSON] Version

-- | Creates a new version for a site.
--
-- /See:/ 'sitesVersionsCreate' smart constructor.
data SitesVersionsCreate = SitesVersionsCreate'
    { _svcSizeBytes      :: !(Maybe (Textual Int64))
    , _svcParent         :: !Text
    , _svcXgafv          :: !(Maybe Xgafv)
    , _svcVersionId      :: !(Maybe Text)
    , _svcUploadProtocol :: !(Maybe Text)
    , _svcAccessToken    :: !(Maybe Text)
    , _svcUploadType     :: !(Maybe Text)
    , _svcPayload        :: !Version
    , _svcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesVersionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svcSizeBytes'
--
-- * 'svcParent'
--
-- * 'svcXgafv'
--
-- * 'svcVersionId'
--
-- * 'svcUploadProtocol'
--
-- * 'svcAccessToken'
--
-- * 'svcUploadType'
--
-- * 'svcPayload'
--
-- * 'svcCallback'
sitesVersionsCreate
    :: Text -- ^ 'svcParent'
    -> Version -- ^ 'svcPayload'
    -> SitesVersionsCreate
sitesVersionsCreate pSvcParent_ pSvcPayload_ =
    SitesVersionsCreate'
    { _svcSizeBytes = Nothing
    , _svcParent = pSvcParent_
    , _svcXgafv = Nothing
    , _svcVersionId = Nothing
    , _svcUploadProtocol = Nothing
    , _svcAccessToken = Nothing
    , _svcUploadType = Nothing
    , _svcPayload = pSvcPayload_
    , _svcCallback = Nothing
    }

-- | The self-reported size of the version. This value is used for a
-- pre-emptive quota check for legacy version uploads.
svcSizeBytes :: Lens' SitesVersionsCreate (Maybe Int64)
svcSizeBytes
  = lens _svcSizeBytes (\ s a -> s{_svcSizeBytes = a})
      . mapping _Coerce

-- | Required. The parent to create the version for, in the format:
-- 'sites\/site-name'
svcParent :: Lens' SitesVersionsCreate Text
svcParent
  = lens _svcParent (\ s a -> s{_svcParent = a})

-- | V1 error format.
svcXgafv :: Lens' SitesVersionsCreate (Maybe Xgafv)
svcXgafv = lens _svcXgafv (\ s a -> s{_svcXgafv = a})

-- | A unique id for the new version. This is only specified for legacy
-- version creations.
svcVersionId :: Lens' SitesVersionsCreate (Maybe Text)
svcVersionId
  = lens _svcVersionId (\ s a -> s{_svcVersionId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svcUploadProtocol :: Lens' SitesVersionsCreate (Maybe Text)
svcUploadProtocol
  = lens _svcUploadProtocol
      (\ s a -> s{_svcUploadProtocol = a})

-- | OAuth access token.
svcAccessToken :: Lens' SitesVersionsCreate (Maybe Text)
svcAccessToken
  = lens _svcAccessToken
      (\ s a -> s{_svcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svcUploadType :: Lens' SitesVersionsCreate (Maybe Text)
svcUploadType
  = lens _svcUploadType
      (\ s a -> s{_svcUploadType = a})

-- | Multipart request metadata.
svcPayload :: Lens' SitesVersionsCreate Version
svcPayload
  = lens _svcPayload (\ s a -> s{_svcPayload = a})

-- | JSONP
svcCallback :: Lens' SitesVersionsCreate (Maybe Text)
svcCallback
  = lens _svcCallback (\ s a -> s{_svcCallback = a})

instance GoogleRequest SitesVersionsCreate where
        type Rs SitesVersionsCreate = Version
        type Scopes SitesVersionsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase"]
        requestClient SitesVersionsCreate'{..}
          = go _svcParent _svcSizeBytes _svcXgafv _svcVersionId
              _svcUploadProtocol
              _svcAccessToken
              _svcUploadType
              _svcCallback
              (Just AltJSON)
              _svcPayload
              firebaseHostingService
          where go
                  = buildClient
                      (Proxy :: Proxy SitesVersionsCreateResource)
                      mempty
