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
-- Module      : Network.Google.Resource.Books.MyConfig.ReleaseDownloadAccess
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Release downloaded content access restriction.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.myconfig.releaseDownloadAccess@.
module Network.Google.Resource.Books.MyConfig.ReleaseDownloadAccess
    (
    -- * REST Resource
      MyConfigReleaseDownloadAccessResource

    -- * Creating a Request
    , myConfigReleaseDownloadAccess
    , MyConfigReleaseDownloadAccess

    -- * Request Lenses
    , mcrdaXgafv
    , mcrdaCpksver
    , mcrdaUploadProtocol
    , mcrdaLocale
    , mcrdaAccessToken
    , mcrdaUploadType
    , mcrdaVolumeIds
    , mcrdaSource
    , mcrdaCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.myconfig.releaseDownloadAccess@ method which the
-- 'MyConfigReleaseDownloadAccess' request conforms to.
type MyConfigReleaseDownloadAccessResource =
     "books" :>
       "v1" :>
         "myconfig" :>
           "releaseDownloadAccess" :>
             QueryParam "cpksver" Text :>
               QueryParams "volumeIds" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "locale" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "source" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON] DownloadAccesses

-- | Release downloaded content access restriction.
--
-- /See:/ 'myConfigReleaseDownloadAccess' smart constructor.
data MyConfigReleaseDownloadAccess =
  MyConfigReleaseDownloadAccess'
    { _mcrdaXgafv :: !(Maybe Xgafv)
    , _mcrdaCpksver :: !Text
    , _mcrdaUploadProtocol :: !(Maybe Text)
    , _mcrdaLocale :: !(Maybe Text)
    , _mcrdaAccessToken :: !(Maybe Text)
    , _mcrdaUploadType :: !(Maybe Text)
    , _mcrdaVolumeIds :: ![Text]
    , _mcrdaSource :: !(Maybe Text)
    , _mcrdaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyConfigReleaseDownloadAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcrdaXgafv'
--
-- * 'mcrdaCpksver'
--
-- * 'mcrdaUploadProtocol'
--
-- * 'mcrdaLocale'
--
-- * 'mcrdaAccessToken'
--
-- * 'mcrdaUploadType'
--
-- * 'mcrdaVolumeIds'
--
-- * 'mcrdaSource'
--
-- * 'mcrdaCallback'
myConfigReleaseDownloadAccess
    :: Text -- ^ 'mcrdaCpksver'
    -> [Text] -- ^ 'mcrdaVolumeIds'
    -> MyConfigReleaseDownloadAccess
myConfigReleaseDownloadAccess pMcrdaCpksver_ pMcrdaVolumeIds_ =
  MyConfigReleaseDownloadAccess'
    { _mcrdaXgafv = Nothing
    , _mcrdaCpksver = pMcrdaCpksver_
    , _mcrdaUploadProtocol = Nothing
    , _mcrdaLocale = Nothing
    , _mcrdaAccessToken = Nothing
    , _mcrdaUploadType = Nothing
    , _mcrdaVolumeIds = _Coerce # pMcrdaVolumeIds_
    , _mcrdaSource = Nothing
    , _mcrdaCallback = Nothing
    }


-- | V1 error format.
mcrdaXgafv :: Lens' MyConfigReleaseDownloadAccess (Maybe Xgafv)
mcrdaXgafv
  = lens _mcrdaXgafv (\ s a -> s{_mcrdaXgafv = a})

-- | The device\/version ID from which to release the restriction.
mcrdaCpksver :: Lens' MyConfigReleaseDownloadAccess Text
mcrdaCpksver
  = lens _mcrdaCpksver (\ s a -> s{_mcrdaCpksver = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mcrdaUploadProtocol :: Lens' MyConfigReleaseDownloadAccess (Maybe Text)
mcrdaUploadProtocol
  = lens _mcrdaUploadProtocol
      (\ s a -> s{_mcrdaUploadProtocol = a})

-- | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
mcrdaLocale :: Lens' MyConfigReleaseDownloadAccess (Maybe Text)
mcrdaLocale
  = lens _mcrdaLocale (\ s a -> s{_mcrdaLocale = a})

-- | OAuth access token.
mcrdaAccessToken :: Lens' MyConfigReleaseDownloadAccess (Maybe Text)
mcrdaAccessToken
  = lens _mcrdaAccessToken
      (\ s a -> s{_mcrdaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mcrdaUploadType :: Lens' MyConfigReleaseDownloadAccess (Maybe Text)
mcrdaUploadType
  = lens _mcrdaUploadType
      (\ s a -> s{_mcrdaUploadType = a})

-- | The volume(s) to release restrictions for.
mcrdaVolumeIds :: Lens' MyConfigReleaseDownloadAccess [Text]
mcrdaVolumeIds
  = lens _mcrdaVolumeIds
      (\ s a -> s{_mcrdaVolumeIds = a})
      . _Coerce

-- | String to identify the originator of this request.
mcrdaSource :: Lens' MyConfigReleaseDownloadAccess (Maybe Text)
mcrdaSource
  = lens _mcrdaSource (\ s a -> s{_mcrdaSource = a})

-- | JSONP
mcrdaCallback :: Lens' MyConfigReleaseDownloadAccess (Maybe Text)
mcrdaCallback
  = lens _mcrdaCallback
      (\ s a -> s{_mcrdaCallback = a})

instance GoogleRequest MyConfigReleaseDownloadAccess
         where
        type Rs MyConfigReleaseDownloadAccess =
             DownloadAccesses
        type Scopes MyConfigReleaseDownloadAccess =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyConfigReleaseDownloadAccess'{..}
          = go (Just _mcrdaCpksver) _mcrdaVolumeIds _mcrdaXgafv
              _mcrdaUploadProtocol
              _mcrdaLocale
              _mcrdaAccessToken
              _mcrdaUploadType
              _mcrdaSource
              _mcrdaCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MyConfigReleaseDownloadAccessResource)
                      mempty
