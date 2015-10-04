{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Bookshelves.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves metadata for a specific bookshelf for the specified user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksBookshelvesGet@.
module Network.Google.Resource.Books.Bookshelves.Get
    (
    -- * REST Resource
      BookshelvesGetResource

    -- * Creating a Request
    , bookshelvesGet'
    , BookshelvesGet'

    -- * Request Lenses
    , bgQuotaUser
    , bgPrettyPrint
    , bgUserIP
    , bgUserId
    , bgShelf
    , bgKey
    , bgSource
    , bgOAuthToken
    , bgFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksBookshelvesGet@ which the
-- 'BookshelvesGet'' request conforms to.
type BookshelvesGetResource =
     "users" :>
       Capture "userId" Text :>
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

-- | Retrieves metadata for a specific bookshelf for the specified user.
--
-- /See:/ 'bookshelvesGet'' smart constructor.
data BookshelvesGet' = BookshelvesGet'
    { _bgQuotaUser   :: !(Maybe Text)
    , _bgPrettyPrint :: !Bool
    , _bgUserIP      :: !(Maybe Text)
    , _bgUserId      :: !Text
    , _bgShelf       :: !Text
    , _bgKey         :: !(Maybe Key)
    , _bgSource      :: !(Maybe Text)
    , _bgOAuthToken  :: !(Maybe OAuthToken)
    , _bgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BookshelvesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgQuotaUser'
--
-- * 'bgPrettyPrint'
--
-- * 'bgUserIP'
--
-- * 'bgUserId'
--
-- * 'bgShelf'
--
-- * 'bgKey'
--
-- * 'bgSource'
--
-- * 'bgOAuthToken'
--
-- * 'bgFields'
bookshelvesGet'
    :: Text -- ^ 'userId'
    -> Text -- ^ 'shelf'
    -> BookshelvesGet'
bookshelvesGet' pBgUserId_ pBgShelf_ =
    BookshelvesGet'
    { _bgQuotaUser = Nothing
    , _bgPrettyPrint = True
    , _bgUserIP = Nothing
    , _bgUserId = pBgUserId_
    , _bgShelf = pBgShelf_
    , _bgKey = Nothing
    , _bgSource = Nothing
    , _bgOAuthToken = Nothing
    , _bgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bgQuotaUser :: Lens' BookshelvesGet' (Maybe Text)
bgQuotaUser
  = lens _bgQuotaUser (\ s a -> s{_bgQuotaUser = a})

-- | Returns response with indentations and line breaks.
bgPrettyPrint :: Lens' BookshelvesGet' Bool
bgPrettyPrint
  = lens _bgPrettyPrint
      (\ s a -> s{_bgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bgUserIP :: Lens' BookshelvesGet' (Maybe Text)
bgUserIP = lens _bgUserIP (\ s a -> s{_bgUserIP = a})

-- | ID of user for whom to retrieve bookshelves.
bgUserId :: Lens' BookshelvesGet' Text
bgUserId = lens _bgUserId (\ s a -> s{_bgUserId = a})

-- | ID of bookshelf to retrieve.
bgShelf :: Lens' BookshelvesGet' Text
bgShelf = lens _bgShelf (\ s a -> s{_bgShelf = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bgKey :: Lens' BookshelvesGet' (Maybe Key)
bgKey = lens _bgKey (\ s a -> s{_bgKey = a})

-- | String to identify the originator of this request.
bgSource :: Lens' BookshelvesGet' (Maybe Text)
bgSource = lens _bgSource (\ s a -> s{_bgSource = a})

-- | OAuth 2.0 token for the current user.
bgOAuthToken :: Lens' BookshelvesGet' (Maybe OAuthToken)
bgOAuthToken
  = lens _bgOAuthToken (\ s a -> s{_bgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
bgFields :: Lens' BookshelvesGet' (Maybe Text)
bgFields = lens _bgFields (\ s a -> s{_bgFields = a})

instance GoogleAuth BookshelvesGet' where
        authKey = bgKey . _Just
        authToken = bgOAuthToken . _Just

instance GoogleRequest BookshelvesGet' where
        type Rs BookshelvesGet' = Bookshelf
        request = requestWithRoute defReq booksURL
        requestWithRoute r u BookshelvesGet'{..}
          = go _bgUserId _bgShelf _bgSource _bgQuotaUser
              (Just _bgPrettyPrint)
              _bgUserIP
              _bgFields
              _bgKey
              _bgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BookshelvesGetResource)
                      r
                      u
