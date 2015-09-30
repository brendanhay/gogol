{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Books.Bookshelves.List
    (
    -- * REST Resource
      BookshelvesListAPI

    -- * Creating a Request
    , bookshelvesList
    , BookshelvesList

    -- * Request Lenses
    , blQuotaUser
    , blPrettyPrint
    , blUserIp
    , blUserId
    , blKey
    , blSource
    , blOauthToken
    , blFields
    , blAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksBookshelvesList@ which the
-- 'BookshelvesList' request conforms to.
type BookshelvesListAPI =
     "users" :>
       Capture "userId" Text :>
         "bookshelves" :>
           QueryParam "source" Text :> Get '[JSON] Bookshelves

-- | Retrieves a list of public bookshelves for the specified user.
--
-- /See:/ 'bookshelvesList' smart constructor.
data BookshelvesList = BookshelvesList
    { _blQuotaUser   :: !(Maybe Text)
    , _blPrettyPrint :: !Bool
    , _blUserIp      :: !(Maybe Text)
    , _blUserId      :: !Text
    , _blKey         :: !(Maybe Text)
    , _blSource      :: !(Maybe Text)
    , _blOauthToken  :: !(Maybe Text)
    , _blFields      :: !(Maybe Text)
    , _blAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BookshelvesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blQuotaUser'
--
-- * 'blPrettyPrint'
--
-- * 'blUserIp'
--
-- * 'blUserId'
--
-- * 'blKey'
--
-- * 'blSource'
--
-- * 'blOauthToken'
--
-- * 'blFields'
--
-- * 'blAlt'
bookshelvesList
    :: Text -- ^ 'userId'
    -> BookshelvesList
bookshelvesList pBlUserId_ =
    BookshelvesList
    { _blQuotaUser = Nothing
    , _blPrettyPrint = True
    , _blUserIp = Nothing
    , _blUserId = pBlUserId_
    , _blKey = Nothing
    , _blSource = Nothing
    , _blOauthToken = Nothing
    , _blFields = Nothing
    , _blAlt = "json"
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
blUserIp :: Lens' BookshelvesList' (Maybe Text)
blUserIp = lens _blUserIp (\ s a -> s{_blUserIp = a})

-- | ID of user for whom to retrieve bookshelves.
blUserId :: Lens' BookshelvesList' Text
blUserId = lens _blUserId (\ s a -> s{_blUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
blKey :: Lens' BookshelvesList' (Maybe Text)
blKey = lens _blKey (\ s a -> s{_blKey = a})

-- | String to identify the originator of this request.
blSource :: Lens' BookshelvesList' (Maybe Text)
blSource = lens _blSource (\ s a -> s{_blSource = a})

-- | OAuth 2.0 token for the current user.
blOauthToken :: Lens' BookshelvesList' (Maybe Text)
blOauthToken
  = lens _blOauthToken (\ s a -> s{_blOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
blFields :: Lens' BookshelvesList' (Maybe Text)
blFields = lens _blFields (\ s a -> s{_blFields = a})

-- | Data format for the response.
blAlt :: Lens' BookshelvesList' Text
blAlt = lens _blAlt (\ s a -> s{_blAlt = a})

instance GoogleRequest BookshelvesList' where
        type Rs BookshelvesList' = Bookshelves
        request = requestWithRoute defReq booksURL
        requestWithRoute r u BookshelvesList{..}
          = go _blQuotaUser _blPrettyPrint _blUserIp _blUserId
              _blKey
              _blSource
              _blOauthToken
              _blFields
              _blAlt
          where go
                  = clientWithRoute (Proxy :: Proxy BookshelvesListAPI)
                      r
                      u
