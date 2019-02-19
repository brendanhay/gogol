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
-- Module      : Network.Google.Resource.FirebaseHosting.Sites.Domains.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified domain mapping, creating the mapping as if it does
-- not exist.
--
-- /See:/ <https://firebase.google.com/docs/hosting/ Firebase Hosting API Reference> for @firebasehosting.sites.domains.update@.
module Network.Google.Resource.FirebaseHosting.Sites.Domains.Update
    (
    -- * REST Resource
      SitesDomainsUpdateResource

    -- * Creating a Request
    , sitesDomainsUpdate
    , SitesDomainsUpdate

    -- * Request Lenses
    , sduXgafv
    , sduUploadProtocol
    , sduAccessToken
    , sduUploadType
    , sduPayload
    , sduName
    , sduCallback
    ) where

import           Network.Google.FirebaseHosting.Types
import           Network.Google.Prelude

-- | A resource alias for @firebasehosting.sites.domains.update@ method which the
-- 'SitesDomainsUpdate' request conforms to.
type SitesDomainsUpdateResource =
     "v1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Domain :> Put '[JSON] Domain

-- | Updates the specified domain mapping, creating the mapping as if it does
-- not exist.
--
-- /See:/ 'sitesDomainsUpdate' smart constructor.
data SitesDomainsUpdate =
  SitesDomainsUpdate'
    { _sduXgafv          :: !(Maybe Xgafv)
    , _sduUploadProtocol :: !(Maybe Text)
    , _sduAccessToken    :: !(Maybe Text)
    , _sduUploadType     :: !(Maybe Text)
    , _sduPayload        :: !Domain
    , _sduName           :: !Text
    , _sduCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SitesDomainsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sduXgafv'
--
-- * 'sduUploadProtocol'
--
-- * 'sduAccessToken'
--
-- * 'sduUploadType'
--
-- * 'sduPayload'
--
-- * 'sduName'
--
-- * 'sduCallback'
sitesDomainsUpdate
    :: Domain -- ^ 'sduPayload'
    -> Text -- ^ 'sduName'
    -> SitesDomainsUpdate
sitesDomainsUpdate pSduPayload_ pSduName_ =
  SitesDomainsUpdate'
    { _sduXgafv = Nothing
    , _sduUploadProtocol = Nothing
    , _sduAccessToken = Nothing
    , _sduUploadType = Nothing
    , _sduPayload = pSduPayload_
    , _sduName = pSduName_
    , _sduCallback = Nothing
    }

-- | V1 error format.
sduXgafv :: Lens' SitesDomainsUpdate (Maybe Xgafv)
sduXgafv = lens _sduXgafv (\ s a -> s{_sduXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sduUploadProtocol :: Lens' SitesDomainsUpdate (Maybe Text)
sduUploadProtocol
  = lens _sduUploadProtocol
      (\ s a -> s{_sduUploadProtocol = a})

-- | OAuth access token.
sduAccessToken :: Lens' SitesDomainsUpdate (Maybe Text)
sduAccessToken
  = lens _sduAccessToken
      (\ s a -> s{_sduAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sduUploadType :: Lens' SitesDomainsUpdate (Maybe Text)
sduUploadType
  = lens _sduUploadType
      (\ s a -> s{_sduUploadType = a})

-- | Multipart request metadata.
sduPayload :: Lens' SitesDomainsUpdate Domain
sduPayload
  = lens _sduPayload (\ s a -> s{_sduPayload = a})

-- | Required. The name of the domain association to update or create, if an
-- association doesn\'t already exist.
sduName :: Lens' SitesDomainsUpdate Text
sduName = lens _sduName (\ s a -> s{_sduName = a})

-- | JSONP
sduCallback :: Lens' SitesDomainsUpdate (Maybe Text)
sduCallback
  = lens _sduCallback (\ s a -> s{_sduCallback = a})

instance GoogleRequest SitesDomainsUpdate where
        type Rs SitesDomainsUpdate = Domain
        type Scopes SitesDomainsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/firebase"]
        requestClient SitesDomainsUpdate'{..}
          = go _sduName _sduXgafv _sduUploadProtocol
              _sduAccessToken
              _sduUploadType
              _sduCallback
              (Just AltJSON)
              _sduPayload
              firebaseHostingService
          where go
                  = buildClient
                      (Proxy :: Proxy SitesDomainsUpdateResource)
                      mempty
