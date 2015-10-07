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
-- | Lists all attachment namespaces owned by your Google Developers Console
-- project. Attachment data associated with a beacon must include a
-- namespaced type, and the namespace must be owned by your project.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @ProximitybeaconNamespacesList@.
module Network.Google.Resource.ProximityBeacon.Namespaces.List
    (
    -- * REST Resource
      NamespacesListResource

    -- * Creating a Request
    , namespacesList'
    , NamespacesList'

    -- * Request Lenses
    , nlXgafv
    , nlQuotaUser
    , nlPrettyPrint
    , nlUploadProtocol
    , nlPp
    , nlAccessToken
    , nlUploadType
    , nlBearerToken
    , nlKey
    , nlOAuthToken
    , nlFields
    , nlCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @ProximitybeaconNamespacesList@ method which the
-- 'NamespacesList'' request conforms to.
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
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] ListNamespacesResponse

-- | Lists all attachment namespaces owned by your Google Developers Console
-- project. Attachment data associated with a beacon must include a
-- namespaced type, and the namespace must be owned by your project.
--
-- /See:/ 'namespacesList'' smart constructor.
data NamespacesList' = NamespacesList'
    { _nlXgafv          :: !(Maybe Text)
    , _nlQuotaUser      :: !(Maybe Text)
    , _nlPrettyPrint    :: !Bool
    , _nlUploadProtocol :: !(Maybe Text)
    , _nlPp             :: !Bool
    , _nlAccessToken    :: !(Maybe Text)
    , _nlUploadType     :: !(Maybe Text)
    , _nlBearerToken    :: !(Maybe Text)
    , _nlKey            :: !(Maybe AuthKey)
    , _nlOAuthToken     :: !(Maybe OAuthToken)
    , _nlFields         :: !(Maybe Text)
    , _nlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NamespacesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nlXgafv'
--
-- * 'nlQuotaUser'
--
-- * 'nlPrettyPrint'
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
-- * 'nlKey'
--
-- * 'nlOAuthToken'
--
-- * 'nlFields'
--
-- * 'nlCallback'
namespacesList'
    :: NamespacesList'
namespacesList' =
    NamespacesList'
    { _nlXgafv = Nothing
    , _nlQuotaUser = Nothing
    , _nlPrettyPrint = True
    , _nlUploadProtocol = Nothing
    , _nlPp = True
    , _nlAccessToken = Nothing
    , _nlUploadType = Nothing
    , _nlBearerToken = Nothing
    , _nlKey = Nothing
    , _nlOAuthToken = Nothing
    , _nlFields = Nothing
    , _nlCallback = Nothing
    }

-- | V1 error format.
nlXgafv :: Lens' NamespacesList' (Maybe Text)
nlXgafv = lens _nlXgafv (\ s a -> s{_nlXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
nlQuotaUser :: Lens' NamespacesList' (Maybe Text)
nlQuotaUser
  = lens _nlQuotaUser (\ s a -> s{_nlQuotaUser = a})

-- | Returns response with indentations and line breaks.
nlPrettyPrint :: Lens' NamespacesList' Bool
nlPrettyPrint
  = lens _nlPrettyPrint
      (\ s a -> s{_nlPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
nlUploadProtocol :: Lens' NamespacesList' (Maybe Text)
nlUploadProtocol
  = lens _nlUploadProtocol
      (\ s a -> s{_nlUploadProtocol = a})

-- | Pretty-print response.
nlPp :: Lens' NamespacesList' Bool
nlPp = lens _nlPp (\ s a -> s{_nlPp = a})

-- | OAuth access token.
nlAccessToken :: Lens' NamespacesList' (Maybe Text)
nlAccessToken
  = lens _nlAccessToken
      (\ s a -> s{_nlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
nlUploadType :: Lens' NamespacesList' (Maybe Text)
nlUploadType
  = lens _nlUploadType (\ s a -> s{_nlUploadType = a})

-- | OAuth bearer token.
nlBearerToken :: Lens' NamespacesList' (Maybe Text)
nlBearerToken
  = lens _nlBearerToken
      (\ s a -> s{_nlBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
nlKey :: Lens' NamespacesList' (Maybe AuthKey)
nlKey = lens _nlKey (\ s a -> s{_nlKey = a})

-- | OAuth 2.0 token for the current user.
nlOAuthToken :: Lens' NamespacesList' (Maybe OAuthToken)
nlOAuthToken
  = lens _nlOAuthToken (\ s a -> s{_nlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
nlFields :: Lens' NamespacesList' (Maybe Text)
nlFields = lens _nlFields (\ s a -> s{_nlFields = a})

-- | JSONP
nlCallback :: Lens' NamespacesList' (Maybe Text)
nlCallback
  = lens _nlCallback (\ s a -> s{_nlCallback = a})

instance GoogleAuth NamespacesList' where
        _AuthKey = nlKey . _Just
        _AuthToken = nlOAuthToken . _Just

instance GoogleRequest NamespacesList' where
        type Rs NamespacesList' = ListNamespacesResponse
        request = requestWith proximityBeaconRequest
        requestWith rq NamespacesList'{..}
          = go _nlXgafv _nlUploadProtocol (Just _nlPp)
              _nlAccessToken
              _nlUploadType
              _nlBearerToken
              _nlCallback
              _nlQuotaUser
              (Just _nlPrettyPrint)
              _nlFields
              _nlKey
              _nlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy NamespacesListResource)
                      rq
