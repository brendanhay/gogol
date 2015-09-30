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
-- Module      : Network.Google.Resource.Books.Mylibrary.Bookshelves.AddVolume
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a volume to a bookshelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMylibraryBookshelvesAddVolume@.
module Network.Google.Resource.Books.Mylibrary.Bookshelves.AddVolume
    (
    -- * REST Resource
      MylibraryBookshelvesAddVolumeResource

    -- * Creating a Request
    , mylibraryBookshelvesAddVolume'
    , MylibraryBookshelvesAddVolume'

    -- * Request Lenses
    , mbavQuotaUser
    , mbavPrettyPrint
    , mbavUserIp
    , mbavReason
    , mbavShelf
    , mbavKey
    , mbavVolumeId
    , mbavSource
    , mbavOauthToken
    , mbavFields
    , mbavAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMylibraryBookshelvesAddVolume@ which the
-- 'MylibraryBookshelvesAddVolume'' request conforms to.
type MylibraryBookshelvesAddVolumeResource =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           "addVolume" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "reason"
                     BooksMylibraryBookshelvesAddVolumeReason
                     :>
                     QueryParam "key" Text :>
                       QueryParam "volumeId" Text :>
                         QueryParam "source" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Post '[JSON] ()

-- | Adds a volume to a bookshelf.
--
-- /See:/ 'mylibraryBookshelvesAddVolume'' smart constructor.
data MylibraryBookshelvesAddVolume' = MylibraryBookshelvesAddVolume'
    { _mbavQuotaUser   :: !(Maybe Text)
    , _mbavPrettyPrint :: !Bool
    , _mbavUserIp      :: !(Maybe Text)
    , _mbavReason      :: !(Maybe BooksMylibraryBookshelvesAddVolumeReason)
    , _mbavShelf       :: !Text
    , _mbavKey         :: !(Maybe Text)
    , _mbavVolumeId    :: !Text
    , _mbavSource      :: !(Maybe Text)
    , _mbavOauthToken  :: !(Maybe Text)
    , _mbavFields      :: !(Maybe Text)
    , _mbavAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MylibraryBookshelvesAddVolume'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mbavQuotaUser'
--
-- * 'mbavPrettyPrint'
--
-- * 'mbavUserIp'
--
-- * 'mbavReason'
--
-- * 'mbavShelf'
--
-- * 'mbavKey'
--
-- * 'mbavVolumeId'
--
-- * 'mbavSource'
--
-- * 'mbavOauthToken'
--
-- * 'mbavFields'
--
-- * 'mbavAlt'
mylibraryBookshelvesAddVolume'
    :: Text -- ^ 'shelf'
    -> Text -- ^ 'volumeId'
    -> MylibraryBookshelvesAddVolume'
mylibraryBookshelvesAddVolume' pMbavShelf_ pMbavVolumeId_ =
    MylibraryBookshelvesAddVolume'
    { _mbavQuotaUser = Nothing
    , _mbavPrettyPrint = True
    , _mbavUserIp = Nothing
    , _mbavReason = Nothing
    , _mbavShelf = pMbavShelf_
    , _mbavKey = Nothing
    , _mbavVolumeId = pMbavVolumeId_
    , _mbavSource = Nothing
    , _mbavOauthToken = Nothing
    , _mbavFields = Nothing
    , _mbavAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mbavQuotaUser :: Lens' MylibraryBookshelvesAddVolume' (Maybe Text)
mbavQuotaUser
  = lens _mbavQuotaUser
      (\ s a -> s{_mbavQuotaUser = a})

-- | Returns response with indentations and line breaks.
mbavPrettyPrint :: Lens' MylibraryBookshelvesAddVolume' Bool
mbavPrettyPrint
  = lens _mbavPrettyPrint
      (\ s a -> s{_mbavPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mbavUserIp :: Lens' MylibraryBookshelvesAddVolume' (Maybe Text)
mbavUserIp
  = lens _mbavUserIp (\ s a -> s{_mbavUserIp = a})

-- | The reason for which the book is added to the library.
mbavReason :: Lens' MylibraryBookshelvesAddVolume' (Maybe BooksMylibraryBookshelvesAddVolumeReason)
mbavReason
  = lens _mbavReason (\ s a -> s{_mbavReason = a})

-- | ID of bookshelf to which to add a volume.
mbavShelf :: Lens' MylibraryBookshelvesAddVolume' Text
mbavShelf
  = lens _mbavShelf (\ s a -> s{_mbavShelf = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mbavKey :: Lens' MylibraryBookshelvesAddVolume' (Maybe Text)
mbavKey = lens _mbavKey (\ s a -> s{_mbavKey = a})

-- | ID of volume to add.
mbavVolumeId :: Lens' MylibraryBookshelvesAddVolume' Text
mbavVolumeId
  = lens _mbavVolumeId (\ s a -> s{_mbavVolumeId = a})

-- | String to identify the originator of this request.
mbavSource :: Lens' MylibraryBookshelvesAddVolume' (Maybe Text)
mbavSource
  = lens _mbavSource (\ s a -> s{_mbavSource = a})

-- | OAuth 2.0 token for the current user.
mbavOauthToken :: Lens' MylibraryBookshelvesAddVolume' (Maybe Text)
mbavOauthToken
  = lens _mbavOauthToken
      (\ s a -> s{_mbavOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mbavFields :: Lens' MylibraryBookshelvesAddVolume' (Maybe Text)
mbavFields
  = lens _mbavFields (\ s a -> s{_mbavFields = a})

-- | Data format for the response.
mbavAlt :: Lens' MylibraryBookshelvesAddVolume' Alt
mbavAlt = lens _mbavAlt (\ s a -> s{_mbavAlt = a})

instance GoogleRequest MylibraryBookshelvesAddVolume'
         where
        type Rs MylibraryBookshelvesAddVolume' = ()
        request = requestWithRoute defReq booksURL
        requestWithRoute r u
          MylibraryBookshelvesAddVolume'{..}
          = go _mbavQuotaUser (Just _mbavPrettyPrint)
              _mbavUserIp
              _mbavReason
              _mbavShelf
              _mbavKey
              (Just _mbavVolumeId)
              _mbavSource
              _mbavOauthToken
              _mbavFields
              (Just _mbavAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy MylibraryBookshelvesAddVolumeResource)
                      r
                      u
