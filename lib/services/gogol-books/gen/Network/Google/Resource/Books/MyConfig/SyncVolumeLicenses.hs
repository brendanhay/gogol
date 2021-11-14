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
-- Module      : Network.Google.Resource.Books.MyConfig.SyncVolumeLicenses
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request downloaded content access for specified volumes on the My eBooks
-- shelf.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.myconfig.syncVolumeLicenses@.
module Network.Google.Resource.Books.MyConfig.SyncVolumeLicenses
    (
    -- * REST Resource
      MyConfigSyncVolumeLicensesResource

    -- * Creating a Request
    , myConfigSyncVolumeLicenses
    , MyConfigSyncVolumeLicenses

    -- * Request Lenses
    , mcsvlXgafv
    , mcsvlCpksver
    , mcsvlUploadProtocol
    , mcsvlLocale
    , mcsvlIncludeNonComicsSeries
    , mcsvlAccessToken
    , mcsvlUploadType
    , mcsvlVolumeIds
    , mcsvlFeatures
    , mcsvlSource
    , mcsvlShowPreOrders
    , mcsvlCallback
    , mcsvlNonce
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.myconfig.syncVolumeLicenses@ method which the
-- 'MyConfigSyncVolumeLicenses' request conforms to.
type MyConfigSyncVolumeLicensesResource =
     "books" :>
       "v1" :>
         "myconfig" :>
           "syncVolumeLicenses" :>
             QueryParam "cpksver" Text :>
               QueryParam "nonce" Text :>
                 QueryParam "source" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "locale" Text :>
                         QueryParam "includeNonComicsSeries" Bool :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParams "volumeIds" Text :>
                                 QueryParams "features"
                                   MyConfigSyncVolumeLicensesFeatures
                                   :>
                                   QueryParam "showPreorders" Bool :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Post '[JSON] Volumes

-- | Request downloaded content access for specified volumes on the My eBooks
-- shelf.
--
-- /See:/ 'myConfigSyncVolumeLicenses' smart constructor.
data MyConfigSyncVolumeLicenses =
  MyConfigSyncVolumeLicenses'
    { _mcsvlXgafv :: !(Maybe Xgafv)
    , _mcsvlCpksver :: !Text
    , _mcsvlUploadProtocol :: !(Maybe Text)
    , _mcsvlLocale :: !(Maybe Text)
    , _mcsvlIncludeNonComicsSeries :: !(Maybe Bool)
    , _mcsvlAccessToken :: !(Maybe Text)
    , _mcsvlUploadType :: !(Maybe Text)
    , _mcsvlVolumeIds :: !(Maybe [Text])
    , _mcsvlFeatures :: !(Maybe [MyConfigSyncVolumeLicensesFeatures])
    , _mcsvlSource :: !Text
    , _mcsvlShowPreOrders :: !(Maybe Bool)
    , _mcsvlCallback :: !(Maybe Text)
    , _mcsvlNonce :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MyConfigSyncVolumeLicenses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcsvlXgafv'
--
-- * 'mcsvlCpksver'
--
-- * 'mcsvlUploadProtocol'
--
-- * 'mcsvlLocale'
--
-- * 'mcsvlIncludeNonComicsSeries'
--
-- * 'mcsvlAccessToken'
--
-- * 'mcsvlUploadType'
--
-- * 'mcsvlVolumeIds'
--
-- * 'mcsvlFeatures'
--
-- * 'mcsvlSource'
--
-- * 'mcsvlShowPreOrders'
--
-- * 'mcsvlCallback'
--
-- * 'mcsvlNonce'
myConfigSyncVolumeLicenses
    :: Text -- ^ 'mcsvlCpksver'
    -> Text -- ^ 'mcsvlSource'
    -> Text -- ^ 'mcsvlNonce'
    -> MyConfigSyncVolumeLicenses
myConfigSyncVolumeLicenses pMcsvlCpksver_ pMcsvlSource_ pMcsvlNonce_ =
  MyConfigSyncVolumeLicenses'
    { _mcsvlXgafv = Nothing
    , _mcsvlCpksver = pMcsvlCpksver_
    , _mcsvlUploadProtocol = Nothing
    , _mcsvlLocale = Nothing
    , _mcsvlIncludeNonComicsSeries = Nothing
    , _mcsvlAccessToken = Nothing
    , _mcsvlUploadType = Nothing
    , _mcsvlVolumeIds = Nothing
    , _mcsvlFeatures = Nothing
    , _mcsvlSource = pMcsvlSource_
    , _mcsvlShowPreOrders = Nothing
    , _mcsvlCallback = Nothing
    , _mcsvlNonce = pMcsvlNonce_
    }


-- | V1 error format.
mcsvlXgafv :: Lens' MyConfigSyncVolumeLicenses (Maybe Xgafv)
mcsvlXgafv
  = lens _mcsvlXgafv (\ s a -> s{_mcsvlXgafv = a})

-- | The device\/version ID from which to release the restriction.
mcsvlCpksver :: Lens' MyConfigSyncVolumeLicenses Text
mcsvlCpksver
  = lens _mcsvlCpksver (\ s a -> s{_mcsvlCpksver = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mcsvlUploadProtocol :: Lens' MyConfigSyncVolumeLicenses (Maybe Text)
mcsvlUploadProtocol
  = lens _mcsvlUploadProtocol
      (\ s a -> s{_mcsvlUploadProtocol = a})

-- | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
mcsvlLocale :: Lens' MyConfigSyncVolumeLicenses (Maybe Text)
mcsvlLocale
  = lens _mcsvlLocale (\ s a -> s{_mcsvlLocale = a})

-- | Set to true to include non-comics series. Defaults to false.
mcsvlIncludeNonComicsSeries :: Lens' MyConfigSyncVolumeLicenses (Maybe Bool)
mcsvlIncludeNonComicsSeries
  = lens _mcsvlIncludeNonComicsSeries
      (\ s a -> s{_mcsvlIncludeNonComicsSeries = a})

-- | OAuth access token.
mcsvlAccessToken :: Lens' MyConfigSyncVolumeLicenses (Maybe Text)
mcsvlAccessToken
  = lens _mcsvlAccessToken
      (\ s a -> s{_mcsvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mcsvlUploadType :: Lens' MyConfigSyncVolumeLicenses (Maybe Text)
mcsvlUploadType
  = lens _mcsvlUploadType
      (\ s a -> s{_mcsvlUploadType = a})

-- | The volume(s) to request download restrictions for.
mcsvlVolumeIds :: Lens' MyConfigSyncVolumeLicenses [Text]
mcsvlVolumeIds
  = lens _mcsvlVolumeIds
      (\ s a -> s{_mcsvlVolumeIds = a})
      . _Default
      . _Coerce

-- | List of features supported by the client, i.e., \'RENTALS\'
mcsvlFeatures :: Lens' MyConfigSyncVolumeLicenses [MyConfigSyncVolumeLicensesFeatures]
mcsvlFeatures
  = lens _mcsvlFeatures
      (\ s a -> s{_mcsvlFeatures = a})
      . _Default
      . _Coerce

-- | String to identify the originator of this request.
mcsvlSource :: Lens' MyConfigSyncVolumeLicenses Text
mcsvlSource
  = lens _mcsvlSource (\ s a -> s{_mcsvlSource = a})

-- | Set to true to show pre-ordered books. Defaults to false.
mcsvlShowPreOrders :: Lens' MyConfigSyncVolumeLicenses (Maybe Bool)
mcsvlShowPreOrders
  = lens _mcsvlShowPreOrders
      (\ s a -> s{_mcsvlShowPreOrders = a})

-- | JSONP
mcsvlCallback :: Lens' MyConfigSyncVolumeLicenses (Maybe Text)
mcsvlCallback
  = lens _mcsvlCallback
      (\ s a -> s{_mcsvlCallback = a})

-- | The client nonce value.
mcsvlNonce :: Lens' MyConfigSyncVolumeLicenses Text
mcsvlNonce
  = lens _mcsvlNonce (\ s a -> s{_mcsvlNonce = a})

instance GoogleRequest MyConfigSyncVolumeLicenses
         where
        type Rs MyConfigSyncVolumeLicenses = Volumes
        type Scopes MyConfigSyncVolumeLicenses =
             '["https://www.googleapis.com/auth/books"]
        requestClient MyConfigSyncVolumeLicenses'{..}
          = go (Just _mcsvlCpksver) (Just _mcsvlNonce)
              (Just _mcsvlSource)
              _mcsvlXgafv
              _mcsvlUploadProtocol
              _mcsvlLocale
              _mcsvlIncludeNonComicsSeries
              _mcsvlAccessToken
              _mcsvlUploadType
              (_mcsvlVolumeIds ^. _Default)
              (_mcsvlFeatures ^. _Default)
              _mcsvlShowPreOrders
              _mcsvlCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyConfigSyncVolumeLicensesResource)
                      mempty
