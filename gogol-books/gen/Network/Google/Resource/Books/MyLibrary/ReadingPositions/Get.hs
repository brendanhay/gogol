{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.MyLibrary.ReadingPositions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves my reading position information for a volume.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryReadingPositionsGet@.
module Network.Google.Resource.Books.MyLibrary.ReadingPositions.Get
    (
    -- * REST Resource
      MyLibraryReadingPositionsGetResource

    -- * Creating a Request
    , myLibraryReadingPositionsGet'
    , MyLibraryReadingPositionsGet'

    -- * Request Lenses
    , mlrpgQuotaUser
    , mlrpgPrettyPrint
    , mlrpgUserIP
    , mlrpgContentVersion
    , mlrpgKey
    , mlrpgVolumeId
    , mlrpgSource
    , mlrpgOAuthToken
    , mlrpgFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryReadingPositionsGet@ which the
-- 'MyLibraryReadingPositionsGet'' request conforms to.
type MyLibraryReadingPositionsGetResource =
     "mylibrary" :>
       "readingpositions" :>
         Capture "volumeId" Text :>
           QueryParam "contentVersion" Text :>
             QueryParam "source" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ReadingPosition

-- | Retrieves my reading position information for a volume.
--
-- /See:/ 'myLibraryReadingPositionsGet'' smart constructor.
data MyLibraryReadingPositionsGet' = MyLibraryReadingPositionsGet'
    { _mlrpgQuotaUser      :: !(Maybe Text)
    , _mlrpgPrettyPrint    :: !Bool
    , _mlrpgUserIP         :: !(Maybe Text)
    , _mlrpgContentVersion :: !(Maybe Text)
    , _mlrpgKey            :: !(Maybe Key)
    , _mlrpgVolumeId       :: !Text
    , _mlrpgSource         :: !(Maybe Text)
    , _mlrpgOAuthToken     :: !(Maybe OAuthToken)
    , _mlrpgFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryReadingPositionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlrpgQuotaUser'
--
-- * 'mlrpgPrettyPrint'
--
-- * 'mlrpgUserIP'
--
-- * 'mlrpgContentVersion'
--
-- * 'mlrpgKey'
--
-- * 'mlrpgVolumeId'
--
-- * 'mlrpgSource'
--
-- * 'mlrpgOAuthToken'
--
-- * 'mlrpgFields'
myLibraryReadingPositionsGet'
    :: Text -- ^ 'volumeId'
    -> MyLibraryReadingPositionsGet'
myLibraryReadingPositionsGet' pMlrpgVolumeId_ =
    MyLibraryReadingPositionsGet'
    { _mlrpgQuotaUser = Nothing
    , _mlrpgPrettyPrint = True
    , _mlrpgUserIP = Nothing
    , _mlrpgContentVersion = Nothing
    , _mlrpgKey = Nothing
    , _mlrpgVolumeId = pMlrpgVolumeId_
    , _mlrpgSource = Nothing
    , _mlrpgOAuthToken = Nothing
    , _mlrpgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlrpgQuotaUser :: Lens' MyLibraryReadingPositionsGet' (Maybe Text)
mlrpgQuotaUser
  = lens _mlrpgQuotaUser
      (\ s a -> s{_mlrpgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlrpgPrettyPrint :: Lens' MyLibraryReadingPositionsGet' Bool
mlrpgPrettyPrint
  = lens _mlrpgPrettyPrint
      (\ s a -> s{_mlrpgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlrpgUserIP :: Lens' MyLibraryReadingPositionsGet' (Maybe Text)
mlrpgUserIP
  = lens _mlrpgUserIP (\ s a -> s{_mlrpgUserIP = a})

-- | Volume content version for which this reading position is requested.
mlrpgContentVersion :: Lens' MyLibraryReadingPositionsGet' (Maybe Text)
mlrpgContentVersion
  = lens _mlrpgContentVersion
      (\ s a -> s{_mlrpgContentVersion = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlrpgKey :: Lens' MyLibraryReadingPositionsGet' (Maybe Key)
mlrpgKey = lens _mlrpgKey (\ s a -> s{_mlrpgKey = a})

-- | ID of volume for which to retrieve a reading position.
mlrpgVolumeId :: Lens' MyLibraryReadingPositionsGet' Text
mlrpgVolumeId
  = lens _mlrpgVolumeId
      (\ s a -> s{_mlrpgVolumeId = a})

-- | String to identify the originator of this request.
mlrpgSource :: Lens' MyLibraryReadingPositionsGet' (Maybe Text)
mlrpgSource
  = lens _mlrpgSource (\ s a -> s{_mlrpgSource = a})

-- | OAuth 2.0 token for the current user.
mlrpgOAuthToken :: Lens' MyLibraryReadingPositionsGet' (Maybe OAuthToken)
mlrpgOAuthToken
  = lens _mlrpgOAuthToken
      (\ s a -> s{_mlrpgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mlrpgFields :: Lens' MyLibraryReadingPositionsGet' (Maybe Text)
mlrpgFields
  = lens _mlrpgFields (\ s a -> s{_mlrpgFields = a})

instance GoogleAuth MyLibraryReadingPositionsGet'
         where
        authKey = mlrpgKey . _Just
        authToken = mlrpgOAuthToken . _Just

instance GoogleRequest MyLibraryReadingPositionsGet'
         where
        type Rs MyLibraryReadingPositionsGet' =
             ReadingPosition
        request = requestWithRoute defReq booksURL
        requestWithRoute r u
          MyLibraryReadingPositionsGet'{..}
          = go _mlrpgContentVersion _mlrpgSource _mlrpgVolumeId
              _mlrpgQuotaUser
              (Just _mlrpgPrettyPrint)
              _mlrpgUserIP
              _mlrpgFields
              _mlrpgKey
              _mlrpgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MyLibraryReadingPositionsGetResource)
                      r
                      u
