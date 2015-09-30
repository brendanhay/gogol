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
-- Module      : Network.Google.Resource.Books.Mylibrary.Bookshelves.RemoveVolume
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a volume from a bookshelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMylibraryBookshelvesRemoveVolume@.
module Network.Google.Resource.Books.Mylibrary.Bookshelves.RemoveVolume
    (
    -- * REST Resource
      MylibraryBookshelvesRemoveVolumeResource

    -- * Creating a Request
    , mylibraryBookshelvesRemoveVolume'
    , MylibraryBookshelvesRemoveVolume'

    -- * Request Lenses
    , mbrvQuotaUser
    , mbrvPrettyPrint
    , mbrvUserIp
    , mbrvReason
    , mbrvShelf
    , mbrvKey
    , mbrvVolumeId
    , mbrvSource
    , mbrvOauthToken
    , mbrvFields
    , mbrvAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMylibraryBookshelvesRemoveVolume@ which the
-- 'MylibraryBookshelvesRemoveVolume'' request conforms to.
type MylibraryBookshelvesRemoveVolumeResource =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           "removeVolume" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "reason"
                     BooksMylibraryBookshelvesRemoveVolumeReason
                     :>
                     QueryParam "key" Text :>
                       QueryParam "volumeId" Text :>
                         QueryParam "source" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Post '[JSON] ()

-- | Removes a volume from a bookshelf.
--
-- /See:/ 'mylibraryBookshelvesRemoveVolume'' smart constructor.
data MylibraryBookshelvesRemoveVolume' = MylibraryBookshelvesRemoveVolume'
    { _mbrvQuotaUser   :: !(Maybe Text)
    , _mbrvPrettyPrint :: !Bool
    , _mbrvUserIp      :: !(Maybe Text)
    , _mbrvReason      :: !(Maybe BooksMylibraryBookshelvesRemoveVolumeReason)
    , _mbrvShelf       :: !Text
    , _mbrvKey         :: !(Maybe Text)
    , _mbrvVolumeId    :: !Text
    , _mbrvSource      :: !(Maybe Text)
    , _mbrvOauthToken  :: !(Maybe Text)
    , _mbrvFields      :: !(Maybe Text)
    , _mbrvAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MylibraryBookshelvesRemoveVolume'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mbrvQuotaUser'
--
-- * 'mbrvPrettyPrint'
--
-- * 'mbrvUserIp'
--
-- * 'mbrvReason'
--
-- * 'mbrvShelf'
--
-- * 'mbrvKey'
--
-- * 'mbrvVolumeId'
--
-- * 'mbrvSource'
--
-- * 'mbrvOauthToken'
--
-- * 'mbrvFields'
--
-- * 'mbrvAlt'
mylibraryBookshelvesRemoveVolume'
    :: Text -- ^ 'shelf'
    -> Text -- ^ 'volumeId'
    -> MylibraryBookshelvesRemoveVolume'
mylibraryBookshelvesRemoveVolume' pMbrvShelf_ pMbrvVolumeId_ =
    MylibraryBookshelvesRemoveVolume'
    { _mbrvQuotaUser = Nothing
    , _mbrvPrettyPrint = True
    , _mbrvUserIp = Nothing
    , _mbrvReason = Nothing
    , _mbrvShelf = pMbrvShelf_
    , _mbrvKey = Nothing
    , _mbrvVolumeId = pMbrvVolumeId_
    , _mbrvSource = Nothing
    , _mbrvOauthToken = Nothing
    , _mbrvFields = Nothing
    , _mbrvAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mbrvQuotaUser :: Lens' MylibraryBookshelvesRemoveVolume' (Maybe Text)
mbrvQuotaUser
  = lens _mbrvQuotaUser
      (\ s a -> s{_mbrvQuotaUser = a})

-- | Returns response with indentations and line breaks.
mbrvPrettyPrint :: Lens' MylibraryBookshelvesRemoveVolume' Bool
mbrvPrettyPrint
  = lens _mbrvPrettyPrint
      (\ s a -> s{_mbrvPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mbrvUserIp :: Lens' MylibraryBookshelvesRemoveVolume' (Maybe Text)
mbrvUserIp
  = lens _mbrvUserIp (\ s a -> s{_mbrvUserIp = a})

-- | The reason for which the book is removed from the library.
mbrvReason :: Lens' MylibraryBookshelvesRemoveVolume' (Maybe BooksMylibraryBookshelvesRemoveVolumeReason)
mbrvReason
  = lens _mbrvReason (\ s a -> s{_mbrvReason = a})

-- | ID of bookshelf from which to remove a volume.
mbrvShelf :: Lens' MylibraryBookshelvesRemoveVolume' Text
mbrvShelf
  = lens _mbrvShelf (\ s a -> s{_mbrvShelf = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mbrvKey :: Lens' MylibraryBookshelvesRemoveVolume' (Maybe Text)
mbrvKey = lens _mbrvKey (\ s a -> s{_mbrvKey = a})

-- | ID of volume to remove.
mbrvVolumeId :: Lens' MylibraryBookshelvesRemoveVolume' Text
mbrvVolumeId
  = lens _mbrvVolumeId (\ s a -> s{_mbrvVolumeId = a})

-- | String to identify the originator of this request.
mbrvSource :: Lens' MylibraryBookshelvesRemoveVolume' (Maybe Text)
mbrvSource
  = lens _mbrvSource (\ s a -> s{_mbrvSource = a})

-- | OAuth 2.0 token for the current user.
mbrvOauthToken :: Lens' MylibraryBookshelvesRemoveVolume' (Maybe Text)
mbrvOauthToken
  = lens _mbrvOauthToken
      (\ s a -> s{_mbrvOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mbrvFields :: Lens' MylibraryBookshelvesRemoveVolume' (Maybe Text)
mbrvFields
  = lens _mbrvFields (\ s a -> s{_mbrvFields = a})

-- | Data format for the response.
mbrvAlt :: Lens' MylibraryBookshelvesRemoveVolume' Alt
mbrvAlt = lens _mbrvAlt (\ s a -> s{_mbrvAlt = a})

instance GoogleRequest
         MylibraryBookshelvesRemoveVolume' where
        type Rs MylibraryBookshelvesRemoveVolume' = ()
        request = requestWithRoute defReq booksURL
        requestWithRoute r u
          MylibraryBookshelvesRemoveVolume'{..}
          = go _mbrvQuotaUser (Just _mbrvPrettyPrint)
              _mbrvUserIp
              _mbrvReason
              _mbrvShelf
              _mbrvKey
              (Just _mbrvVolumeId)
              _mbrvSource
              _mbrvOauthToken
              _mbrvFields
              (Just _mbrvAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy MylibraryBookshelvesRemoveVolumeResource)
                      r
                      u
