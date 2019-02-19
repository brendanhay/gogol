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
-- Module      : Network.Google.Resource.FirebaseHosting.Sites.Domains.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a domain mapping on the specified site.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference> for @firebasehosting.sites.domains.create@.
module Network.Google.Resource.FirebaseHosting.Sites.Domains.Create
    (
    -- * REST Resource
      SitesDomainsCreateResource

    -- * Creating a Request
    , sitesDomainsCreate
    , SitesDomainsCreate

    -- * Request Lenses
    , sdcParent
    , sdcXgafv
    , sdcUploadProtocol
    , sdcAccessToken
    , sdcUploadType
    , sdcPayload
    , sdcCallback
    ) where

import           Network.Google.FirebaseHosting.Types
import           Network.Google.Prelude

-- | A resource alias for @firebasehosting.sites.domains.create@ method which the
-- 'SitesDomainsCreate' request conforms to.
type SitesDomainsCreateResource =
     "v1beta1" :>
       Capture "parent" Text :>
         "domains" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Domain :> Post '[JSON] Domain

-- | Creates a domain mapping on the specified site.
--
-- /See:/ 'sitesDomainsCreate' smart constructor.
data SitesDomainsCreate =
  SitesDomainsCreate'
    { _sdcParent         :: !Text
    , _sdcXgafv          :: !(Maybe Xgafv)
    , _sdcUploadProtocol :: !(Maybe Text)
    , _sdcAccessToken    :: !(Maybe Text)
    , _sdcUploadType     :: !(Maybe Text)
    , _sdcPayload        :: !Domain
    , _sdcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SitesDomainsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdcParent'
--
-- * 'sdcXgafv'
--
-- * 'sdcUploadProtocol'
--
-- * 'sdcAccessToken'
--
-- * 'sdcUploadType'
--
-- * 'sdcPayload'
--
-- * 'sdcCallback'
sitesDomainsCreate
    :: Text -- ^ 'sdcParent'
    -> Domain -- ^ 'sdcPayload'
    -> SitesDomainsCreate
sitesDomainsCreate pSdcParent_ pSdcPayload_ =
  SitesDomainsCreate'
    { _sdcParent = pSdcParent_
    , _sdcXgafv = Nothing
    , _sdcUploadProtocol = Nothing
    , _sdcAccessToken = Nothing
    , _sdcUploadType = Nothing
    , _sdcPayload = pSdcPayload_
    , _sdcCallback = Nothing
    }


-- | Required. The parent to create the domain association for, in the
-- format: 'sites\/site-name'
sdcParent :: Lens' SitesDomainsCreate Text
sdcParent
  = lens _sdcParent (\ s a -> s{_sdcParent = a})

-- | V1 error format.
sdcXgafv :: Lens' SitesDomainsCreate (Maybe Xgafv)
sdcXgafv = lens _sdcXgafv (\ s a -> s{_sdcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sdcUploadProtocol :: Lens' SitesDomainsCreate (Maybe Text)
sdcUploadProtocol
  = lens _sdcUploadProtocol
      (\ s a -> s{_sdcUploadProtocol = a})

-- | OAuth access token.
sdcAccessToken :: Lens' SitesDomainsCreate (Maybe Text)
sdcAccessToken
  = lens _sdcAccessToken
      (\ s a -> s{_sdcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sdcUploadType :: Lens' SitesDomainsCreate (Maybe Text)
sdcUploadType
  = lens _sdcUploadType
      (\ s a -> s{_sdcUploadType = a})

-- | Multipart request metadata.
sdcPayload :: Lens' SitesDomainsCreate Domain
sdcPayload
  = lens _sdcPayload (\ s a -> s{_sdcPayload = a})

-- | JSONP
sdcCallback :: Lens' SitesDomainsCreate (Maybe Text)
sdcCallback
  = lens _sdcCallback (\ s a -> s{_sdcCallback = a})

instance GoogleRequest SitesDomainsCreate where
        type Rs SitesDomainsCreate = Domain
        type Scopes SitesDomainsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase"]
        requestClient SitesDomainsCreate'{..}
          = go _sdcParent _sdcXgafv _sdcUploadProtocol
              _sdcAccessToken
              _sdcUploadType
              _sdcCallback
              (Just AltJSON)
              _sdcPayload
              firebaseHostingService
          where go
                  = buildClient
                      (Proxy :: Proxy SitesDomainsCreateResource)
                      mempty
