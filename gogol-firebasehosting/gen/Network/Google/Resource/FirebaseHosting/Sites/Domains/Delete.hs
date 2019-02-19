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
-- Module      : Network.Google.Resource.FirebaseHosting.Sites.Domains.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the existing domain mapping on the specified site.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference> for @firebasehosting.sites.domains.delete@.
module Network.Google.Resource.FirebaseHosting.Sites.Domains.Delete
    (
    -- * REST Resource
      SitesDomainsDeleteResource

    -- * Creating a Request
    , sitesDomainsDelete
    , SitesDomainsDelete

    -- * Request Lenses
    , sddXgafv
    , sddUploadProtocol
    , sddAccessToken
    , sddUploadType
    , sddName
    , sddCallback
    ) where

import           Network.Google.FirebaseHosting.Types
import           Network.Google.Prelude

-- | A resource alias for @firebasehosting.sites.domains.delete@ method which the
-- 'SitesDomainsDelete' request conforms to.
type SitesDomainsDeleteResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes the existing domain mapping on the specified site.
--
-- /See:/ 'sitesDomainsDelete' smart constructor.
data SitesDomainsDelete =
  SitesDomainsDelete'
    { _sddXgafv          :: !(Maybe Xgafv)
    , _sddUploadProtocol :: !(Maybe Text)
    , _sddAccessToken    :: !(Maybe Text)
    , _sddUploadType     :: !(Maybe Text)
    , _sddName           :: !Text
    , _sddCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SitesDomainsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sddXgafv'
--
-- * 'sddUploadProtocol'
--
-- * 'sddAccessToken'
--
-- * 'sddUploadType'
--
-- * 'sddName'
--
-- * 'sddCallback'
sitesDomainsDelete
    :: Text -- ^ 'sddName'
    -> SitesDomainsDelete
sitesDomainsDelete pSddName_ =
  SitesDomainsDelete'
    { _sddXgafv = Nothing
    , _sddUploadProtocol = Nothing
    , _sddAccessToken = Nothing
    , _sddUploadType = Nothing
    , _sddName = pSddName_
    , _sddCallback = Nothing
    }

-- | V1 error format.
sddXgafv :: Lens' SitesDomainsDelete (Maybe Xgafv)
sddXgafv = lens _sddXgafv (\ s a -> s{_sddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sddUploadProtocol :: Lens' SitesDomainsDelete (Maybe Text)
sddUploadProtocol
  = lens _sddUploadProtocol
      (\ s a -> s{_sddUploadProtocol = a})

-- | OAuth access token.
sddAccessToken :: Lens' SitesDomainsDelete (Maybe Text)
sddAccessToken
  = lens _sddAccessToken
      (\ s a -> s{_sddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sddUploadType :: Lens' SitesDomainsDelete (Maybe Text)
sddUploadType
  = lens _sddUploadType
      (\ s a -> s{_sddUploadType = a})

-- | Required. The name of the domain association to delete.
sddName :: Lens' SitesDomainsDelete Text
sddName = lens _sddName (\ s a -> s{_sddName = a})

-- | JSONP
sddCallback :: Lens' SitesDomainsDelete (Maybe Text)
sddCallback
  = lens _sddCallback (\ s a -> s{_sddCallback = a})

instance GoogleRequest SitesDomainsDelete where
        type Rs SitesDomainsDelete = Empty
        type Scopes SitesDomainsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase"]
        requestClient SitesDomainsDelete'{..}
          = go _sddName _sddXgafv _sddUploadProtocol
              _sddAccessToken
              _sddUploadType
              _sddCallback
              (Just AltJSON)
              firebaseHostingService
          where go
                  = buildClient
                      (Proxy :: Proxy SitesDomainsDeleteResource)
                      mempty
