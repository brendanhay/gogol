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
-- Module      : Network.Google.Resource.ProximityBeacon.Namespaces.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all attachment namespaces owned by your Google Developers Console
-- project. Attachment data associated with a beacon must include a
-- namespaced type, and the namespace must be owned by your project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @proximitybeacon.namespaces.list@.
module Network.Google.Resource.ProximityBeacon.Namespaces.List
    (
    -- * REST Resource
      NamespacesListResource

    -- * Creating a Request
    , namespacesList
    , NamespacesList

    -- * Request Lenses
    , nlXgafv
    , nlUploadProtocol
    , nlPp
    , nlAccessToken
    , nlUploadType
    , nlBearerToken
    , nlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.namespaces.list@ method which the
-- 'NamespacesList' request conforms to.
type NamespacesListResource =
     "v1beta1" :>
       "namespaces" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListNamespacesResponse

-- | Lists all attachment namespaces owned by your Google Developers Console
-- project. Attachment data associated with a beacon must include a
-- namespaced type, and the namespace must be owned by your project.
--
-- /See:/ 'namespacesList' smart constructor.
data NamespacesList = NamespacesList
    { _nlXgafv          :: !(Maybe Text)
    , _nlUploadProtocol :: !(Maybe Text)
    , _nlPp             :: !Bool
    , _nlAccessToken    :: !(Maybe Text)
    , _nlUploadType     :: !(Maybe Text)
    , _nlBearerToken    :: !(Maybe Text)
    , _nlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NamespacesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlXgafv'
--
-- * 'nlUploadProtocol'
--
-- * 'nlPp'
--
-- * 'nlAccessToken'
--
-- * 'nlUploadType'
--
-- * 'nlBearerToken'
--
-- * 'nlCallback'
namespacesList
    :: NamespacesList
namespacesList =
    NamespacesList
    { _nlXgafv = Nothing
    , _nlUploadProtocol = Nothing
    , _nlPp = True
    , _nlAccessToken = Nothing
    , _nlUploadType = Nothing
    , _nlBearerToken = Nothing
    , _nlCallback = Nothing
    }

-- | V1 error format.
nlXgafv :: Lens' NamespacesList (Maybe Text)
nlXgafv = lens _nlXgafv (\ s a -> s{_nlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
nlUploadProtocol :: Lens' NamespacesList (Maybe Text)
nlUploadProtocol
  = lens _nlUploadProtocol
      (\ s a -> s{_nlUploadProtocol = a})

-- | Pretty-print response.
nlPp :: Lens' NamespacesList Bool
nlPp = lens _nlPp (\ s a -> s{_nlPp = a})

-- | OAuth access token.
nlAccessToken :: Lens' NamespacesList (Maybe Text)
nlAccessToken
  = lens _nlAccessToken
      (\ s a -> s{_nlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
nlUploadType :: Lens' NamespacesList (Maybe Text)
nlUploadType
  = lens _nlUploadType (\ s a -> s{_nlUploadType = a})

-- | OAuth bearer token.
nlBearerToken :: Lens' NamespacesList (Maybe Text)
nlBearerToken
  = lens _nlBearerToken
      (\ s a -> s{_nlBearerToken = a})

-- | JSONP
nlCallback :: Lens' NamespacesList (Maybe Text)
nlCallback
  = lens _nlCallback (\ s a -> s{_nlCallback = a})

instance GoogleRequest NamespacesList where
        type Rs NamespacesList = ListNamespacesResponse
        requestClient NamespacesList{..}
          = go _nlXgafv _nlUploadProtocol (Just _nlPp)
              _nlAccessToken
              _nlUploadType
              _nlBearerToken
              _nlCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient (Proxy :: Proxy NamespacesListResource)
                      mempty
