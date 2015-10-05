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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.MoveVolume
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Moves a volume within a bookshelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryBookshelvesMoveVolume@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.MoveVolume
    (
    -- * REST Resource
      MyLibraryBookshelvesMoveVolumeResource

    -- * Creating a Request
    , myLibraryBookshelvesMoveVolume'
    , MyLibraryBookshelvesMoveVolume'

    -- * Request Lenses
    , mlbmvQuotaUser
    , mlbmvPrettyPrint
    , mlbmvUserIP
    , mlbmvShelf
    , mlbmvKey
    , mlbmvVolumeId
    , mlbmvSource
    , mlbmvOAuthToken
    , mlbmvVolumePosition
    , mlbmvFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryBookshelvesMoveVolume@ which the
-- 'MyLibraryBookshelvesMoveVolume'' request conforms to.
type MyLibraryBookshelvesMoveVolumeResource =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           "moveVolume" :>
             QueryParam "volumeId" Text :>
               QueryParam "volumePosition" Int32 :>
                 QueryParam "source" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Moves a volume within a bookshelf.
--
-- /See:/ 'myLibraryBookshelvesMoveVolume'' smart constructor.
data MyLibraryBookshelvesMoveVolume' = MyLibraryBookshelvesMoveVolume'
    { _mlbmvQuotaUser      :: !(Maybe Text)
    , _mlbmvPrettyPrint    :: !Bool
    , _mlbmvUserIP         :: !(Maybe Text)
    , _mlbmvShelf          :: !Text
    , _mlbmvKey            :: !(Maybe AuthKey)
    , _mlbmvVolumeId       :: !Text
    , _mlbmvSource         :: !(Maybe Text)
    , _mlbmvOAuthToken     :: !(Maybe OAuthToken)
    , _mlbmvVolumePosition :: !Int32
    , _mlbmvFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryBookshelvesMoveVolume'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbmvQuotaUser'
--
-- * 'mlbmvPrettyPrint'
--
-- * 'mlbmvUserIP'
--
-- * 'mlbmvShelf'
--
-- * 'mlbmvKey'
--
-- * 'mlbmvVolumeId'
--
-- * 'mlbmvSource'
--
-- * 'mlbmvOAuthToken'
--
-- * 'mlbmvVolumePosition'
--
-- * 'mlbmvFields'
myLibraryBookshelvesMoveVolume'
    :: Text -- ^ 'shelf'
    -> Text -- ^ 'volumeId'
    -> Int32 -- ^ 'volumePosition'
    -> MyLibraryBookshelvesMoveVolume'
myLibraryBookshelvesMoveVolume' pMlbmvShelf_ pMlbmvVolumeId_ pMlbmvVolumePosition_ =
    MyLibraryBookshelvesMoveVolume'
    { _mlbmvQuotaUser = Nothing
    , _mlbmvPrettyPrint = True
    , _mlbmvUserIP = Nothing
    , _mlbmvShelf = pMlbmvShelf_
    , _mlbmvKey = Nothing
    , _mlbmvVolumeId = pMlbmvVolumeId_
    , _mlbmvSource = Nothing
    , _mlbmvOAuthToken = Nothing
    , _mlbmvVolumePosition = pMlbmvVolumePosition_
    , _mlbmvFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlbmvQuotaUser :: Lens' MyLibraryBookshelvesMoveVolume' (Maybe Text)
mlbmvQuotaUser
  = lens _mlbmvQuotaUser
      (\ s a -> s{_mlbmvQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlbmvPrettyPrint :: Lens' MyLibraryBookshelvesMoveVolume' Bool
mlbmvPrettyPrint
  = lens _mlbmvPrettyPrint
      (\ s a -> s{_mlbmvPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlbmvUserIP :: Lens' MyLibraryBookshelvesMoveVolume' (Maybe Text)
mlbmvUserIP
  = lens _mlbmvUserIP (\ s a -> s{_mlbmvUserIP = a})

-- | ID of bookshelf with the volume.
mlbmvShelf :: Lens' MyLibraryBookshelvesMoveVolume' Text
mlbmvShelf
  = lens _mlbmvShelf (\ s a -> s{_mlbmvShelf = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlbmvKey :: Lens' MyLibraryBookshelvesMoveVolume' (Maybe AuthKey)
mlbmvKey = lens _mlbmvKey (\ s a -> s{_mlbmvKey = a})

-- | ID of volume to move.
mlbmvVolumeId :: Lens' MyLibraryBookshelvesMoveVolume' Text
mlbmvVolumeId
  = lens _mlbmvVolumeId
      (\ s a -> s{_mlbmvVolumeId = a})

-- | String to identify the originator of this request.
mlbmvSource :: Lens' MyLibraryBookshelvesMoveVolume' (Maybe Text)
mlbmvSource
  = lens _mlbmvSource (\ s a -> s{_mlbmvSource = a})

-- | OAuth 2.0 token for the current user.
mlbmvOAuthToken :: Lens' MyLibraryBookshelvesMoveVolume' (Maybe OAuthToken)
mlbmvOAuthToken
  = lens _mlbmvOAuthToken
      (\ s a -> s{_mlbmvOAuthToken = a})

-- | Position on shelf to move the item (0 puts the item before the current
-- first item, 1 puts it between the first and the second and so on.)
mlbmvVolumePosition :: Lens' MyLibraryBookshelvesMoveVolume' Int32
mlbmvVolumePosition
  = lens _mlbmvVolumePosition
      (\ s a -> s{_mlbmvVolumePosition = a})

-- | Selector specifying which fields to include in a partial response.
mlbmvFields :: Lens' MyLibraryBookshelvesMoveVolume' (Maybe Text)
mlbmvFields
  = lens _mlbmvFields (\ s a -> s{_mlbmvFields = a})

instance GoogleAuth MyLibraryBookshelvesMoveVolume'
         where
        authKey = mlbmvKey . _Just
        authToken = mlbmvOAuthToken . _Just

instance GoogleRequest
         MyLibraryBookshelvesMoveVolume' where
        type Rs MyLibraryBookshelvesMoveVolume' = ()
        request = requestWithRoute defReq booksURL
        requestWithRoute r u
          MyLibraryBookshelvesMoveVolume'{..}
          = go _mlbmvShelf (Just _mlbmvVolumeId)
              (Just _mlbmvVolumePosition)
              _mlbmvSource
              _mlbmvQuotaUser
              (Just _mlbmvPrettyPrint)
              _mlbmvUserIP
              _mlbmvFields
              _mlbmvKey
              _mlbmvOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy MyLibraryBookshelvesMoveVolumeResource)
                      r
                      u
