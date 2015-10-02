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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.RemoveVolume
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a volume from a bookshelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryBookshelvesRemoveVolume@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.RemoveVolume
    (
    -- * REST Resource
      MyLibraryBookshelvesRemoveVolumeResource

    -- * Creating a Request
    , myLibraryBookshelvesRemoveVolume'
    , MyLibraryBookshelvesRemoveVolume'

    -- * Request Lenses
    , mlbrvQuotaUser
    , mlbrvPrettyPrint
    , mlbrvUserIP
    , mlbrvReason
    , mlbrvShelf
    , mlbrvKey
    , mlbrvVolumeId
    , mlbrvSource
    , mlbrvOAuthToken
    , mlbrvFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryBookshelvesRemoveVolume@ which the
-- 'MyLibraryBookshelvesRemoveVolume'' request conforms to.
type MyLibraryBookshelvesRemoveVolumeResource =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           "removeVolume" :>
             QueryParam "reason"
               BooksMyLibraryBookshelvesRemoveVolumeReason
               :>
               QueryParam "source" Text :>
                 QueryParam "volumeId" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Removes a volume from a bookshelf.
--
-- /See:/ 'myLibraryBookshelvesRemoveVolume'' smart constructor.
data MyLibraryBookshelvesRemoveVolume' = MyLibraryBookshelvesRemoveVolume'
    { _mlbrvQuotaUser   :: !(Maybe Text)
    , _mlbrvPrettyPrint :: !Bool
    , _mlbrvUserIP      :: !(Maybe Text)
    , _mlbrvReason      :: !(Maybe BooksMyLibraryBookshelvesRemoveVolumeReason)
    , _mlbrvShelf       :: !Text
    , _mlbrvKey         :: !(Maybe Key)
    , _mlbrvVolumeId    :: !Text
    , _mlbrvSource      :: !(Maybe Text)
    , _mlbrvOAuthToken  :: !(Maybe OAuthToken)
    , _mlbrvFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryBookshelvesRemoveVolume'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbrvQuotaUser'
--
-- * 'mlbrvPrettyPrint'
--
-- * 'mlbrvUserIP'
--
-- * 'mlbrvReason'
--
-- * 'mlbrvShelf'
--
-- * 'mlbrvKey'
--
-- * 'mlbrvVolumeId'
--
-- * 'mlbrvSource'
--
-- * 'mlbrvOAuthToken'
--
-- * 'mlbrvFields'
myLibraryBookshelvesRemoveVolume'
    :: Text -- ^ 'shelf'
    -> Text -- ^ 'volumeId'
    -> MyLibraryBookshelvesRemoveVolume'
myLibraryBookshelvesRemoveVolume' pMlbrvShelf_ pMlbrvVolumeId_ =
    MyLibraryBookshelvesRemoveVolume'
    { _mlbrvQuotaUser = Nothing
    , _mlbrvPrettyPrint = True
    , _mlbrvUserIP = Nothing
    , _mlbrvReason = Nothing
    , _mlbrvShelf = pMlbrvShelf_
    , _mlbrvKey = Nothing
    , _mlbrvVolumeId = pMlbrvVolumeId_
    , _mlbrvSource = Nothing
    , _mlbrvOAuthToken = Nothing
    , _mlbrvFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlbrvQuotaUser :: Lens' MyLibraryBookshelvesRemoveVolume' (Maybe Text)
mlbrvQuotaUser
  = lens _mlbrvQuotaUser
      (\ s a -> s{_mlbrvQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlbrvPrettyPrint :: Lens' MyLibraryBookshelvesRemoveVolume' Bool
mlbrvPrettyPrint
  = lens _mlbrvPrettyPrint
      (\ s a -> s{_mlbrvPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlbrvUserIP :: Lens' MyLibraryBookshelvesRemoveVolume' (Maybe Text)
mlbrvUserIP
  = lens _mlbrvUserIP (\ s a -> s{_mlbrvUserIP = a})

-- | The reason for which the book is removed from the library.
mlbrvReason :: Lens' MyLibraryBookshelvesRemoveVolume' (Maybe BooksMyLibraryBookshelvesRemoveVolumeReason)
mlbrvReason
  = lens _mlbrvReason (\ s a -> s{_mlbrvReason = a})

-- | ID of bookshelf from which to remove a volume.
mlbrvShelf :: Lens' MyLibraryBookshelvesRemoveVolume' Text
mlbrvShelf
  = lens _mlbrvShelf (\ s a -> s{_mlbrvShelf = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlbrvKey :: Lens' MyLibraryBookshelvesRemoveVolume' (Maybe Key)
mlbrvKey = lens _mlbrvKey (\ s a -> s{_mlbrvKey = a})

-- | ID of volume to remove.
mlbrvVolumeId :: Lens' MyLibraryBookshelvesRemoveVolume' Text
mlbrvVolumeId
  = lens _mlbrvVolumeId
      (\ s a -> s{_mlbrvVolumeId = a})

-- | String to identify the originator of this request.
mlbrvSource :: Lens' MyLibraryBookshelvesRemoveVolume' (Maybe Text)
mlbrvSource
  = lens _mlbrvSource (\ s a -> s{_mlbrvSource = a})

-- | OAuth 2.0 token for the current user.
mlbrvOAuthToken :: Lens' MyLibraryBookshelvesRemoveVolume' (Maybe OAuthToken)
mlbrvOAuthToken
  = lens _mlbrvOAuthToken
      (\ s a -> s{_mlbrvOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mlbrvFields :: Lens' MyLibraryBookshelvesRemoveVolume' (Maybe Text)
mlbrvFields
  = lens _mlbrvFields (\ s a -> s{_mlbrvFields = a})

instance GoogleAuth MyLibraryBookshelvesRemoveVolume'
         where
        authKey = mlbrvKey . _Just
        authToken = mlbrvOAuthToken . _Just

instance GoogleRequest
         MyLibraryBookshelvesRemoveVolume' where
        type Rs MyLibraryBookshelvesRemoveVolume' = ()
        request = requestWithRoute defReq booksURL
        requestWithRoute r u
          MyLibraryBookshelvesRemoveVolume'{..}
          = go _mlbrvReason _mlbrvSource _mlbrvShelf
              (Just _mlbrvVolumeId)
              _mlbrvQuotaUser
              (Just _mlbrvPrettyPrint)
              _mlbrvUserIP
              _mlbrvFields
              _mlbrvKey
              _mlbrvOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy MyLibraryBookshelvesRemoveVolumeResource)
                      r
                      u
