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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request downloaded content access for specified volumes on the My eBooks
-- shelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.myconfig.syncVolumeLicenses@.
module Network.Google.Resource.Books.MyConfig.SyncVolumeLicenses
    (
    -- * REST Resource
      MyConfigSyncVolumeLicensesResource

    -- * Creating a Request
    , myConfigSyncVolumeLicenses
    , MyConfigSyncVolumeLicenses

    -- * Request Lenses
    , mcsvlCpksver
    , mcsvlLocale
    , mcsvlVolumeIds
    , mcsvlFeatures
    , mcsvlSource
    , mcsvlShowPreOrders
    , mcsvlNonce
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.myconfig.syncVolumeLicenses@ method which the
-- 'MyConfigSyncVolumeLicenses' request conforms to.
type MyConfigSyncVolumeLicensesResource =
     "books" :>
       "v1" :>
         "myconfig" :>
           "syncVolumeLicenses" :>
             QueryParam "source" Text :>
               QueryParam "nonce" Text :>
                 QueryParam "cpksver" Text :>
                   QueryParam "locale" Text :>
                     QueryParams "volumeIds" Text :>
                       QueryParams "features"
                         MyConfigSyncVolumeLicensesFeatures
                         :>
                         QueryParam "showPreorders" Bool :>
                           QueryParam "alt" AltJSON :> Post '[JSON] Volumes

-- | Request downloaded content access for specified volumes on the My eBooks
-- shelf.
--
-- /See:/ 'myConfigSyncVolumeLicenses' smart constructor.
data MyConfigSyncVolumeLicenses = MyConfigSyncVolumeLicenses
    { _mcsvlCpksver       :: !Text
    , _mcsvlLocale        :: !(Maybe Text)
    , _mcsvlVolumeIds     :: !(Maybe [Text])
    , _mcsvlFeatures      :: !(Maybe [MyConfigSyncVolumeLicensesFeatures])
    , _mcsvlSource        :: !Text
    , _mcsvlShowPreOrders :: !(Maybe Bool)
    , _mcsvlNonce         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyConfigSyncVolumeLicenses' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcsvlCpksver'
--
-- * 'mcsvlLocale'
--
-- * 'mcsvlVolumeIds'
--
-- * 'mcsvlFeatures'
--
-- * 'mcsvlSource'
--
-- * 'mcsvlShowPreOrders'
--
-- * 'mcsvlNonce'
myConfigSyncVolumeLicenses
    :: Text -- ^ 'mcsvlCpksver'
    -> Text -- ^ 'mcsvlSource'
    -> Text -- ^ 'mcsvlNonce'
    -> MyConfigSyncVolumeLicenses
myConfigSyncVolumeLicenses pMcsvlCpksver_ pMcsvlSource_ pMcsvlNonce_ =
    MyConfigSyncVolumeLicenses
    { _mcsvlCpksver = pMcsvlCpksver_
    , _mcsvlLocale = Nothing
    , _mcsvlVolumeIds = Nothing
    , _mcsvlFeatures = Nothing
    , _mcsvlSource = pMcsvlSource_
    , _mcsvlShowPreOrders = Nothing
    , _mcsvlNonce = pMcsvlNonce_
    }

-- | The device\/version ID from which to release the restriction.
mcsvlCpksver :: Lens' MyConfigSyncVolumeLicenses Text
mcsvlCpksver
  = lens _mcsvlCpksver (\ s a -> s{_mcsvlCpksver = a})

-- | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
mcsvlLocale :: Lens' MyConfigSyncVolumeLicenses (Maybe Text)
mcsvlLocale
  = lens _mcsvlLocale (\ s a -> s{_mcsvlLocale = a})

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

-- | The client nonce value.
mcsvlNonce :: Lens' MyConfigSyncVolumeLicenses Text
mcsvlNonce
  = lens _mcsvlNonce (\ s a -> s{_mcsvlNonce = a})

instance GoogleRequest MyConfigSyncVolumeLicenses
         where
        type Rs MyConfigSyncVolumeLicenses = Volumes
        requestClient MyConfigSyncVolumeLicenses{..}
          = go (Just _mcsvlSource) (Just _mcsvlNonce)
              (Just _mcsvlCpksver)
              _mcsvlLocale
              (_mcsvlVolumeIds ^. _Default)
              (_mcsvlFeatures ^. _Default)
              _mcsvlShowPreOrders
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyConfigSyncVolumeLicensesResource)
                      mempty
