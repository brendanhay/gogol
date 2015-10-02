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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves metadata for a specific bookshelf belonging to the
-- authenticated user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryBookshelvesGet@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.Get
    (
    -- * REST Resource
      MyLibraryBookshelvesGetResource

    -- * Creating a Request
    , myLibraryBookshelvesGet'
    , MyLibraryBookshelvesGet'

    -- * Request Lenses
    , mlbgQuotaUser
    , mlbgPrettyPrint
    , mlbgUserIP
    , mlbgShelf
    , mlbgKey
    , mlbgSource
    , mlbgOAuthToken
    , mlbgFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryBookshelvesGet@ which the
-- 'MyLibraryBookshelvesGet'' request conforms to.
type MyLibraryBookshelvesGetResource =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           QueryParam "source" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Bookshelf

-- | Retrieves metadata for a specific bookshelf belonging to the
-- authenticated user.
--
-- /See:/ 'myLibraryBookshelvesGet'' smart constructor.
data MyLibraryBookshelvesGet' = MyLibraryBookshelvesGet'
    { _mlbgQuotaUser   :: !(Maybe Text)
    , _mlbgPrettyPrint :: !Bool
    , _mlbgUserIP      :: !(Maybe Text)
    , _mlbgShelf       :: !Text
    , _mlbgKey         :: !(Maybe Key)
    , _mlbgSource      :: !(Maybe Text)
    , _mlbgOAuthToken  :: !(Maybe OAuthToken)
    , _mlbgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryBookshelvesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbgQuotaUser'
--
-- * 'mlbgPrettyPrint'
--
-- * 'mlbgUserIP'
--
-- * 'mlbgShelf'
--
-- * 'mlbgKey'
--
-- * 'mlbgSource'
--
-- * 'mlbgOAuthToken'
--
-- * 'mlbgFields'
myLibraryBookshelvesGet'
    :: Text -- ^ 'shelf'
    -> MyLibraryBookshelvesGet'
myLibraryBookshelvesGet' pMlbgShelf_ =
    MyLibraryBookshelvesGet'
    { _mlbgQuotaUser = Nothing
    , _mlbgPrettyPrint = True
    , _mlbgUserIP = Nothing
    , _mlbgShelf = pMlbgShelf_
    , _mlbgKey = Nothing
    , _mlbgSource = Nothing
    , _mlbgOAuthToken = Nothing
    , _mlbgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlbgQuotaUser :: Lens' MyLibraryBookshelvesGet' (Maybe Text)
mlbgQuotaUser
  = lens _mlbgQuotaUser
      (\ s a -> s{_mlbgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlbgPrettyPrint :: Lens' MyLibraryBookshelvesGet' Bool
mlbgPrettyPrint
  = lens _mlbgPrettyPrint
      (\ s a -> s{_mlbgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlbgUserIP :: Lens' MyLibraryBookshelvesGet' (Maybe Text)
mlbgUserIP
  = lens _mlbgUserIP (\ s a -> s{_mlbgUserIP = a})

-- | ID of bookshelf to retrieve.
mlbgShelf :: Lens' MyLibraryBookshelvesGet' Text
mlbgShelf
  = lens _mlbgShelf (\ s a -> s{_mlbgShelf = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlbgKey :: Lens' MyLibraryBookshelvesGet' (Maybe Key)
mlbgKey = lens _mlbgKey (\ s a -> s{_mlbgKey = a})

-- | String to identify the originator of this request.
mlbgSource :: Lens' MyLibraryBookshelvesGet' (Maybe Text)
mlbgSource
  = lens _mlbgSource (\ s a -> s{_mlbgSource = a})

-- | OAuth 2.0 token for the current user.
mlbgOAuthToken :: Lens' MyLibraryBookshelvesGet' (Maybe OAuthToken)
mlbgOAuthToken
  = lens _mlbgOAuthToken
      (\ s a -> s{_mlbgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mlbgFields :: Lens' MyLibraryBookshelvesGet' (Maybe Text)
mlbgFields
  = lens _mlbgFields (\ s a -> s{_mlbgFields = a})

instance GoogleAuth MyLibraryBookshelvesGet' where
        authKey = mlbgKey . _Just
        authToken = mlbgOAuthToken . _Just

instance GoogleRequest MyLibraryBookshelvesGet' where
        type Rs MyLibraryBookshelvesGet' = Bookshelf
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MyLibraryBookshelvesGet'{..}
          = go _mlbgSource _mlbgShelf _mlbgQuotaUser
              (Just _mlbgPrettyPrint)
              _mlbgUserIP
              _mlbgFields
              _mlbgKey
              _mlbgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MyLibraryBookshelvesGetResource)
                      r
                      u
