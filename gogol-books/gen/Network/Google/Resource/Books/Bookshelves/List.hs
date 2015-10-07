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
-- Module      : Network.Google.Resource.Books.Bookshelves.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of public bookshelves for the specified user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksBookshelvesList@.
module Network.Google.Resource.Books.Bookshelves.List
    (
    -- * REST Resource
      BookshelvesListResource

    -- * Creating a Request
    , bookshelvesList'
    , BookshelvesList'

    -- * Request Lenses
    , blQuotaUser
    , blPrettyPrint
    , blUserIP
    , blUserId
    , blKey
    , blSource
    , blOAuthToken
    , blFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksBookshelvesList@ method which the
-- 'BookshelvesList'' request conforms to.
type BookshelvesListResource =
     "users" :>
       Capture "userId" Text :>
         "bookshelves" :>
           QueryParam "source" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Bookshelves

-- | Retrieves a list of public bookshelves for the specified user.
--
-- /See:/ 'bookshelvesList'' smart constructor.
data BookshelvesList' = BookshelvesList'
    { _blQuotaUser   :: !(Maybe Text)
    , _blPrettyPrint :: !Bool
    , _blUserIP      :: !(Maybe Text)
    , _blUserId      :: !Text
    , _blKey         :: !(Maybe AuthKey)
    , _blSource      :: !(Maybe Text)
    , _blOAuthToken  :: !(Maybe OAuthToken)
    , _blFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BookshelvesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blQuotaUser'
--
-- * 'blPrettyPrint'
--
-- * 'blUserIP'
--
-- * 'blUserId'
--
-- * 'blKey'
--
-- * 'blSource'
--
-- * 'blOAuthToken'
--
-- * 'blFields'
bookshelvesList'
    :: Text -- ^ 'userId'
    -> BookshelvesList'
bookshelvesList' pBlUserId_ =
    BookshelvesList'
    { _blQuotaUser = Nothing
    , _blPrettyPrint = True
    , _blUserIP = Nothing
    , _blUserId = pBlUserId_
    , _blKey = Nothing
    , _blSource = Nothing
    , _blOAuthToken = Nothing
    , _blFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
blQuotaUser :: Lens' BookshelvesList' (Maybe Text)
blQuotaUser
  = lens _blQuotaUser (\ s a -> s{_blQuotaUser = a})

-- | Returns response with indentations and line breaks.
blPrettyPrint :: Lens' BookshelvesList' Bool
blPrettyPrint
  = lens _blPrettyPrint
      (\ s a -> s{_blPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
blUserIP :: Lens' BookshelvesList' (Maybe Text)
blUserIP = lens _blUserIP (\ s a -> s{_blUserIP = a})

-- | ID of user for whom to retrieve bookshelves.
blUserId :: Lens' BookshelvesList' Text
blUserId = lens _blUserId (\ s a -> s{_blUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
blKey :: Lens' BookshelvesList' (Maybe AuthKey)
blKey = lens _blKey (\ s a -> s{_blKey = a})

-- | String to identify the originator of this request.
blSource :: Lens' BookshelvesList' (Maybe Text)
blSource = lens _blSource (\ s a -> s{_blSource = a})

-- | OAuth 2.0 token for the current user.
blOAuthToken :: Lens' BookshelvesList' (Maybe OAuthToken)
blOAuthToken
  = lens _blOAuthToken (\ s a -> s{_blOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
blFields :: Lens' BookshelvesList' (Maybe Text)
blFields = lens _blFields (\ s a -> s{_blFields = a})

instance GoogleAuth BookshelvesList' where
        _AuthKey = blKey . _Just
        _AuthToken = blOAuthToken . _Just

instance GoogleRequest BookshelvesList' where
        type Rs BookshelvesList' = Bookshelves
        request = requestWith booksRequest
        requestWith rq BookshelvesList'{..}
          = go _blUserId _blSource _blQuotaUser
              (Just _blPrettyPrint)
              _blUserIP
              _blFields
              _blKey
              _blOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy BookshelvesListResource)
                      rq
