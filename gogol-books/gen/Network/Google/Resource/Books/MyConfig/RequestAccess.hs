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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Request concurrent and download access restrictions.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.myconfig.requestAccess@.
module Network.Google.Resource.Books.MyConfig.RequestAccess
    (
    -- * REST Resource
      MyConfigRequestAccessResource

    -- * Creating a Request
    , myConfigRequestAccess
    , MyConfigRequestAccess

    -- * Request Lenses
    , mcraCpksver
    , mcraLocale
    , mcraLicenseTypes
    , mcraVolumeId
    , mcraSource
    , mcraNonce
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.myconfig.requestAccess@ method which the
-- 'MyConfigRequestAccess' request conforms to.
type MyConfigRequestAccessResource =
     "books" :>
       "v1" :>
         "myconfig" :>
           "requestAccess" :>
             QueryParam "source" Text :>
               QueryParam "volumeId" Text :>
                 QueryParam "nonce" Text :>
                   QueryParam "cpksver" Text :>
                     QueryParam "locale" Text :>
                       QueryParam "licenseTypes"
                         MyConfigRequestAccessLicenseTypes
                         :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON] RequestAccess

-- | Request concurrent and download access restrictions.
--
-- /See:/ 'myConfigRequestAccess' smart constructor.
data MyConfigRequestAccess = MyConfigRequestAccess
    { _mcraCpksver      :: !Text
    , _mcraLocale       :: !(Maybe Text)
    , _mcraLicenseTypes :: !(Maybe MyConfigRequestAccessLicenseTypes)
    , _mcraVolumeId     :: !Text
    , _mcraSource       :: !Text
    , _mcraNonce        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyConfigRequestAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcraCpksver'
--
-- * 'mcraLocale'
--
-- * 'mcraLicenseTypes'
--
-- * 'mcraVolumeId'
--
-- * 'mcraSource'
--
-- * 'mcraNonce'
myConfigRequestAccess
    :: Text -- ^ 'mcraCpksver'
    -> Text -- ^ 'mcraVolumeId'
    -> Text -- ^ 'mcraSource'
    -> Text -- ^ 'mcraNonce'
    -> MyConfigRequestAccess
myConfigRequestAccess pMcraCpksver_ pMcraVolumeId_ pMcraSource_ pMcraNonce_ =
    MyConfigRequestAccess
    { _mcraCpksver = pMcraCpksver_
    , _mcraLocale = Nothing
    , _mcraLicenseTypes = Nothing
    , _mcraVolumeId = pMcraVolumeId_
    , _mcraSource = pMcraSource_
    , _mcraNonce = pMcraNonce_
    }

-- | The device\/version ID from which to request the restrictions.
mcraCpksver :: Lens' MyConfigRequestAccess Text
mcraCpksver
  = lens _mcraCpksver (\ s a -> s{_mcraCpksver = a})

-- | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
mcraLocale :: Lens' MyConfigRequestAccess (Maybe Text)
mcraLocale
  = lens _mcraLocale (\ s a -> s{_mcraLocale = a})

-- | The type of access license to request. If not specified, the default is
-- BOTH.
mcraLicenseTypes :: Lens' MyConfigRequestAccess (Maybe MyConfigRequestAccessLicenseTypes)
mcraLicenseTypes
  = lens _mcraLicenseTypes
      (\ s a -> s{_mcraLicenseTypes = a})

-- | The volume to request concurrent\/download restrictions for.
mcraVolumeId :: Lens' MyConfigRequestAccess Text
mcraVolumeId
  = lens _mcraVolumeId (\ s a -> s{_mcraVolumeId = a})

-- | String to identify the originator of this request.
mcraSource :: Lens' MyConfigRequestAccess Text
mcraSource
  = lens _mcraSource (\ s a -> s{_mcraSource = a})

-- | The client nonce value.
mcraNonce :: Lens' MyConfigRequestAccess Text
mcraNonce
  = lens _mcraNonce (\ s a -> s{_mcraNonce = a})

instance GoogleRequest MyConfigRequestAccess where
        type Rs MyConfigRequestAccess = RequestAccess
        requestClient MyConfigRequestAccess{..}
          = go (Just _mcraSource) (Just _mcraVolumeId)
              (Just _mcraNonce)
              (Just _mcraCpksver)
              _mcraLocale
              _mcraLicenseTypes
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy MyConfigRequestAccessResource)
                      mempty
