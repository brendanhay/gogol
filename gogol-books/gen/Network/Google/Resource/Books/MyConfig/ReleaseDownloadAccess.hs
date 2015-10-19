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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Release downloaded content access restriction.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.myconfig.releaseDownloadAccess@.
module Network.Google.Resource.Books.MyConfig.ReleaseDownloadAccess
    (
    -- * REST Resource
      MyConfigReleaseDownloadAccessResource

    -- * Creating a Request
    , myConfigReleaseDownloadAccess'
    , MyConfigReleaseDownloadAccess'

    -- * Request Lenses
    , mcrdaCpksver
    , mcrdaLocale
    , mcrdaVolumeIds
    , mcrdaSource
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.myconfig.releaseDownloadAccess@ method which the
-- 'MyConfigReleaseDownloadAccess'' request conforms to.
type MyConfigReleaseDownloadAccessResource =
     "myconfig" :>
       "releaseDownloadAccess" :>
         QueryParams "volumeIds" Text :>
           QueryParam "cpksver" Text :>
             QueryParam "locale" Text :>
               QueryParam "source" Text :>
                 QueryParam "alt" AltJSON :>
                   Post '[JSON] DownloadAccesses

-- | Release downloaded content access restriction.
--
-- /See:/ 'myConfigReleaseDownloadAccess'' smart constructor.
data MyConfigReleaseDownloadAccess' = MyConfigReleaseDownloadAccess'
    { _mcrdaCpksver   :: !Text
    , _mcrdaLocale    :: !(Maybe Text)
    , _mcrdaVolumeIds :: ![Text]
    , _mcrdaSource    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyConfigReleaseDownloadAccess'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcrdaCpksver'
--
-- * 'mcrdaLocale'
--
-- * 'mcrdaVolumeIds'
--
-- * 'mcrdaSource'
myConfigReleaseDownloadAccess'
    :: Text -- ^ 'mcrdaCpksver'
    -> [Text] -- ^ 'mcrdaVolumeIds'
    -> MyConfigReleaseDownloadAccess'
myConfigReleaseDownloadAccess' pMcrdaCpksver_ pMcrdaVolumeIds_ =
    MyConfigReleaseDownloadAccess'
    { _mcrdaCpksver = pMcrdaCpksver_
    , _mcrdaLocale = Nothing
    , _mcrdaVolumeIds = pMcrdaVolumeIds_
    , _mcrdaSource = Nothing
    }

-- | The device\/version ID from which to release the restriction.
mcrdaCpksver :: Lens' MyConfigReleaseDownloadAccess' Text
mcrdaCpksver
  = lens _mcrdaCpksver (\ s a -> s{_mcrdaCpksver = a})

-- | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
mcrdaLocale :: Lens' MyConfigReleaseDownloadAccess' (Maybe Text)
mcrdaLocale
  = lens _mcrdaLocale (\ s a -> s{_mcrdaLocale = a})

-- | The volume(s) to release restrictions for.
mcrdaVolumeIds :: Lens' MyConfigReleaseDownloadAccess' [Text]
mcrdaVolumeIds
  = lens _mcrdaVolumeIds
      (\ s a -> s{_mcrdaVolumeIds = a})
      . _Coerce

-- | String to identify the originator of this request.
mcrdaSource :: Lens' MyConfigReleaseDownloadAccess' (Maybe Text)
mcrdaSource
  = lens _mcrdaSource (\ s a -> s{_mcrdaSource = a})

instance GoogleRequest MyConfigReleaseDownloadAccess'
         where
        type Rs MyConfigReleaseDownloadAccess' =
             DownloadAccesses
        requestClient MyConfigReleaseDownloadAccess'{..}
          = go _mcrdaVolumeIds (Just _mcrdaCpksver)
              _mcrdaLocale
              _mcrdaSource
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MyConfigReleaseDownloadAccessResource)
                      mempty
