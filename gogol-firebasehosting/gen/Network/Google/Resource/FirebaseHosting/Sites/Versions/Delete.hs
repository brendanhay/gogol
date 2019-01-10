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
-- Module      : Network.Google.Resource.FirebaseHosting.Sites.Versions.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified version.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference> for @firebasehosting.sites.versions.delete@.
module Network.Google.Resource.FirebaseHosting.Sites.Versions.Delete
    (
    -- * REST Resource
      SitesVersionsDeleteResource

    -- * Creating a Request
    , sitesVersionsDelete
    , SitesVersionsDelete

    -- * Request Lenses
    , svdXgafv
    , svdUploadProtocol
    , svdAccessToken
    , svdUploadType
    , svdName
    , svdCallback
    ) where

import           Network.Google.FirebaseHosting.Types
import           Network.Google.Prelude

-- | A resource alias for @firebasehosting.sites.versions.delete@ method which the
-- 'SitesVersionsDelete' request conforms to.
type SitesVersionsDeleteResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the specified version.
--
-- /See:/ 'sitesVersionsDelete' smart constructor.
data SitesVersionsDelete = SitesVersionsDelete'
    { _svdXgafv          :: !(Maybe Xgafv)
    , _svdUploadProtocol :: !(Maybe Text)
    , _svdAccessToken    :: !(Maybe Text)
    , _svdUploadType     :: !(Maybe Text)
    , _svdName           :: !Text
    , _svdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesVersionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svdXgafv'
--
-- * 'svdUploadProtocol'
--
-- * 'svdAccessToken'
--
-- * 'svdUploadType'
--
-- * 'svdName'
--
-- * 'svdCallback'
sitesVersionsDelete
    :: Text -- ^ 'svdName'
    -> SitesVersionsDelete
sitesVersionsDelete pSvdName_ =
    SitesVersionsDelete'
    { _svdXgafv = Nothing
    , _svdUploadProtocol = Nothing
    , _svdAccessToken = Nothing
    , _svdUploadType = Nothing
    , _svdName = pSvdName_
    , _svdCallback = Nothing
    }

-- | V1 error format.
svdXgafv :: Lens' SitesVersionsDelete (Maybe Xgafv)
svdXgafv = lens _svdXgafv (\ s a -> s{_svdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
svdUploadProtocol :: Lens' SitesVersionsDelete (Maybe Text)
svdUploadProtocol
  = lens _svdUploadProtocol
      (\ s a -> s{_svdUploadProtocol = a})

-- | OAuth access token.
svdAccessToken :: Lens' SitesVersionsDelete (Maybe Text)
svdAccessToken
  = lens _svdAccessToken
      (\ s a -> s{_svdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
svdUploadType :: Lens' SitesVersionsDelete (Maybe Text)
svdUploadType
  = lens _svdUploadType
      (\ s a -> s{_svdUploadType = a})

-- | Required. The name of the version to be deleted, in the format:
-- 'sites\/site-name\/versions\/versionID'
svdName :: Lens' SitesVersionsDelete Text
svdName = lens _svdName (\ s a -> s{_svdName = a})

-- | JSONP
svdCallback :: Lens' SitesVersionsDelete (Maybe Text)
svdCallback
  = lens _svdCallback (\ s a -> s{_svdCallback = a})

instance GoogleRequest SitesVersionsDelete where
        type Rs SitesVersionsDelete = Empty
        type Scopes SitesVersionsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase"]
        requestClient SitesVersionsDelete'{..}
          = go _svdName _svdXgafv _svdUploadProtocol
              _svdAccessToken
              _svdUploadType
              _svdCallback
              (Just AltJSON)
              firebaseHostingService
          where go
                  = buildClient
                      (Proxy :: Proxy SitesVersionsDeleteResource)
                      mempty
