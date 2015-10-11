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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.ClearVolumes
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Clears all volumes from a bookshelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryBookshelvesClearVolumes@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.ClearVolumes
    (
    -- * REST Resource
      MyLibraryBookshelvesClearVolumesResource

    -- * Creating a Request
    , myLibraryBookshelvesClearVolumes'
    , MyLibraryBookshelvesClearVolumes'

    -- * Request Lenses
    , mlbcvQuotaUser
    , mlbcvPrettyPrint
    , mlbcvUserIP
    , mlbcvShelf
    , mlbcvKey
    , mlbcvSource
    , mlbcvOAuthToken
    , mlbcvFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryBookshelvesClearVolumes@ method which the
-- 'MyLibraryBookshelvesClearVolumes'' request conforms to.
type MyLibraryBookshelvesClearVolumesResource =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           "clearVolumes" :>
             QueryParam "source" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Clears all volumes from a bookshelf.
--
-- /See:/ 'myLibraryBookshelvesClearVolumes'' smart constructor.
data MyLibraryBookshelvesClearVolumes' = MyLibraryBookshelvesClearVolumes'
    { _mlbcvQuotaUser   :: !(Maybe Text)
    , _mlbcvPrettyPrint :: !Bool
    , _mlbcvUserIP      :: !(Maybe Text)
    , _mlbcvShelf       :: !Text
    , _mlbcvKey         :: !(Maybe AuthKey)
    , _mlbcvSource      :: !(Maybe Text)
    , _mlbcvOAuthToken  :: !(Maybe OAuthToken)
    , _mlbcvFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryBookshelvesClearVolumes'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbcvQuotaUser'
--
-- * 'mlbcvPrettyPrint'
--
-- * 'mlbcvUserIP'
--
-- * 'mlbcvShelf'
--
-- * 'mlbcvKey'
--
-- * 'mlbcvSource'
--
-- * 'mlbcvOAuthToken'
--
-- * 'mlbcvFields'
myLibraryBookshelvesClearVolumes'
    :: Text -- ^ 'shelf'
    -> MyLibraryBookshelvesClearVolumes'
myLibraryBookshelvesClearVolumes' pMlbcvShelf_ =
    MyLibraryBookshelvesClearVolumes'
    { _mlbcvQuotaUser = Nothing
    , _mlbcvPrettyPrint = True
    , _mlbcvUserIP = Nothing
    , _mlbcvShelf = pMlbcvShelf_
    , _mlbcvKey = Nothing
    , _mlbcvSource = Nothing
    , _mlbcvOAuthToken = Nothing
    , _mlbcvFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlbcvQuotaUser :: Lens' MyLibraryBookshelvesClearVolumes' (Maybe Text)
mlbcvQuotaUser
  = lens _mlbcvQuotaUser
      (\ s a -> s{_mlbcvQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlbcvPrettyPrint :: Lens' MyLibraryBookshelvesClearVolumes' Bool
mlbcvPrettyPrint
  = lens _mlbcvPrettyPrint
      (\ s a -> s{_mlbcvPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlbcvUserIP :: Lens' MyLibraryBookshelvesClearVolumes' (Maybe Text)
mlbcvUserIP
  = lens _mlbcvUserIP (\ s a -> s{_mlbcvUserIP = a})

-- | ID of bookshelf from which to remove a volume.
mlbcvShelf :: Lens' MyLibraryBookshelvesClearVolumes' Text
mlbcvShelf
  = lens _mlbcvShelf (\ s a -> s{_mlbcvShelf = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlbcvKey :: Lens' MyLibraryBookshelvesClearVolumes' (Maybe AuthKey)
mlbcvKey = lens _mlbcvKey (\ s a -> s{_mlbcvKey = a})

-- | String to identify the originator of this request.
mlbcvSource :: Lens' MyLibraryBookshelvesClearVolumes' (Maybe Text)
mlbcvSource
  = lens _mlbcvSource (\ s a -> s{_mlbcvSource = a})

-- | OAuth 2.0 token for the current user.
mlbcvOAuthToken :: Lens' MyLibraryBookshelvesClearVolumes' (Maybe OAuthToken)
mlbcvOAuthToken
  = lens _mlbcvOAuthToken
      (\ s a -> s{_mlbcvOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mlbcvFields :: Lens' MyLibraryBookshelvesClearVolumes' (Maybe Text)
mlbcvFields
  = lens _mlbcvFields (\ s a -> s{_mlbcvFields = a})

instance GoogleAuth MyLibraryBookshelvesClearVolumes'
         where
        _AuthKey = mlbcvKey . _Just
        _AuthToken = mlbcvOAuthToken . _Just

instance GoogleRequest
         MyLibraryBookshelvesClearVolumes' where
        type Rs MyLibraryBookshelvesClearVolumes' = ()
        request = requestWith booksRequest
        requestWith rq MyLibraryBookshelvesClearVolumes'{..}
          = go _mlbcvShelf _mlbcvSource _mlbcvQuotaUser
              (Just _mlbcvPrettyPrint)
              _mlbcvUserIP
              _mlbcvFields
              _mlbcvKey
              _mlbcvOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy MyLibraryBookshelvesClearVolumesResource)
                      rq
