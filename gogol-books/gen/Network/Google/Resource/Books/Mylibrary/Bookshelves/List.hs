{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Mylibrary.Bookshelves.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of bookshelves belonging to the authenticated user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMylibraryBookshelvesList@.
module Books.Mylibrary.Bookshelves.List
    (
    -- * REST Resource
      MylibraryBookshelvesListAPI

    -- * Creating a Request
    , mylibraryBookshelvesList
    , MylibraryBookshelvesList

    -- * Request Lenses
    , mblQuotaUser
    , mblPrettyPrint
    , mblUserIp
    , mblKey
    , mblSource
    , mblOauthToken
    , mblFields
    , mblAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMylibraryBookshelvesList@ which the
-- 'MylibraryBookshelvesList' request conforms to.
type MylibraryBookshelvesListAPI =
     "mylibrary" :>
       "bookshelves" :>
         QueryParam "source" Text :> Get '[JSON] Bookshelves

-- | Retrieves a list of bookshelves belonging to the authenticated user.
--
-- /See:/ 'mylibraryBookshelvesList' smart constructor.
data MylibraryBookshelvesList = MylibraryBookshelvesList
    { _mblQuotaUser   :: !(Maybe Text)
    , _mblPrettyPrint :: !Bool
    , _mblUserIp      :: !(Maybe Text)
    , _mblKey         :: !(Maybe Text)
    , _mblSource      :: !(Maybe Text)
    , _mblOauthToken  :: !(Maybe Text)
    , _mblFields      :: !(Maybe Text)
    , _mblAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MylibraryBookshelvesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mblQuotaUser'
--
-- * 'mblPrettyPrint'
--
-- * 'mblUserIp'
--
-- * 'mblKey'
--
-- * 'mblSource'
--
-- * 'mblOauthToken'
--
-- * 'mblFields'
--
-- * 'mblAlt'
mylibraryBookshelvesList
    :: MylibraryBookshelvesList
mylibraryBookshelvesList =
    MylibraryBookshelvesList
    { _mblQuotaUser = Nothing
    , _mblPrettyPrint = True
    , _mblUserIp = Nothing
    , _mblKey = Nothing
    , _mblSource = Nothing
    , _mblOauthToken = Nothing
    , _mblFields = Nothing
    , _mblAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mblQuotaUser :: Lens' MylibraryBookshelvesList' (Maybe Text)
mblQuotaUser
  = lens _mblQuotaUser (\ s a -> s{_mblQuotaUser = a})

-- | Returns response with indentations and line breaks.
mblPrettyPrint :: Lens' MylibraryBookshelvesList' Bool
mblPrettyPrint
  = lens _mblPrettyPrint
      (\ s a -> s{_mblPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mblUserIp :: Lens' MylibraryBookshelvesList' (Maybe Text)
mblUserIp
  = lens _mblUserIp (\ s a -> s{_mblUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mblKey :: Lens' MylibraryBookshelvesList' (Maybe Text)
mblKey = lens _mblKey (\ s a -> s{_mblKey = a})

-- | String to identify the originator of this request.
mblSource :: Lens' MylibraryBookshelvesList' (Maybe Text)
mblSource
  = lens _mblSource (\ s a -> s{_mblSource = a})

-- | OAuth 2.0 token for the current user.
mblOauthToken :: Lens' MylibraryBookshelvesList' (Maybe Text)
mblOauthToken
  = lens _mblOauthToken
      (\ s a -> s{_mblOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mblFields :: Lens' MylibraryBookshelvesList' (Maybe Text)
mblFields
  = lens _mblFields (\ s a -> s{_mblFields = a})

-- | Data format for the response.
mblAlt :: Lens' MylibraryBookshelvesList' Text
mblAlt = lens _mblAlt (\ s a -> s{_mblAlt = a})

instance GoogleRequest MylibraryBookshelvesList'
         where
        type Rs MylibraryBookshelvesList' = Bookshelves
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MylibraryBookshelvesList{..}
          = go _mblQuotaUser _mblPrettyPrint _mblUserIp _mblKey
              _mblSource
              _mblOauthToken
              _mblFields
              _mblAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MylibraryBookshelvesListAPI)
                      r
                      u
