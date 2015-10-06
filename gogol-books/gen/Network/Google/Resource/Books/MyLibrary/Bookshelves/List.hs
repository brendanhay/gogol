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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of bookshelves belonging to the authenticated user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryBookshelvesList@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.List
    (
    -- * REST Resource
      MyLibraryBookshelvesListResource

    -- * Creating a Request
    , myLibraryBookshelvesList'
    , MyLibraryBookshelvesList'

    -- * Request Lenses
    , mlblQuotaUser
    , mlblPrettyPrint
    , mlblUserIP
    , mlblKey
    , mlblSource
    , mlblOAuthToken
    , mlblFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryBookshelvesList@ which the
-- 'MyLibraryBookshelvesList'' request conforms to.
type MyLibraryBookshelvesListResource =
     "mylibrary" :>
       "bookshelves" :>
         QueryParam "source" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Bookshelves

-- | Retrieves a list of bookshelves belonging to the authenticated user.
--
-- /See:/ 'myLibraryBookshelvesList'' smart constructor.
data MyLibraryBookshelvesList' = MyLibraryBookshelvesList'
    { _mlblQuotaUser   :: !(Maybe Text)
    , _mlblPrettyPrint :: !Bool
    , _mlblUserIP      :: !(Maybe Text)
    , _mlblKey         :: !(Maybe AuthKey)
    , _mlblSource      :: !(Maybe Text)
    , _mlblOAuthToken  :: !(Maybe OAuthToken)
    , _mlblFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryBookshelvesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlblQuotaUser'
--
-- * 'mlblPrettyPrint'
--
-- * 'mlblUserIP'
--
-- * 'mlblKey'
--
-- * 'mlblSource'
--
-- * 'mlblOAuthToken'
--
-- * 'mlblFields'
myLibraryBookshelvesList'
    :: MyLibraryBookshelvesList'
myLibraryBookshelvesList' =
    MyLibraryBookshelvesList'
    { _mlblQuotaUser = Nothing
    , _mlblPrettyPrint = True
    , _mlblUserIP = Nothing
    , _mlblKey = Nothing
    , _mlblSource = Nothing
    , _mlblOAuthToken = Nothing
    , _mlblFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlblQuotaUser :: Lens' MyLibraryBookshelvesList' (Maybe Text)
mlblQuotaUser
  = lens _mlblQuotaUser
      (\ s a -> s{_mlblQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlblPrettyPrint :: Lens' MyLibraryBookshelvesList' Bool
mlblPrettyPrint
  = lens _mlblPrettyPrint
      (\ s a -> s{_mlblPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlblUserIP :: Lens' MyLibraryBookshelvesList' (Maybe Text)
mlblUserIP
  = lens _mlblUserIP (\ s a -> s{_mlblUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlblKey :: Lens' MyLibraryBookshelvesList' (Maybe AuthKey)
mlblKey = lens _mlblKey (\ s a -> s{_mlblKey = a})

-- | String to identify the originator of this request.
mlblSource :: Lens' MyLibraryBookshelvesList' (Maybe Text)
mlblSource
  = lens _mlblSource (\ s a -> s{_mlblSource = a})

-- | OAuth 2.0 token for the current user.
mlblOAuthToken :: Lens' MyLibraryBookshelvesList' (Maybe OAuthToken)
mlblOAuthToken
  = lens _mlblOAuthToken
      (\ s a -> s{_mlblOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mlblFields :: Lens' MyLibraryBookshelvesList' (Maybe Text)
mlblFields
  = lens _mlblFields (\ s a -> s{_mlblFields = a})

instance GoogleAuth MyLibraryBookshelvesList' where
        authKey = mlblKey . _Just
        authToken = mlblOAuthToken . _Just

instance GoogleRequest MyLibraryBookshelvesList'
         where
        type Rs MyLibraryBookshelvesList' = Bookshelves
        request = requestWith booksRequest
        requestWith rq MyLibraryBookshelvesList'{..}
          = go _mlblSource _mlblQuotaUser
              (Just _mlblPrettyPrint)
              _mlblUserIP
              _mlblFields
              _mlblKey
              _mlblOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy MyLibraryBookshelvesListResource)
                      rq
