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
-- Module      : Network.Google.Resource.FirebaseHosting.Sites.UpdateConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the Hosting metadata for a specific site.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference> for @firebasehosting.sites.updateConfig@.
module Network.Google.Resource.FirebaseHosting.Sites.UpdateConfig
    (
    -- * REST Resource
      SitesUpdateConfigResource

    -- * Creating a Request
    , sitesUpdateConfig
    , SitesUpdateConfig

    -- * Request Lenses
    , sucXgafv
    , sucUploadProtocol
    , sucUpdateMask
    , sucAccessToken
    , sucUploadType
    , sucPayload
    , sucName
    , sucCallback
    ) where

import           Network.Google.FirebaseHosting.Types
import           Network.Google.Prelude

-- | A resource alias for @firebasehosting.sites.updateConfig@ method which the
-- 'SitesUpdateConfig' request conforms to.
type SitesUpdateConfigResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SiteConfig :>
                         Patch '[JSON] SiteConfig

-- | Sets the Hosting metadata for a specific site.
--
-- /See:/ 'sitesUpdateConfig' smart constructor.
data SitesUpdateConfig =
  SitesUpdateConfig'
    { _sucXgafv          :: !(Maybe Xgafv)
    , _sucUploadProtocol :: !(Maybe Text)
    , _sucUpdateMask     :: !(Maybe GFieldMask)
    , _sucAccessToken    :: !(Maybe Text)
    , _sucUploadType     :: !(Maybe Text)
    , _sucPayload        :: !SiteConfig
    , _sucName           :: !Text
    , _sucCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SitesUpdateConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sucXgafv'
--
-- * 'sucUploadProtocol'
--
-- * 'sucUpdateMask'
--
-- * 'sucAccessToken'
--
-- * 'sucUploadType'
--
-- * 'sucPayload'
--
-- * 'sucName'
--
-- * 'sucCallback'
sitesUpdateConfig
    :: SiteConfig -- ^ 'sucPayload'
    -> Text -- ^ 'sucName'
    -> SitesUpdateConfig
sitesUpdateConfig pSucPayload_ pSucName_ =
  SitesUpdateConfig'
    { _sucXgafv = Nothing
    , _sucUploadProtocol = Nothing
    , _sucUpdateMask = Nothing
    , _sucAccessToken = Nothing
    , _sucUploadType = Nothing
    , _sucPayload = pSucPayload_
    , _sucName = pSucName_
    , _sucCallback = Nothing
    }

-- | V1 error format.
sucXgafv :: Lens' SitesUpdateConfig (Maybe Xgafv)
sucXgafv = lens _sucXgafv (\ s a -> s{_sucXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sucUploadProtocol :: Lens' SitesUpdateConfig (Maybe Text)
sucUploadProtocol
  = lens _sucUploadProtocol
      (\ s a -> s{_sucUploadProtocol = a})

-- | A set of field names from your [site
-- configuration](..\/sites.SiteConfig) that you want to update.
-- A field will be overwritten if, and only if, it\'s in the mask.
-- If a mask is not provided then a default mask of only
-- [\`max_versions\`](..\/sites.SiteConfig.max_versions) will be used.
sucUpdateMask :: Lens' SitesUpdateConfig (Maybe GFieldMask)
sucUpdateMask
  = lens _sucUpdateMask
      (\ s a -> s{_sucUpdateMask = a})

-- | OAuth access token.
sucAccessToken :: Lens' SitesUpdateConfig (Maybe Text)
sucAccessToken
  = lens _sucAccessToken
      (\ s a -> s{_sucAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sucUploadType :: Lens' SitesUpdateConfig (Maybe Text)
sucUploadType
  = lens _sucUploadType
      (\ s a -> s{_sucUploadType = a})

-- | Multipart request metadata.
sucPayload :: Lens' SitesUpdateConfig SiteConfig
sucPayload
  = lens _sucPayload (\ s a -> s{_sucPayload = a})

-- | Required. The site for which to update the SiteConfig, in the format:
-- 'sites\/site-name\/config'
sucName :: Lens' SitesUpdateConfig Text
sucName = lens _sucName (\ s a -> s{_sucName = a})

-- | JSONP
sucCallback :: Lens' SitesUpdateConfig (Maybe Text)
sucCallback
  = lens _sucCallback (\ s a -> s{_sucCallback = a})

instance GoogleRequest SitesUpdateConfig where
        type Rs SitesUpdateConfig = SiteConfig
        type Scopes SitesUpdateConfig =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase"]
        requestClient SitesUpdateConfig'{..}
          = go _sucName _sucXgafv _sucUploadProtocol
              _sucUpdateMask
              _sucAccessToken
              _sucUploadType
              _sucCallback
              (Just AltJSON)
              _sucPayload
              firebaseHostingService
          where go
                  = buildClient
                      (Proxy :: Proxy SitesUpdateConfigResource)
                      mempty
