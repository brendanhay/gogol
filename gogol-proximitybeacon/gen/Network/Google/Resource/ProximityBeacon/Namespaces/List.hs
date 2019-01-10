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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all attachment namespaces owned by your Google Developers Console
-- project. Attachment data associated with a beacon must include a
-- namespaced type, and the namespace must be owned by your project.
-- Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **viewer**, **Is owner** or **Can edit**
-- permissions in the Google Developers Console project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Proximity Beacon API Reference> for @proximitybeacon.namespaces.list@.
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
    , nlAccessToken
    , nlUploadType
    , nlProjectId
    , nlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.namespaces.list@ method which the
-- 'NamespacesList' request conforms to.
type NamespacesListResource =
     "v1beta1" :>
       "namespaces" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "projectId" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ListNamespacesResponse

-- | Lists all attachment namespaces owned by your Google Developers Console
-- project. Attachment data associated with a beacon must include a
-- namespaced type, and the namespace must be owned by your project.
-- Authenticate using an [OAuth access
-- token](https:\/\/developers.google.com\/identity\/protocols\/OAuth2)
-- from a signed-in user with **viewer**, **Is owner** or **Can edit**
-- permissions in the Google Developers Console project.
--
-- /See:/ 'namespacesList' smart constructor.
data NamespacesList = NamespacesList'
    { _nlXgafv          :: !(Maybe Xgafv)
    , _nlUploadProtocol :: !(Maybe Text)
    , _nlAccessToken    :: !(Maybe Text)
    , _nlUploadType     :: !(Maybe Text)
    , _nlProjectId      :: !(Maybe Text)
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
-- * 'nlAccessToken'
--
-- * 'nlUploadType'
--
-- * 'nlProjectId'
--
-- * 'nlCallback'
namespacesList
    :: NamespacesList
namespacesList =
    NamespacesList'
    { _nlXgafv = Nothing
    , _nlUploadProtocol = Nothing
    , _nlAccessToken = Nothing
    , _nlUploadType = Nothing
    , _nlProjectId = Nothing
    , _nlCallback = Nothing
    }

-- | V1 error format.
nlXgafv :: Lens' NamespacesList (Maybe Xgafv)
nlXgafv = lens _nlXgafv (\ s a -> s{_nlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
nlUploadProtocol :: Lens' NamespacesList (Maybe Text)
nlUploadProtocol
  = lens _nlUploadProtocol
      (\ s a -> s{_nlUploadProtocol = a})

-- | OAuth access token.
nlAccessToken :: Lens' NamespacesList (Maybe Text)
nlAccessToken
  = lens _nlAccessToken
      (\ s a -> s{_nlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
nlUploadType :: Lens' NamespacesList (Maybe Text)
nlUploadType
  = lens _nlUploadType (\ s a -> s{_nlUploadType = a})

-- | The project id to list namespaces under. Optional.
nlProjectId :: Lens' NamespacesList (Maybe Text)
nlProjectId
  = lens _nlProjectId (\ s a -> s{_nlProjectId = a})

-- | JSONP
nlCallback :: Lens' NamespacesList (Maybe Text)
nlCallback
  = lens _nlCallback (\ s a -> s{_nlCallback = a})

instance GoogleRequest NamespacesList where
        type Rs NamespacesList = ListNamespacesResponse
        type Scopes NamespacesList =
             '["https://www.googleapis.com/auth/userlocation.beacon.registry"]
        requestClient NamespacesList'{..}
          = go _nlXgafv _nlUploadProtocol _nlAccessToken
              _nlUploadType
              _nlProjectId
              _nlCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient (Proxy :: Proxy NamespacesListResource)
                      mempty
