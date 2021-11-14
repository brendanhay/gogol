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
-- Module      : Network.Google.Resource.FirebaseHosting.Sites.GetConfig
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the Hosting metadata for a specific site.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference> for @firebasehosting.sites.getConfig@.
module Network.Google.Resource.FirebaseHosting.Sites.GetConfig
    (
    -- * REST Resource
      SitesGetConfigResource

    -- * Creating a Request
    , sitesGetConfig
    , SitesGetConfig

    -- * Request Lenses
    , sgcXgafv
    , sgcUploadProtocol
    , sgcAccessToken
    , sgcUploadType
    , sgcName
    , sgcCallback
    ) where

import           Network.Google.FirebaseHosting.Types
import           Network.Google.Prelude

-- | A resource alias for @firebasehosting.sites.getConfig@ method which the
-- 'SitesGetConfig' request conforms to.
type SitesGetConfigResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] SiteConfig

-- | Gets the Hosting metadata for a specific site.
--
-- /See:/ 'sitesGetConfig' smart constructor.
data SitesGetConfig =
  SitesGetConfig'
    { _sgcXgafv          :: !(Maybe Xgafv)
    , _sgcUploadProtocol :: !(Maybe Text)
    , _sgcAccessToken    :: !(Maybe Text)
    , _sgcUploadType     :: !(Maybe Text)
    , _sgcName           :: !Text
    , _sgcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitesGetConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgcXgafv'
--
-- * 'sgcUploadProtocol'
--
-- * 'sgcAccessToken'
--
-- * 'sgcUploadType'
--
-- * 'sgcName'
--
-- * 'sgcCallback'
sitesGetConfig
    :: Text -- ^ 'sgcName'
    -> SitesGetConfig
sitesGetConfig pSgcName_ =
  SitesGetConfig'
    { _sgcXgafv = Nothing
    , _sgcUploadProtocol = Nothing
    , _sgcAccessToken = Nothing
    , _sgcUploadType = Nothing
    , _sgcName = pSgcName_
    , _sgcCallback = Nothing
    }


-- | V1 error format.
sgcXgafv :: Lens' SitesGetConfig (Maybe Xgafv)
sgcXgafv = lens _sgcXgafv (\ s a -> s{_sgcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgcUploadProtocol :: Lens' SitesGetConfig (Maybe Text)
sgcUploadProtocol
  = lens _sgcUploadProtocol
      (\ s a -> s{_sgcUploadProtocol = a})

-- | OAuth access token.
sgcAccessToken :: Lens' SitesGetConfig (Maybe Text)
sgcAccessToken
  = lens _sgcAccessToken
      (\ s a -> s{_sgcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgcUploadType :: Lens' SitesGetConfig (Maybe Text)
sgcUploadType
  = lens _sgcUploadType
      (\ s a -> s{_sgcUploadType = a})

-- | Required. The site for which to get the SiteConfig, in the format:
-- 'sites\/site-name\/config'
sgcName :: Lens' SitesGetConfig Text
sgcName = lens _sgcName (\ s a -> s{_sgcName = a})

-- | JSONP
sgcCallback :: Lens' SitesGetConfig (Maybe Text)
sgcCallback
  = lens _sgcCallback (\ s a -> s{_sgcCallback = a})

instance GoogleRequest SitesGetConfig where
        type Rs SitesGetConfig = SiteConfig
        type Scopes SitesGetConfig =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/firebase",
               "https://www.googleapis.com/auth/firebase.readonly"]
        requestClient SitesGetConfig'{..}
          = go _sgcName _sgcXgafv _sgcUploadProtocol
              _sgcAccessToken
              _sgcUploadType
              _sgcCallback
              (Just AltJSON)
              firebaseHostingService
          where go
                  = buildClient (Proxy :: Proxy SitesGetConfigResource)
                      mempty
