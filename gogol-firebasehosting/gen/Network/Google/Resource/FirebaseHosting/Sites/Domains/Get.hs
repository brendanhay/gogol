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
-- Module      : Network.Google.Resource.FirebaseHosting.Sites.Domains.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a domain mapping on the specified site.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference> for @firebasehosting.sites.domains.get@.
module Network.Google.Resource.FirebaseHosting.Sites.Domains.Get
    (
    -- * REST Resource
      SitesDomainsGetResource

    -- * Creating a Request
    , sitesDomainsGet
    , SitesDomainsGet

    -- * Request Lenses
    , sdgXgafv
    , sdgUploadProtocol
    , sdgAccessToken
    , sdgUploadType
    , sdgName
    , sdgCallback
    ) where

import           Network.Google.FirebaseHosting.Types
import           Network.Google.Prelude

-- | A resource alias for @firebasehosting.sites.domains.get@ method which the
-- 'SitesDomainsGet' request conforms to.
type SitesDomainsGetResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Domain

-- | Gets a domain mapping on the specified site.
--
-- /See:/ 'sitesDomainsGet' smart constructor.
data SitesDomainsGet = SitesDomainsGet'
    { _sdgXgafv          :: !(Maybe Xgafv)
    , _sdgUploadProtocol :: !(Maybe Text)
    , _sdgAccessToken    :: !(Maybe Text)
    , _sdgUploadType     :: !(Maybe Text)
    , _sdgName           :: !Text
    , _sdgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesDomainsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdgXgafv'
--
-- * 'sdgUploadProtocol'
--
-- * 'sdgAccessToken'
--
-- * 'sdgUploadType'
--
-- * 'sdgName'
--
-- * 'sdgCallback'
sitesDomainsGet
    :: Text -- ^ 'sdgName'
    -> SitesDomainsGet
sitesDomainsGet pSdgName_ =
    SitesDomainsGet'
    { _sdgXgafv = Nothing
    , _sdgUploadProtocol = Nothing
    , _sdgAccessToken = Nothing
    , _sdgUploadType = Nothing
    , _sdgName = pSdgName_
    , _sdgCallback = Nothing
    }

-- | V1 error format.
sdgXgafv :: Lens' SitesDomainsGet (Maybe Xgafv)
sdgXgafv = lens _sdgXgafv (\ s a -> s{_sdgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdgUploadProtocol :: Lens' SitesDomainsGet (Maybe Text)
sdgUploadProtocol
  = lens _sdgUploadProtocol
      (\ s a -> s{_sdgUploadProtocol = a})

-- | OAuth access token.
sdgAccessToken :: Lens' SitesDomainsGet (Maybe Text)
sdgAccessToken
  = lens _sdgAccessToken
      (\ s a -> s{_sdgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdgUploadType :: Lens' SitesDomainsGet (Maybe Text)
sdgUploadType
  = lens _sdgUploadType
      (\ s a -> s{_sdgUploadType = a})

-- | Required. The name of the domain configuration to get.
sdgName :: Lens' SitesDomainsGet Text
sdgName = lens _sdgName (\ s a -> s{_sdgName = a})

-- | JSONP
sdgCallback :: Lens' SitesDomainsGet (Maybe Text)
sdgCallback
  = lens _sdgCallback (\ s a -> s{_sdgCallback = a})

instance GoogleRequest SitesDomainsGet where
        type Rs SitesDomainsGet = Domain
        type Scopes SitesDomainsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/firebase",
               "https://www.googleapis.com/auth/firebase.readonly"]
        requestClient SitesDomainsGet'{..}
          = go _sdgName _sdgXgafv _sdgUploadProtocol
              _sdgAccessToken
              _sdgUploadType
              _sdgCallback
              (Just AltJSON)
              firebaseHostingService
          where go
                  = buildClient
                      (Proxy :: Proxy SitesDomainsGetResource)
                      mempty
