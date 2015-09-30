{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Books.Dictionary.ListOfflineMetadata
    (
    -- * REST Resource
      DictionaryListOfflineMetadataAPI

    -- * Creating a Request
    , dictionaryListOfflineMetadata
    , DictionaryListOfflineMetadata

    -- * Request Lenses
    , dlomQuotaUser
    , dlomPrettyPrint
    , dlomCpksver
    , dlomUserIp
    , dlomKey
    , dlomOauthToken
    , dlomFields
    , dlomAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksDictionaryListOfflineMetadata@ which the
-- 'DictionaryListOfflineMetadata' request conforms to.
type DictionaryListOfflineMetadataAPI =
     "dictionary" :>
       "listOfflineMetadata" :>
         QueryParam "cpksver" Text :> Get '[JSON] Metadata

-- | Returns a list of offline dictionary meatadata available
--
-- /See:/ 'dictionaryListOfflineMetadata' smart constructor.
data DictionaryListOfflineMetadata = DictionaryListOfflineMetadata
    { _dlomQuotaUser   :: !(Maybe Text)
    , _dlomPrettyPrint :: !Bool
    , _dlomCpksver     :: !Text
    , _dlomUserIp      :: !(Maybe Text)
    , _dlomKey         :: !(Maybe Text)
    , _dlomOauthToken  :: !(Maybe Text)
    , _dlomFields      :: !(Maybe Text)
    , _dlomAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'dlomUserIp'
--
-- * 'dlomKey'
--
-- * 'dlomOauthToken'
--
-- * 'dlomFields'
--
-- * 'dlomAlt'
dictionaryListOfflineMetadata
    :: Text -- ^ 'cpksver'
    -> DictionaryListOfflineMetadata
dictionaryListOfflineMetadata pDlomCpksver_ =
    DictionaryListOfflineMetadata
    { _dlomQuotaUser = Nothing
    , _dlomPrettyPrint = True
    , _dlomCpksver = pDlomCpksver_
    , _dlomUserIp = Nothing
    , _dlomKey = Nothing
    , _dlomOauthToken = Nothing
    , _dlomFields = Nothing
    , _dlomAlt = "json"
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
dlomUserIp :: Lens' DictionaryListOfflineMetadata' (Maybe Text)
dlomUserIp
  = lens _dlomUserIp (\ s a -> s{_dlomUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dlomKey :: Lens' DictionaryListOfflineMetadata' (Maybe Text)
dlomKey = lens _dlomKey (\ s a -> s{_dlomKey = a})

-- | OAuth 2.0 token for the current user.
dlomOauthToken :: Lens' DictionaryListOfflineMetadata' (Maybe Text)
dlomOauthToken
  = lens _dlomOauthToken
      (\ s a -> s{_dlomOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dlomFields :: Lens' DictionaryListOfflineMetadata' (Maybe Text)
dlomFields
  = lens _dlomFields (\ s a -> s{_dlomFields = a})

-- | Data format for the response.
dlomAlt :: Lens' DictionaryListOfflineMetadata' Text
dlomAlt = lens _dlomAlt (\ s a -> s{_dlomAlt = a})

instance GoogleRequest DictionaryListOfflineMetadata'
         where
        type Rs DictionaryListOfflineMetadata' = Metadata
        request = requestWithRoute defReq booksURL
        requestWithRoute r u
          DictionaryListOfflineMetadata{..}
          = go _dlomQuotaUser _dlomPrettyPrint
              (Just _dlomCpksver)
              _dlomUserIp
              _dlomKey
              _dlomOauthToken
              _dlomFields
              _dlomAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DictionaryListOfflineMetadataAPI)
                      r
                      u
