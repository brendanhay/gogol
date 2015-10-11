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
-- Module      : Network.Google.Resource.Books.Dictionary.ListOfflineMetadata
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of offline dictionary meatadata available
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksDictionaryListOfflineMetadata@.
module Network.Google.Resource.Books.Dictionary.ListOfflineMetadata
    (
    -- * REST Resource
      DictionaryListOfflineMetadataResource

    -- * Creating a Request
    , dictionaryListOfflineMetadata'
    , DictionaryListOfflineMetadata'

    -- * Request Lenses
    , dlomQuotaUser
    , dlomPrettyPrint
    , dlomCpksver
    , dlomUserIP
    , dlomKey
    , dlomOAuthToken
    , dlomFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksDictionaryListOfflineMetadata@ method which the
-- 'DictionaryListOfflineMetadata'' request conforms to.
type DictionaryListOfflineMetadataResource =
     "dictionary" :>
       "listOfflineMetadata" :>
         QueryParam "cpksver" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Metadata

-- | Returns a list of offline dictionary meatadata available
--
-- /See:/ 'dictionaryListOfflineMetadata'' smart constructor.
data DictionaryListOfflineMetadata' = DictionaryListOfflineMetadata'
    { _dlomQuotaUser   :: !(Maybe Text)
    , _dlomPrettyPrint :: !Bool
    , _dlomCpksver     :: !Text
    , _dlomUserIP      :: !(Maybe Text)
    , _dlomKey         :: !(Maybe AuthKey)
    , _dlomOAuthToken  :: !(Maybe OAuthToken)
    , _dlomFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DictionaryListOfflineMetadata'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlomQuotaUser'
--
-- * 'dlomPrettyPrint'
--
-- * 'dlomCpksver'
--
-- * 'dlomUserIP'
--
-- * 'dlomKey'
--
-- * 'dlomOAuthToken'
--
-- * 'dlomFields'
dictionaryListOfflineMetadata'
    :: Text -- ^ 'cpksver'
    -> DictionaryListOfflineMetadata'
dictionaryListOfflineMetadata' pDlomCpksver_ =
    DictionaryListOfflineMetadata'
    { _dlomQuotaUser = Nothing
    , _dlomPrettyPrint = True
    , _dlomCpksver = pDlomCpksver_
    , _dlomUserIP = Nothing
    , _dlomKey = Nothing
    , _dlomOAuthToken = Nothing
    , _dlomFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dlomQuotaUser :: Lens' DictionaryListOfflineMetadata' (Maybe Text)
dlomQuotaUser
  = lens _dlomQuotaUser
      (\ s a -> s{_dlomQuotaUser = a})

-- | Returns response with indentations and line breaks.
dlomPrettyPrint :: Lens' DictionaryListOfflineMetadata' Bool
dlomPrettyPrint
  = lens _dlomPrettyPrint
      (\ s a -> s{_dlomPrettyPrint = a})

-- | The device\/version ID from which to request the data.
dlomCpksver :: Lens' DictionaryListOfflineMetadata' Text
dlomCpksver
  = lens _dlomCpksver (\ s a -> s{_dlomCpksver = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dlomUserIP :: Lens' DictionaryListOfflineMetadata' (Maybe Text)
dlomUserIP
  = lens _dlomUserIP (\ s a -> s{_dlomUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dlomKey :: Lens' DictionaryListOfflineMetadata' (Maybe AuthKey)
dlomKey = lens _dlomKey (\ s a -> s{_dlomKey = a})

-- | OAuth 2.0 token for the current user.
dlomOAuthToken :: Lens' DictionaryListOfflineMetadata' (Maybe OAuthToken)
dlomOAuthToken
  = lens _dlomOAuthToken
      (\ s a -> s{_dlomOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dlomFields :: Lens' DictionaryListOfflineMetadata' (Maybe Text)
dlomFields
  = lens _dlomFields (\ s a -> s{_dlomFields = a})

instance GoogleAuth DictionaryListOfflineMetadata'
         where
        _AuthKey = dlomKey . _Just
        _AuthToken = dlomOAuthToken . _Just

instance GoogleRequest DictionaryListOfflineMetadata'
         where
        type Rs DictionaryListOfflineMetadata' = Metadata
        request = requestWith booksRequest
        requestWith rq DictionaryListOfflineMetadata'{..}
          = go (Just _dlomCpksver) _dlomQuotaUser
              (Just _dlomPrettyPrint)
              _dlomUserIP
              _dlomFields
              _dlomKey
              _dlomOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy DictionaryListOfflineMetadataResource)
                      rq
