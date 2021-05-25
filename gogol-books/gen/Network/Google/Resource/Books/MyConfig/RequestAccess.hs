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
-- Module      : Network.Google.Resource.Books.MyConfig.RequestAccess
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request concurrent and download access restrictions.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.myconfig.requestAccess@.
module Network.Google.Resource.Books.MyConfig.RequestAccess
    (
    -- * REST Resource
      MyConfigRequestAccessResource

    -- * Creating a Request
    , myConfigRequestAccess
    , MyConfigRequestAccess

    -- * Request Lenses
    , mcraXgafv
    , mcraCpksver
    , mcraUploadProtocol
    , mcraLocale
    , mcraAccessToken
    , mcraLicenseTypes
    , mcraUploadType
    , mcraVolumeId
    , mcraSource
    , mcraCallback
    , mcraNonce
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.myconfig.requestAccess@ method which the
-- 'MyConfigRequestAccess' request conforms to.
type MyConfigRequestAccessResource =
     "books" :>
       "v1" :>
         "myconfig" :>
           "requestAccess" :>
             QueryParam "cpksver" Text :>
               QueryParam "nonce" Text :>
                 QueryParam "source" Text :>
                   QueryParam "volumeId" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "locale" Text :>
                           QueryParam "access_token" Text :>
                             QueryParam "licenseTypes"
                               MyConfigRequestAccessLicenseTypes
                               :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Post '[JSON] RequestAccessData

-- | Request concurrent and download access restrictions.
--
-- /See:/ 'myConfigRequestAccess' smart constructor.
data MyConfigRequestAccess =
  MyConfigRequestAccess'
    { _mcraXgafv :: !(Maybe Xgafv)
    , _mcraCpksver :: !Text
    , _mcraUploadProtocol :: !(Maybe Text)
    , _mcraLocale :: !(Maybe Text)
    , _mcraAccessToken :: !(Maybe Text)
    , _mcraLicenseTypes :: !(Maybe MyConfigRequestAccessLicenseTypes)
    , _mcraUploadType :: !(Maybe Text)
    , _mcraVolumeId :: !Text
    , _mcraSource :: !Text
    , _mcraCallback :: !(Maybe Text)
    , _mcraNonce :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyConfigRequestAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcraXgafv'
--
-- * 'mcraCpksver'
--
-- * 'mcraUploadProtocol'
--
-- * 'mcraLocale'
--
-- * 'mcraAccessToken'
--
-- * 'mcraLicenseTypes'
--
-- * 'mcraUploadType'
--
-- * 'mcraVolumeId'
--
-- * 'mcraSource'
--
-- * 'mcraCallback'
--
-- * 'mcraNonce'
myConfigRequestAccess
    :: Text -- ^ 'mcraCpksver'
    -> Text -- ^ 'mcraVolumeId'
    -> Text -- ^ 'mcraSource'
    -> Text -- ^ 'mcraNonce'
    -> MyConfigRequestAccess
myConfigRequestAccess pMcraCpksver_ pMcraVolumeId_ pMcraSource_ pMcraNonce_ =
  MyConfigRequestAccess'
    { _mcraXgafv = Nothing
    , _mcraCpksver = pMcraCpksver_
    , _mcraUploadProtocol = Nothing
    , _mcraLocale = Nothing
    , _mcraAccessToken = Nothing
    , _mcraLicenseTypes = Nothing
    , _mcraUploadType = Nothing
    , _mcraVolumeId = pMcraVolumeId_
    , _mcraSource = pMcraSource_
    , _mcraCallback = Nothing
    , _mcraNonce = pMcraNonce_
    }


-- | V1 error format.
mcraXgafv :: Lens' MyConfigRequestAccess (Maybe Xgafv)
mcraXgafv
  = lens _mcraXgafv (\ s a -> s{_mcraXgafv = a})

-- | The device\/version ID from which to request the restrictions.
mcraCpksver :: Lens' MyConfigRequestAccess Text
mcraCpksver
  = lens _mcraCpksver (\ s a -> s{_mcraCpksver = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mcraUploadProtocol :: Lens' MyConfigRequestAccess (Maybe Text)
mcraUploadProtocol
  = lens _mcraUploadProtocol
      (\ s a -> s{_mcraUploadProtocol = a})

-- | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
mcraLocale :: Lens' MyConfigRequestAccess (Maybe Text)
mcraLocale
  = lens _mcraLocale (\ s a -> s{_mcraLocale = a})

-- | OAuth access token.
mcraAccessToken :: Lens' MyConfigRequestAccess (Maybe Text)
mcraAccessToken
  = lens _mcraAccessToken
      (\ s a -> s{_mcraAccessToken = a})

-- | The type of access license to request. If not specified, the default is
-- BOTH.
mcraLicenseTypes :: Lens' MyConfigRequestAccess (Maybe MyConfigRequestAccessLicenseTypes)
mcraLicenseTypes
  = lens _mcraLicenseTypes
      (\ s a -> s{_mcraLicenseTypes = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mcraUploadType :: Lens' MyConfigRequestAccess (Maybe Text)
mcraUploadType
  = lens _mcraUploadType
      (\ s a -> s{_mcraUploadType = a})

-- | The volume to request concurrent\/download restrictions for.
mcraVolumeId :: Lens' MyConfigRequestAccess Text
mcraVolumeId
  = lens _mcraVolumeId (\ s a -> s{_mcraVolumeId = a})

-- | String to identify the originator of this request.
mcraSource :: Lens' MyConfigRequestAccess Text
mcraSource
  = lens _mcraSource (\ s a -> s{_mcraSource = a})

-- | JSONP
mcraCallback :: Lens' MyConfigRequestAccess (Maybe Text)
mcraCallback
  = lens _mcraCallback (\ s a -> s{_mcraCallback = a})

-- | The client nonce value.
mcraNonce :: Lens' MyConfigRequestAccess Text
mcraNonce
  = lens _mcraNonce (\ s a -> s{_mcraNonce = a})

instance GoogleRequest MyConfigRequestAccess where
        type Rs MyConfigRequestAccess = RequestAccessData
        type Scopes MyConfigRequestAccess =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyConfigRequestAccess'{..}
          = go (Just _mcraCpksver) (Just _mcraNonce)
              (Just _mcraSource)
              (Just _mcraVolumeId)
              _mcraXgafv
              _mcraUploadProtocol
              _mcraLocale
              _mcraAccessToken
              _mcraLicenseTypes
              _mcraUploadType
              _mcraCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyConfigRequestAccessResource)
                      mempty
